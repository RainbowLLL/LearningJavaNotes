# HTML

参考文档：https://www.yuque.com/zhangjian-mbxkb/uygl1k/fb5rsi#6qC5B

## 一、初识是HTML

- Hyper Text Markup Language(超文本标记语言)

超文本包括：文字，图片，音频，视频，动画等

### W3C标准

WOrld Wide Web Consortium(万维网联盟)，成立于1994年，Web技术领域最权威和具影响力的国际中立性技术标准机构。

W3C标准包括

1. ==结构==化标准语言（HTML、XML）
2. ==表现==标准语言（CSS）
3. ==行为==标准（DOM、ECMAScript）

### HTML 基本结构

- < body >、< /body>等成对的标签，分别叫做开放标签和闭合标签，单独呈现的标签（空元素），如< hr/ >，意为用/来关闭空元素。
- html注释：< !–注释内容–>

### 网页的基本信息

- DOCTYPE：告诉浏览器我们要是用什么规范，html是html5的规范

- meta标签：描述性标签，一般来做SEO

- meta标签的属性：
  - charset：定义文档的字符编码
  - name：context信息属性的名称
  - context：name属性的信息内容

meta标签的案例：

```html
<meta name="keywords" content="狂神说Java,西部开源">
<meta name="description" content="来这个地方学习Java">
```

#### 基本的网页

```html
<!--告诉浏览器，我们要是用什么规范 -->
<!DOCTYPE html>
<html lang="en">
<!--head 网页头部-->
<head>
    <!-- meta描述性标签，用来描述我们网站的一些信息-->
    <!-- meta一般用来做SEO-->
    <meta charset="UTF-8">
    <!--  给网页设置关键词和描述信息   -->
    <meta name="keywords" content="学习HTML">
    <meta name="description" content="可以学习java">
    <!-- title网页标题-->
    <title>我的第一个网页</title>
</head>
<!--body代表网页主体-->
<body>
Hello，World！
</body>
</html>
```

## 二、网页基本标签

- 标题标签：`<h1> </h1>` - `<h6></h6>`

- 段落标签：`<p>p标签</p>` 

- 换行标签：`<br>`

- 水平线标签：`<hr/>`

- 字体样式标签：

  ```
  <strong>粗体</strong>
  <em>斜体</em>
  ```

- 注释和特殊符号

  - `&nbsp;`：空格
  - `&gt;`：大于
  - `&lt;`：小于
  - `&copy;`：版权符

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>基本标签学习</title>
</head>
<body>
<!--标题标签-->
<h1>一级标签</h1>
<h2>二级标签</h2>
<h3>三级标签</h3>
<h4>四级标签</h4>
<h5>五级标签</h5>
<h6>六级标签</h6>

<!--段落标签-->
<p>Tab + 空格可以快速补全</p>
<p>段落标签 p </p>

<!--水平线标签-->
<hr/>
<!--换行标签-->
换行1 <br/>
换行2 <br/>

<!--换行标签比较紧凑，段落标签有明显段间距-->
<!--粗体 斜体-->
<h1>字体样式标签</h1>
粗体：<strong>I love you </strong><br/>
斜体：<em>I love you </em><br/>

<!--特殊符号-->
空格：1&nbsp;2&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;4<br/>
空格：1 2 3 4<br/>
大于号&gt;<br/>
小于号&lt;<br/>
版权符号&copy;<br/>

<!--特殊符号记忆：&开头 ;结尾，只要在idea中&敲出后就有提示-->
</body>
</html>
```

## 图像标签

常见的图像格式：JPG、GIF、PNG、BMP

- src：资源地址
  - 相对地址：../上级地址
  - 绝对地址
- alt：在图片加载失败的时候，就会用文字代替
- title：鼠标悬停在图片上时，所显示的名字
- width/height：图片的高和宽

```html
<img src="../resources/image/1.jpg" alt="我的图片" title="悬停文字" width="宽度" height="高度">
1
<!--img学习
src:图片地址
    相对地址（推荐使用），绝对地址
    ../返回上一级目录  -->
```

#### 测试图像HTML

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>图像和链接标签</title>
</head>
<body><!--
src:资源地址
相对地址，绝对地址
../上级地址
alt：在图片加载失败的时候，就会用文字代替
title:鼠标悬停在图片上时，所显示的名字
width height 图片的高和宽，不加的话就会自适应
-->
<img src="../resource/image/run.JPG" alt="oops!图像不见了" title="冲冲冲" width= "300" height="300">
<br/>
</body>
</html>
```

