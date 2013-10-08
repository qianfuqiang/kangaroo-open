package com.shshilan.system.navigation;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.dom4j.Element;

public class NavItem {
	private String icon;
	private String label;
	private String link;
	private String target;
	private List<NavItem> subItems = new ArrayList<NavItem>();
	private boolean actived;
	private Navigation navigation;
	private NavItem parent;
	private int index;
	
	
	
	
	public NavItem(){}
	public NavItem(Navigation navigation, Element el, String currUri, NavItem parent){
		//init attributes
		setNavigation(navigation);
		setIcon(StringUtils.defaultString(el.attributeValue("icon")));
		setLabel(StringUtils.defaultString(el.attributeValue("label")));
		setLink(StringUtils.defaultString(el.attributeValue("link")));
		setTarget(StringUtils.defaultString(el.attributeValue("target")));
		
		String index=StringUtils.defaultString(el.attributeValue("index")).equals("")?"0":el.attributeValue("index");
		setIndex(Integer.valueOf(index));
		
		setParent(parent);
		//set Actived when currUri is match navItem config
		setActived(Pattern.matches(getMatchModelLinkRegex(), currUri));
		genAndSetArgsToNavigation(currUri);
		//init subitems
		if(el.selectNodes("navItem").isEmpty()) return;
		@SuppressWarnings("unchecked")
		List<Element> navItemElements = el.selectNodes("navItem");
		for(Element itemEl : navItemElements){
			this.subItems.add(new NavItem(this.navigation, itemEl, currUri, this));
		}
	}
	private void genAndSetArgsToNavigation(String currUri) {
		if(!isActived()){
			return;
		}
		//find Args
		Pattern pattern = NavigationUtils.getPattern(getMatchModelLinkRegex());
		Matcher argNameM = pattern.matcher(getLink());
		Matcher argValueM = pattern.matcher(currUri);
		if((argNameM.find() && argValueM.find()) && (argNameM.groupCount() == argValueM.groupCount())){
			for(int i=1; i<=argNameM.groupCount(); i++){
				String argName = StringUtils.substringBetween(argNameM.group(i), "{", "}");
				String argValue = argValueM.group(i);
				this.navigation.setArg(argName, argValue);
			}
		}
	}
	private String getMatchModelLinkRegex(){
		String mLink = getModelLink();
		mLink = mLink.replaceAll("(\\{\\w+\\})", "(.+)");
		mLink = mLink + "[^/]+\\.do.*";
		return mLink;
	}
	private String getModelLink(){
		return StringUtils.substringBeforeLast(getLink(), "/")+"/";
	}
	
	public void setNavigation(Navigation navigation) {
		this.navigation = navigation;
		for(NavItem item : this.subItems){
			item.setNavigation(this.navigation);
		}
	}
	public void setActived(boolean actived) {
		this.actived = actived;
		if(!actived){
			return;
		}
		//只有在当前菜单是活动菜单情况下才将上级菜单也设置为激活
		if(getParent() != null){
			getParent().setActived(actived);
		}
		//设置Navigation的当前活动菜单
		if(this.navigation != null){
			this.navigation.setActiveItem(this);
		}
	}
	public void setParent(NavItem parent) {
		this.parent = parent;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getLink() {
		return link;
	}
	public String getOutLink(){
		Map<String,String> args = this.navigation.getArgs();
		if(args == null || args.isEmpty()){
			return link;
		}
		String outLink = link;
		for(Map.Entry<String, String> entry : args.entrySet()){
			outLink = outLink.replaceAll("\\{"+entry.getKey()+"\\}", entry.getValue());
		}
		return outLink;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public List<NavItem> getSubItems() {
		return subItems;
	}
	public boolean isActived() {
		return actived;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public NavItem getParent() {
		return parent;
	}
	
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String toString(){
		StringBuilder space = new StringBuilder("    ");
		NavItem parent = getParent();
		while(parent!=null){
			space.append("    ");
			parent = parent.getParent();
		}
		return String.format("\n%s{icon:'%s', label:'%s', outLink:'%s', target:'%s', actived:%s, navigation:%s, subItems:%s}", space.toString(), getIcon(), getLabel(), getOutLink(), getTarget(), isActived(), (navigation!=null),getSubItems());
	}
}
