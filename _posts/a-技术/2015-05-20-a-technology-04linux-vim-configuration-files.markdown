---
layout: default
title : vim相关文件：.vimrc  .viminfo  .vim/
category: A-技术-07vim
comments: true
---


#### .viminfo: 记录vim操作历史
   ~/.viminfo 是在使用vim的过程中自动生成的一个文件，记录你在vim中的操作历史，每次退出vim时自动保存。我们用vim打开文件时，会自动恢复为上一次操作此文件所处的状态就是通过读取 .viminfo 文件实现的。  

  你可以通过 执行 `：set vininfo= string` 来设置 .viminfo 文件保存多少信息。你还可以使用 `:wviminfo [file]` 手动创建一个viminfo文件保存工作状态，然后通过 `rviminfo` 命令手动读取一个保存的viminfo文件。具体的使用语法参见[vim参考手册](http://vimdoc.sourceforge.net/vimum.html)

#### .vimrc: vim的配置文件
  vimrc文件是vim 的环境设置文件。可以设置你喜欢的一些选项和功能，插件和宏等，通常所说的定制你自己的vim就是通过编辑 .vimrc 实现的。vimrc文件根据作用的范围，有两种：

  * 对所有用户有效的配置文件: /etc/vim/vimrc （轻易不要修改全局的设置）
  * 每个用户自己的配置文件  : ~/.vimrc (如果没有，自己建一个，一般改这个)

```
：set all
```
可以查看所有的配置项。
下面是我自己的vimrc配置文件，因为也是正在学习，会不定期更新

```

```
下面是别人的vimrc配置的一些链接，有很多配置的说明和复杂的设置，想模仿学习具体看这些内容：

[一个有中文解释的vimrc配置文件](http://blog.csdn.net/wklken/article/details/8044678)  
[又一个人的vimrc配置，有中文说明](http://www.cnblogs.com/ma6174/archive/2011/12/10/2283393.html)  
[传说史上最强的vimrc文件](http://amix.dk/vim/vimrc.html)  
[史上最强的Vim 配置文件（国内修正版）](http://blog.csdn.net/redguardtoo/article/details/1172136)  


#### 参考资料：
1. vim中文手册： http://vimcdoc.sourceforge.net/  
2. VIM教程与学习资料汇总: http://xbeta.info/vim-tutorials.html  

