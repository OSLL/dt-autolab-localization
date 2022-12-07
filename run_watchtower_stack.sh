WATCHTOWER="watchtower"
for i in {1..18}
do
	if ((i < 10))
	then
		dts stack down -H "watchtower0$i" core -d
		dts stack up -H "watchtower0$i" core -d
		dts stack down -H "watchtower0$i" autolab -d
		dts stack up -H "watchtower0$i" autolab -d
	else 
		dts stack down -H "watchtower$i" core -d
		dts stack up -H "watchtower$i" core -d
		dts stack down -H "watchtower$i" autolab -d
		dts stack up -H "watchtower$i" autolab -d
	fi
done 
