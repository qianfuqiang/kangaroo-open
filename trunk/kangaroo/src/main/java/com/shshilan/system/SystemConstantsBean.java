package com.shshilan.system;
/** 
 * @author lanbz 
 * @date 2013-9-18 上午11:19:47 
 * @version 1.0 
 */
public class SystemConstantsBean {

	//文件存放目录
	private static String fileDiskPath;
	
	//图片存放路径
	private static String imagesPath;

	public  String getFileDiskPath() {
		return fileDiskPath;
	}

	public void setFileDiskPath(String fileDiskPath) {
		SystemConstantsBean.fileDiskPath = fileDiskPath;
	}

	public  String getImagesPath() {
		return imagesPath;
	}

	public static void setImagesPath(String imagesPath) {
		SystemConstantsBean.imagesPath = imagesPath;
	}
	
	
}
