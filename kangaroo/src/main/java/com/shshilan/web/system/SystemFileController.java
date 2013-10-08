package com.shshilan.web.system;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.shshilan.entity.SystemFile;
import com.shshilan.entity.VideoConvert;
import com.shshilan.service.system.SystemFileService;
import com.shshilan.service.system.VideoConvertService;
import com.shshilan.system.Constants;
import com.shshilan.system.SystemConstantsBean;
import com.shshilan.system.convert.ConvertTool;
import com.shshilan.system.utils.CommonUtils;

/** 
 * @author lanbz 
 * @date 2013-9-18 上午10:59:56 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/system/file/")
public class SystemFileController {

	
	@Autowired
	private SystemFileService systemFileService;
	@Autowired
	private SystemConstantsBean systemConstantsBean;
	@Autowired
	private VideoConvertService videoConvertService;
	
	@RequestMapping(value = "upload")
	@ResponseBody
	public String upload(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		 SystemFile systemFile=new SystemFile();
		try{
			String uploadDir = systemConstantsBean.getFileDiskPath();
			File dirPath = new File(uploadDir);
			if (!dirPath.exists()) {
				dirPath.mkdirs();
			}
			
			//上传操作    
	          FileItemFactory factory = new DiskFileItemFactory();    
	          ServletFileUpload upload = new ServletFileUpload(factory);    
	          upload.setHeaderEncoding("UTF-8");    
	          try{    
	              @SuppressWarnings("rawtypes")
				List items = upload.parseRequest(request);    
	              if(null != items && items.size()>0){ 
	            	 
	            	  @SuppressWarnings("rawtypes")
					  Iterator itr = items.iterator();    
	                  while(itr.hasNext()){    
	                      FileItem item = (FileItem)itr.next();  
	                      if(item.isFormField()){    
	                         continue;    
	                      }else{    
	                    	//以当前精确到秒的日期为上传的文件的文件名    
	                          SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddkkmmss"); 
	                          String nowString=sdf.format(new Date());
	                          String newName=nowString+"-"+CommonUtils.getUUID();
	                          String extensionName=getExtensionName(item.getName());
	                          
	                          String oldFileName=newName+"."+extensionName;
	                          String flVfileUrl=newName+".flv";
	                          
	                          //需要转换视频
	                          if(!"flv".equalsIgnoreCase(extensionName)){
	                        	  
	                        	  //ffmpeg能解析的格式
	                        	  if(0==ConvertTool.checkContentType(extensionName)){
		                        	  VideoConvert convent=new VideoConvert();
		                        	  convent.setCreateTime(CommonUtils.date2String(new Date()));
		                        	  convent.setNewExpanded("flv");
		                        	  convent.setOldExpanded(extensionName);
		                        	  convent.setNewPath(flVfileUrl);
		                        	  convent.setOldPath(oldFileName);
		                        	  convent.setReviewed(Constants.REVIEWE_DISABLE);
		                        	  videoConvertService.sava(convent);
		                           //ffmpeg无法解析的文件格式(wmv9，rm，rmvb等),
	                        	  }else  if(1==ConvertTool.checkContentType(extensionName)){
	                        		  
	                        	  }else{
	                        		  
	                        	  }
	                        	  
	                          }else{
	                        	  flVfileUrl=oldFileName;
	                          }
	                         
	                          
	                          //原名写进磁盘
	                          File savedFile = new File(uploadDir,oldFileName);    
	                          item.write(savedFile);  
	                          
	                        
	                          systemFile.setCreateTime(nowString);
	                          systemFile.setFileType(extensionName);
	                          systemFile.setFileUrl(flVfileUrl);
	                          systemFile.setState(Constants.STATE_DISABLE);
	                          systemFileService.saveDbFile(systemFile);
	                          
	                       } 
	                  }
	            	  
	              }    
	          }catch(Exception e){    
	              e.printStackTrace();    
	          }  
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return JSON.toJSONString(systemFile);
	}

	
	public static String getExtensionName(String filename) {   
        if ((filename != null) && (filename.length() > 0)) {   
            int dot = filename.lastIndexOf('.');   
            if ((dot >-1) && (dot < (filename.length() - 1))) {   
                return filename.substring(dot + 1);   
            }   
        }   
        return filename;   
    } 
	

	
	
}
