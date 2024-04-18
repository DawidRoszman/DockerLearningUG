res=$(curl localhost:8080)
date_now=$(date +"%Y-%m-%d %T")
echo $res
echo $date_now

if [[ $res == $date_now ]]; then
	echo "Test passed"
	exit 0
else
	echo "Test failed"
	exit 1
fi
