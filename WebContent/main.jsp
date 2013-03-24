<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="js/SlickGrid-master/slick.grid.css"
	type="text/css" />
<link href="js/css/ui-lightness/jquery-ui-1.10.0.custom.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="js/ad-gallery/jquery.ad-gallery.css">


<script src="js/js/jquery-1.9.0.js"></script>
<script src="js/js/jquery-ui-1.10.0.custom.js"></script>

<script type="text/javascript" src="js/ad-gallery/jquery.ad-gallery.js"></script>


<script src="js/SlickGrid-master/lib/jquery.event.drag-2.0.min.js"></script>

<script src="js/SlickGrid-master/slick.core.js"></script>
<script src="js/SlickGrid-master/slick.grid.js"></script>

</head>
<body>
	<table width="100%" height="100%">
		<tr height="100%">
			<td width="30%">
				<div id="gallery" class="ad-gallery">
					<div class="ad-image-wrapper"></div>
					<div class="ad-controls"></div>
					<div class="ad-nav">
						<div class="ad-thumbs">
							<ul class="ad-thumb-list">
								<li><a href="res/img/pic_ppt/1.jpg"> <img
										src="res/img/pic_ppt/thumbs/t1.jpg" class="image0">
								</a></li>

								<li><a href="res/img/pic_ppt/2.jpg" id="t2"> <img
										src="res/img/pic_ppt/thumbs/t2.jpg" title="A title for 2.jpg"
										alt="This is a nice, and incredibly descriptive, description of the image 2.jpg"
										class="image6">
								</a></li>
								<li><a href="res/img/pic_ppt/3.jpg"> <img
										src="res/img/pic_ppt/thumbs/t3.jpg" title="A title for 3.jpg"
										alt="This is a nice, and incredibly descriptive, description of the image 3.jpg"
										class="image7">
								</a></li>
								<li><a href="res/img/pic_ppt/4.jpg"> <img
										src="res/img/pic_ppt/thumbs/t4.jpg" title="A title for 4.jpg"
										alt="This is a nice, and incredibly descriptive, description of the image 4.jpg"
										class="image8">
								</a></li>
								<li><a href="res/img/pic_ppt/5.jpg"> <img
										src="res/img/pic_ppt/thumbs/t5.jpg" title="A title for 5.jpg"
										alt="This is a nice, and incredibly descriptive, description of the image 5.jpg"
										class="image9">
								</a></li>

							</ul>
						</div>
					</div>
				</div>
			</td>
			<td width="70%"><div id="newsGrid"
					style="width: 340px; height: 496px;"></div></td>
		</tr>
	</table>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.ad-gallery').adGallery({
				width : 600,
				height : 400,
				slideshow : {
					start_label : '',
					stop_label : ''
				}
			});
			var grid;
			var columns = [ {
				id : "date",
				name : "Date",
				field : "date",
				width : 110
			}, {
				id : "title",
				name : "Title",
				field : "title",
				width : 230
			} ];

			var options = {
				//enableCellNavigation : true,
				//enableColumnReorder : false
			};

			$(function() {
				var data = [];
				for ( var i = 0; i < 30; i++) {
					data[i] = {
						title : "Task " + i,
						date : "01/01/2009"
					};
				}

				grid = new Slick.Grid("#newsGrid", data, columns, options);
			});

		});
	</script>
</body>
</html>