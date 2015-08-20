<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>carteInfo表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				CarteId:"required",CarteSwiftNumber:"required",table:"required",waiter:"required",chshier:"required",customer:"required",member:"required",carteList:"required",dishNums:"required",amountPeople:"required",remark:"required",repastTime:"required",billTime:"required",consumeAmount:"required",discount:"required",paidAmount:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/carteInfo/save" method="post">
		      <input type="hidden" name="id" value="${carteInfo.id}" />
		      <table>
		      	
		        <tr>
		          <td>CarteId:</td>
		          <td><input id="CarteId" name="CarteId" type="text" value="${carteInfo.CarteId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>CarteSwiftNumber:</td>
		          <td><input id="CarteSwiftNumber" name="CarteSwiftNumber" type="text" value="${carteInfo.CarteSwiftNumber}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>table:</td>
		          <td><input id="table" name="table" type="text" value="${carteInfo.table}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>waiter:</td>
		          <td><input id="waiter" name="waiter" type="text" value="${carteInfo.waiter}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>chshier:</td>
		          <td><input id="chshier" name="chshier" type="text" value="${carteInfo.chshier}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>customer:</td>
		          <td><input id="customer" name="customer" type="text" value="${carteInfo.customer}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>member:</td>
		          <td><input id="member" name="member" type="text" value="${carteInfo.member}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>carteList:</td>
		          <td><input id="carteList" name="carteList" type="text" value="${carteInfo.carteList}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>dishNums:</td>
		          <td><input id="dishNums" name="dishNums" type="text" value="${carteInfo.dishNums}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>amountPeople:</td>
		          <td><input id="amountPeople" name="amountPeople" type="text" value="${carteInfo.amountPeople}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>remark:</td>
		          <td><input id="remark" name="remark" type="text" value="${carteInfo.remark}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>repastTime:</td>
		          <td><input id="repastTime" name="repastTime" type="text" value="${carteInfo.repastTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>billTime:</td>
		          <td><input id="billTime" name="billTime" type="text" value="${carteInfo.billTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>consumeAmount:</td>
		          <td><input id="consumeAmount" name="consumeAmount" type="text" value="${carteInfo.consumeAmount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>discount:</td>
		          <td><input id="discount" name="discount" type="text" value="${carteInfo.discount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>paidAmount:</td>
		          <td><input id="paidAmount" name="paidAmount" type="text" value="${carteInfo.paidAmount}" size="30" maxlength="80" /></td>
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
