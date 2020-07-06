. ./color.sh
. ./creat-index.sh
. ./edit.sh
. ./new.sh

blue " >> Starting app 正在启动"
blue " >> Starting main progress 正在启动主进程"
blue " >> Getting editor 正在获取编辑器命令"
read editor < ../config/editor



config(){
  blue " >> Input number of option 输入一个选项的代号"
  echo "
 1)  Change editor 更改编辑器
 2)  Edit page 编辑页面
  "
  echo -n " >> read 输入 > "
  read set_opt
  if [ $set_opt == "2" ]
  then
    edit-page
  elif [ $set_opt == "1" ]
  then
    blue " >> input your new editor (like 'vim') 输入一个新的编辑器"
    echo -n " >> read 输入 > "
    read neweditor
    echo $neweditor > ../config/editor
    green " >> Choose Editor successfully, value is $neweditor 成功选定编辑器，选择$neweditor"
  else
    red " >> Error 1 Option not found 选项未找到"
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
  blue " >> Config 配置"
  config
  while [ 1 ]
  do
    blue " >> Do you want to continue to config 你希望继续配置吗"
    echo -n " >> read 输入 [N]o / [Y]es > "
    read ynq
    if [ $ynq == "Y" ] || [ $ynq == "y" ]
    then
      config
    else
      break
    fi
  done
elif [ $1 == "publish" ]
then
  blue " >> Publish 发布"
  pss
  cd ../config/output
  git add -A
  git commit -m "LanGong Love Blog Push"
  git push
elif [ $1 == "new" ]
then
  blue " >> New 创建新的页面"
  new
elif [ $1 == "pubinit" ]
then
  blue " >> Publish Init 发布初始化"
  blue " >> Your GitHub username 输入你的GitHub用户名"
  read username
  blue " >> Your GitHub repo 输入你的GitHub仓库"
  read repo
  green " >> Get info successfully, value is You GitHub Repo is '$username/$repo'"
  blue " >> Wait 5 sec to check, you can press Ctrl+C to exit 等待5s确认，按Crtl+C取消选择"
  sleep 5
  cd ../config
  rm -rf output
  git clone https://github.com/$username/$repo
  mv $repo output
elif [ $1 == "urepo" ]
then
  cd ../config/output
  git pull
elif [ $1 == "update" ]
then
  git pull
elif [ $1 == "help" ]
then
  blue " >> Loading..."
  . ./help.sh
else
  red " >> Error 1 Option not found 选项未找到"
  exit 1
fi

green " >> Run app successfully 程序运行成功"