## 链接标签

### 标签

a 标签：`<a href="path" target="目标窗口位置">链接文本或者图像 </a>`

### 属性

- href：必填，表示要跳转到那个页面
- target：表示窗口在哪里打开
  -  `target="_blank"` 在新标签中打开
  -  `target="_self"` 在本页中打开

```html
</head>
<body>
<!-- a标签
href：必填，表示要跳转到那个页面
target：表示窗口在那里打开
_blank 在新标签中打开
_self   在自己的网页中打开
-->
<!--内部网页跳转，默认在本页中打开-->
<a href="1.我的第一个网页.html">点击我跳转页面</a>
<!--换行和分隔线-->
<br>
<hr>
<!--超链接跳转，在本页中打开-->
<a href="https://www.baidu.com" target="_self">点击调转到百度
</a><br>
<hr>
<!--图片链接跳转，在新标签中打开-->
<a href="https://www.baidu.com" target="_blank">
    <img src="../resource/image/1.jpg" alt="图片加载失败">
</a><br>
</body>
</html>
```

### 锚链接

- 需要一个锚标记：`<a name="top">[顶部]</a>`
  - 要是不加字的话，就会隐藏
- 跳转到标记：`<a href="#top">回到顶部</a>`
  - 使用`#`引用标记

1. 跳转到本页的顶部

```html
<a name="top">顶部</a>
...
...
...
<a href="#top">回到顶部</a>
```

2. 跳转到其它页面的顶部

```html
<a herf="其它页面的路径#top">跳转到其它页面的顶部</a>
```

测试一下

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<!--使用name作为标记, 隐藏标签名-->
<a name="top"></a>

<!--图片链接跳转，在新标签中打开-->
<a href="https://www.baidu.com" target="_blank">
    <img src="../resource/image/1.jpg" alt="图片加载失败">

<!--锚链接
1.需要一个锚标记
2.跳转到标记-->
<!--在本页面中跳转-->
<a href="#top">回到顶部</a>
    
<!--跳转到其他页面-->
<a href="5.锚标签.html#top">回到顶部</a>


<a name="down"></a>

</body>
</html>
</html>
```

### 功能性链接

1. 邮件标签

```html
<a  href="mailto:631279832@qq.com">邮件联系我</a> 
```

2. qq链接
   - QQ推广链接：https://shang.qq.com/v3/widget.html

```html
<body>
<!--使用name作为标记-->

<!--功能性连接
邮件连接：mailto
QQ链接-->
<a href="mailto:1395950933@qq.com">点击联系我</a>
<!--功能性连接
QQ链接-->
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3295600743&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:3295600743:41" alt="开始激情聊天" title="开始激情聊天"/></a>
</body>
</html>
```

## 行内元素和块元素

块元素：无论内容有多少，元素自己独占一行

- 段落标签：`<p></p>`
- 分割线标签：`<hr/>` 
- 标题标签：`<h1> </h1>`

行内元素：内容撑开宽度，左右都是行内元素的可以排在一行

- a标签：`<a> </a>`
- 粗体：`<strong></strong>`
- 斜体：`<em></em>`

## 列表标签

### 什么是列表

列表就是信息资源的一种展示形式。它可以使信息结构化和条理化，并以列表的样式显示出来，以便浏览者能更快捷地获得相应的信息。

列表的分类：

- 无序列表：`<ul></ul>`
- 有序列表：`<ol></ol>`
- 定义列表：`<dl></dl>`
  - `<dl></dl>`：自定义列表
  - `<dt></dt>`：自定义列表名称
  - `<dd></dd>`：自定义列表元素

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>列表学习</title>
</head>
<body>
<!--有序列表-->
<ol>
    <li>java</li>
    <li>python</li>
    <li>前端</li>
    <li>c/c++</li>
    <li>后端</li>
</ol>
<hr/>
<!--无序列表-->
<ul>
    <li>java</li>
    <li>python</li>
    <li>前端</li>
    <li>c/c++</li>
    <li>后端</li>
</ul>
<!--自定义列表
dl:标签
dt:列表名称
dd:列表内容
-->
<dl>
    <dt>学科</dt>
    <dd>java</dd>
    <dd>python</dd>
    <dd>linux</dd>
    <dd>c/c++</dd>
</dl>
</body>
</html>
```

