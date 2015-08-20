<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>customer表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				customerId:"required",customerName:"required",customerIDcard:"required",customerTel:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/customer/save" method="post">
		      <input type="hidden" name="id" value="${customer.id}" />
		      <table>
		      	
		        <tr>
		          <td>customerId:</td>
		          <td><input id="customerId" name="customerId" type="text" value="${customer.customerId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>customerName:</td>
		          <td><input id="customerName" name="customerName" type="text" value="${customer.customerName}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>customerIDcard:</td>
		          <td><input id="customerIDcard" name="customerIDcard" type="text" value="${customer.customerIDcard}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>customerTel:</td>
		          <td><input id="customerTel" name="customerTel" type="text" value="${customer.customerTel}" size="30" maxlength="80" /></td>
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
