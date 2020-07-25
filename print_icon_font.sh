#/bin/bash

for i in {61300..62200}; do
	perl -CO -E "$(printf 'say chr 0x%x' $i)" | tr '\n' ' ';
done
