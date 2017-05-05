<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function yuangongDel(yuangongId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/yuangongDel.action?yuangongId="+yuangongId;
               }
           }
           
           
           function yuangongAdd()
           {
                 var url="<%=path %>/admin/yuangong/yuangongAdd.jsp";
				 window.location.href=url;
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="14" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="8%">部门</td>
					<td width="8%">姓名</td>
					<td width="5%">性别</td>
					
					<td width="5%">年龄</td>
					<td width="5%">学历</td>
					<td width="8%">职位</td>
					<td width="10%">住址</td>
					
					<td width="10%">电话</td>
					<td width="10%">邮箱</td>
					<td width="10%">工号</td>
					<td width="10%">密码</td>
					
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.yuangongList" id="yuangong" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuangong.organization.orgName"/><!-- 部门 -->
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuangong.yuangongName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuangong.yuangongSex"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuangong.yuangongAge"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuangong.yuangongXueli"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuangong.yuangongZhiwei"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuangong.yuangongAddress"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuangong.yuangongTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#yuangong.yuangongEmail"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#yuangong.yuangongGonghao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#yuangong.yuangongMima"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="yuangongDel(<s:property value="#yuangong.yuangongId"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加员工信息" style="width: 120px;" onclick="yuangongAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
