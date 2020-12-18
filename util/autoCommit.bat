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
