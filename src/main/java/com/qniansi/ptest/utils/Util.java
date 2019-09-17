package com.qniansi.ptest.utils;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class Util {
    /**
     * 向指定地址发送GET请求
     * @param url
     * @return
     */
    public static String get(String url){
        try {
            //连接对象
            URL urlObj=new URL(url);
            //打开连接
            URLConnection connection=urlObj.openConnection();
            //读取内容
            InputStream is=connection.getInputStream();
            byte[] b=new byte[1024];
            int len;
            StringBuilder sb=new StringBuilder();
            while ((len=is.read(b))!=-1){
                sb.append(new String(b,0,len));
            }
            return  sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 向指定地址发送POST请求，且带数据
     * @param url
     * @param data
     * @return
     */
    public static String post(String url,String data){
        try {
            URL urlObj=new URL(url);
            URLConnection connection=urlObj.openConnection();
            //要发送数据，设置为可发送数据状态
            connection.setDoOutput(true);
            //获取输出流
            OutputStream os=connection.getOutputStream();
            //写数据
            os.write(data.getBytes());
            os.close();
            //获取输入流
            InputStream is=connection.getInputStream();
            byte[] b=new byte[1024];
            int len;
            StringBuilder sb=new StringBuilder();
            while ((len=is.read(b))!=-1){
                sb.append(new String(b,0,len));
            }
            return  sb.toString();
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
