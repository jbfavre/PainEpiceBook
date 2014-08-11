#!/bin/bash

output=full_book.txt

sed ':a;N;$!ba;
     s/-\n//g;
     s/—\n//g;
     s/ \n/\n/g;
     s/\n\n/double_new_line/g
     s/\n/ /g;
     ' bookocr/*.txt > ${output}

sed -i 's/double_new_line/\n\n/g' ${output}

sed -i ':a;N;$!ba;s/\n{3,}/\n\n/g' ${output}

sed -i ':a;N;$!ba;s/\n\n\n/\n\n/g' ${output}
sed -i ':a;N;$!ba;s/\n\n\n/\n\n/g' ${output}
sed -i ':a;N;$!ba;s/\n\n\n/\n\n/g' ${output}
sed -i ':a;N;$!ba;s/\n\n\n/\n\n/g' ${output}
sed -i ':a;N;$!ba;s/\n\n\n/\n\n/g' ${output}

sed -i 's/ﬁ/fi/g' ${output}
sed -i 's/ﬂ/fl/g' ${output}
