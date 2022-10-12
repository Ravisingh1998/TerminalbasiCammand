for files in *.txt
do
folderName=`echo $files | awk -F. '{print $1}'`;
echo $folderName;
echo $files;

mkdir $folderName;
cp $files $folderName/$files;

echo copied files to $folderName/;
now=$(date +"%m_%d_%y")
echo "$now"
nfile=$folderName-$now.log
mv $folderName/$file $folderName/$nfile
done
