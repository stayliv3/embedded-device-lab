# embedded-device-lab

embedded-device-lab是一个利用qemu模拟真实世界中物联网漏洞的测试环境。由于物联网架构的特殊性，调试分析漏洞通常需要使用qemu模拟执行不同架构的可执行文件。而各种搭建环境，交叉编译是一件费事费力，令人忧伤的工作。

embedded-device-lab利用docker-compose，将各种漏洞调试环境一键化。简单使用两条命令，就可以直接使用gdb或者IDA动态分析相关漏洞。

在ubuntu16.04下安装docker/docker-compose:

```bash
# 安装pip
curl -s https://bootstrap.pypa.io/get-pip.py | python3

# 安装docker
apt-get update && apt-get install docker.io

# 启动docker服务
service docker start

# 安装compose
pip install docker-compose 
```

其他操作系统安装docker和docker-compose可能会有些许不同，如ubuntu14.04用默认源安装的docker可能是老版本，运行本项目会有不在预期中的BUG，所以最好参考docker官方推荐的安装方法（ https://docs.docker.com/engine/installation/linux/ubuntu/ ）使用官方源进行安装。

启动

```bash
# 拉取项目
git clone git@github.com:stayliv3/embedded-device-lab.git
cd embedded-device-lab

# 进入某一个漏洞/环境的目录
cd dlink605l

# 自动化编译环境
docker-compose build

# 启动整个环境
docker-compose up -d
```

每个环境目录下都有相应的说明文件，请阅读该文件，进行漏洞/环境测试。

测试完成后，删除整个环境

```
docker-compose down
```


**本项目中所有环境仅用于测试，不可作为生成环境使用！**