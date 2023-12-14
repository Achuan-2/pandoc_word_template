

> 目前主要用的笔记软件是思源笔记，思源笔记可以使用pandoc将markdown导出为word文档，pandoc还可以设置word模板，用于导出时的自动格式化，但是很奇怪的是，全网很少人分享自己是如何制作模板的。我自己在制作模板中遇到很多问题，比如怎么设置表格样式、怎么设置列表样式。2023.12.15日，我终于突然解决了设置模板的有序列表和无序列表样式问题，使得自己的模板很大程度可用了，所以分享下目前在用的word模板，也当做一个抛砖引用，希望有更多人能分享自己的word模板！😁

## 样式预览

​![image](https://raw.githubusercontent.com/Achuan-2/PicBed/pic/assets/202312150014441.png)​

## 模板分享

有两个模板，一个标题自动编号，一个不自动编号，按需选用。

* Github：[Achuan-2/pandoc_word_template ](https://github.com/Achuan-2/pandoc_word_template)
* 蓝奏云：[https://achuan.lanzoul.com/b0f5y8sja](https://achuan.lanzoul.com/b0f5y8sja) （密码:a8om）

## 如何修改此模板

注意，要修改模板，需要更改每个类型对应的Word的样式，而不是只是自己改改样式就能work的。

### 一般样式

一般样式，只需要打开word的样式面板，鼠标点击改行，自动显示对应的样式，然后点击【修改】根据自己的需求修改样式就可以了

一般样式如下：

|样式名|描述|默认样式|
| :--------------------: | :--------------------: | :-----------------------------------------------------------------------------: |
|正文文本|在正文段落中应用|首行缩进，<br />字号小四，中文字体为宋体，英文Times New Roman<br />|
|First Paragraph|段落首段|首行缩进，<br />字号小四，中文字体为宋体，英文Times New Roman<br />|
|Compact|表格单元格|字号10，中文字体为宋体，英文Times New Roman|
|Heading 1（标题1）|一级标题|字号小二，加粗，中文字体为黑体，英文Times New Roman，<br />段前24 磅，段后24 磅<br />|
|Heading 2（标题2）|二级标题|字号三号，加粗，中文字体为黑体，英文Times New Roman|
|Heading 3（标题3）|三级标题|字号13，加粗，中文字体为黑体，英文Times New Roman|
|Heading 4（标题4）|四级标题|字号小四，中文字体为黑体，英文Times New Roman|
|Heading 5（标题5）|五级标题|字号小四，中文字体为黑体，英文Times New Roman|
|Heading 6（标题6）|六级标题|字号小四，中文字体为黑体，英文Times New Roman|
|Block Text（文本块）|引述块样式|四周添加1磅边框，左侧设置为6磅粗边框|
|Source Code|行内代码和代码块样式|底纹设置为灰色，四周添加1磅边框|

修改表格样式和列表样式比较特殊

### 表格样式

修改表格需要点击表格后，在【表设计】下拉，点击【修改表格样式】，进行修改

​![image](https://raw.githubusercontent.com/Achuan-2/PicBed/pic/assets/202312150014846.png)​

### 列表样式

#### 修改列表层级样式

> 所谓的层级样式是无序列表不同层级是圆点还是方块，有序列表则是不同层级的编号格式。

在下图①的位置点击，可以看到列表样式有两个样式，分别对应无序列表和有序列表样式，右键修改。

​![image](https://raw.githubusercontent.com/Achuan-2/PicBed/pic/assets/202312150014078.png)​

​![image](https://raw.githubusercontent.com/Achuan-2/PicBed/pic/assets/202312150014745.png)​

#### 修改列表缩进

鼠标点击列表所在行，右键点击【调整列表缩进】，选择【设置所有级别】

​![image](https://raw.githubusercontent.com/Achuan-2/PicBed/pic/assets/202312150014510.png)​

‍

## 模板已知问题

1. 有序列表和无序列表每个项目的间距有点大，与【正文】样式有关，暂时找不到方法，即保持现有正文方式，又能减小列表间距。
2. 图片无法自动居中，另外注意图片添加题注要居中的话，必须先让图片居中，再添加题注。
3. 模板可以做到表格整体居中，但是表格单元格自动居中需要思源笔记文档中的表格本身先设置居中，否则不居中。这是因为markdown表格默认是居左的，markdown的居中语法如下：

    ```markdown
    | header 1 | header 2 |
    | :--------: | :--------: |
    |  cell 1  |  cell 2  |
    |  cell 3  |  cell 4  |
    |  cell 5  |  cell 6  |
    ```