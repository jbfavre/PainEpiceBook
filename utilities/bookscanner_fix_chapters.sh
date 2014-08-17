#!/bin/bash

NUMBER=1
for CHAPTER in $1/ch*.xhtml;
do
  sed -i "s|<h1>\(.*\)</h1>|<span class='chapterHeader'><span class='translation'>Chapitre</span><span class='count'>${NUMBER}</span></span><h1 class='chapter'>\1</h1>|g" ${CHAPTER}
  ((NUMBER++))
done

