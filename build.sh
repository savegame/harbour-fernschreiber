engine="docker exec -w $(pwd) --user mersdk aurora-os-build-engine"
targets=`${engine} sb2-config -l|grep -v default`
version=`grep -E "Version" $(pwd)/rpm/harbour-fernschreiber.spec|sed "s/Version: \+//g"`
release=`grep -E "Release:" $(pwd)/rpm/harbour-fernschreiber.spec|sed "s/Release: \+//g"`

for each in key cert; do
    if [ -f `pwd`/regular_${each}.pem ]; then 
        echo "Found a regular_${each}.pem file: OK"
        continue;
    fi
    echo -n "Downloading regular_${each}.pem for singing RPM for AuroraOS: "
    curl https://community.omprussia.ru/documentation/files/doc/regular_${each}.pem -o regular_${each}.pem &> /dev/null
    if [ $? -eq 0 ]; then 
        echo "OK"
    else
        echo "FAIL"
        echo "Cant download regular_${each}.pem: https://community.omprussia.ru/documentation/files/doc/regular_${each}.pem"
        exit 1
    fi
done

for target in ${targets}; do 
    echo "Build for ${target}"
    arch=${target##*-}
    echo "Detected arch: ${arch}"
    ${engine} mb2 -t ${target} build
    [ $? -ne 0 ] && exit 1
    package_name="harbour-fernschreiber-${version}-${release}.${arch}.rpm"
    echo -n "Signing RPM  ${package_name}: "
    temp_output="$(${engine} sb2 -t ${target} rpmsign-external sign --key `pwd`/regular_key.pem --cert `pwd`/regular_cert.pem `pwd`/RPMS/${package_name} 2>&1)"
    if [ $? -ne 0 ]; then 
        echo "FAIL"
        echo "${temp_output}"
        exit 1
    else
        echo "OK"
    fi
    echo -n "Validate RPM ${package_name}: "
    temp_output="$( ${engine} sb2 -t ${target} rpm-validator -p regular `pwd`/RPMS/${package_name} 2>&1 )"
    if [ $? -ne 0 ]; then 
        echo "FAIL"
        echo "${temp_output}"
        exit 1
    else
        echo "OK"
    fi
done