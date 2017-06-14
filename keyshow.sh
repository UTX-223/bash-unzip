if [ ! -f md5pdf.chk ]
then
    echo "md5pdf.chk not found!"
else
count=`ls -1 *.zip 2>/dev/null | wc -l`
if [ $count == 0 ]
then
    echo "zip files not found"
else
    for x in *.zip; do
        filename="${x%.*}" #define filename var
        grep "$filename.pdf" md5pdf.chk
    done
fi
fi

