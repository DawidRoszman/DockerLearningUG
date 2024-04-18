res=$(curl localhost:8080)
expected='{"_id":"65e4af048ffde5b6f0596a48","hello":"Hello World"}'
echo Result: $res
echo Expected: $expected

if [[ $res == $expected ]]; then
	echo "Test passed"
	exit 0
else
	echo "Test failed"
	exit 1
fi
