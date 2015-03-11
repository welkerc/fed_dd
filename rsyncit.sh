#start timeer timing for testing purposes
echo $(date +%D_%T)  > timer.txt
 
rsync -aXv /mnt/cwelker /mnt/MacBack/Welker/

#end timeer timing for testing purposes
echo $(date +%D_%T) >> timer.txt
cat timer.txt
