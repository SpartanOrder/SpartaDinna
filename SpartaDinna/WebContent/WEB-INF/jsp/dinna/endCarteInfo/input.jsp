<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>endCarteInfo表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				eciid:"required",eciswiftNumber:"required",ecistate:"required",ecidTableId:"required",eciwaiterId:"required",ecicashierId:"required",ecicustomerId:"required",ecimemId:"required",ecidishNums:"required",eciamountPeoplo:"required",ecirepastTime:"required",ecibillTime:"required",eciconsumeAmount:"required",ecidiscount:"required",ecipaidAmount:"required",eciremark:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/endCarteInfo/save" method="post">
		      <input type="hidden" name="id" value="${endCarteInfo.id}" />
		      <table>
		      	
		        <tr>
		          <td>eciid:</td>
		          <td><input id="eciid" name="eciid" type="text" value="${endCarteInfo.eciid}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eciswiftNumber:</td>
		          <td><input id="eciswiftNumber" name="eciswiftNumber" type="text" value="${endCarteInfo.eciswiftNumber}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecistate:</td>
		          <td><input id="ecistate" name="ecistate" type="text" value="${endCarteInfo.ecistate}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecidTableId:</td>
		          <td><input id="ecidTableId" name="ecidTableId" type="text" value="${endCarteInfo.ecidTableId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eciwaiterId:</td>
		          <td><input id="eciwaiterId" name="eciwaiterId" type="text" value="${endCarteInfo.eciwaiterId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecicashierId:</td>
		          <td><input id="ecicashierId" name="ecicashierId" type="text" value="${endCarteInfo.ecicashierId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecicustomerId:</td>
		          <td><input id="ecicustomerId" name="ecicustomerId" type="text" value="${endCarteInfo.ecicustomerId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecimemId:</td>
		          <td><input id="ecimemId" name="ecimemId" type="text" value="${endCarteInfo.ecimemId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecidishNums:</td>
		          <td><input id="ecidishNums" name="ecidishNums" type="text" value="${endCarteInfo.ecidishNums}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eciamountPeoplo:</td>
		          <td><input id="eciamountPeoplo" name="eciamountPeoplo" type="text" value="${endCarteInfo.eciamountPeoplo}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecirepastTime:</td>
		          <td><input id="ecirepastTime" name="ecirepastTime" type="text" value="${endCarteInfo.ecirepastTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecibillTime:</td>
		          <td><input id="ecibillTime" name="ecibillTime" type="text" value="${endCarteInfo.ecibillTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eciconsumeAmount:</td>
		          <td><input id="eciconsumeAmount" name="eciconsumeAmount" type="text" value="${endCarteInfo.eciconsumeAmount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecidiscount:</td>
		          <td><input id="ecidiscount" name="ecidiscount" type="text" value="${endCarteInfo.ecidiscount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>ecipaidAmount:</td>
		          <td><input id="ecipaidAmount" name="ecipaidAmount" type="text" value="${endCarteInfo.ecipaidAmount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>eciremark:</td>
		          <td><input id="eciremark" name="eciremark" type="text" value="${endCarteInfo.eciremark}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${endCarteInfo.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${endCarteInfo.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${endCarteInfo.subBy}" size="30" maxlength="80" /></td>
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
