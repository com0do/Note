# nginx

> #### 使用全站加密，http自动跳转https（可选）

 对于用户不知道网站可以进行https访问的情况下，让服务器自动把http的请求重定向到https。  
在服务器这边的话配置的话，可以在页面里加js脚本，也可以在后端程序里写重定向，当然也可以在web服务器来实现跳转。Nginx是支持rewrite的（只要在编译的时候没有去掉pcre）  
在http的server里增加\`\`\`````rewrite ^(.*) https://$host$1 permanent;```````  
这样就可以实现80进来的请求，重定向为https了。

rewrite 和正则  [http://blog.jjonline.cn/linux/nginx\_rewrite.html](http://blog.jjonline.cn/linux/nginx_rewrite.html)

rewrite 和自动跳转：[http://blog.jjonline.cn/linux/nginx\_rewrite\_pathinfo\_hiddenPHP.html](http://blog.jjonline.cn/linux/nginx_rewrite_pathinfo_hiddenPHP.html)





