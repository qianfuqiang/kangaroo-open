# kangaroo-open 使用帮助 #




# 项目 kangaroo #

  * 修改application.properties 数据库配置和视频上传路径
  * 默认帐号 admin/admin
  * 



# 项目 videoEngine #

> 修改red5-common.xml 文件中的bean 为kangaroo 项目flv视频 存放路径

> 

&lt;bean id="streamFilenameGenerator" class="com.shshilan.red5.CustomFilenameGenerator"&gt;


> 

&lt;property name="recordPath" value="E:\\test\"/&gt;


> > 

&lt;property name="playbackPath" value="E:\\test\"/&gt;



> 

&lt;/bean&gt;




# tomcat 部署 #

> 如果是新手   可以将kangaroo 和 videoEngine同时部署的同个tomcat下面。
> 如果高手。。。。可以自己设计部署