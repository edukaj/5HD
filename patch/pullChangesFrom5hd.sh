lista="listaFileDaprendere"
rm $lista
for i in `find .`
do 
	[ "$i" == "." ] && continue
	file=$(echo ${i:1})
	echo $file >> $lista
done

rsync -avzR --files-from=$lista ale@5hd:/ .

exit 0
