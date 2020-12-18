# 自动化脚本

自动同步到github、gitee仓库中

## 1. 我的脚本

新建一个autoCommit.bat就行

```bash
:: 这是我脚本放的盘，我放在D盘中
d:       
:: 这是脚本的具体路径，D:\Documents\Markdown文档\01 JAVA 学习笔记\util                         
cd Documents\Markdown文档\01 JAVA 学习笔记                         
:: 添加修改
git add .         
:: 自动push学习笔记，auto commit是自定义的                  
git commit -m ":recycle: auto commit"      
:: 同时推送到两个仓库
git push -u gitee master
git push -u github master 
```

但是如果路径、文件名含有中文的话，就无法识别了，但是可以通过转码来解决这个问题；默认的bat的编码格式是UTF-8，这时只需将其转换成==ANSI 格式==即可；

![在这里插入图片描述](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218175847.png)

## 2. 让脚本自动化

1. 打开控制面板

   

   ![image-20200226193556316](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113217.webp)

   

2. 选择查看方式为小图标，接着打开管理工具

   

   ![image-20200226193650265](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113220.webp)

   

   1. 任务计划程序

   

   ![image-20200226193737570](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113222.webp)

   

3. 创建一个任务

   

   ![image-20200226193919347](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113224.webp)

   

4. 新建一个触发器

   

   ![image-20200226194250166](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113226.webp)

   

5. 编辑触发器

   

   ![image-20200226194431632](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113227.webp)

   

6. 新建一个操作

   

   ![image-20200226194528560](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218113230.webp)

   

7. 把脚本放进去

   ![image-20201218114229047](https://aliyun-typora-img.oss-cn-beijing.aliyuncs.com/imgs/20201218114229.png)

   

8. 隐藏黑框：SYSTEM 账户执行批处理

   ![img](https://cyhour.com/wp-content/uploads/2018/08/809-system.png)

   SYSTEM 是系统账户，使用它来执行程序相当于在后台隐藏运行，所以黑框就不会出来了！