Picasso 是一款跨平台的高级二维矢量绘图引擎。Picasso提供平台无关的图形渲染技术，使它可以运行在几乎所有操作系统平台。目前支持的平台包括Windows 、 WindowsCE、 Linux。Picasso提供低层次，轻量级的二维矢量图形渲染技术，可以为不同是设备提供一致的图形输出质量。Picasso的API非常简单并且易于使用，可以支持很多高级二维图形操作，包括 Path, Transform, Gradient, Pattern, Image 和 Truetype 字体等功能，支持多种颜色模式和混合方式, 可以用在需要矢量图形操作的软件里。##
### 原作者信息
- [作者的CSDN博客] (http://blog.csdn.net/onecoolx/article/details/9156531)
 
- [Picasso - Github] (https://github.com/onecoolx/picasso)

=================================================
### 修改内容：
- gyp在Linux上的编译存在问题， 将gyp一直到了premake4。
- premake已经支持 Linux，32位Windows应用程序(平台Win10, VS2015)，由于VS的64位模式中long仍然是4字节，导致指针截断(为修补)。
- 修改部分源文件，避免在Linux Windows上编译时发生的一些错误。
=================================================
### **svg rendering**
![link](demos/tiger.png)

### **gis maps**
![link](demos/gis.png)

### **shadow**
![link](demos/shadow.png)

### **blur**
![link](demos/blur.png)

### **alpha blending**
![link](demos/flowers.png)

