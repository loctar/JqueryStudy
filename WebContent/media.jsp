<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Meidia</title>
</head>
<body>
	<table border="1">
		<tr height="265">
			<td width="600"><div id="leftDiv"  ondrop="drop(event)" ondragover="allowDrop(event)">
					<video id = "wowcg"
						height="265" width="600" controls="controls" draggable="true" ondragstart="drag(event)">
						<source src="./media/video/wowcg.mp4" type="video/mp4" ></source>
						</video>
				</div></td>
			<td width="600"><div id="rightDiv"  ondrop="drop(event)" ondragover="allowDrop(event)"></div></td>
		</tr>
	</table>
	<script type="text/javascript">
		function allowDrop(ev) {
			ev.preventDefault();
		}

		function drag(ev) {
			ev.dataTransfer.setData("Text", ev.target.id);
		}

		function drop(ev) {
			ev.preventDefault();
			var data = ev.dataTransfer.getData("Text");
			ev.target.appendChild(document.getElementById(data));
		}
	</script>
</body>
</html>