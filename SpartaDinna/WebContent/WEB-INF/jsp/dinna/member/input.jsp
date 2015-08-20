<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>member表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				memberId:"required",memberName:"required",memberTel:"required",memberPass:"required",memberIDcard:"required",sex:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/member/save" method="post">
		      <input type="hidden" name="id" value="${member.id}" />
		      <table>
		      	
		        <tr>
		          <td>memberId:</td>
		          <td><input id="memberId" name="memberId" type="text" value="${member.memberId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memberName:</td>
		          <td><input id="memberName" name="memberName" type="text" value="${member.memberName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memberTel:</td>
		          <td><input id="memberTel" name="memberTel" type="text" value="${member.memberTel}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memberPass:</td>
		          <td><input id="memberPass" name="memberPass" type="text" value="${member.memberPass}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memberIDcard:</td>
		          <td><input id="memberIDcard" name="memberIDcard" type="text" value="${member.memberIDcard}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>sex:</td>
		          <td><input id="sex" name="sex" type="text" value="${member.sex}" size="30" maxlength="80" /></td>
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
