<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>user表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				userId:"required",userName:"required",roleId:"required",userRealName:"required",userPassword:"required",lastLoginTime:"required",lastLoginIp:"required",delFlag:"required",lastSubTime:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/user/save" method="post">
		      <input type="hidden" name="id" value="${user.id}" />
		      <table>
		      	
		        <tr>
		          <td>userId:</td>
		          <td><input id="userId" name="userId" type="text" value="${user.userId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userName:</td>
		          <td><input id="userName" name="userName" type="text" value="${user.userName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>roleId:</td>
		          <td><input id="roleId" name="roleId" type="text" value="${user.roleId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userRealName:</td>
		          <td><input id="userRealName" name="userRealName" type="text" value="${user.userRealName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userPassword:</td>
		          <td><input id="userPassword" name="userPassword" type="text" value="${user.userPassword}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastLoginTime:</td>
		          <td><input id="lastLoginTime" name="lastLoginTime" type="text" value="${user.lastLoginTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastLoginIp:</td>
		          <td><input id="lastLoginIp" name="lastLoginIp" type="text" value="${user.lastLoginIp}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${user.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${user.lastSubTime}" size="30" maxlength="80" /></td>
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
