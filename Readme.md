# LanGong Love Blog

![GitHub deployments](https://img.shields.io/github/deployments/langong-dev/love-blog/github-pages)  ![GitHub release (latest by date)](https://img.shields.io/github/v/release/langong-dev/love-blog)  ![GitHub top language](https://img.shields.io/github/languages/top/langong-dev/love-blog)  ![GitHub](https://img.shields.io/github/license/langong-dev/love-blog)

LanGong Love Blog is a blog system for [GitHub Page](https://pages.github.io) in Linux and MacOS

## Runs in

- [x] Linux ALL
- [x] MacOS ALL
- [ ] Windows ALL

## Rely

Love Blog is rely on `bash` and `git`, install rely on `wget`, so please install them first.

### Linux

- Arch/Manjaro `sudo pacman -S bash git wget`
- Ubuntu/Debian `sudo apt-get install bash git wget`
- CentOS `sudo yum install bash git wget`

### MacOS

- HomeBrew `brew install bash git wget`
- Apt `sudo apt-get install bash git wget`

You can also install without package-mamager

## Install 

### Install with CDN

```bash
wget https://cdn.jsdelivr.net/gh/langong-dev/love-blog/install.sh -O install-lb.sh
bash install-lb.sh
```

### Install with GitHub tag

[Get install file](https://github.com/langong-dev/love-blog/releases/latest)

Use `ls ~/LoveBlog` to check install

Then you have to config Repo

1. Creat a new repo named `USERNAME.github.io`
2. Go to `Setting > GitHub Page` select your theme
3. Go to terminal and input `cd ~/LoveBlog/love-blog && bash main.sh pubinit`

Your website is `USERNAME.github.io`

## Use

Command list:

`bash main.sh [Command]`

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
