edit-page(){
  read page_count < ../config/page/count
  green " >> Found $page_count page(s), "
  blue " >> Input number of page(s) title to config"
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
  echo -n " >> read > "
  read ch_page
  #echo " Continue $ch_page"
  read ch_del < ../config/page/$ch_page/del || (red " >> Error 1 Option not found" && return 1)
  if [ $ch_del == "1" ]
  then
    red " >> Error 1 Option not found"
    return 1
  fi
  green " >> Choose page successfully, and value is $ch_page"
  #echo " Continue"

  blue " >> Input number of options to config"
  echo "
 1)  Edit title
 2)  Edit page
 3)  Edit URL
 4)  Delete page
  "
  echo
  echo -n " >> read > "
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
    blue " >> Are you sure to delete page $ch_page?"
    echo -n " >> read [N]o / [y]es > "
    read ynq
    if [ $ynq == "Y" ] || [ $ynq == "y" ]
    then
      echo "1" > ../config/page/$ch_page/del
      green " >> Remove successfully"
    else
      green " >> You choose No"
    fi
  else
    red " >> Error 1 Option not found"
    return 1
  fi
}
