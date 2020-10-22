kubectl get ns -o json |  jq '.items[].metadata.name' | while read i; do   echo $i"test1234" ; done
    # echo $i
    # if [ -z $i == "branch-test" ]
    #     then
    #         echo "\$i namespace already exists"
    #     else
    #         echo "creating ns branch-test"
    #         # kubectl create ns branch-test
    #         echo "ns branch-test created successfully"
    # fi

# done
