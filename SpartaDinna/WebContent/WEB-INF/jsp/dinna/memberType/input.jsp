<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>memberType表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				memTypeId:"required",memTypeName:"required",memTypeDiscount:"required",memTypeDesc:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
			}
		});
	});
	</script>
</head>
<body>
<div id="container" class="container_24">
  <!-- header -->
  <div id="header">
    <%@ include file="/WEB-INF/jsp/commons/header.jsp"%>
  </div>
  
  <!-- content -->
  <div id="content" class="container_24">
    <div class=" suffix_5 grid_14 prefix_5">
    	<div class="area">
    		<form id="inputForm" action="${ctx}/dinna/memberType/save" method="post">
		      <input type="hidden" name="id" value="${memberType.id}" />
		      <table>
		      	
		        <tr>
		          <td>memTypeId:</td>
		          <td><input id="memTypeId" name="memTypeId" type="text" value="${memberType.memTypeId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memTypeName:</td>
		          <td><input id="memTypeName" name="memTypeName" type="text" value="${memberType.memTypeName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memTypeDiscount:</td>
		          <td><input id="memTypeDiscount" name="memTypeDiscount" type="text" value="${memberType.memTypeDiscount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memTypeDesc:</td>
		          <td><input id="memTypeDesc" name="memTypeDesc" type="text" value="${memberType.memTypeDesc}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${memberType.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${memberType.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${memberType.subBy}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td colspan="2"><input class="submit" type="submit" value="提交" />
		            &nbsp;
		            <input class="submit" type="button" value="返回" onClick="history.back()" /></td>
		        </tr>
		      </table>
		    </form>
    	</div>
    	
    </div>
  </div>  
  
  <!-- footer -->
  <div id="footer">
    <%@ include file="/WEB-INF/jsp/commons/footer.jsp"%>
  </div>
</div>
</body>
</html>
