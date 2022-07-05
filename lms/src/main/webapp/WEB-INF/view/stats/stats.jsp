<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Skydash Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/feather/feather.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/vertical-layout-light/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/favicon.png">
<style type="text/css">/* Chart.js */
@
keyframes chartjs-render-animation {
	from {opacity: .99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	animation: chartjs-render-animation 1ms
}

.chartjs-size-monitor, .chartjs-size-monitor-expand,
	.chartjs-size-monitor-shrink {
	position: absolute;
	direction: ltr;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	overflow: hidden;
	pointer-events: none;
	visibility: hidden;
	z-index: -1
}

.chartjs-size-monitor-expand>div {
	position: absolute;
	width: 1000000px;
	height: 1000000px;
	left: 0;
	top: 0
}

.chartjs-size-monitor-shrink>div {
	position: absolute;
	width: 200%;
	height: 200%;
	left: 0;
	top: 0
}
</style>
</head>

<body>
	<div class="container-scroller">
		<!-- partial:${pageContext.request.contextPath}/partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5"
					href="${pageContext.request.contextPath}/index.html"><img
					src="${pageContext.request.contextPath}/images/logo.svg"
					class="mr-2" alt="logo"></a> <a
					class="navbar-brand brand-logo-mini"
					href="${pageContext.request.contextPath}/index.html"><img
					src="${pageContext.request.contextPath}/images/logo-mini.svg"
					alt="logo"></a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="icon-menu"></span>
				</button>
				
				
				<ul class="navbar-nav mr-lg-2">
					<li class="nav-item nav-search d-none d-lg-block">
						<div class="input-group">
							<div class="input-group-prepend hover-cursor"
								id="navbar-search-icon">
								<span class="input-group-text" id="search"> <i
									class="icon-search"></i>
								</span>
							</div>
							<input type="text" class="form-control" id="navbar-search-input"
								placeholder="Search now" aria-label="search"
								aria-describedby="search">
						</div>
					</li>
				</ul>
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator dropdown-toggle"
						id="notificationDropdown" href="#" data-toggle="dropdown"> <i
							class="icon-bell mx-0"></i> <span class="count"></span>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
							aria-labelledby="notificationDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-success">
										<i class="ti-info-alt mx-0"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject font-weight-normal">Application
										Error</h6>
									<p class="font-weight-light small-text mb-0 text-muted">
										Just now</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-warning">
										<i class="ti-settings mx-0"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject font-weight-normal">Settings</h6>
									<p class="font-weight-light small-text mb-0 text-muted">
										Private message</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-info">
										<i class="ti-user mx-0"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<h6 class="preview-subject font-weight-normal">New user
										registration</h6>
									<p class="font-weight-light small-text mb-0 text-muted">2
										days ago</p>
								</div>
							</a>
						</div></li>
					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						id="profileDropdown"> <img
							src="${pageContext.request.contextPath}/images/faces/face28.jpg"
							alt="profile">
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item"> <i class="ti-settings text-primary"></i>
								Settings
							</a> <a class="dropdown-item"> <i
								class="ti-power-off text-primary"></i> Logout
							</a>
						</div></li>
					<li class="nav-item nav-settings d-none d-lg-flex"><a
						class="nav-link" href="#"> <i class="icon-ellipsis"></i>
					</a></li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="icon-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:${pageContext.request.contextPath}/partials/_settings-panel.html -->
			<div class="theme-setting-wrapper">
				<div id="settings-trigger">
					<i class="ti-settings"></i>
				</div>
				<div id="theme-settings" class="settings-panel">
					<i class="settings-close ti-close"></i>
					<p class="settings-heading">SIDEBAR SKINS</p>
					<div class="sidebar-bg-options selected" id="sidebar-light-theme">
						<div class="img-ss rounded-circle bg-light border mr-3"></div>
						Light
					</div>
					<div class="sidebar-bg-options" id="sidebar-dark-theme">
						<div class="img-ss rounded-circle bg-dark border mr-3"></div>
						Dark
					</div>
					<p class="settings-heading mt-2">HEADER SKINS</p>
					<div class="color-tiles mx-0 px-4">
						<div class="tiles success"></div>
						<div class="tiles warning"></div>
						<div class="tiles danger"></div>
						<div class="tiles info"></div>
						<div class="tiles dark"></div>
						<div class="tiles default"></div>
					</div>
				</div>
			</div>
			<div id="right-sidebar" class="settings-panel">
				<i class="settings-close ti-close"></i>
				<ul class="nav nav-tabs border-top" id="setting-panel"
					role="tablist">
					<li class="nav-item"><a class="nav-link active" id="todo-tab"
						data-toggle="tab" href="#todo-section" role="tab"
						aria-controls="todo-section" aria-expanded="true">TO DO LIST</a></li>
					<li class="nav-item"><a class="nav-link" id="chats-tab"
						data-toggle="tab" href="#chats-section" role="tab"
						aria-controls="chats-section">CHATS</a></li>
				</ul>
				<div class="tab-content" id="setting-content">
					<div class="tab-pane fade show active scroll-wrapper ps"
						id="todo-section" role="tabpanel" aria-labelledby="todo-section">
						<div class="add-items d-flex px-3 mb-0">
							<form class="form w-100">
								<div class="form-group d-flex">
									<input type="text" class="form-control todo-list-input"
										placeholder="Add To-do">
									<button type="submit"
										class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
								</div>
							</form>
						</div>
						<div class="list-wrapper px-3">
							<ul class="d-flex flex-column-reverse todo-list">
								<li>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox"> Team review meeting
											at 3.00 PM <i class="input-helper"></i></label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox"> Prepare for
											presentation <i class="input-helper"></i></label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox"> Resolve all the low
											priority tickets due today <i class="input-helper"></i></label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li class="completed">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox" checked=""> Schedule
											meeting for next week <i class="input-helper"></i></label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li class="completed">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox" checked=""> Project
											review <i class="input-helper"></i></label>
									</div> <i class="remove ti-close"></i>
								</li>
							</ul>
						</div>
						<h4 class="px-3 text-muted mt-5 font-weight-light mb-0">Events</h4>
						<div class="events pt-4 px-3">
							<div class="wrapper d-flex mb-2">
								<i class="ti-control-record text-primary mr-2"></i> <span>Feb
									11 2018</span>
							</div>
							<p class="mb-0 font-weight-thin text-gray">Creating component
								page build a js</p>
							<p class="text-gray mb-0">The total number of sessions</p>
						</div>
						<div class="events pt-4 px-3">
							<div class="wrapper d-flex mb-2">
								<i class="ti-control-record text-primary mr-2"></i> <span>Feb
									7 2018</span>
							</div>
							<p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
							<p class="text-gray mb-0 ">Call Sarah Graves</p>
						</div>
						<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
							<div class="ps__thumb-x" tabindex="0"
								style="left: 0px; width: 0px;"></div>
						</div>
						<div class="ps__rail-y" style="top: 0px; right: 0px;">
							<div class="ps__thumb-y" tabindex="0"
								style="top: 0px; height: 0px;"></div>
						</div>
					</div>
					<!-- To do section tab ends -->
					<div class="tab-pane fade" id="chats-section" role="tabpanel"
						aria-labelledby="chats-section">
						<div
							class="d-flex align-items-center justify-content-between border-bottom">
							<p
								class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
							<small
								class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See
								All</small>
						</div>
						<ul class="chat-list">
							<li class="list active">
								<div class="profile">
									<img
										src="${pageContext.request.contextPath}/images/faces/face1.jpg"
										alt="image"><span class="online"></span>
								</div>
								<div class="info">
									<p>Thomas Douglas</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">19 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img
										src="${pageContext.request.contextPath}/images/faces/face2.jpg"
										alt="image"><span class="offline"></span>
								</div>
								<div class="info">
									<div class="wrapper d-flex">
										<p>Catherine</p>
									</div>
									<p>Away</p>
								</div>
								<div class="badge badge-success badge-pill my-auto mx-2">4</div>
								<small class="text-muted my-auto">23 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img
										src="${pageContext.request.contextPath}/images/faces/face3.jpg"
										alt="image"><span class="online"></span>
								</div>
								<div class="info">
									<p>Daniel Russell</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">14 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img
										src="${pageContext.request.contextPath}/images/faces/face4.jpg"
										alt="image"><span class="offline"></span>
								</div>
								<div class="info">
									<p>James Richardson</p>
									<p>Away</p>
								</div> <small class="text-muted my-auto">2 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img
										src="${pageContext.request.contextPath}/images/faces/face5.jpg"
										alt="image"><span class="online"></span>
								</div>
								<div class="info">
									<p>Madeline Kennedy</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">5 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img
										src="${pageContext.request.contextPath}/images/faces/face6.jpg"
										alt="image"><span class="online"></span>
								</div>
								<div class="info">
									<p>Sarah Graves</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">47 min</small>
							</li>
						</ul>
					</div>
					<!-- chat tab ends -->
				</div>
			</div>
			<!-- partial -->
			<!-- partial:${pageContext.request.contextPath}/partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/index.html"> <i
							class="icon-grid menu-icon"></i> <span class="menu-title">Dashboard</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i class="icon-layout menu-icon"></i>
							<span class="menu-title">UI Elements</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/ui-features/buttons.html">Buttons</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/ui-features/dropdowns.html">Dropdowns</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/ui-features/typography.html">Typography</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#form-elements" aria-expanded="false"
						aria-controls="form-elements"> <i
							class="icon-columns menu-icon"></i> <span class="menu-title">Form
								elements</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="form-elements">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/forms/basic_elements.html">Basic
										Elements</a></li>
							</ul>
						</div></li>
					<li class="nav-item active"><a class="nav-link"
						data-toggle="collapse" href="#charts" aria-expanded="false"
						aria-controls="charts"> <i class="icon-bar-graph menu-icon"></i>
							<span class="menu-title">Charts</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse show" id="charts">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link active"
									href="${pageContext.request.contextPath}/pages/charts/chartjs.html">ChartJs</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#tables" aria-expanded="false"
						aria-controls="tables"> <i class="icon-grid-2 menu-icon"></i>
							<span class="menu-title">Tables</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="tables">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/tables/basic-table.html">Basic
										table</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#icons" aria-expanded="false"
						aria-controls="icons"> <i class="icon-contract menu-icon"></i>
							<span class="menu-title">Icons</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="icons">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/icons/mdi.html">Mdi
										icons</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <i class="icon-head menu-icon"></i> <span
							class="menu-title">User Pages</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="auth">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/samples/login.html">
										Login </a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/samples/register.html">
										Register </a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#error" aria-expanded="false"
						aria-controls="error"> <i class="icon-ban menu-icon"></i> <span
							class="menu-title">Error pages</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="error">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/samples/error-404.html">
										404 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/samples/error-500.html">
										500 </a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/pages/documentation/documentation.html">
							<i class="icon-paper menu-icon"></i> <span class="menu-title">Documentation</span>
					</a></li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<h4 class="card-title">Bar chart</h4>
									<canvas id="barChart"
										style="display: block; width: 642px; height: 321px;"
										width="642" height="321" class="chartjs-render-monitor"></canvas>
								</div>
							</div>
						</div>
					</div>



					<!-- content-wrapper ends -->
					<!-- partial:${pageContext.request.contextPath}/partials/_footer.html -->
					<!-- partial -->
				</div>
				<!-- main-panel ends -->
			</div>
			<!-- page-body-wrapper ends -->
		</div>
		<!-- container-scroller -->
		<!-- plugins:js -->
		<script
			src="${pageContext.request.contextPath}/vendors/js/vendor.bundle.base.js"></script>
		<!-- endinject -->
		<!-- Plugin js for this page -->
		<script
			src="${pageContext.request.contextPath}/vendors/chart.js/Chart.min.js"></script>
		<!-- End plugin js for this page -->
		<!-- inject:js -->
		<script src="${pageContext.request.contextPath}/js/off-canvas.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/hoverable-collapse.js"></script>
		<script src="${pageContext.request.contextPath}/js/template.js"></script>
		<script src="${pageContext.request.contextPath}/js/settings.js"></script>
		<script src="${pageContext.request.contextPath}/js/todolist.js"></script>
		<!-- endinject -->
		<!-- Custom js for this page-->
		<!-- End custom js for this page-->
		<script>
			var arr;
			var chanhee =[];
			var minchang = [];
			$.ajax({
				type : 'get'
				,url : '/lms/stats'
				,success : function(jsonData) {
						let a = [];
						let b = [];
						arr=jsonData;
						console.log(arr);
						for(j=0;j<jsonData.length;j++) {
							a.push(arr[j].className);
							b.push(arr[j].avg);
						}
			var data = {
					labels : a,
					datasets : [ {
						label : "grade",
						data : b,
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ],
						borderColor : [ 'rgba(255,99,132,1)',
								'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ],
						borderWidth : 1,
						fill : false
					} ]
				}
						var multiLineData = {
								labels : [ "Red", "Blue", "Yellow", "Green", "Purple", "Orange" ],
								datasets : [ {
									label : 'Dataset 1',
									data : [ 10, 19, 3, 5, 2, 3 ],
									borderColor : [ '#587ce4' ],
									borderWidth : 2,
									fill : false
								}, {
									label : 'Dataset 2',
									data : [ 5, 23, 7, 12, 42, 23 ],
									borderColor : [ '#ede190' ],
									borderWidth : 2,
									fill : false
								}, {
									label : 'Dataset 3',
									data : [ 15, 10, 21, 32, 12, 33 ],
									borderColor : [ '#f44252' ],
									borderWidth : 2,
									fill : false
								} ]
							};
							var options = {
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								},
								legend : {
									display : false
								},
								elements : {
									point : {
										radius : 0
									}
								}

							};
							var doughnutPieData = {
								datasets : [ {
									data : [ 30, 40, 30 ],
									backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',
											'rgba(255, 206, 86, 0.5)',
											'rgba(75, 192, 192, 0.5)',
											'rgba(153, 102, 255, 0.5)',
											'rgba(255, 159, 64, 0.5)' ],
									borderColor : [ 'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
								} ],

								// These labels appear in the legend and in the tooltips when hovering different arcs
								labels : [ 'Pink', 'Blue', 'Yellow', ]
							};
							var doughnutPieOptions = {
								responsive : true,
								animation : {
									animateScale : true,
									animateRotate : true
								}
							};
							var areaData = {
								labels : [ "2013", "2014", "2015", "2016", "2017" ],
								datasets : [ {
									label : '# of Votes',
									data : [ 12, 19, 3, 5, 2, 3 ],
									backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
											'rgba(54, 162, 235, 0.2)',
											'rgba(255, 206, 86, 0.2)',
											'rgba(75, 192, 192, 0.2)',
											'rgba(153, 102, 255, 0.2)',
											'rgba(255, 159, 64, 0.2)' ],
									borderColor : [ 'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									borderWidth : 1,
									fill : true, // 3: no fill
								} ]
							};

							var areaOptions = {
								plugins : {
									filler : {
										propagate : true
									}
								}
							}

							var multiAreaData = {
								labels : [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
										"Aug", "Sep", "Oct", "Nov", "Dec" ],
								datasets : [ {
									label : 'Facebook',
									data : [ 8, 11, 13, 15, 12, 13, 16, 15, 13, 19, 11, 14 ],
									borderColor : [ 'rgba(255, 99, 132, 0.5)' ],
									backgroundColor : [ 'rgba(255, 99, 132, 0.5)' ],
									borderWidth : 1,
									fill : true
								}, {
									label : 'Twitter',
									data : [ 7, 17, 12, 16, 14, 18, 16, 12, 15, 11, 13, 9 ],
									borderColor : [ 'rgba(54, 162, 235, 0.5)' ],
									backgroundColor : [ 'rgba(54, 162, 235, 0.5)' ],
									borderWidth : 1,
									fill : true
								}, {
									label : 'Linkedin',
									data : [ 6, 14, 16, 20, 12, 18, 15, 12, 17, 19, 15, 11 ],
									borderColor : [ 'rgba(255, 206, 86, 0.5)' ],
									backgroundColor : [ 'rgba(255, 206, 86, 0.5)' ],
									borderWidth : 1,
									fill : true
								} ]
							};

							var multiAreaOptions = {
								plugins : {
									filler : {
										propagate : true
									}
								},
								elements : {
									point : {
										radius : 0
									}
								},
								scales : {
									xAxes : [ {
										gridLines : {
											display : false
										}
									} ],
									yAxes : [ {
										gridLines : {
											display : false
										}
									} ]
								}
							}

							var scatterChartData = {
								datasets : [ {
									label : 'First Dataset',
									data : [ {
										x : -10,
										y : 0
									}, {
										x : 0,
										y : 3
									}, {
										x : -25,
										y : 5
									}, {
										x : 40,
										y : 5
									} ],
									backgroundColor : [ 'rgba(255, 99, 132, 0.2)' ],
									borderColor : [ 'rgba(255,99,132,1)' ],
									borderWidth : 1
								}, {
									label : 'Second Dataset',
									data : [ {
										x : 10,
										y : 5
									}, {
										x : 20,
										y : -30
									}, {
										x : -25,
										y : 15
									}, {
										x : -10,
										y : 5
									} ],
									backgroundColor : [ 'rgba(54, 162, 235, 0.2)', ],
									borderColor : [ 'rgba(54, 162, 235, 1)', ],
									borderWidth : 1
								} ]
							
							}

							var scatterChartOptions = {
								scales : {
									xAxes : [ {
										type : 'linear',
										position : 'bottom'
									} ]
								}
							}

							// Get context with jQuery - using jQuery's .get() method.
							if ($("#barChart").length) {
								var barChartCanvas = $("#barChart").get(0).getContext("2d");
								// This will get the first returned node in the jQuery collection.
								var barChart = new Chart(barChartCanvas, {
									type : 'bar',
									data : data,
									options : options
								});
							}
							
							if ($("#lineChart").length) {
								var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
								var lineChart = new Chart(lineChartCanvas, {
									type : 'line',
									data : data,
									options : options
								});
							}

							if ($("#linechart-multi").length) {
								var multiLineCanvas = $("#linechart-multi").get(0).getContext(
										"2d");
								var lineChart = new Chart(multiLineCanvas, {
									type : 'line',
									data : multiLineData,
									options : options
								});
							}

							if ($("#areachart-multi").length) {
								var multiAreaCanvas = $("#areachart-multi").get(0).getContext(
										"2d");
								var multiAreaChart = new Chart(multiAreaCanvas, {
									type : 'line',
									data : multiAreaData,
									options : multiAreaOptions
								});
							}

							if ($("#doughnutChart").length) {
								var doughnutChartCanvas = $("#doughnutChart").get(0)
										.getContext("2d");
								var doughnutChart = new Chart(doughnutChartCanvas, {
									type : 'doughnut',
									data : doughnutPieData,
									options : doughnutPieOptions
								});
							}

							if ($("#pieChart").length) {
								var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
								var pieChart = new Chart(pieChartCanvas, {
									type : 'pie',
									data : doughnutPieData,
									options : doughnutPieOptions
								});
							}

							if ($("#areaChart").length) {
								var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
								var areaChart = new Chart(areaChartCanvas, {
									type : 'line',
									data : areaData,
									options : areaOptions
								});
							}

							if ($("#scatterChart").length) {
								var scatterChartCanvas = $("#scatterChart").get(0).getContext(
										"2d");
								var scatterChart = new Chart(scatterChartCanvas, {
									type : 'scatter',
									data : scatterChartData,
									options : scatterChartOptions
								});
							}

							if ($("#browserTrafficChart").length) {
								var doughnutChartCanvas = $("#browserTrafficChart").get(0)
										.getContext("2d");
								var doughnutChart = new Chart(doughnutChartCanvas, {
									type : 'doughnut',
									data : browserTrafficData,
									options : doughnutPieOptions
								});
							}
				}
			});

			/* ChartJS
			 * -------
			 * Data and config for chartjs
			 */
		</script>
</body>
</html>