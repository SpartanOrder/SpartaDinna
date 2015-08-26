<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>tempendCarteInfo列表</title>
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
        <form id="listForm" action="${ctx}/dinna/tempendCarteInfo/list" method="get">
          <input type="hidden" name="pageNo" id="pageNo" value="${pageData.pagination.pageNo}" />
          <input type="hidden" name="fieldName" id="fieldName" value="${pageData.compositor.fieldName}" />
          <input type="hidden" name="compositorType" id="compositorType" value="${pageData.compositor.compositorType}" />
          <table>
            <tr align="center">
              <th>id: <y:search fieldType="I" fieldList="id" matchType="EQ" />
                <input type="button" value="搜索" class="submit" onclick="search()"/>
                <a href="${ctx}/dinna/tempendCarteInfo/new">添加新tempendCarteInfo</a>
              </th>
            </tr>
          </table>
        </form>
      </div>
      <div class="area">   
          <table  class="listtable">
            <tr class="line">
				<th><a href="javascript:sort('teciid')">teciid</a></th>
			
				<th><a href="javascript:sort('teciswiftNumber')">teciswiftNumber</a></th>
			
				<th><a href="javascript:sort('tecistate')">tecistate</a></th>
			
				<th><a href="javascript:sort('tecidTableId')">tecidTableId</a></th>
			
				<th><a href="javascript:sort('tecicustomerId')">tecicustomerId</a></th>
			
				<th><a href="javascript:sort('tecimemId')">tecimemId</a></th>
			
				<th><a href="javascript:sort('teciwaiterId')">teciwaiterId</a></th>
			
				<th><a href="javascript:sort('tecidishNums')">tecidishNums</a></th>
			
				<th><a href="javascript:sort('teciamountPeoplo')">teciamountPeoplo</a></th>
			
				<th><a href="javascript:sort('tecirepastTime')">tecirepastTime</a></th>
			
				<th><a href="javascript:sort('teciconsumeAmount')">teciconsumeAmount</a></th>
			
				<th><a href="javascript:sort('tecicostAmount')">tecicostAmount</a></th>
			
				<th><a href="javascript:sort('tecidiscount')">tecidiscount</a></th>
			
				<th><a href="javascript:sort('teciremark')">teciremark</a></th>
			
				<th><a href="javascript:sort('delFlag')">delFlag</a></th>
			
				<th><a href="javascript:sort('lastSubTime')">lastSubTime</a></th>
			
				<th><a href="javascript:sort('subBy')">subBy</a></th>
			
				<th>插入时间</th>
              	<th>修改时间</th>
              	<th>操作</th>
            </tr>
            <c:forEach var="entity" items="${pageData.result}">
              <tr <c:if test="${!entity.visible}">bgcolor="#AFEEEE"</c:if>>
              	
					<td>${entity.teciid}</td>
				
					<td>${entity.teciswiftNumber}</td>
				
					<td>${entity.tecistate}</td>
				
					<td>${entity.tecidTableId}</td>
				
					<td>${entity.tecicustomerId}</td>
				
					<td>${entity.tecimemId}</td>
				
					<td>${entity.teciwaiterId}</td>
				
					<td>${entity.tecidishNums}</td>
				
					<td>${entity.teciamountPeoplo}</td>
				
					<td>${entity.tecirepastTime}</td>
				
					<td>${entity.teciconsumeAmount}</td>
				
					<td>${entity.tecicostAmount}</td>
				
					<td>${entity.tecidiscount}</td>
				
					<td>${entity.teciremark}</td>
				
					<td>${entity.delFlag}</td>
				
					<td>${entity.lastSubTime}</td>
				
					<td>${entity.subBy}</td>
				
					<td>${entity.insertTime}</td>
                	<td>${entity.lastUpdateTime}</td>
                <td>
                	<a href="${ctx}/dinna/tempendCarteInfo/edit/${entity.id}">修改</a> |
                	<a href="${ctx}/dinna/tempendCarteInfo/delete/${entity.id}" onClick="return confirm('删除后无法恢复,确定要删除吗?');">刪除</a> |
                  <c:choose>
                    <c:when test="${entity.visible}"> 
                    	显示 |  <a href="${ctx}/dinna/tempendCarteInfo/unVisible/${entity.id}">不显示</a>
                    </c:when>
                    <c:otherwise> 
                    	<a href="${ctx}/dinna/tempendCarteInfo/visible/${entity.id}">显示</a> | 不显示 
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
