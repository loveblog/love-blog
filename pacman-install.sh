blue(){
  echo -e "\033[34m"$1"\033[0m"
}

red(){
  echo -e "\033[31m"$1"\033[0m"
}

green(){
  echo -e "\033[32m"$1"\033[0m"
}

blue " >> Welcome to LanGong Love Blog Install script 欢迎来到LoveBlog安装脚本"
blue " >> Please be sure you installed 'git'"
sleep 2
cd /usr/share

blue " >> Creating config file 创建配置文件"
mkdir LoveBlog
mkdir LoveBlog/config
mkdir LoveBlog/config/page

blue "    > Configing editor 配置编辑器"
blue "    > Input your editor, like 'vim'"
echo -n " >> read 输入 > "
read editor

echo $editor > LoveBlog/config/editor
echo "0" > LoveBlog/config/page/count

blue " >> Creating All files 获取所有文件"
cd LoveBlog
git clone https://github.com/langong-dev/love-blog
cd love-blog


als(){
  cd $HOME

  blue " >> Creating links"
  
  echo "cd ~/LoveBlog/love-blog && bash main.sh \$1 \$2 \$3 \$4" > .lovebloga
  echo "alias lb='bash ~/.lovebloga'" >> .zshrc
  echo "alias lb='bash ~/.lovebloga'" >> .bashrc
  echo "alias lb='bash ~/.lovebloga'" >> .fishrc
  
  
}

bin-cmd(){
  blue " >> Creating Exec"

  g++ cmd-usrshare.cpp -o /bin/lb
}

#als

bin-cmd

blue " >> Quiting 正常退出程序中"

green " >> Install successfully"
