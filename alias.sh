cd $HOME
echo "cd ~/LoveBlog/love-blog && bash main.sh \$1 \$2 \$3 \$4" > .lovebloga
echo "alias lb='bash ~/.lovebloga'" >> .zshrc
echo "alias lb='bash ~/.lovebloga'" >> .bashrc
echo "alias lb='bash ~/.lovebloga'" >> .fishrc
