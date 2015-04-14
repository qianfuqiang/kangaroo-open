# 新手部署说明 #

新手kangaroo-open 部署环境、相关事项

# 基本部署所需要软、硬件环境 #

  * 1G 以上内存
  * 1G以上硬盘空间
  * 网络连通
> 
---

    * Linux 或者 windows 操作系统服务器
    * 服务器 安装有jdk （Java运行环境）
    * mysql 数据库（其他数据库也支持）
    * tomcat 6.0 以上

# 部署步骤 #

> 到 https://kangaroo-open.googlecode.com/svn/trunk/release  下载安装包
  * 解压 两个rar 到tomcat 的webapps 目录
  * 新建mysql 数据库kangaroo，这这个数据库上面运行 kangaroo-0.1.sql
  * 修改 application.properties 文件里面数据库连接等配置
  * 修改 videoEngine 目录下面的red5-common.xml

> 

&lt;bean id="streamFilenameGenerator" class="com.shshilan.red5.CustomFilenameGenerator"&gt;




&lt;property name="recordPath" value="E:\\test\"&gt;




&lt;/property&gt;




&lt;property name="playbackPath" value="E:\\test\"&gt;




&lt;/property&gt;




&lt;/bean&gt;


