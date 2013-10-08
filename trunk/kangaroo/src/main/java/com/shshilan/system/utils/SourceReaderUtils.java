package com.shshilan.system.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.log4j.Logger;

/**
 * URL页面读取器
 * @author dengqiang
 */
public class SourceReaderUtils {
    private static Logger logger = Logger.getLogger(SourceReaderUtils.class);
    private SourceReaderUtils(){}
    
    /**
     * 根据指定的url读取
     * @param urlStr
     * @return
     */
    public static String readHttp(String urlStr, String charset) {
        HttpURLConnection httpConn = null;
        try {
            URL url = new URL(urlStr);
            httpConn = (HttpURLConnection) url.openConnection();
            int responseCode = httpConn.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {// 读取数据
                return readStreamAndClose(httpConn.getInputStream(), charset);
            }else{
                logger.error(String.format("获取URL[%s]内容状态码不正确[%s]", urlStr, new Integer(responseCode)));
            }
            return null;
        } catch (MalformedURLException e) {
            throw new RuntimeException("URL地址格式错误.", e);
        } catch (IOException e) {
            throw new RuntimeException("HTTP读取数据IO异常.", e);
        } finally {
            try {
                if (httpConn != null)
                    httpConn.disconnect();
            } catch (Exception e) {
                logger.error("关闭连接时发生异常", e);
            }
        }
    }
    
    /**
     * 读取类装载路径中的资源文件
     * @param sPath
     * @param charset
     * @return
     */
    public static String readResource(String sPath, String charset) {
        InputStream in = SourceReaderUtils.class.getClassLoader().getResourceAsStream(sPath);
        return readStreamAndClose(in, charset);
    }
    
    /**
     * 读取指定的输入流为字符串并自动关闭连接
     * @param in
     * @param charset
     * @return
     */
    public static String readStreamAndClose(InputStream in, String charset) {
        BufferedReader buffReader = null;
        try{
            buffReader = new BufferedReader(new InputStreamReader(in, charset));
            StringBuilder sResult = new StringBuilder();
            String line = null;
            while ((line = buffReader.readLine()) != null) {
                if (sResult.length() > 0) {
                    sResult.append("\n");
                }
                sResult.append(line);
            }
            return sResult.toString();
        } catch (IOException e) {
            throw new RuntimeException("读取数据IO异常.", e);
        } catch (Exception e){
            throw new RuntimeException("读取数据异常.", e);
        }finally {
            try {
                if (buffReader != null)
                    buffReader.close();
                if (in != null)
                    in.close();
            } catch (Exception e) {
                logger.error("关闭流时发生异常", e);
            }
        }
    }
}
