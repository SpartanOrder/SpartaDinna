<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>region表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				regionId:"required",regionName:"required",regionMinConsume:"required",regionMaxConsumer:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/region/save" method="post">
		      <input type="hidden" name="id" value="${region.id}" />
		      <table>
		      	
		        <tr>
		          <td>regionId:</td>
		          <td><input id="regionId" name="regionId" type="text" value="${region.regionId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>regionName:</td>
		          <td><input id="regionName" name="regionName" type="text" value="${region.regionName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>regionMinConsume:</td>
		          <td><input id="regionMinConsume" name="regionMinConsume" type="text" value="${region.regionMinConsume}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>regionMaxConsumer:</td>
		          <td><input id="regionMaxConsumer" name="regionMaxConsumer" type="text" value="${region.regionMaxConsumer}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${region.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${region.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${region.subBy}" size="30" maxlength="80" /></td>
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
