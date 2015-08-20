<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>carteInfo列表</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
</head>
<body>
<div id="container" class="container_24">
  <!-- header -->
  <%@ include file="/WEB-INF/jsp/commons/header.jsp"%>
  
  <!-- content -->
  <div id="content" class="container_24">
    <div class="container_24">
      <div class="area2">
        <!-- 分页显示演示开始 -->
        <form id="listForm" action="${ctx}/dinna/carteInfo/list" method="get">
          <input type="hidden" name="pageNo" id="pageNo" value="${pageData.pagination.pageNo}" />
          <input type="hidden" name="fieldName" id="fieldName" value="${pageData.compositor.fieldName}" />
          <input type="hidden" name="compositorType" id="compositorType" value="${pageData.compositor.compositorType}" />
          <table>
            <tr align="center">
              <th>id: <y:search fieldType="I" fieldList="id" matchType="EQ" />
                <input type="button" value="搜索" class="submit" onclick="search()"/>
                <a href="${ctx}/dinna/carteInfo/new">添加新carteInfo</a>
              </th>
            </tr>
          </table>
        </form>
      </div>
      <div class="area">   
          <table  class="listtable">
            <tr class="line">
				<th><a href="javascript:sort('CarteId')">CarteId</a></th>
			
				<th><a href="javascript:sort('CarteSwiftNumber')">CarteSwiftNumber</a></th>
			
				<th><a href="javascript:sort('table')">table</a></th>
			
				<th><a href="javascript:sort('waiter')">waiter</a></th>
			
				<th><a href="javascript:sort('chshier')">chshier</a></th>
			
				<th><a href="javascript:sort('customer')">customer</a></th>
			
				<th><a href="javascript:sort('member')">member</a></th>
			
				<th><a href="javascript:sort('carteList')">carteList</a></th>
			
				<th><a href="javascript:sort('dishNums')">dishNums</a></th>
			
				<th><a href="javascript:sort('amountPeople')">amountPeople</a></th>
			
				<th><a href="javascript:sort('remark')">remark</a></th>
			
				<th><a href="javascript:sort('repastTime')">repastTime</a></th>
			
				<th><a href="javascript:sort('billTime')">billTime</a></th>
			
				<th><a href="javascript:sort('consumeAmount')">consumeAmount</a></th>
			
				<th><a href="javascript:sort('discount')">discount</a></th>
			
				<th><a href="javascript:sort('paidAmount')">paidAmount</a></th>
			
				<th>插入时间</th>
              	<th>修改时间</th>
              	<th>操作</th>
            </tr>
            <c:forEach var="entity" items="${pageData.result}">
              <tr <c:if test="${!entity.visible}">bgcolor="#AFEEEE"</c:if>>
              	
					<td>${entity.CarteId}</td>
				
					<td>${entity.CarteSwiftNumber}</td>
				
					<td>${entity.table}</td>
				
					<td>${entity.waiter}</td>
				
					<td>${entity.chshier}</td>
				
					<td>${entity.customer}</td>
				
					<td>${entity.member}</td>
				
					<td>${entity.carteList}</td>
				
					<td>${entity.dishNums}</td>
				
					<td>${entity.amountPeople}</td>
				
					<td>${entity.remark}</td>
				
					<td>${entity.repastTime}</td>
				
					<td>${entity.billTime}</td>
				
					<td>${entity.consumeAmount}</td>
				
					<td>${entity.discount}</td>
				
					<td>${entity.paidAmount}</td>
				
					<td>${entity.insertTime}</td>
                	<td>${entity.lastUpdateTime}</td>
                <td>
                	<a href="${ctx}/dinna/carteInfo/edit/${entity.id}">修改</a> |
                	<a href="${ctx}/dinna/carteInfo/delete/${entity.id}" onClick="return confirm('删除后无法恢复,确定要删除吗?');">刪除</a> |
                  <c:choose>
                    <c:when test="${entity.visible}"> 
                    	显示 |  <a href="${ctx}/dinna/carteInfo/unVisible/${entity.id}">不显示</a>
                    </c:when>
                    <c:otherwise> 
                    	<a href="${ctx}/dinna/carteInfo/visible/${entity.id}">显示</a> | 不显示 
                    </c:otherwise>
                  </c:choose>
                </td>
              </tr>
            </c:forEach>
          </table>
                           第${pageData.pagination.pageNo}页,共${pageData.pagination.totalPage}页 <a href="javascript:jumpPage(1)">首页</a>
          <c:if test="${pageData.pagination.hasPrevPage}"> <a href="javascript:jumpPage(${pageData.pagination.prevPage})">上一页</a> </c:if>
          <c:if test="${pageData.pagination.hasNextPage}"> <a href="javascript:jumpPage(${pageData.pagination.nextPage})">下一页</a> </c:if>
          <a href="javascript:jumpPage(${pageData.pagination.totalPage})">末页</a>
        
        <!-- 分页显示演示结束 -->
      </div>
    </div>
  </div>
  
  <!-- footer -->
  <%@ include file="/WEB-INF/jsp/commons/footer.jsp"%>
  
</div>
</body>
</html>
