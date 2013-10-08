package com.shshilan.system.navigation;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.dom4j.Document;

public class NavigationBuilder {
	private final static String NAVIGATION_CONFIG_PATH = "navigation.xml";
	private Document document;
	public NavigationBuilder(String configPath){
		configPath = StringUtils.isEmpty(configPath)? NAVIGATION_CONFIG_PATH : configPath;
		document = NavigationUtils.readConfigAsDoc(configPath);
	}
	
	
	public NavigationBuilder(){
		
	}
	
	public Navigation build(String uri){
		Navigation navContainer = new Navigation(document, uri);
		return navContainer;
	}
	
	public Navigation build(List<Document> documents,String uri){
		Navigation navContainer = new Navigation(documents, uri);
		return navContainer;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static void main(String[] args){
		testWithParams();
		testWithOutParams();
	}
	private static void testWithParams(){
		System.out.println("=============== With Params ===============");
		NavigationBuilder nb = new NavigationBuilder("test-navigation.xml");
		String uri = "/rhin-ehr/citizen/4509182.01291.29201.392-102/personal/healthInfo/edit.do?rand=0.1221312";
		Navigation nv = nb.build(uri);
		System.out.println(nv);
	}
	private static void testWithOutParams(){
		System.out.println("=============== With Out Params ===============");
		NavigationBuilder nb = new NavigationBuilder("test-navigation.np.xml");
		String uri = "/rhin-ehr/citizen/personal/healthInfo/edit.do?rand=0.1221312";
		Navigation nv = nb.build(uri);
		System.out.println(nv);
	}
}
