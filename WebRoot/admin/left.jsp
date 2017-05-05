<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 
    <script src="<%=path %>/js/menu.js"></script>

	<style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			color: #FFFFFF;
			font-weight: bold;
			font-size: 12px;
		}
		.STYLE2 {
			font-size: 12px;
			color: #03515d;
		}
		a:link {font-size:12px; text-decoration:none; color:#03515d;}
		a:visited{font-size:12px; text-decoration:none; color:#03515d;}
		.STYLE3 {font-size: 12px}
	</style>
  </head>

  <body>
     <c:if test="${sessionScope.userType==0}">
     <table width="156"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" valign="top">
	            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				      <tr>
				        <td height="33" background="<%=path %>/images/main_21.gif">&nbsp;</td>
				      </tr>
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td1" onClick="show(1)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">修改登录密码</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show1" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="/yyrs/admin/userinfo/userPw.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;修改登录密码</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td2" onClick="show(2)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">部门信息管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show2" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="/yyrs/orgMana.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;部门信息管理</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(3)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">员工信息管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show3" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="/yyrs/yuangongMana.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;员工信息管理</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="/yyrs/admin/yuangong/yuangongAdd.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;添加员工信息</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(5)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">工资信息管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show5" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="/yyrs/gongziMana.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;工资信息管理</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="/yyrs/admin/gongzi/gongziAdd.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;添加工资信息</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(6)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">奖惩信息管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show6" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="/yyrs/jiangchengMana.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;奖惩信息管理</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="/yyrs/admin/jiangcheng/jiangchengAdd.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;添加奖惩信息</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      
				      
				      
				      
				      
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(9)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">请假申请模块</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show9" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="<%=path %>/qingjiaMana.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;请假申请模块</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      <!-- meiyongde -->
				      <tr>
				        <td height="10" background="<%=path %>/images/main_25.gif">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"></div></td>
					                  <td valign="middle">
					                      
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- meiyongde -->
	            </table>
            </td>
        </tr>
     </table>
     </c:if>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     <c:if test="${sessionScope.userType==1}">
     <table width="156"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" valign="top">
	            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				      <tr>
				        <td height="33" background="<%=path %>/images/main_21.gif">&nbsp;</td>
				      </tr>
				      
				      
				      
				      
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(7)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">我的工资信息</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show7" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="/yyrs/gongziMine.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;我的工资信息</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(8)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">员工申请模块</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show8" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="<%=path %>/qingjiaMine.action" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;我的请假信息</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="<%=path %>/admin/qingjia/qingjiaAdd.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;添加请假信息</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      
				      <!-- caidan -->
				      <tr style="display: none">
				        <td height="30" background="<%=path %>/images/main_25.jpg" id="td3" onClick="show(9)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="<%=path %>/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">xxxxxxxxxx</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show9" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="yhzhgl.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;xxxxxxxxxx</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="yhzhgl.jsp" target="I2" style="margin-left: 20px;">
					               <img src="<%=path %>/images/arr3.gif" border="0">&nbsp;&nbsp;xxxxxxxxxx</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      <!-- meiyongde -->
				      <tr>
				        <td height="10" background="<%=path %>/images/main_25.gif">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"></div></td>
					                  <td valign="middle">
					                      
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- meiyongde -->
	            </table>
            </td>
        </tr>
     </table>
     </c:if>
  </body>
</html>

