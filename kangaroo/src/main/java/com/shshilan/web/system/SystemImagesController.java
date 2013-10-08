package com.shshilan.web.system;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
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
import com.shshilan.service.system.SystemFileService;
import com.shshilan.system.Constants;
import com.shshilan.system.SystemConstantsBean;
import com.shshilan.system.utils.CommonUtils;

/** 
 * @author lanbz 
 * @date 2013-9-22 上午7:32:04 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/system/images/")
public class SystemImagesController {
	
	
	@Autowired
	private SystemFileService systemFileService;
	@Autowired
	private SystemConstantsBean systemConstantsBean;
	@Autowired
	ServletContext context;
	
	
	@RequestMapping(value = "upload")
	@ResponseBody
	public String upload(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		 SystemFile systemFile=new SystemFile();
		try{
			String uploadDir = systemConstantsBean.getImagesPath();
			
			//uploadDir=request.get
			
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
	                          SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd-kk-mm-ss"); 
	                          String nowString=sdf.format(new Date());
	                          String newName=nowString+"_"+CommonUtils.getUUID();
	                          String extensionName=getExtensionName(item.getName());
	                          String fileUrl=newName+"."+extensionName;
	                          File savedFile = new File(uploadDir,fileUrl);    
	                          item.write(savedFile);  
	                          
	                        
	                          systemFile.setCreateTime(nowString);
	                          systemFile.setFileType(extensionName);
	                          systemFile.setFileUrl(fileUrl);
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
