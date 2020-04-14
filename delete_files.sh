find /home/ninad/Desktop -type 'f' -size -1024
 echo "files below 1024 bytes size are listed " 

find /home/ninad/Desktop -type 'f' -size -1024 -delete
 echo "files below 1024 bytes size are deleted " 
