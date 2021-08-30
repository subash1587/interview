echo $1
echo "@startmindmap" >> tmp.txt
echo "seding"
sed 's/  / /g' $1 >> tmp.txt
echo "seding complete"
echo "@endmindmap" >> tmp.txt
echo "generating image"
java -jar plantuml.jar tmp.txt -tsvg -filename "$1.svg"
mv tmp.svg "$1.svg"
echo "removingtemp"
rm -fr tmp.txt

