<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>memberInfo表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				memId:"required",memTypeId:"required",memName:"required",memUserName:"required",memPassword:"required",memTel:"required",memPhone:"required",memAddress:"required",memGender:"required",memMoney:"required",memIntegral:"required",memBirthday:"required",memBeginTime:"required",memEndTime:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/memberInfo/save" method="post">
		      <input type="hidden" name="id" value="${memberInfo.id}" />
		      <table>
		      	
		        <tr>
		          <td>memId:</td>
		          <td><input id="memId" name="memId" type="text" value="${memberInfo.memId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memTypeId:</td>
		          <td><input id="memTypeId" name="memTypeId" type="text" value="${memberInfo.memTypeId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memName:</td>
		          <td><input id="memName" name="memName" type="text" value="${memberInfo.memName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memUserName:</td>
		          <td><input id="memUserName" name="memUserName" type="text" value="${memberInfo.memUserName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memPassword:</td>
		          <td><input id="memPassword" name="memPassword" type="text" value="${memberInfo.memPassword}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memTel:</td>
		          <td><input id="memTel" name="memTel" type="text" value="${memberInfo.memTel}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memPhone:</td>
		          <td><input id="memPhone" name="memPhone" type="text" value="${memberInfo.memPhone}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memAddress:</td>
		          <td><input id="memAddress" name="memAddress" type="text" value="${memberInfo.memAddress}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memGender:</td>
		          <td><input id="memGender" name="memGender" type="text" value="${memberInfo.memGender}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memMoney:</td>
		          <td><input id="memMoney" name="memMoney" type="text" value="${memberInfo.memMoney}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memIntegral:</td>
		          <td><input id="memIntegral" name="memIntegral" type="text" value="${memberInfo.memIntegral}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memBirthday:</td>
		          <td><input id="memBirthday" name="memBirthday" type="text" value="${memberInfo.memBirthday}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memBeginTime:</td>
		          <td><input id="memBeginTime" name="memBeginTime" type="text" value="${memberInfo.memBeginTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>memEndTime:</td>
		          <td><input id="memEndTime" name="memEndTime" type="text" value="${memberInfo.memEndTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${memberInfo.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${memberInfo.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${memberInfo.subBy}" size="30" maxlength="80" /></td>
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
