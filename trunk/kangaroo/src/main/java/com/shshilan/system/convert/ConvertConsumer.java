package com.shshilan.system.convert;

import java.util.concurrent.BlockingQueue;



import com.shshilan.entity.VideoConvert;
import com.shshilan.service.system.VideoConvertService;

/** 
 * @author lanbz 
 * @date 2013-9-30 下午4:03:14 
 * @version 1.0 
 */
public class ConvertConsumer implements Runnable{

	private VideoConvertService videoConvertService;
	
	private  BlockingQueue<VideoConvert> queue;
	
	public  ConvertConsumer(VideoConvertService videoConvertService,BlockingQueue<VideoConvert> queue) {
		this.videoConvertService=videoConvertService;
		this.queue=queue;
	}
	
	@Override
	public void run() {
		VideoConvert node;
		try {
			while (null!=(node=queue.take())) {
				
				VideoConvert dbNode=videoConvertService.get(node.getId());
				if(null==dbNode)continue;

				System.out.println("ConvertConsumer run 1");
				boolean result=ConvertServer.processFLV(dbNode.getOldPath(), dbNode.getNewPath());
				if(result){
					videoConvertService.delete(dbNode.getId());
				}
				
				
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
