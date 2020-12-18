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
git push -u github master 
git push -u gitee master

```

## 2. 让脚本自动化

1. 打开控制面板

   

   ![image-20200226193556316](https://user-gold-cdn.xitu.io/2020/3/13/170d1935ff1e4ccc?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

2. 选择查看方式为小图标，接着打开管理工具

   

   ![image-20200226193650265](https://user-gold-cdn.xitu.io/2020/3/13/170d193632b7f97b?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

   1. 任务计划程序

   

   ![image-20200226193737570](https://user-gold-cdn.xitu.io/2020/3/13/170d193667587ded?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

3. 创建一个任务

   

   ![image-20200226193919347](https://user-gold-cdn.xitu.io/2020/3/13/170d1936b7d05b4f?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

4. 新建一个触发器

   

   ![image-20200226194250166](https://user-gold-cdn.xitu.io/2020/3/13/170d1936f1e28de6?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

5. 编辑触发器

   

   ![image-20200226194431632](https://user-gold-cdn.xitu.io/2020/3/13/170d19375f1b0d1b?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

6. 新建一个操作

   

   ![image-20200226194528560](https://user-gold-cdn.xitu.io/2020/3/13/170d1937a49966b3?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

7. 把脚本放进去

   

   ![image-20200226194647327](https://user-gold-cdn.xitu.io/2020/3/13/170d1937d87433a7?imageView2/0/w/1280/h/960/format/webp/ignore-error/1)

   

8. 完成