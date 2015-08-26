<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>userinfo表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				userId:"required",userSex:"required",userTel:"required",userPhone:"required",userIdcard:"required",userDescription:"required",userAddress:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/userinfo/save" method="post">
		      <input type="hidden" name="id" value="${userinfo.id}" />
		      <table>
		      	
		        <tr>
		          <td>userId:</td>
		          <td><input id="userId" name="userId" type="text" value="${userinfo.userId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userSex:</td>
		          <td><input id="userSex" name="userSex" type="text" value="${userinfo.userSex}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userTel:</td>
		          <td><input id="userTel" name="userTel" type="text" value="${userinfo.userTel}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userPhone:</td>
		          <td><input id="userPhone" name="userPhone" type="text" value="${userinfo.userPhone}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userIdcard:</td>
		          <td><input id="userIdcard" name="userIdcard" type="text" value="${userinfo.userIdcard}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userDescription:</td>
		          <td><input id="userDescription" name="userDescription" type="text" value="${userinfo.userDescription}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>userAddress:</td>
		          <td><input id="userAddress" name="userAddress" type="text" value="${userinfo.userAddress}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${userinfo.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${userinfo.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${userinfo.subBy}" size="30" maxlength="80" /></td>
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
