<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="customtag" uri="http://minsu.ziroom.com" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="${basePath }">
    <title>自如民宿后台管理系统</title>
    <meta name="keywords" content="自如民宿后台管理系统">
    <meta name="description" content="自如民宿后台管理系统">
    <link rel="${staticResourceUrl}/shortcut icon" href="favicon.ico">
    <link href="${staticResourceUrl}/css/bootstrap.min.css${VERSION}" rel="stylesheet">
    <link href="${staticResourceUrl}/css/font-awesome.css${VERSION}" rel="stylesheet">
    <link href="${staticResourceUrl}/css/plugins/bootstrap-table/bootstrap-table.min.css${VERSION}001" rel="stylesheet">
    <link href="${staticResourceUrl}/css/plugins/jqgrid/ui.jqgrid.css${VERSION}001" rel="stylesheet">
    <link href="${staticResourceUrl}/css/animate.css${VERSION}001" rel="stylesheet">
    <link href="${staticResourceUrl}/css/style.css${VERSION}" rel="stylesheet">
    <link href="${staticResourceUrl}/css/custom-z.css${VERSION}" rel="stylesheet">
    <style type="text/css">
        .mbottom{
            margin-bottom: 5px;
        }
    </style>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row row-lg">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-sm-1 text-right mtop">
                                <label class="control-label">国家：</label>
                            </div>
                            <div class="col-sm-2 ">
                                <select class="form-control m-b cc-region" id="nation" name="nation">
                                    <c:forEach items="${nationList}" var="obj">
                                        <option value="${obj.code }">${obj.showName }</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-sm-1 text-right mtop">
                                <label class="control-label">开始时间：</label>
                            </div>
                            <div class="col-sm-2">
                                <input name="starTime" id="starTime" class="laydate-icon form-control layer-date">
                            </div>

                            <div class="col-sm-1 text-right mtop">
                                <label class="control-label">结束时间：</label>
                            </div>
                            <div class="col-sm-2">
                                <input name="endTime" id="endTime" class="laydate-icon form-control layer-date">
                            </div>
                            <div class="col-sm-1">
                                <button class="btn btn-primary" type="button" onclick="query();">
                                    <i class="fa fa-search"></i>&nbsp;查询
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Panel Other -->
    <div class="ibox float-e-margins">
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-12">
                    <button class="btn btn-primary" type="button" onclick="exportFile();">
                        <i class="fa fa-search"></i>&nbsp;导出文件
                    </button>
                    <div class="example-wrap">
                        <h4 class="example-title"></h4>
                        <div class="example">
                            <div style="width: 100%;">
                                <table id="jqGrid" style="width: 100%;"></table>
                                <div id="jqGridPager"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="${staticResourceUrl}/js/jquery.min.js${VERSION}"></script>
<script src="${staticResourceUrl}/js/bootstrap.min.js${VERSION}001"></script>
<!-- Bootstrap table -->
<script src="${staticResourceUrl}/js/plugins/bootstrap-table/bootstrap-table.min.js${VERSION}001"></script>
<script src="${staticResourceUrl}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js${VERSION}001"></script>
<script src="${staticResourceUrl}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js${VERSION}001"></script>
<script src="${staticResourceUrl}/js/minsu/common/commonUtils.js${VERSION}005" type="text/javascript"></script>
<!-- layer javascript -->
<script src="${staticResourceUrl}/js/plugins/layer/layer.min.js${VERSION}001"></script>
<!-- layerDate plugin javascript -->
<script src="${staticResourceUrl}/js/plugins/layer/laydate/laydate.js${VERSION}001"></script>
<!--jqgrid-->
<script src="${staticResourceUrl}/js/plugins/jqgrid/jquery.jqGrid.min.js${VERSION}001"></script>
<script src="${staticResourceUrl}/js/plugins/jqgrid/i18n/grid.locale-cn.js${VERSION}001"></script>

<script>


    $(function (){
        //初始化日期
        datePickerFormat('starTime', '00:00:00');
        datePickerFormat('endTime', '23:59:59');
    });


    function datePickerFormat(elemId, time){
        laydate({
            elem: '#' + elemId,
            format: 'YYYY-MM-DD ' + time,
            istime: false,
            istoday: true
        });
    }

</script>
<script type="text/javascript">
    //初始化列表数据
    $(function () {
        init();
    });

    function init(){
        $("#jqGrid").jqGrid({
            url: 'order/orderEvaluateDataList',
            mtype: "GET",
            datatype: "json",
            colModel: [
                {label: '大区', name: 'regionName', key: true, width: 75},
                {label: '城市', name: 'cityName', width: 100},
                {label: '完成订单量', name: 'orderNum', width: 100},
                {label: '房东评价量', name: 'lanOrderNum', width: 100},
                {label: '房客评价量', name: 'userOrderNum', width: 100},

                {label: '房东收到的总平均评分', name: 'sumAvgLanScore', width: 100},
                {label: '房客收到的平均评分', name: 'sumAvgUserScore', width: 100},
                {label: '整洁卫生总评分', name: 'houseAvgCleanScore', width: 100},
                {label: '描述相符总评均分', name: 'descriptionAvgMatchScore', width: 100},
                {label: '安全程度总评均分', name: 'safetyAvgDegreeScore', width: 100},
                {label: '交通位置总评均分', name: 'trafficPositionAvgScore', width: 100},
                {label: '性价比总评均分', name: 'costPerformanceAvgScore', width: 100}


            ],
            //loadonce: true, // just for demo purpose
            jsonReader: {
                root:"rows", page:"currentPage", total:"totalpages",
                records:"subTotal", repeatitems:false, id : "id"
            },
            postData: {
                nationCode: $('#nation option:selected').val(),
                starTimeStr: $.trim($('#starTime').val()),
                endTimeStr: $.trim($('#endTime').val()),
                limit: 100
            },
            height: 400,
            width: document.body.clientWidth-80,
            rowNum: 1000,
            pager: "#jqGridPager",
            viewrecords: true,
            grouping: true,
            groupingView: {
                groupField: ["regionName"],
                groupColumnShow: [true],
                groupText: ["<b>{0}</b>"],
                groupOrder: ["asc"],
                groupSummary: [false],
                groupCollapse: false
            }
        });
    }

    function query(){
        $("#jqGrid").jqGrid('setGridParam',{
            url: 'order/orderEvaluateDataList',
            postData:{
                nationCode : $.trim($('#nation').val()),
                starTimeStr: $.trim($('#starTime').val()),
                endTimeStr: $.trim($('#endTime').val()),
                limit : 100
            }, //发送数据
            page:1
        }).trigger("reloadGrid"); //重新载入
    }


    //导出数据
    function exportFile(){

        var starTimeStr = $.trim($('#starTime').val());
        var endTimeStr = $.trim($('#endTime').val());


        var targetMonthStart = $('#targetMonthStart').val();
        var targetMonthEnd = $('#targetMonthEnd').val();
        var nationCode = $.trim($('#nation').val());
        window.location.href = "order/orderEvaluateExcelList?starTimeStr="+starTimeStr+"&endTimeStr="+endTimeStr+"&nationCode="+nationCode;
    }


    function showInfo(value, row, index){
        console.log(value);
        if(value == "" || value == 'null' || value == null || value == undefined){
            return "-";
        }else{
            return value +"%";
        }
    }

</script>
<script>
    $.jgrid.defaults.width = 1600;
    $.jgrid.defaults.responsive = true;
    $.jgrid.defaults.styleUI = 'Bootstrap';
</script>
</body>
</html>
