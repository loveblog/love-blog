# LanGong Love Blog

![GitHub deployments](https://img.shields.io/github/deployments/langong-dev/love-blog/github-pages)  ![GitHub release (latest by date)](https://img.shields.io/github/v/release/langong-dev/love-blog)  ![GitHub top language](https://img.shields.io/github/languages/top/langong-dev/love-blog)  ![GitHub](https://img.shields.io/github/license/langong-dev/love-blog)

LanGong Love Blog is a blog system for [GitHub Page](https://pages.github.io) in Linux and MacOS

蓝光 LoveBlog 是一个在GitHubPage上运行的静态博客系统，适用于 Linux 或 MacOS 操作系统。

## Runs in 运行

- [x] Linux ALL
- [x] MacOS ALL
- [ ] Windows ALL

## Rely 依赖检查

Love Blog is rely on `bash` and `git`, install rely on `wget`, so please install them first.

Love Blog 依赖于`Bash` `git` `wget` ，所以请确保已经安装上述软件。

### Linux

- Arch/Manjaro `sudo pacman -S bash git wget`
- Ubuntu/Debian `sudo apt-get install bash git wget`
- CentOS `sudo yum install bash git wget`

### MacOS

- HomeBrew `brew install bash git wget`
- Apt `sudo apt-get install bash git wget`

You can also install without package-mamager

## Install 

### Install with CDN 使用CDN进行安装

```bash
wget https://cdn.jsdelivr.net/gh/langong-dev/love-blog/install.sh -O install-lb.sh
bash install-lb.sh
```

### Install with GitHub tag 使用GitHub源码进行安装

[Get install file](https://github.com/langong-dev/love-blog/releases/latest)

1. Downloads `install.sh` 下载安装文件
2. Put file into HOME-dir, (Like USER:TEST, HOME-dir:/home/TEST (/USERS/TEST in MacOS)) 放到家目录
3. `bash install.sh`

#### Tips

> If you are using ZSH or BASH maybe FISH shell, you can restart your terminal to use command 'lb'
> 如果您在使用 zsh 或 bash 还有 fish ，你可以在安装后重启控制台命令行
>
> If you are using other shells, you can use this command 'cd ~/LoveBlog/love-blog && bash main.sh'

Then you have to config Repo

1. Creat a new repo named `USERNAME.github.io`
2. Go to `Setting > GitHub Page` select your theme
3. Go to terminal and input `lb pubinit`

Your website is `USERNAME.github.io`

## Use

Command list:

`lb (OR 'bash main.sh') [Command]`

|Command|Means|
|:---:|:---:|
|new|Creat a new page|
|publish|Publish your blog to Github|
|pubinit|Init your repo|
|urepo|Update your Blog from Github|
|config|Config your blog|

Update Love Blog `git pull`

## Show

[https://langong-dev.github.io/loveblog-show/](https://langong-dev.github.io/loveblog-show/)

## Beautify

edit File `_config.yml`

- theme: _THEME_ (GitHub Theme)
- title: "_TITLE_" (Blog Title)
- description: "_DESCRIPTION_" (Blog Description)

Like:

```yaml
theme: jekyll-theme-cayman
title: "Love Blog Show"
description: "My Love Blog"
```
