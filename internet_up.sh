if ping -q -c 1 -W 1 google.com >/dev/null; then
	echo " internet is up "
else
	echo "internet is down"
fi

