echo $1
echo "@startmindmap" >> tmp.txt
echo "seding"
sed 's/  / /g' $1 >> tmp.txt
echo "seding complete"
echo "@endmindmap" >> tmp.txt
echo "generating image"
java -jar plantuml.jar tmp.txt -filename "$1.png"
mv tmp.png "$1.png"
echo "removingtemp"
rm -fr tmp.txt

