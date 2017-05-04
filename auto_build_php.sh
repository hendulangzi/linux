#!/bin/bash
## build src
echo $1 #project git url
webroot="/home/project/build_web/"
ngx_root="/etc/nginx/sites-available/"
giturl=$1
port=$2

#1、build direct
dir=$webroot"test"
if [ ! -d $dir ]; then
mkdir $dir
else  
d="`date +%Y%m%d%H%M%S`"
cp -r $dir $dir"_"$d
rm -rf $dir
mkdir $dir
fi
cd $dir

#2、download project
#git clone "$1"

#3、get project name
last=${giturl##*/}
project_name=${last%.*}
echo $project_name

#4、set nginx config for the project
ngx_conf=$project_name".conf"
echo $ngx_conf
new_conf=$ngx_root$ngx_conf
echo $new_conf
#5、如果没有创建过配置文件
if [ ! -d $new_conf ]; then
#创建配置文件
sudo cp $webroot"create.conf" $new_conf
#替换文件内容
sudo sed -i "s/@port@/$port/g" $new_conf 
sudo sed -i "s/@project_name@/"${project_name}"/g" $new_conf 
sudo sed -i "s/@server_name@/www.$project_name.com/g" $new_conf 
fi
