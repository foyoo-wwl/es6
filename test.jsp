<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib uri="/cms4j" prefix="cms4j" %>
<%@ page import = "cn.com.dekn.cms.util.*,cn.com.dekn.common.util.*" %>
<%
        String date = request.getParameter("date");
        String date02 = request.getParameter("date");
        date = java.net.URLDecoder.decode(date ,"UTF-8");
        String new_key ="null";
        if(StrUtil.isNotNull(date))
        new_key = "t1.TITLE like '%"+date+"%' or t1.KEY_WORD like '%"+date+"%'";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <title>中国科学家博物馆</title>
    <link rel="stylesheet" type="text/css" href="css/style1000-1440.css" />
</head>
<body>
<div class="index-main01-right-con">
<cms4j:article class_id="4199" where="<%=new_key%>" page_size="3">
        <cms4j:article_list>
                <div class="index-main01-right-con01">
                        <h2><a target="_parent" href="<%=article_info.getURL()%>"><%=article_info.getTITLE()%></a></h2>
                        <p><a target="_parent" href="<%=article_info.getURL()%>"><%=article_info.getCONTENT()%></a></p>
                </div>
        </cms4j:article_list>
</cms4j:article>
<a id="btn" href="" target="_parent" class="index-main01-right-con01-btn">更多</a>
</div>
</body>
<script src="js/jquery-1.7.2.min.js"></script>
<script>