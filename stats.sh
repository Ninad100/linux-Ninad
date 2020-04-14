
echo 'DATE        TIME   MEMORY   CPU   DISK'


Date=$(date "+%d-%m-%Y  %T")
Memory=$(free |grep Mem |awk '{print $3/$2 * 100.0}')

CPU=$(top -b -n 1 -d1 | grep "Cpu(s)" |awk '{print $2}' |awk -F. '{print $1}')

Disk=$(df -h |column -t |awk '{print $5}' | tail -n 1 |sed 's/%//g')

Process=$(ps -eo comm,stime,pcpu,pmem --sort=-%cpu |head |egrep -v '(0.0)|(%CPU)')
			
		
	#processes for cpu are sorted in descending order to identify highest consuming process



echo " $Date   $Memory%    $CPU%    $Disk%"
echo 'process      Cpu_Time  cpu%  mem%'
echo "$Process"


printf " \n \n Process at top of 'cpu coloumn' is consuming highest \n \n "



