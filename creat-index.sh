creat-index(){
  read page_count < ../config/page/count
  #echo "
#---
#title: Home
#---
#  " 
  echo "# Home" > ../config/output/index.md
  for ((i=1;i<=page_count;i++))
  do
    read del < ../config/page/$i/del
    if [ $del == "1" ]
    then
      continue
    fi
    read tit < ../config/page/$i/tit
    read url < ../config/page/$i/url
    read dat < ../config/page/$i/date
    echo "### [$tit]($url.md)" >> ../config/output/index.md
    echo >> ../config/output/index.md
    echo "\"$tit\"is creat in $dat, url-id is \"$url\"" >> ../config/output/index.md
    echo >> ../config/output/index.md
  done
  echo >> ../config/output/index.md
  echo "---" >> ../config/output/index.md
  echo >> ../config/output/index.md
  echo >> ../config/output/index.md
  echo "Powered by [LanGong Love Blog](https://langong-dev.github.io/love-blog)" >> ../config/output/index.md
}
