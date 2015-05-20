---
layout : default
title  : markdown 常用语法
comments : true
---
### 标准markdown语法
-----
#### 标题
通过在行首的1～6个 ‘#’ ，对应1～6级标题例如：  

```
# H1级标题
## H2级标题
### H3级标题
#### H4 级标题
##### H5级标题
###### H6级标题
```

#### 段落 & 换行

分段：使用**一个以上的空行**  表示分段。  
换行：在需要换行的地方先 **按入两个以上的空格然后回车** 表示换行。

#### 斜体 & 强调

使用的符号为 星号(\*) 或底线(\_) ，被一个包围的时斜体，两个包围的是强调，例如：  

*斜体*：的语法为 `*斜体*` 或 `_斜体_`  
__强调__ : 的语法为 `**强调**` 或 `__强调__`    

>需要注意的时，如果`*/_` 的两边都有空白的话，会被当成普通的 \*/\_ 符号.

#### 引用

  使用行首的 `>` 符号表示引用，使用不同数目的`>`实现引用的嵌套， 引用区块内可以使用其它的Markdown语法，下面是一个例子： 

```
> ## 这是一个标题
>
> > 这里是嵌套引用（引用的引用）
>
> 1. 这里是列表。  
> 2. 第二行列表。
```
#### 列表  

分为有序列表 和无序列表，支持嵌套。  
无序列表：` */+/-` 其中的任何一个符号都可以作为列表标记，下面时加号的一个例子

```
+ red
+ green
+ blue
```

有序列表： 使用数字紧接一个英文句点，例如

```
1. 数字大小不重要，
2. markdown会自动生成数字顺序，跟这里的值没关系
3. 这里写成4,最后显示也是3
```

#### 代码段 & 代码
#####代码段  
  代码段在html里是用`<pre><code>` 标签包起来的内容，里面的内容会按照原来的样子显示。		
  markdown 建立代码段是用行首的 **4个空格** 或 **1个制表符** 缩进 。一个代码段会一直持续到没有缩进的那一行(或文件结尾)。  

#####代码（对应`<code>` 标签）  
标记行内代码：使用反引号（\`），格式为：\`行内的代码内容\` 。如果要在代码里插入反引号，可以用多个反引号，例如

```
``There is a literal backtick (`) here.``
```

#### 分隔线
在行首用**三个以上的星号(\*),减号(-)，底线(_)** ,行内不能有其它东西，下面的例子都可以建立分隔线：

```
* * *

***

*****

- - -

---------------------------------------
```

#### 链接 
链接有两种形式的语法：行内式 和 参考式 两种。  
行内式: `[link name ](http://xxxxxx )` ,例如： `[维基百科](http://www.wiki.com)`会显示为[维基百科](http://www.wiki.com)   
参考式: `[][]`,使用两个方括号，通过一个例子来看吧：

```
This is [an example][id] reference-style link

[id]: http://example.com/  "Optional Title Here"

```  

上面的`id` 可以是数字，字母，空格(隐式标记)和标点，不区分大小写。显示为下面一行：  

This is [an example][id] reference-style link  

[id]: http://example.com/  "Optional Title Here"

#### 图片
同样是分为两种: 行内式和参考式
行内式: 语法格式如下

```
![Alt text](/path/to/img.jpg)

![Alt text](/path/to/img.jpg "Optional title")
```

参考式：语法格式如下

```
![Text][id]

[id]: url/to/image "optional title attribute"
```

>目前为止， Markdown 还没有办法指定图片的宽高，如果你需要的话，你可以使用普通的 `<img>` 标签



#### 转义符--反斜杠(\\)
下面的符号可以在前面加上反斜杠来转义：  

```
\   反斜线
`   反引号
*   星号
_   底线
{}  花括号
[]  方括号
()  括弧
#   井字号
+   加号
-   减号
.   英文句点
!   惊叹号
```

#### 自动链接 网址和邮箱
方法是将 网址和邮箱用`< >`包起来就行，如下:  

` <http://example.com/>`  
` <address@example.com> `

### GFM（GitHub Flavored Markdown）与标准markdown的不同
---
#### 斜体
GFM 中斜体只能使用 星号(\*), 不能使用 底线(\_)
#### URL 自动链接
  直接在GFM中写一个URL链接文本，就会自动生成URL，同时文字也显示为该链接本身，无需`< >`,例如:  

```
https://github.com
```

显示结果为：https://github.com

#### 换行
  标准MD要在一行的最后加两个空格符才表示换行，否则是不换行的。GFM中无需两个空格，**回车**就是换行。

#### 代码段和代码高亮  
  除了 4个空格 表示的代码段，GFM 还支持连续三个以上反引号 (\`\`\`) 包含的代码段，这样的代码段支持语法高亮。如下：  
<code>
```	
```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
`` `
``` 

#### 表格  

直接上例子  

```
| Left-Aligned  | Center Aligned  | Right Aligned |
| :------------ |:---------------:| -----:|
| col 3 is      | some wordy text | $1600 |
| col 2 is      | centered        |   $12 |
| zebra stripes | are neat        |    $1 |
```

`：`表示对齐方式，**单在左边**表示**左对齐** 。**单在右边**表示**右对齐**。**两边都有**表示**中间对齐**

#### 删除线
语法格式：`～～这是删除线～～` 显示效果为 ~~这是删除线~~
#### 任务列表
语法格式为`- []`（未选中状态) 和 `- [x]`(选中状态)，例如：  

```
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> are supported
- [x] list syntax is required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

```

### 参考资料  
1. Markdown官方文档（创始人 John Gruber 的 Markdown 语法说明）:http://daringfireball.net/projects/markdown/syntax   
2. Markdown 中文版语法说明: http://wowubuntu.com/markdown/  
3. GFM(GitHub Flavored Markdown)官方说明: https://help.github.com/articles/github-flavored-markdown/  
4. the languages YAML file(语言检测和语法高亮): https://github.com/github/linguist/blob/master/lib/linguist/languages.yml  
5. Mastering Markdown：https://guides.github.com/features/mastering-markdown/  
6. Writing on GitHub： https://help.github.com/articles/writing-on-github/  

