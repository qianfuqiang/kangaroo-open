package com.shshilan.system.navigation;

import java.util.ArrayList;

import java.util.List;

import org.dom4j.Document;


/** 
 * @author lanbz 
 * @date 2013-8-6 上午11:19:27 
 * @version 1.0 
 */
public class NavigationObserver {

	public static String contextPath="";
	public static boolean plugNav=false;
	
	//保存所有jar 下面的navigation.xml 文件的 Document 对象
	public static List<Document> plugNavDocList=new ArrayList<Document>();
	
	
	public static void addDocument(Document document){
		plugNavDocList.add(document);
	}
	
	public static List<Document> getAllNavDocument(){
		return plugNavDocList;
	}

}
