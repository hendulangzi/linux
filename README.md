
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
