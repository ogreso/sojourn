<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1000, initial-scale=1.0">
    <meta name="renderer" content="webkit">
	<base href="${basePath}">
    <title>自如民宿报表系统 - 主页</title>

    <meta name="keywords" content="自如民宿报表系统">
    <meta name="description" content="自如民宿报表系统">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->

    <link href="${staticResourceUrl}/img/favicon.icon" rel="shortcut icon">
    <link href="${staticResourceUrl}/css/bootstrap.min.css${VERSION}" rel="stylesheet">
    <link href="${staticResourceUrl}/css/font-awesome.min.css${VERSION}" rel="stylesheet">
    <link href="${staticResourceUrl}/css/animate.css${VERSION}" rel="stylesheet">
    <link href="${staticResourceUrl}/css/style.css${VERSION}" rel="stylesheet">
    <style type="text/css">
	    .threed {
		font-size:32px; height:30px; font-family:"黑体"; font-weight:bold;
	    }
    </style>
</head>
<body class="fixed-sidebar full-height-layout gray-bg skin-2" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                <!-- 用户名 -->
                               <span class="block m-t-xs"><strong class="font-bold">${__CURRENT_LOGIN_USER_NAME__.employeeEntity.empName }</strong></span>
                               <c:if test="${__CURRENT_LOGIN_USER_NAME__.currentuserEntity.isAdmin==1 }">
                                <span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
                               </c:if>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li>
                            	<a id="contactus_a" class="J_menuItem" href="contacts.jsp">联系我们</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                            	<a href="logout">安全退出</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <c:forEach items="${currentuserResList}" var="res">
	                <li>
	                    <a href="${res.resUrl }"><i class="fa fa-edit"></i> <span class="nav-label">${res.resName }</span><span class="fa arrow"></span></a>
	                    <c:if test="${fn:length(res.childRes)!=0 }">
	                    <ul class="nav nav-second-level">
	                        <c:forEach items="${res.childRes }" var="re">
	                        	<li><a class="J_menuItem" href="${re.resUrl }">${re.resName }</a>
	                        	<c:if test="${fn:length(re.childRes)!=0 }">
	                        		<ul class="nav nav-third-level">
	                        			<c:forEach items="${re.childRes }" var="r">
	                        				<li><a class="J_menuItem" href="${r.resUrl }">${r.resName }</a></li>
	                        			</c:forEach>
	                        		</ul>
	                        	</c:if>
	                        	</li>
	                        </c:forEach>
	                    </ul>
	                    </c:if>
	                </li>
                </c:forEach>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    
<!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
            		<div class="ibox-content clearfix">
						<h1 class="threed"><strong>民宿报表管理系统</strong></h1>
                    </div>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="index.jsp">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                    </li>
                </ul>
            </div>
            <a href="logout" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%"  src="index.jsp?v=4.0" frameborder="0" data-id="index.jsp" seamless></iframe>
        </div>
        <div class="footer">
        	<div class="pull-right">&copy; 2016-2025 ziroom</div>
        </div>
    </div>
    <!--右侧部分结束-->
    
</div>

<!-- 全局js -->
<script src="${staticResourceUrl}/js/jquery.min.js?${VERSION}"></script>
<script src="${staticResourceUrl}/js/bootstrap.min.js?${VERSION}"></script>
<script src="${staticResourceUrl}/js/plugins/metisMenu/jquery.metisMenu.js${VERSION}"></script>
<script src="${staticResourceUrl}/js/plugins/slimscroll/jquery.slimscroll.min.js${VERSION}"></script>
<script src="${staticResourceUrl}/js/plugins/layer/layer.min.js${VERSION}"></script>

<!-- 自定义js -->
<script src="${staticResourceUrl}/js/hplus.js?v=4.1.0"></script>
<script type="text/javascript" src="${staticResourceUrl}/js/contabs.js${VERSION}"></script>

<!-- 第三方插件 -->
<script src="${staticResourceUrl}/js/plugins/pace/pace.min.js${VERSION}"></script>
<script type="text/javascript">
	$(function(){
		//点击查看联系我们关闭弹窗
		$("#contactus_a").click(function(){
			$(".dropdown-toggle").click();
		})
		
		// ajax
		$.ajaxSetup({
		    contentType:"application/x-www-form-urlencoded;charset=utf-8",
		    complete:function(xhr,ts){
		        var respText = xhr.getResponseHeader("responseState"); 
		        if(respText == "timeout"){
	                window.open('index','_top');
		        }else if(respText == "unauthorized"){
		        	window.open('noAuthority','_self');
		        }
		    }
		 });


//        window.setTimeout(function() {
//            frames["iframe0"].location.href = 'index.jsp';
//        }, 4000);
	})
	
</script>
</body>
</html>