## 表格

表格标签就是html通过表格标签在网页中显示一个类似Excel表格的内容，表格的基本结构有以下几个部分：

- 单元格
- 行
- 列
- 跨行
- 跨列

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>表格学习</title>
</head>
<body>
<!--表格table
行 tr rows
列 td-->
<!--border表格的边框-->
<table border="1px">
    <tr>
<!--colspan 跨列        -->
        <td colspan="4">1-1</td>
    </tr>
    <tr>
<!--rowspan跨行-->
        <td rowspan="2">2-1</td>
        <td>2-2</td>
        <td>2-3</td>
        <td>2-4</td>
    </tr>
    <tr>
        <td>3-1</td>
        <td>3-2</td>
        <td>3-3</td>
    </tr>
</table>
</body>
</html>
12345678910111213141516171819202122232425262728293031
```

## 视频和音频

```html
    <title>视频和音频学习</title>
</head>
<body>
<!--音频和视频
src：资源路径
controls：控制调
autoplay：自动播放-->
<video src="../resources/video/2.mp4" controls autoplay></video>
<audio src="../resources/audio/3.mp3" controls autoplay></audio>
</body>
</html>
1234567891011
```

[外链图片转存失败,源站可能有防盗链机制,建议将图片保存下来直接上传(img-IPfs3T9M-1590727946213)(C:\Users\A450\AppData\Roaming\Typora\typora-user-images\image-20200528154532012.png)]

```html
  <title>页面结构分析</title>
</head>
<body>
<header>
    <h2>网页头部</h2>
</header>
<section>
    <h2>网页主体</h2>
</section>
<footer>
    <h2>网页脚步</h2>
</footer>
<!--导航 nav-->
<nav></nav>
</body>
</html>
12345678910111213141516
```

## iframe内联框架

```html
  <title>内联框架iframe</title>
</head>
<body>
<!--iframe内联框架
src：地址
w-h：宽，高-->
<iframe src="" name="change" frameborder="0" width="1000" height="800">点击跳转学习java</iframe>
<a href="https://www.baidu.com" target="change" >点击跳转</a>


</body>
</html>
123456789101112
```

## 表单

```html
    <title>表单学习</title>
</head>
<body>
<h1>注册</h1>
<!--表单form
action:表单提交的位置，可以是网站，也可以是一个请求处理地址
method:post，get 提交方式
    get方式提交：我们可以在url中看到我们提交的信息，不安全，但高效
    post：比较安全，传输大文件-->
<form action="10.表单.html" method="post">
<!--文本输入框 Input type="text"  submit提交按钮 reset重置按钮  -->
    <p>名字：<input type="text" name="username"/></p>
    <p>密码：<input type="password" name="pwd"/></p>
    <p><input type="submit">
        <input type="reset"></p>


</form>
123456789101112131415161718
```

[外链图片转存失败,源站可能有防盗链机制,建议将图片保存下来直接上传(img-vFjtzWJo-1590727946221)(C:\Users\A450\AppData\Roaming\Typora\typora-user-images\image-20200528164628934.png)]

```html
    <title>表单学习</title>
</head>
<body>
<h1>注册</h1>
<!--表单form
action:表单提交的位置，可以是网站，也可以是一个请求处理地址
method:post，get 提交方式
    get方式提交：我们可以在url中看到我们提交的信息，不安全，但高效
    post：比较安全，传输大文件-->
<form action="10.表单.html" method="post">
<!--文本输入框 Input type="text"  name 输入框的名字
value 默认一个初始化值
maxlength 文本框最大输入字符
size 文本框长度
submit提交按钮 reset重置按钮
 -->
    <p>名字：<input type="text" name="username" value="帅" maxlength="8" size="10"/></p>
    <p>密码：<input type="password" name="pwd"/></p>
<!--单选框按钮  name必须为一致，才能表示为同一组，才能只选择一个
  input标签 类型是radio时，必须有value-->
    <p>
        <input type="radio" value="boy" name="sex"/>男
        <input type="radio" value="girl"name="sex">女

    </p>
    <p><input type="submit">
        <input type="reset"></p>


</form>

</body>
</html>
123456789101112131415161718192021222324252627282930313233
```

### 单选框多选框

```html
<!--单选框按钮 input type="radio" name必须为一致，才能表示为同一组，才能只选择一个
  input标签 类型是radio时，必须有value
	checked 默认选中-->
    <p>
        <input type="radio" value="boy" name="sex"/>男
        <input type="radio" value="girl"name="sex">女
