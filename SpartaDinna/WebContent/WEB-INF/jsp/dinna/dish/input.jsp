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
				dishId:"required",dishTypeId:"required",dishName:"required",dishSpeel:"required",dishCost:"required",dishUnit:"required",dishPrice:"required",dishDescription:"required",dishCooking:"required",dishImgUrl:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
		          <td>dishTypeId:</td>
		          <td><input id="dishTypeId" name="dishTypeId" type="text" value="${dish.dishTypeId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishName:</td>
		          <td><input id="dishName" name="dishName" type="text" value="${dish.dishName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishSpeel:</td>
		          <td><input id="dishSpeel" name="dishSpeel" type="text" value="${dish.dishSpeel}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishCost:</td>
		          <td><input id="dishCost" name="dishCost" type="text" value="${dish.dishCost}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishUnit:</td>
		          <td><input id="dishUnit" name="dishUnit" type="text" value="${dish.dishUnit}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishPrice:</td>
		          <td><input id="dishPrice" name="dishPrice" type="text" value="${dish.dishPrice}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishDescription:</td>
		          <td><input id="dishDescription" name="dishDescription" type="text" value="${dish.dishDescription}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishCooking:</td>
		          <td><input id="dishCooking" name="dishCooking" type="text" value="${dish.dishCooking}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishImgUrl:</td>
		          <td><input id="dishImgUrl" name="dishImgUrl" type="text" value="${dish.dishImgUrl}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${dish.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${dish.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${dish.subBy}" size="30" maxlength="80" /></td>
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
