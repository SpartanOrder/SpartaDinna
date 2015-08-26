<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>tempendCarteInfo表单</title>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp"%>
<script>
	$(document).ready(function(){
		//聚焦第一个输入框
		$("#name").focus();
		//为inputForm注册validate函数
		$("#inputForm").validate({
			rules: {
				teciid:"required",teciswiftNumber:"required",tecistate:"required",tecidTableId:"required",tecicustomerId:"required",tecimemId:"required",teciwaiterId:"required",tecidishNums:"required",teciamountPeoplo:"required",tecirepastTime:"required",teciconsumeAmount:"required",tecicostAmount:"required",tecidiscount:"required",teciremark:"required",delFlag:"required",lastSubTime:"required",subBy:"required"	
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
    		<form id="inputForm" action="${ctx}/dinna/tempendCarteInfo/save" method="post">
		      <input type="hidden" name="id" value="${tempendCarteInfo.id}" />
		      <table>
		      	
		        <tr>
		          <td>teciid:</td>
		          <td><input id="teciid" name="teciid" type="text" value="${tempendCarteInfo.teciid}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teciswiftNumber:</td>
		          <td><input id="teciswiftNumber" name="teciswiftNumber" type="text" value="${tempendCarteInfo.teciswiftNumber}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecistate:</td>
		          <td><input id="tecistate" name="tecistate" type="text" value="${tempendCarteInfo.tecistate}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecidTableId:</td>
		          <td><input id="tecidTableId" name="tecidTableId" type="text" value="${tempendCarteInfo.tecidTableId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecicustomerId:</td>
		          <td><input id="tecicustomerId" name="tecicustomerId" type="text" value="${tempendCarteInfo.tecicustomerId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecimemId:</td>
		          <td><input id="tecimemId" name="tecimemId" type="text" value="${tempendCarteInfo.tecimemId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teciwaiterId:</td>
		          <td><input id="teciwaiterId" name="teciwaiterId" type="text" value="${tempendCarteInfo.teciwaiterId}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecidishNums:</td>
		          <td><input id="tecidishNums" name="tecidishNums" type="text" value="${tempendCarteInfo.tecidishNums}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teciamountPeoplo:</td>
		          <td><input id="teciamountPeoplo" name="teciamountPeoplo" type="text" value="${tempendCarteInfo.teciamountPeoplo}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecirepastTime:</td>
		          <td><input id="tecirepastTime" name="tecirepastTime" type="text" value="${tempendCarteInfo.tecirepastTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teciconsumeAmount:</td>
		          <td><input id="teciconsumeAmount" name="teciconsumeAmount" type="text" value="${tempendCarteInfo.teciconsumeAmount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecicostAmount:</td>
		          <td><input id="tecicostAmount" name="tecicostAmount" type="text" value="${tempendCarteInfo.tecicostAmount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>tecidiscount:</td>
		          <td><input id="tecidiscount" name="tecidiscount" type="text" value="${tempendCarteInfo.tecidiscount}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>teciremark:</td>
		          <td><input id="teciremark" name="teciremark" type="text" value="${tempendCarteInfo.teciremark}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>delFlag:</td>
		          <td><input id="delFlag" name="delFlag" type="text" value="${tempendCarteInfo.delFlag}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>lastSubTime:</td>
		          <td><input id="lastSubTime" name="lastSubTime" type="text" value="${tempendCarteInfo.lastSubTime}" size="30" maxlength="80" /></td>
		        </tr>
		        
		        <tr>
		          <td>subBy:</td>
		          <td><input id="subBy" name="subBy" type="text" value="${tempendCarteInfo.subBy}" size="30" maxlength="80" /></td>
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
