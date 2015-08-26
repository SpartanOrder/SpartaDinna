<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>endCarteContent表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				eccid:"required",eccdishId:"required",eccdishNum:"required",ecctotalPrice:"required",ecceciid:"required",eccspecilDesc:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/endCarteContent/save" method="post">
		      <input type="hidden" name="id" value="${endCarteContent.id}" />
		      <table>
		      	
		        <tr>
		          <td>eccid:</td>
		          <td><input id="eccid" name="eccid" type="text" value="${endCarteContent.eccid}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eccdishId:</td>
		          <td><input id="eccdishId" name="eccdishId" type="text" value="${endCarteContent.eccdishId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eccdishNum:</td>
		          <td><input id="eccdishNum" name="eccdishNum" type="text" value="${endCarteContent.eccdishNum}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecctotalPrice:</td>
		          <td><input id="ecctotalPrice" name="ecctotalPrice" type="text" value="${endCarteContent.ecctotalPrice}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecceciid:</td>
		          <td><input id="ecceciid" name="ecceciid" type="text" value="${endCarteContent.ecceciid}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eccspecilDesc:</td>
		          <td><input id="eccspecilDesc" name="eccspecilDesc" type="text" value="${endCarteContent.eccspecilDesc}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${endCarteContent.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${endCarteContent.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${endCarteContent.subBy}" size="30" maxlength="80" /></td>
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
