# linux
 * 1、fdisk -l 查看磁盘
 * 2、错误：give root password for maintenance 
 修复方法：查看数据盘挂载配置是否正确，举例：要将/dev/xvdb这类，更改成/dev/vdb，然后保存文件，重启服务器，即可恢复正常
