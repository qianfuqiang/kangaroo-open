package com.shshilan.system.navigation;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.Element;


public class Navigation {
	private List<NavItem> items = new ArrayList<NavItem>();
	private NavItem activeItem;
	private List<Document> documents=new ArrayList<Document>() ;
	private String currUri;
	private Map<String,String> args = new HashMap<String,String>();
	/**
	 * 只有一个菜单的工程
	 * @param document
	 * @param currUri
	 */
	public Navigation(Document document, String currUri){
		//init attributes
		documents.add(document);
		this.currUri = currUri;
		//init navItems
		if(documents.size()>0){
			@SuppressWarnings("unchecked")
			List<Element> navItemElements =documents.get(0).getRootElement().selectNodes("navItem");
			for(Element itemEl : navItemElements){
				addItem(new NavItem(this, itemEl, currUri, null));
			}
		}
	}
	
	/**
	 * 多个菜单组合工程
	 * @param documents
	 * @param currUri
	 */
	public Navigation(List<Document> documents, String currUri){
		
		List<NavItem> tempitems=NavigationUtils.getAllNavItemElement(this, currUri,documents);
		items.addAll(tempitems);
		
		ComparatorNavItem comparator=new ComparatorNavItem();
		Collections.sort(items, comparator);
	}
	
	
	public void addItem(NavItem navItem){
		this.items.add(navItem);
	}
	public void setArg(String name, String value){
		args.put(name, value);
	}
	public Map<String, String> getArgs() {
		return args;
	}
	public String getCurrUri() {
		return currUri;
	}
	public List<NavItem> getItems() {
		return items;
	}

	public NavItem getActiveItem() {
		return activeItem;
	}
	public void setActiveItem(NavItem activeItem) {
		this.activeItem = activeItem;
	}
	public List<NavItem> getNavRoute(){
		if(this.activeItem == null){
			return null;
		}
		LinkedList<NavItem> navRoute = new LinkedList<NavItem>();
		NavItem pni = this.activeItem;
		navRoute.addFirst(pni);
		while(null != (pni = pni.getParent())){
			navRoute.addFirst(pni);
		}
		return navRoute;
	}
	public String toString(){
		return String.format("{currUri:'%s', \n activeItem:%s, \nitems:%s}", getCurrUri(), getActiveItem(), getItems());
	}
	
	

	static class ComparatorNavItem implements Comparator<Object>{

		 public int compare(Object arg0, Object arg1) {
			 NavItem item0=(NavItem)arg0;
			 NavItem item1=(NavItem)arg1;
		     int flag=item0.getIndex()-item1.getIndex();
		     return flag; 
		 }
		 
    }
}
