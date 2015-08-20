<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>carteContent表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				CarteId:"required",CarteSwiftNumber:"required",dish:"required",nums:"required",totalPrice:"required",carteInfo:"required",specialDescriprion:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/carteContent/save" method="post">
		      <input type="hidden" name="id" value="${carteContent.id}" />
		      <table>
		      	
		        <tr>
		          <td>CarteId:</td>
		          <td><input id="CarteId" name="CarteId" type="text" value="${carteContent.CarteId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>CarteSwiftNumber:</td>
		          <td><input id="CarteSwiftNumber" name="CarteSwiftNumber" type="text" value="${carteContent.CarteSwiftNumber}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dish:</td>
		          <td><input id="dish" name="dish" type="text" value="${carteContent.dish}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>nums:</td>
		          <td><input id="nums" name="nums" type="text" value="${carteContent.nums}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>totalPrice:</td>
		          <td><input id="totalPrice" name="totalPrice" type="text" value="${carteContent.totalPrice}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>carteInfo:</td>
		          <td><input id="carteInfo" name="carteInfo" type="text" value="${carteContent.carteInfo}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>specialDescriprion:</td>
		          <td><input id="specialDescriprion" name="specialDescriprion" type="text" value="${carteContent.specialDescriprion}" size="30" maxlength="80" /></td>
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
