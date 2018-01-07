<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>test</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
 <script type="text/javascript">
    $(document).ready(
function()
{ 
$("#getAllId").bind("click",function()
{
$.post("studentlist",function(data)
{
var $data=$.parseJSON(data);
$("table:last tr:not(:first)").remove();
for(var i=0;i<$data.length;i++)
{
var $tr=$("<tr></tr>");
var $tdid=$("<td></td>");
var $tduname=$("<td></td>");
var $tdage=$("<td></td>");
$tdid.text($data[i].id);
$tduname.text($data[i].username);
$tdage.text($data[i].age);
$tr.append($tdid);
$tr.append($tduname);
$tr.append($tdage);
$tr.appendTo($("table:last"))
}
},'json')
});
}
  )
</script>
  </head>
  
  <body>
         <input type="button" id="getAllId" value="获得所有注册学生列表"/>
        <table>
             <tr>
                <td>序号</td>
                <td>用户名</td>
                <td>年龄</td>
             </tr>
        </table>
  </body>
</html>
