lista="listaFileDaprendere"
prog="$(basename $0)"
rm $lista
for i in `find .`
do 
	[[ "$i" == "." || "$i" == "./$prog" || "$i" == ".$lista" ]] && continue
	file=$(echo ${i:1})
	echo $file >> $lista
done

rsync -avzR --files-from=$lista ale@5hd:/ .

exit 0
