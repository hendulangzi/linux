
 # 本项目主要介绍linux下安装php环境

# linux
 * 1、fdisk -l 查看磁盘
 * 2、错误：give root password for maintenance 
 修复方法：查看数据盘挂载配置是否正确，举例：要将/dev/xvdb这类，更改成/dev/vdb，然后保存文件，重启服务器，即可恢复正常
 
 # linux 开机自动启动任务:
 1.查看/etc/rc.local是否有执行权限，没有就加上
 * chmod +x /etc/rc.local
 * vim /etc/rc.d/rc.local
 * /alidata/server/httpd/bin/apachectl
 * /usr/bin/php /xxx/start.php start -d 
 * /etc/init.d/mysqld
 # 关闭防火墙，不然外部无法访问
 * service iptables stop
# 集成安装包 https://oneinstack.com/
# 自动安装 https://oneinstack.com/auto/
# 检查 curl -Ss http://www.workerman.net/check.php | php
# mysql MySQL启动出现The server quit without updating PID file
 https://blog.csdn.net/aa464971/article/details/52976230
 * 解决办法其实很简单：

 * 将 /etc/mysql 下的 my.cnf 文件删除，再次启动MySQL服务

#workman打开后，其他php无法启动的问题
要在apache启动前 启动workman才行 或者卸载xcache

宝塔 报错500  http.conf 修改 MaxRequestLen 10240000

# linux一直运行php进程 及查看进程
 * 启动 nohup  php XX.php &
 * ps a 显示现行终端机下的所有程序，包括其他用户的程序。

# yii启动任务  nohup ./yii init/hq
# 如果还是不行，就初始化 yii项目：/www/wwwroot/xx/init 选择1，选择ALL
 * (https://segmentfault.com/a/1190000004316829)

# 报错：Fatal error: Cannot use 'Object' as class name as it is reserved in /www/www 
 * 切换php版本为56

# 报错：Exception 'yii\base\InvalidConfigException' with message 'The configuration for the "user" component must contain a "class" element.'
 * /www/wwwroot/wwwxxx/common/config/main.php 修改user 配置 加 'class' => 'yii\web\User',

# 数据盘挂载 linux
 * https://www.cnblogs.com/xuzhongtao/p/11346728.html
# sh: yii: command not found
 * 1.在终端输入：vim ~/.bash_profile

 * 2.在里面添加：export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/usr/X11R6/bin:.

 * 3.在:wq后，输入：source  ~/.bash_profile
 
 # php: error while loading shared libraries: libmcrypt.so.4: cannot open shared object file: No such file or directory
  * yum install libmcrypt
