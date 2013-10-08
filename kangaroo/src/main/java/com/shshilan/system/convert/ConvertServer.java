package com.shshilan.system.convert;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

import org.springframework.beans.factory.annotation.Autowired;

import com.shshilan.entity.VideoConvert;
import com.shshilan.service.system.VideoConvertService;

/** 
 * @author lanbz 
 * @date 2013-9-30 下午3:28:40 
 * @version 1.0 
 */
public class ConvertServer {

	
	private ConvertConsumer convertConsumer;
	
	@Autowired
	private VideoConvertService videoConvertService;
	// 需要转换的视频文件队列
	static BlockingQueue<VideoConvert> convertQueue = new LinkedBlockingQueue<VideoConvert>(10);
	
	
	private static String videoPath;
	
	private static String ffmpegPath;
	
	
	
	
	@SuppressWarnings("static-access")
	public  ConvertServer(String videoPath,String ffmpegPath) {
		this.videoPath=videoPath;
		this.ffmpegPath=ffmpegPath;
	}
	
	
	
    public void init(){
        convertConsumer=new ConvertConsumer(videoConvertService,convertQueue);
	}

	public void run(){
		init();
		new Thread(convertConsumer).start();
	}
	
	
	public static void put(VideoConvert e){
		try {
			convertQueue.put(e);
		} catch (InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	
	
	  // ffmpeg能解析的格式：（asx，asf，mpg，wmv，3gp，mp4，mov，avi，flv等）
    public static boolean processFLV(String oldfilepath,String newfilepath) {

        if (!checkfile(videoPath+oldfilepath)) {
            System.out.println(oldfilepath + " is not dir");
            return false;
        }
        oldfilepath =videoPath+oldfilepath;
        newfilepath =videoPath+newfilepath;
        
        
        
        List<String> command = new ArrayList<String>();
        command.add(ffmpegPath);
        command.add("-i");
        command.add(oldfilepath);
        command.add("-ab");
        command.add("64");
        command.add("-ar");
        command.add("22050");
        command.add("-qscale");
        command.add("8");
        command.add("-r");
        command.add("15");
        command.add("-s");
        command.add("640×480");
        command.add(newfilepath);
        try {
            
        	 Process videoProcess = new ProcessBuilder(command).redirectErrorStream(true).start();      
        	 new PrintStream(videoProcess.getErrorStream()).start();
        	 new PrintStream(videoProcess.getInputStream()).start();
        	      
        	 videoProcess.waitFor();
            
            
            
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

	

private static boolean checkfile(String path) {
    File file = new File(path);
    if (!file.isFile()) {
        return false;
    }
    return true;
}
	

}

class PrintStream extends Thread 
{
    java.io.InputStream __is = null;
    public PrintStream(java.io.InputStream is) 
    {
        __is = is;
    } 

    public void run() 
    {
        try 
        {
            while(this != null) 
            {
                int _ch = __is.read();
                if(_ch != -1) 
                    System.out.print((char)_ch); 
                else break;
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        } 
    }
}
