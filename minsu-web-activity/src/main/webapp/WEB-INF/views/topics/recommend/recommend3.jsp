<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="applicable-device" content="mobile">
    <meta content="fullscreen=yes,preventMove=yes" name="ML-Config">        
     <meta name="viewport" content="width=750, user-scalable=no, target-densitydpi=device-dpi">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="yes" name="apple-mobile-web-app-capable"/>
    <meta content="yes" name="apple-touch-fullscreen"/>
	<title>我的邻居是 恭王府</title>
	<link rel="stylesheet" type="text/css" href="${staticResourceUrl}/css/pageStyles.css${VERSION}003">
	<style type="text/css">
            .listImg li{margin:0px; padding:0; border: none;}
            .main{padding: 0; margin: 0;}
        </style>

</head>
<body>
<div class="swiper-container">
	    <div class="swiper-wrapper">
	        <div class="swiper-slide" id="swiper-slide1">
	        	
				<div class="banner" style="padding: 0; margin: 0; height: 100%; background:url(${staticResourceUrl}/img/s3/banner.jpg) no-repeat center bottom; background-size: 100% auto; "><div class="arrow"></div></div>
	        </div>
	        <div class="swiper-slide swiper-no-swiping" id="swiper-slide2">
	        	<div class="s2" id="main">
	        				<div class="main">

	        					

	        					<ul class="listImg">

	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/1.jpg" width="100%" alt="">
	        						</li>
	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/2.jpg" width="100%" alt="">
	        						</li>
	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/3.jpg" width="100%" alt="">
	        						</li>
	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/4.jpg" width="100%" alt="">
	        						</li>
	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/5.jpg" width="100%" alt="">
	        						</li>
	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/6.jpg" width="100%" alt="">

	        						</li>

	        						<li>
	        							<img src="${staticResourceUrl}/img/s3/7.jpg" width="100%" alt="">
	        						</li>

	        						<li class="">
	        							<img src="${staticResourceUrl}/img/s3/8.jpg" width="100%" alt="">
	        						</li>
	        						<li class="">
	        							<img src="${staticResourceUrl}/img/s3/9.jpg" width="100%" class="imgs" alt="">
	        						</li>
	        						<li class="">
	        							<img src="${staticResourceUrl}/img/s3/10.jpg" width="100%" class="imgs" alt="">
	        						</li>
	        						
	        					</ul>
	        				
	        				
	        				</div>
	        				<!--/main-->
	        				<div class="detailBtns" onclick="minsutuijianJump('${fid }','${rentWay }','${shareFlag }','${shareUrl }');">查看房源详情</div>
	        			</div>
	        			
	        </div>
	    </div>
	</div>

<script src="${staticResourceUrl}/js/jquery-2.1.1.min.js${VERSION}003" type="text/javascript"></script>
<script src="${staticResourceUrl}/js/common.js${VERSION}003"></script>
<script src="${staticResourceUrl}/js/effect.js${VERSION}003" type="text/javascript"></script>
</body>
</html>