<!-- 多选框标签 input type="checkbox"   -->
        <input type="checkbox" value="sleep" name="hobby"/>睡觉
        <input type="checkbox" value="talk" name="hobby"/>聊天
        <input type="checkbox" value="game" name="hobby" checked/>游戏
        <input type="checkbox" value="eat" name="hobby"/>吃东西
    </p>
123456789101112
```

### 按钮

```html
<!--    按钮
    input type="button" 普通按钮
    input type="image"  图片按钮
    input type="submit" 提交按钮
    input type="reset"  重置按钮

-->
    <p><input type="button" name="btn1" value="按钮名字"/>
        <input type="image" src="resources/image/1.jpg"/>
    </p>
    <p><input type="submit">
        <input type="reset"></p>
123456789101112
```

### 下拉框

```html
<!--下拉框 列表框
    <select>
    name是下拉框的名字
    option value 是下拉框可以选择的值
    selected是默认为那个列
-->
<p>国家
    <select name="列表名称" >
        <option value="china" selected>中国</option>
        <option value="us">美国</option>
        <option value="agt">阿根廷</option>
        <option value="md">缅甸</option>
    </select>
</p>
1234567891011121314
```

### 文本域、文件域

```thml
<!--    文本域
cols="30" rows="10" 行，，，列
-->
    <p>反馈：<textarea name="textarea"  cols="30" rows="10">文本内容</textarea></p>
<!--    文件域

-->
    <p><input type="file" name="files">
        <input type="button" value="上传" name="upload">
    </p>
12345678910
```

### 功能验证

```html
<!--  邮箱验证  -->
    <p><input type="email" name="email"></p>
<!--    URL验证-->
    <p><input type="url" name="url"></p>
<!--    数字验证
max最大数量
min 最小数量
step 每次点击增加或减少的数量-->
    <p><input type="number" name="num" max="100" min="1" step="1"></p>
<!--滑块-->
    <p>音量<input type="range" name="voice" max="100" min="0" step="2" ></p>
<!--    搜索框-->
    <p><input type="search" name="search"></p>    
12345678910111213
```

### 表单的应用

只读：value=“admin”（先给一个默认值） readonly

禁用：disabled

隐藏：hidden

单词：description 描述 content内容

```html
<!--    增强鼠标可用性-->
   <p> <lable for="mark">点击</lable>
       <input type="text" id="mark"/>
   </p>
1234
```

### 表单初级验证

```thml
placeholder="请输入用户名"<!--提示属性-->
required 非空判断
pattern 正则表达式
123
```

## 基础汇总

```html
<!--告诉浏览器使用的规范-->
<!DOCTYPE html>
<html lang="en">
<!--网页的头部-->
<head>
<!--    meta描述标签，描述网站信息-->
    <meta name="description" content="和狂神学java">
    <meta charset="UTF-8">
    <title>HTML小练习</title>
</head>
<body>
<a name="top">顶部</a>
<!--段落-->
<p>
    <b>你好，世界</b><br/>
    <em>i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; love you</em>

    &copy;赵东
</p>
<!--水平线-->
<hr/>
<!--src=相对路径 alt=加载失败后显示文字 title=鼠标放在图片上显示的文字 width宽 height高-->
<img src="../resources/image/1.jpg" alt="我的图片" title="悬停文字" width="800" height="600">
<!--锚链接 先使用a标签 定义名字做标记 再想返回标记的地方 a标签 #名字-->
<!-- a标签
href：必填，表示要跳转到那个页面
target：表示窗口在那里打开
_blank 在新标签中打开
_self   在自己的网页中打开
-->
<a href="https://www.baidu.com" target="_blank">点击跳转百度</a>
<!--功能性连接
邮件连接：mailto
QQ链接-->
<a href="mailto:1395950933@qq.com">点击联系我</a>
<!--有序列表
应用范围：试卷，问答。。。-->
<ol>
    <ul>Java</ul>
    <ul>C++</ul>
    <ul>运维</ul>
    <ul>前端</ul>
</ol>
<!--无序列表
应用范围：导航，侧边栏
-->
<ul>
    <li>Java</li>
    <li>C++</li>
    <li>运维</li>
    <li>前端</li>

