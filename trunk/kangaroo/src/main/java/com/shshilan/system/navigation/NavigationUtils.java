package com.shshilan.system.navigation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import com.shshilan.system.utils.SourceReaderUtils;

public class NavigationUtils {
	private final static Map<String,Pattern> Patterns = new HashMap<String,Pattern>();
	private NavigationUtils(){}
	
	public static Document readConfigAsDoc(String configPath){
		String xml = SourceReaderUtils.readResource(configPath, "utf-8");
		try {
			return DocumentHelper.parseText(xml);
		} catch (DocumentException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static Pattern getPattern(String regex){
		if(!Patterns.containsKey(regex)){
			Patterns.put(regex, Pattern.compile(regex));
		}
		return Patterns.get(regex);
	}
	
	/**
	 * 
	 * @param navigation
	 * @param currUri
	 * @param plugNavList
	 * @return
	 */
	public static List<NavItem> getAllNavItemElement(Navigation navigation,String currUri,List<Document> plugNavList){
		List<NavItem> list=new ArrayList<NavItem>();
		for (Document doc:plugNavList) {
			@SuppressWarnings("unchecked")
			List<Element> navItemElements = doc.getRootElement().selectNodes("navItem");
			for(Element itemEl : navItemElements){
				list.add(new NavItem(navigation, itemEl, currUri, null));
			}
			
		}
		return list;
	}
	
	
	
	

}
