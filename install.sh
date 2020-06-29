blue(){
  echo -e "\033[34m"$1"\033[0m"
}

red(){
  echo -e "\033[31m"$1"\033[0m"
}

green(){
  echo -e "\033[32m"$1"\033[0m"
}

blue " >> Welcome to LanGong Love Blog Install script"
blue " >> Please be sure you installed 'git'"
sleep 2
cd $HOME

blue " >> Creating config file..."
mkdir LoveBlog
mkdir LoveBlog/config
mkdir LoveBlog/config/page

blue "    > Configing editor..."
blue "    > Input your editor, like 'vim'"
echo -n " >> read > "
read editor

echo $editor > LoveBlog/config/editor
echo "0" > LoveBlog/config/page/count

blue " >> Creating All files"
cd LoveBlog
git clone https://github.com/langong-dev/love-blog

cd $HOME

blue " >> Creating links"

echo "cd ~/LoveBlog/love-blog && bash main.sh \$1 \$2 \$3 \$4" > .lovebloga
echo "alias lb='bash ~/.lovebloga'" >> .zshrc
echo "alias lb='bash ~/.lovebloga'" >> .bashrc
echo "alias lb='bash ~/.lovebloga'" >> .fishrc

green " >> Install successfully"
