package com.shshilan.system;


import java.util.HashMap;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/** 
 * 查询缓存
 * @author lanbz 
 * @date 2013-9-25 下午1:55:52 
 * @version 1.0 
 */
public class AppLoadCache {
	

	public static final String APP_CACHE_KEY_COURSETYPE="APP_CACHE_KEY_COURSETYPE";
	
	
	
	
	
	protected static Logger log = LoggerFactory.getLogger(AppLoadCache.class);
	private static final Map<String, Object> CACHE;
	private static volatile AppLoadCache instance;
	static {
		instance = new AppLoadCache();
		// instance a static map with an initial small (prime) size
		CACHE = new HashMap<String,Object>(3);

	}
	
	private AppLoadCache(){}
	
	public static AppLoadCache getInstance() {
		return instance;
	}
	
	
	public  void put(String key,Object value){
		synchronized (instance) {
			if(CACHE.containsKey(key))CACHE.remove(key);
			CACHE.put(key, value);
		}
		
	}
	
	public Object get(String key){
		return CACHE.get(key);
	}
	
	
}
