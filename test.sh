# IS_DEPLOYED=$(kubectl get deploy -n locust | grep -i locust-master)
# echo $IS_DEPLOYED

# if [ -z "$IS_DEPLOYED" ]
# then
#       echo "\$IS_DEPLOYED is empty"
# else
#       echo "\$IS_DEPLOYED is NOT empty"
# fi


NAMESPACE=$(kubectl get ns | grep -i branch-test)
echo "hello"
echo $NAMESPACE

if [ -z "$NAMESPACE" == branch-test ]
then
    echo "\$NAMESPACE namespace already exists"
else
    echo "creating ns ${GITHUB_REF##*/}"
    kubectl create ns ${GITHUB_REF##*/}
    echo "ns ${GITHUB_REF##*/} created successfully"
fi