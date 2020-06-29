. ./color.sh
. ./creat-index.sh
. ./edit.sh
. ./new.sh

blue " >> Starting app..."
blue " >> Starting main progress..."
blue " >> Getting editor"
read editor < ../config/editor



config(){
  blue " >> Input number of option"
  echo "
 1)  Change editor
 2)  Edit page
  "
  echo -n " >> read > "
  read set_opt
  if [ $set_opt == "2" ]
  then
    edit-page
  elif [ $set_opt == "1" ]
  then
    blue " >> input your new editor (like 'vim')"
    echo -n " >> read > "
    read neweditor
    echo $neweditor > ../config/editor
    green " >> Choose Editor successfully, value is $neweditor"
  else
    red " >> Error 1 Option not found"
    exit 1
  fi
  
}



pss(){
  read page_count < ../config/page/count
  rm -rf ../config/output/*.md
  for ((i=1;i<=page_count;i++))
  do
    read del < ../config/page/$i/del
    if [ $del == "1" ]
    then
      continue
    fi
    read url < ../config/page/$i/url
    cp ../config/page/$i/page.md ../config/output/$url.md
  done
  creat-index
}

if [ $1 == "config" ]
then
  blue " >> Config"
  config
elif [ $1 == "publish" ]
then
  blue " >> Publish"
  pss
  cd ../config/output
  git add -A
  git commit -m "LanGong Love Blog Push"
  git push
elif [ $1 == "new" ]
then
  blue " >> New"
  new
elif [ $1 == "pubinit" ]
then
  blue " >> Publish Init"
  blue " >> Your GitHub username"
  read username
  blue " >> Your GitHub repo"
  read repo
  green " >> Get info successfully, value is You GitHub Repo is '$username/$repo'"
  blue " >> Wait 5 sec to check, you can press Ctrl+C to exit"
  sleep 5
  cd ../config
  rm -rf output
  git clone https://github.com/$username/$repo
  mv $repo output
elif [ $1 == "urepo" ]
then
  cd ../config/output
  git pull
else
  red " >> Error 1 Option not found"
  exit 1
fi

green " >> Run app successfully"
