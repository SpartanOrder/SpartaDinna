<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>tempendCarteContent表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				teccid:"required",teciswiftNumber:"required",teccdishId:"required",teccdishNum:"required",tecctotalPrice:"required",teccspecilDesc:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/tempendCarteContent/save" method="post">
		      <input type="hidden" name="id" value="${tempendCarteContent.id}" />
		      <table>
		      	
		        <tr>
		          <td>teccid:</td>
		          <td><input id="teccid" name="teccid" type="text" value="${tempendCarteContent.teccid}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teciswiftNumber:</td>
		          <td><input id="teciswiftNumber" name="teciswiftNumber" type="text" value="${tempendCarteContent.teciswiftNumber}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teccdishId:</td>
		          <td><input id="teccdishId" name="teccdishId" type="text" value="${tempendCarteContent.teccdishId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teccdishNum:</td>
		          <td><input id="teccdishNum" name="teccdishNum" type="text" value="${tempendCarteContent.teccdishNum}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecctotalPrice:</td>
		          <td><input id="tecctotalPrice" name="tecctotalPrice" type="text" value="${tempendCarteContent.tecctotalPrice}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teccspecilDesc:</td>
		          <td><input id="teccspecilDesc" name="teccspecilDesc" type="text" value="${tempendCarteContent.teccspecilDesc}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${tempendCarteContent.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${tempendCarteContent.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${tempendCarteContent.subBy}" size="30" maxlength="80" /></td>
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
