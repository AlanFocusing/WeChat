package com.qniansi.ptest.utils;

import net.sf.json.JSONObject;

public class GetAccessToken {
    //调用本接口来获取access_token地址
    private static final String GET_TOKEN_URL="https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ID&corpsecret=SECRET";
   //公众号appid和appsecret
    private static final String CORPID="ww32c95d41fc00bb84";
    private static final String CORPSECRET="hNyb6N9wnr0jEBJaUgJXrIOnVtViJk1eMGC5Y0bDJP4";
    //用于存储access_token
    private static AccessToken at;

    /**
     * 获取token
     */
    private  static void getToken(){
        String url=GET_TOKEN_URL.replace("ID",CORPID).replace("SECRET",CORPSECRET);
        String access_token=Util.get(url);
        JSONObject jsonObject=JSONObject.fromObject(access_token);
        String token=jsonObject.getString("access_token");
        String expireIn=jsonObject.getString("expires_in");
        at=new AccessToken(token,expireIn);
    }

    /**
     * 向外暴露的获取token的方法
     * @return
     */
    public static String getAccessToken() {
        if(at==null||at.isExpired()) {
            getToken();
        }
        return at.getAccessToken();
    }
}
