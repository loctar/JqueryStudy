<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="js/css/ui-lightness/jquery-ui-1.10.0.custom.css"
	rel="stylesheet">
<link href="js/jMenu-master/css/jMenu.jquery.css" rel="stylesheet">


<script src="js/js/jquery-1.9.0.js"></script>
<script src="js/js/jquery-ui-1.10.0.custom.js"></script>
<script type="text/javascript" src="js/jMenu-master/js/jMenu.jquery.js"></script>

</head>
<body>
	<table width="100%" height="100%">
		<tr height="60px">
			<td colspan="2" width="100%">
				<ul id="jMenu">
					<li style="width: 241px; text-align: center"><a class="fNiv" id="mainPage">首页</a>
					</li>

					<li style="width: 241px; text-align: center"><a class="fNiv">行业成绩</a>
						<ul>
							<li class="arrow"></li>
							<li><a>重大项目</a></li>
							<li><a>获奖情况</a></li>
							<li><a>科研成果</a></li>
						</ul></li>

					<li style="width: 241px; text-align: center"><a class="fNiv">联系我们</a>
					</li>
					<li style="width: 241px; text-align: center"><a class="fNiv" id="contactMe">招兵买马</a>
					</li>


				</ul>
			</td>
		</tr>
	
	</table>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#jMenu").jMenu({
			ulWidth : 'auto',
			effects : {
				effectSpeedOpen : 300,
				effectTypeClose : 'slide'
			},
			animatedText : false
		});
		$('#contactMe').click(function(){
			parent.document.getElementById("mainFrame").src = "media.jsp";
		});
		$('#mainPage').click(function(){
			parent.document.getElementById("mainFrame").src = "main.jsp";
		});
		console.log("322313");

	});
	</script>
</body>
</html>