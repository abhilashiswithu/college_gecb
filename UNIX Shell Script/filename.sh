l=ls |readlink -f aaaaa
for file in $l/*.abc; do
  mv "$file" "${file%.abc}.edefg"
done
