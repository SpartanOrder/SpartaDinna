<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>dinningTable表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				dtableId:"required",regionId:"required",dtableName:"required",dtableState:"required",dtableDesc:"required",dtableRemark:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/dinningTable/save" method="post">
		      <input type="hidden" name="id" value="${dinningTable.id}" />
		      <table>
		      	
		        <tr>
		          <td>dtableId:</td>
		          <td><input id="dtableId" name="dtableId" type="text" value="${dinningTable.dtableId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>regionId:</td>
		          <td><input id="regionId" name="regionId" type="text" value="${dinningTable.regionId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dtableName:</td>
		          <td><input id="dtableName" name="dtableName" type="text" value="${dinningTable.dtableName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dtableState:</td>
		          <td><input id="dtableState" name="dtableState" type="text" value="${dinningTable.dtableState}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dtableDesc:</td>
		          <td><input id="dtableDesc" name="dtableDesc" type="text" value="${dinningTable.dtableDesc}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dtableRemark:</td>
		          <td><input id="dtableRemark" name="dtableRemark" type="text" value="${dinningTable.dtableRemark}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${dinningTable.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${dinningTable.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${dinningTable.subBy}" size="30" maxlength="80" /></td>
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
