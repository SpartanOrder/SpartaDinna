<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>endCarteInfo列表</title>
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
        <form id="listForm" action="${ctx}/dinna/endCarteInfo/list" method="get">
          <input type="hidden" name="pageNo" id="pageNo" value="${pageData.pagination.pageNo}" />
          <input type="hidden" name="fieldName" id="fieldName" value="${pageData.compositor.fieldName}" />
          <input type="hidden" name="compositorType" id="compositorType" value="${pageData.compositor.compositorType}" />
          <table>
            <tr align="center">
              <th>id: <y:search fieldType="I" fieldList="id" matchType="EQ" />
                <input type="button" value="搜索" class="submit" onclick="search()"/>
                <a href="${ctx}/dinna/endCarteInfo/new">添加新endCarteInfo</a>
              </th>
            </tr>
          </table>
        </form>
      </div>
      <div class="area">   
          <table  class="listtable">
            <tr class="line">
				<th><a href="javascript:sort('eciid')">eciid</a></th>
			
				<th><a href="javascript:sort('eciswiftNumber')">eciswiftNumber</a></th>
			
				<th><a href="javascript:sort('ecistate')">ecistate</a></th>
			
				<th><a href="javascript:sort('ecidTableId')">ecidTableId</a></th>
			
				<th><a href="javascript:sort('eciwaiterId')">eciwaiterId</a></th>
			
				<th><a href="javascript:sort('ecicashierId')">ecicashierId</a></th>
			
				<th><a href="javascript:sort('ecicustomerId')">ecicustomerId</a></th>
			
				<th><a href="javascript:sort('ecimemId')">ecimemId</a></th>
			
				<th><a href="javascript:sort('ecidishNums')">ecidishNums</a></th>
			
				<th><a href="javascript:sort('eciamountPeoplo')">eciamountPeoplo</a></th>
			
				<th><a href="javascript:sort('ecirepastTime')">ecirepastTime</a></th>
			
				<th><a href="javascript:sort('ecibillTime')">ecibillTime</a></th>
			
				<th><a href="javascript:sort('eciconsumeAmount')">eciconsumeAmount</a></th>
			
				<th><a href="javascript:sort('ecidiscount')">ecidiscount</a></th>
			
				<th><a href="javascript:sort('ecipaidAmount')">ecipaidAmount</a></th>
			
				<th><a href="javascript:sort('eciremark')">eciremark</a></th>
			
				<th><a href="javascript:sort('delFlag')">delFlag</a></th>
			
				<th><a href="javascript:sort('lastSubTime')">lastSubTime</a></th>
			
				<th><a href="javascript:sort('subBy')">subBy</a></th>
			
				<th>插入时间</th>
              	<th>修改时间</th>
              	<th>操作</th>
            </tr>
            <c:forEach var="entity" items="${pageData.result}">
              <tr <c:if test="${!entity.visible}">bgcolor="#AFEEEE"</c:if>>
              	
					<td>${entity.eciid}</td>
				
					<td>${entity.eciswiftNumber}</td>
				
					<td>${entity.ecistate}</td>
				
					<td>${entity.ecidTableId}</td>
				
					<td>${entity.eciwaiterId}</td>
				
					<td>${entity.ecicashierId}</td>
				
					<td>${entity.ecicustomerId}</td>
				
					<td>${entity.ecimemId}</td>
				
					<td>${entity.ecidishNums}</td>
				
					<td>${entity.eciamountPeoplo}</td>
				
					<td>${entity.ecirepastTime}</td>
				
					<td>${entity.ecibillTime}</td>
				
					<td>${entity.eciconsumeAmount}</td>
				
					<td>${entity.ecidiscount}</td>
				
					<td>${entity.ecipaidAmount}</td>
				
					<td>${entity.eciremark}</td>
				
					<td>${entity.delFlag}</td>
				
					<td>${entity.lastSubTime}</td>
				
					<td>${entity.subBy}</td>
				
					<td>${entity.insertTime}</td>
                	<td>${entity.lastUpdateTime}</td>
                <td>
                	<a href="${ctx}/dinna/endCarteInfo/edit/${entity.id}">修改</a> |
                	<a href="${ctx}/dinna/endCarteInfo/delete/${entity.id}" onClick="return confirm('删除后无法恢复,确定要删除吗?');">刪除</a> |
                  <c:choose>
                    <c:when test="${entity.visible}"> 
                    	显示 |  <a href="${ctx}/dinna/endCarteInfo/unVisible/${entity.id}">不显示</a>
                    </c:when>
                    <c:otherwise> 
                    	<a href="${ctx}/dinna/endCarteInfo/visible/${entity.id}">显示</a> | 不显示 
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
