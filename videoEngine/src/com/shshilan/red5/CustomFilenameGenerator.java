package com.shshilan.red5;

import org.red5.server.api.IScope;
import org.red5.server.api.stream.IStreamFilenameGenerator;

/** 
 * @author lanbz 
 * @date 2013-9-29 下午2:33:16 
 * @version 1.0 
 */
public class CustomFilenameGenerator implements IStreamFilenameGenerator {

    /** Path that will store recorded videos. */
    public String recordPath = "rstreams/";
    /** Path that contains VOD streams. */
    public String playbackPath = "streams/";
    
    
	@Override
	public String generateFilename(IScope scope, String name, GenerationType type) {
		// TODO Auto-generated method stub
		return generateFilename(scope, name, null, type);
	}

	public String generateFilename(IScope scope, String name,
            String extension, GenerationType type) {
        String filename;
        if (type == GenerationType.RECORD)
            filename = recordPath + name;
        else
            filename = playbackPath + name;
        
        if (extension != null)
            // Add extension
            filename += extension;
        
        return filename;
    }
	@Override
	public boolean resolvesToAbsolutePath() {
		// TODO Auto-generated method stub
		return true;
	}

	public String getRecordPath() {
		return recordPath;
	}

	public void setRecordPath(String recordPath) {
		this.recordPath = recordPath;
	}

	public String getPlaybackPath() {
		return playbackPath;
	}

	public void setPlaybackPath(String playbackPath) {
		this.playbackPath = playbackPath;
	}

}
