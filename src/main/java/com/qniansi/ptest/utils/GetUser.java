package com.qniansi.ptest.utils;

import net.sf.json.JSONObject;

public class GetUser {
    /**
     * 获取用户信息
     * @param code
     * @return
     */
    public static  String getUserInfo(String code){
        //获取access_token
        String access_token=GetAccessToken.getAccessToken();
        //获取userid
        String url_id="https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo?access_token="+access_token+"&code="+code;
        JSONObject jsonObject=JSONObject.fromObject(Util.get(url_id));
        String errcode=jsonObject.getString("errcode");
        if (errcode.equals("0")){//返回状态正确
            String userid=jsonObject.getString("UserId");
            //获取用户信息
            String url_info="https://qyapi.weixin.qq.com/cgi-bin/user/get?access_token="+access_token+"&userid="+userid;
            return Util.get(url_info);
        }
        return null;
    }
}
