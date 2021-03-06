<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.jsp"%>
<script type="text/javascript">
	function weightsReload(json) {
		var service = '${param.search_service}';
		$('#service_weightsContainer').loadUrl('servicecenter/service/weights.do?search_service=' + service);
		alertMsgByJson(json);
	}
</script>
<div class="pageContent j-resizeGrid">
	<div class="pageHeader" style="border:1px #B8D0D6 solid">
		<form id="pagerForm" onsubmit="return divSearch(this, 'service_weightsContainer');" action="servicecenter/service/weights.do" method="post">
			<input type="hidden" name="page" value="1" />
			<input type="hidden" name="pageSize" value="${searchModel.pageSize}" />
			<div class="searchBar">
				<table class="searchContent">
					<tr>
						<td>
							服务名：
							<input type="text" size="50" name="search_service" value="${param.search_service}">
						</td>
						<td><sf:button title="检索" url="servicecenter/service/weights.do"></sf:button></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<div class="panelBar" style="border-left: 1px solid #B8D0D6; border-right: 1px solid #B8D0D6;">
		<ul class="toolBar">
			<li><sf:link typeClass="iadd" url="servicecenter/service/weights/addinit.do" param="service=${param.search_service}" width="720" height="500" target="dialog" title="新增"></sf:link></li>
			<li><sf:link typeClass="idelete" url="servicecenter/service/weights/deletebatch.do" rel="rows" callback="weightsReload" target="selectedTodo" title="批量删除"></sf:link></li>
			<li class="line">line</li>
		</ul>
	</div>
	<div class="pageContent" style="border-left:1px #B8D0D6 solid;border-right:1px #B8D0D6 solid">
		<table class="table" layoutH="167" rel="service_weightsContainer">
			<thead>
				<tr>
					<th width="22"><input type="checkbox" group="rows" class="checkboxCtrl"></th>
					<th width="200">机器IP</th>
					<c:if test="${empty param.search_service}"><th width="350">服务名</th></c:if>
					<th width="130">权重</th>
					<th width="330">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="weight" items="${PAGING_RESULT.rows}" varStatus="status">
					<tr>
						<td><input name="rows" value="${weight.id}" type="checkbox"></td>
						<td>${weight.address}&nbsp;</td>
						<c:if test="${empty param.search_service}"><td>${weight.service}&nbsp;</td></c:if>
						<td>${weight.weight}&nbsp;</td>
						<td>
							<ul class="pageContent_opt">
								<li><sf:link typeClass="" url="servicecenter/service/weights/editinit.do" param="weightsId=${weight.id}" width="720" height="500" target="dialog" title="编辑"></sf:link></li>
								<li><sf:link typeClass="" url="servicecenter/service/weights/delete.do" param="weightsId=${weight.id}" target="ajaxTodo" title="删除" callback="weightsReload"></sf:link></li>
							</ul>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<sf:pager rel="service_weightsContainer" totalCount="${PAGING_RESULT.total}" numPerPage="${searchModel.pageSize}" currentPage="${searchModel.page}"></sf:pager>
	</div>
</div>