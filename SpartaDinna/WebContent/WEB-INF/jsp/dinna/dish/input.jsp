<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>dish表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				dishId:"required",dishName:"required",dishPrice:"required",dishType:"required",description:"required",cooking:"required",imgURL:"required",visiable:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/dish/save" method="post">
		      <input type="hidden" name="id" value="${dish.id}" />
		      <table>
		      	
		        <tr>
		          <td>dishId:</td>
		          <td><input id="dishId" name="dishId" type="text" value="${dish.dishId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishName:</td>
		          <td><input id="dishName" name="dishName" type="text" value="${dish.dishName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishPrice:</td>
		          <td><input id="dishPrice" name="dishPrice" type="text" value="${dish.dishPrice}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishType:</td>
		          <td><input id="dishType" name="dishType" type="text" value="${dish.dishType}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>description:</td>
		          <td><input id="description" name="description" type="text" value="${dish.description}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>cooking:</td>
		          <td><input id="cooking" name="cooking" type="text" value="${dish.cooking}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>imgURL:</td>
		          <td><input id="imgURL" name="imgURL" type="text" value="${dish.imgURL}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>visiable:</td>
		          <td><input id="visiable" name="visiable" type="text" value="${dish.visiable}" size="30" maxlength="80" /></td>
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
