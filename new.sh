new(){
  read page_count < ../config/page/count
  let new_num=$page_count+1
  #echo $new_num
  mkdir ../config/page/$new_num
  echo "0" > ../config/page/$new_num/del
  echo "Page" > ../config/page/$new_num/page.md
  echo "new" > ../config/page/$new_num/url
  echo "Title" > ../config/page/$new_num/tit
  echo $new_num > ../config/page/count
  green " >> Creat new page successfully"
  date +%Y/%m/%d > ../config/page/$new_num/date
}
