edit-page(){
  read page_count < ../config/page/count
  green " >> Found $page_count page(s), 找到了$page_count 个页面"
  blue " >> Input number of page(s) title to config 输入页面的代号进行修改"
  for ((i=1;i<=page_count;i++))
  do
    #cat ../config/page/$i/page.md
    read del < ../config/page/$i/del
    if [ $del == "1" ]
    then
      continue
    fi
    read tit < ../config/page/$i/tit
    echo " "$i")  "$tit
  done
  echo
  echo -n " >> read 输入 > "
  read ch_page
  #echo " Continue $ch_page"
  read ch_del < ../config/page/$ch_page/del || (red " >> Error 1 Option not found 选项未找到" && return 1)
  if [ $ch_del == "1" ]
  then
    red " >> Error 1 Option not found 选项未找到"
    return 1
  fi
  green " >> Choose page successfully, and value is $ch_page 页面选择成功，选择 $ch_page"
  #echo " Continue"

  blue " >> Input number of options to config 输入选项的代号进行修改"
  echo "
 1)  Edit title 编辑标题
 2)  Edit page 编辑页面
 3)  Edit URL 编辑Url地址
 4)  Delete page 删除页面
  "
  echo
  echo -n " >> read 输入 > "
  read ch_mod
  green " >> Choose mod successfully, and value is $ch_mod"
  if [ $ch_mod == "1" ]
  then
    $editor ../config/page/$ch_page/tit
  elif [ $ch_mod == "2" ]
  then
    $editor ../config/page/$ch_page/page.md
  elif [ $ch_mod == "3" ]
  then
    $editor ../config/page/$ch_page/url
  elif [ $ch_mod == "4" ]
  then
    blue " >> Are you sure to delete page $ch_page 你确定要删除吗"
    echo -n " >> read 输入 [N]o / [y]es > "
    read ynq
    if [ $ynq == "Y" ] || [ $ynq == "y" ]
    then
      echo "1" > ../config/page/$ch_page/del
      green " >> Remove successfully 删除成功"
    else
      green " >> You choose No 你选择取消"
    fi
  else
    red " >> Error 1 Option not found 选项未找到"
    return 1
  fi
}
