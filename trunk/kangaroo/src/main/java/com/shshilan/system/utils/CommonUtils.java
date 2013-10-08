package com.shshilan.system.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
/** 
 * @author lanbz 
 * @date 2013-9-18 下午1:54:37 
 * @version 1.0 
 */
public final class CommonUtils {

	 static SimpleDateFormat sf1=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
	 static SimpleDateFormat sf2=new SimpleDateFormat("yyyy-MM-dd");

    /**
     * 返回最新的UUID号码
     *
     * @return String UUID，长50位
     *
     */
    public final static String getUUID() {
    	    UUID uuid = UUID.randomUUID();   
            return uuid.toString();
    }
    
    
    /**
     * 
     * @param date
     * @return yyyy-MM-dd  HH:mm:ss
     */
    public final static String date2String(Date date){
    	return sf1.format(date);
    }
    
    
    /**
     * 
     * @param date
     * @return yyyy-MM-dd
     */
    public final static String getTotayString(){
    	return sf2.format(new Date());
    }
}