</ul>
<!--自定义列表
dl:标签
dt:列表名称
dd:列表内容
范围：公司网站-->
<dl>
    <dt>学科</dt>
    <dd>语文</dd>
    <dd>数学</dd>
    <dd>英语</dd>
    <dd>自然</dd>
</dl>
<!--表格table
行 tr rows
列 td
border表格的边框-->
<table border="1px">
    <tr>
<!-- colspan跨列 -->
        <td colspan="4">学习java </td>
    </tr>
    <tr>
<!--rowspan跨行 -->
        <td rowspan="2">java</td>
        <td>前端</td>
        <td>数据库</td>
        <td>Tomcat</td>
    </tr>
    <tr>
        <td>框架</td>
        <td>面向对象</td>
        <td>微服务</td>
    </tr>
</table>
<!--音频和视频
src：资源路径
controls：控制调
autoplay：自动播放-->
<hr/>
<video src="../resources/video/2.mp4" controls autoplay></video>
<audio src="../resources/audio/3.mp3" controls autoplay></audio>
<a href="#top">回到顶部</a>
<!--页面结构 header网页头部
            section网页主体
            footer网页脚部-->
<header>
    <h2>网页头部</h2>
</header>
<section>
    <h2>网页主体</h2>
</section>
<footer>
    <h2>网页脚部</h2>
</footer>
<!--导航 nav-->
<nav></nav>
<hr>
<!--内联框架 iframe
src：地址
w-h：宽，高-->
<iframe src="" name="change" frameborder="0" width="1000" height="800">点击跳转学习java</iframe>
<a href="https://www.baidu.com" target="change" >点击跳转</a>
<!--表单form
action：表单提交的位置，可以是网站，也可以是一个请求处理地址
method：post，get 提交方式
    get：可以在url中看到我们提交的信息，不安全
    post：比较安全，可传输大文件-->
<form action="1.我的第一个网页.html" method="get">
<!--    文本输入框 Input type=text name输入框名字
value默认初始值
maxlength文本框输入最大字节
size文本框长度
submit提交按钮
reset重置按钮-->
    <p>请注册账号</p>
    <p>名字：<input type="text" name="username" value="帅哥" size="30" maxlength="20" placeholder="请输入用户名" ></p>
    <p>密码：<input type="password" name="pwd"></p>
<!--单选框标签 type=radio input标签类型为radio时必须有value
    checked 默认选中-->
    <p><input type="radio" value="boy" name="sex" checked>男</p>
    <p><input type="radio" value="girl" name="sex">女</p>
<!-- 多选框标签 input type=“checkbox”  -->
    <p><input type="checkbox" value="sleep" name="hobby">睡觉
        <input type="checkbox" value="talk" name="hobby">说话
        <input type="checkbox" value="study" name="hobby">学习
        <input type="checkbox" value="eat" name="hobby">吃东西
    </p>

<!--按钮
  input type="button" 普通按钮
  input type="image" 图片按钮
  input type="submit" 提交按钮
  input type="reset" 重置按钮-->
<p><input type="button" name="btn1" value="按钮名字"/>
    <input type="image" src="../resources/image/1.jpg" width="200" height="160"/>
    <input type="submit"/>
    <input type="reset"/>
</p>
<!--下拉框 列表框    -->
<p>国家
    <select name="列表名称" id="">
        <option value="china" selected>中国</option>
        <option value="us">美国</option>
        <option value="agt">阿根廷</option>
        <option value="md">缅甸</option>
    </select></p>
<!--文本域
cols 行 rows 列-->
    <p>反馈：<textarea name="textarea"  cols="30" rows="10">文本内容</textarea></p>
<!--    文件域-->
    <p><input type="file" name="files">
        <input type="button" value="上传" name="upload">
    </p>
<!--    邮箱验证-->
    <p>邮箱：<input type="email" name="email"></p>
<!--    URL验证-->
    <p>URL <input type="url" name="url"></p>
<!--    数字验证
    max 最大数量
    min 最小数量
    step 每次点击增加或减少的数量-->
    <p>数字：<input type="number" name="num" max="100" min="1" step="1">
        <!--    滑块-->
        音量：<input type="range" name="voice" max="100" min="0" step="2">
    </p>
<!--搜索框-->
    <p><input type="search" name="search"></p>
    <p><input type="submit"></p>
<!--    增强鼠标可用性-->
        <p> <label for="mark"></label>
            <input type="text" id="mark"/>
        </p>


</form>
</body>
</html>
```

