<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,user-scalable=no, initial-scale=1">
<title>绿地物业管理系统</title>
<link rel="stylesheet" href="css/index.css" type="text/css">


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script src="../X-admin/lib/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="../X-admin/js/xadmin.js"></script>
	<%
		String loginName = (String)session.getAttribute("LoginName");
		String role=(String)session.getAttribute("Role");
	%>
	<script>
		function gotoWork() {
			$.post(
					"/gotoWork?name="+'<%=loginName%>',
					function (result) {
						if(parseInt(result)==1)
						{
							layer.alert("打卡成功,上班愉快", {icon: 6,time: 2000},function () {
								// 获得frame索引
								var index = parent.layer.getFrameIndex(window.name);
								//关闭当前frame
								parent.layer.close(index);
							});
						}
					})
		}
		function gotoHome() {
			$.post(
					'/gotoHome?name='+'<%=session.getAttribute("LoginName")%>',
					function (result) {
						if(parseInt(result)==1)
						{
							layer.alert("打卡成功,下班愉快", {icon: 6,time: 2000},function () {
								// 获得frame索引
								var index = parent.layer.getFrameIndex(window.name);
								//关闭当前frame
								parent.layer.close(index);
							});
						}
					})
		}

	</script>

</head>
<body>
<!--头部-->
<div class="top_bg" id="top_bg">
    <div class="top_gang">
    	<div class="tou_zj">
    		<div class="hy">
    			<img src="images/tou_tb_03.png">
    			<span>欢迎来到绿地物业管理有限公司</span>
    		</div>
    		<div class="soucang">
				<a href="#" onclick="gotoWork()">打卡上班&nbsp;</a>｜
				<a href="#" onclick="gotoHome()">&nbsp;打卡下班</a>
    		</div>
    	</div>
    </div>
    <div class="top_main">
        <div class="top_logo">
            <a href='./'><img src="images/logo1.png"></a>
        </div>
        <!--导航--> 
        <div class="daohang"> 
            <div class="header_nav">
				<div class="main clearBoth">
					<ul class="nav right">
						<li class="narrow_wrap">
							<a class="nav_btn" href="index.jsp">
								网站首页
								<b></b>
							</a>
						</li>
						<li class="narrow_wrap">
							<a class="nav_btn" href="about.html">
								关于我们
								<b></b>
								<div></div>
							</a>
							<div class="service_nav hide_nav hide_nav_narrow none" style="opacity: 0;">
								<ul>
									<li>
										<a href="#">公司简介</a>
									</li>
									<li>
										<a href="#">公司文化</a>
									</li>
									<li>
										<a href="#">领导致辞</a>
									</li>
									<li>
										<a href="#">服务理念</a>
									</li>
									<li>
										<a href="#">企业荣誉</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="narrow_wrap">
							<a class="nav_btn" href="publicAnnounce.jsp">
								公告栏
								<b></b>
								<div></div>
							</a>
						</li>
						<li class="narrow_wrap">
							<a class="nav_btn" href="publicMessage.jsp">
								留言板
								<b></b>
							</a>
						</li>

                             <c:if test="${sessionScope.Role=='管理员'}">

                             <li class="narrow_wrap">
							<a class="nav_btn" href="../X-admin/administrator.jsp" onclick="check()">
								进入后台
								<b></b>
							</a>
						</li>
</c:if>
                        <li class="narrow_wrap">
                            <a class="nav_btn" href="../X-admin/login.jsp">
                                退出
                                <b></b>
                            </a>
                        </li>
					</ul>
				</div>
			</div>
       </div>
    </div>
</div>
<!--大图-->
<div class="main_yin">
	<div class="mianc" id="mianc">
		<!-- html -->
		<div class="ck-slide">
			<ul class="ck-slide-wrapper">
				<li>
                	<a href="javascript:"><img src="images/datu_02.jpg" alt=""></a>
				</li>
				<li style="display:none">
					<a href="javascript:"><img src="images/datu_1_03.jpg" alt=""></a>
				</li>
				<li style="display:none">
					<a href="javascript:"><img src="images/datu_02.jpg" alt=""></a>
				</li>
			</ul>
			<div id="baanner_jt">
				<a href="javascript:;" class="ctrl-slide ck-prev">上一张</a>
				<a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
			</div>
			<div class="ck-slidebox">
				<div class="slideWrap">
					<ul class="dot-wrap">
						<li class="current"><em>1</em></li>
						<li><em>2</em></li>
						<li><em>3</em></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- js -->
		<!--<script src="js/slide.min.js"></script>-->
        <script src="js/slide.js"></script>
		<script>
			$('.ck-slide').ckSlide({
				autoPlay: true,//默认为不自动播放，需要时请以此设置
				dir: 'x',//默认效果淡隐淡出，x为水平移动，y 为垂直滚动
				interval:3000//默认间隔2000毫秒
			});
		</script>
	</div>
</div>

<!--内容部分-->

<div class="nr_bufen_1">
	<div class="nr_bufen_1_jz">
		<div class="biaoti">
			<p>项目展示<span>Project presentation</span></p>
		</div>
		<div class="xiangmu_nr" id="demoo">
			<div id="indemo">
				<div id="demoo1">
					<ul>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_03.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_05.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_07.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_03.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_05.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_07.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_03.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_05.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
					</ul>
				</div>
				<div id="demoo2">
					<ul>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_03.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_05.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_07.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_03.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_05.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_07.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
						<li class="xiangmu_1">
							<a href="#"><img src="images/xiangmu_03.jpg"></a>
							<a href="#"><h4>达博圆</h4></a><span>电力职工医院项目外观，项目外观。</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="gd_an">
			<div class="gd_bj">
				<a href="publicAnnounce.jsp"><p>查看更多案例<span>&nbsp;></span></p></a>
			</div>
		</div>
	</div>
</div>

<script>
var  speed=30;
var  tab=document.getElementById("demoo");
var  tab1=document.getElementById("demoo1");
var  tab2=document.getElementById("demoo2");
tab2.innerHTML=tab1.innerHTML;
function Marquee(){
if(tab2.offsetWidth-tab.scrollLeft<=0)
tab.scrollLeft-=tab1.offsetWidth
else{
tab.scrollLeft++;
}
}
var  MyMar=setInterval(Marquee,speed);
tab.onmouseover=function() {clearInterval(MyMar)};
tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
</script>

<!--关于我们-->

<div class="guanyvwm">
	<div class="nr_bufen_1_jz">
		<div class="biaoti">
			<p>关于我们<span>About us</span></p>
		</div>
		<div class="women_1">
			<div class="zuo_s">
				<p>公司简介</p>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;江西绿地物业管理有限公司，始建于1998年，注册资金300万，属于二级物业管理注册资质的集体企业，是目前江西省物业管理行业实力较强的物业公司之一，第三个道小区及市政项目。<a href="#">[详情]</a></span>
			</div>
			<div class="women_1_a">
				<a href="about.html"><img src="images/guanyv_03.jpg"></a>
			</div>
		</div>
		<div class="women_2">
			<div class="zuo_s">
				<p>企业文化</p>
				<span>
					<ul class="liebiao">
						<li><img src="images/dian_03.png">质量方针：科学管理、优质服务、文明环境、顾客满意、持续发展.</li>
						<li><img src="images/dian_03.png">企业精神：开拓、求实、创新.</li>
						<li><img src="images/dian_03.png">服务宗旨：宾客至上，服务第一.</li>
					</ul>
				</span>
			</div>
			<div class="women_1_a">
				<a href="#"><img src="images/guanyv_05.jpg"></a>
			</div>
		</div>
		<div class="women_1">
			<div class="zuo_s">
				<p>发展历程</p>
				<span>
					<ul class="liebiao">
						<li><img src="images/dian_03.png">2016年国家计委、建委批示在贵州..</li>
						<li><img src="images/dian_03.png">2015年组赴绵开始筹建工作..</li>
						<li><img src="images/dian_03.png">2014完成了由仿制到试制改进的任.</li>
						<li><img src="images/dian_03.png">2013年工厂经国家正式验收合格..</li>
						<li><img src="images/dian_03.png">2012年工业学大庆”先进企业...</li>
						<li><a href="#">更多>></a></li>
					</ul>
				</span>
			</div>
			<div class="women_1_a">
				<a href="#"><img src="images/guanyv_09.jpg"></a>
			</div>
		</div>
		<div class="women_2">
			<div class="zuo_s">
				<p>领导致辞</p>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;匆忙中，就要与2015年挥手作别。在这辞旧迎新之际，我很高兴能代表贵阳天能物业管理中心向在各个岗位上辛勤工作的广大员，工致以节日的问候，祝大家在新的一年里工作顺利，心想事成！</span>
			</div>
			<div class="women_1_a">
				<a href="#"><img src="images/guanyv_10.jpg"></a>
			</div>
		</div>
	</div>
</div>

<!--新闻中心-->
<div class="xinwen">
	<div class="xinwen_jz">
		<div class="biaoti">
			<p>新闻中心<span>News center</span></p>
		</div>
		<div id="cen_right_top">
			<h3 class="active" style="margin-left: 47%;">公司新闻</h3>
			<h3>行业新闻</h3>
			<h3>公司大事记</h3>
			<ul style="display:block">
				<div class="news">
					<div class="xinwen_tu">
						<a class=xinwen_img href="#"><img src="images/xw_03.jpg"></a>
						<dl class="xinwen_wz">
							<dt><a href="#">公司质量体系内审员安全巡查</a><span>2016-10-10</span></dt>
							<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
						</dl>
					</div>
					<div class="xinwen_lb">
						<ol>
							<li>
								<h4>01</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司质量体系内审员安全巡查</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>02</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司质量体系内审员安全巡查</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>03</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司质量体系内审员安全巡查</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>04</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司质量体系内审员安全巡查</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
						</ol>
					</div>
				</div>
			</ul>
			<ul>
				<div class="news">
					<div class="xinwen_tu">
						<a class=xinwen_img href="#"><img src="images/xiangmu_07.jpg"></a>
						<dl class="xinwen_wz">
							<dt><a href="#">公司质量体系内审员安全巡查</a><span>2016-10-10</span></dt>
							<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
						</dl>
					</div>
					<div class="xinwen_lb">
						<ol>
							<li>
								<h4>01</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">第十五届《中国物业管理》杂志协办年会及论坛报道</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>02</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">第十五届《中国物业管理》杂志协办年会及论坛报道</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>03</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">第十五届《中国物业管理》杂志协办年会及论坛报道</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>04</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">第十五届《中国物业管理》杂志协办年会及论坛报道</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
						</ol>
					</div>
				</div>
			</ul>
			<ul>
				<div class="news">
					<div class="xinwen_tu">
						<a class=xinwen_img href="#"><img src="images/xiangmu_05.jpg"></a>
						<dl class="xinwen_wz">
							<dt><a href="#">公司开展2016年度通讯员培训</a><span>2016-10-10</span></dt>
							<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
						</dl>
					</div>
					<div class="xinwen_lb">
						<ol>
							<li>
								<h4>01</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司开展2016年度通讯员培训</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>02</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司开展2016年度通讯员培训</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>03</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司开展2016年度通讯员培训</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
							</li>
							<div class="jiange"></div>
							<li>
								<h4>04</h4>
								<dl class="xinwen_wz1">
									<dt><a href="#">公司开展2016年度通讯员培训</a><span>2016-10-10</span></dt>
									<dd>为帮助各获证企业掌握体系认证标准要求，使企业的管理体...</dd>
								</dl>
						</ol>
					</div>
				</div>
			</ul>
		</div>
		<div class="gonggao">
			<div class="gonggao_bt">
				<span>企业公告</span>
				<a href="#">更多+</a>
			</div>
			<ul class="gonggao_lb">
				<li><img src="images/tb_03.png"><a href="#">物业管理风险与危机防范</a></li>
				<li><img src="images/tb_03.png"><a href="#">贵州省物业管理协</a></li>
				<li><img src="images/tb_03.png"><a href="#">贵阳市物业管理协会2015年</a></li>
				<li><img src="images/tb_03.png"><a href="#">为了行业的尊严</a></li>
				<li><img src="images/tb_03.png"><a href="#">中国物业管理协会第四次会员代表</a></li>
				<li><img src="images/tb_03.png"><a href="#">物业管理风险与危机防范</a></li>
				<li><img src="images/tb_03.png"><a href="#">《物业管理行业发展报告》正式发行</a></li>
			</ul>	
		</div>
	</div>
</div>
<!--友情链接-->
<div class="yqlj">
	<div class="yqlj_jz">
		<div class="yqlj_bt">
			<h4></h4>
			<span>友情链接</span>
		</div>
		<ul class="yqlj_qy">
			<li><a href="#">贵州驰通网络公司</a></li>
			<li><a href="#">绿城物业服务集团有限公司</a></li>
			<li><a href="#">中航物业管理有限公司</a></li>
			<li><a href="#">保利物业管理有限公司</a></li>
			<li><a href="#">贵州驰通网络公司</a></li>
			<li><a href="#">绿城物业服务集团有限公司</a></li>
			<li><a href="#">中航物业管理有限公司</a></li>
			<li><a href="#">保利物业管理有限公司</a></li>
		</ul>
	</div>
</div>
<!--底部-->
<div class="dibu">
	<div class="dibu_jz">
		<div class="dibu_zuo">
			<p>联系地址：江西省南昌市高新大道0号绿地集团发展楼6楼<br>
			电 话：0851-85594612   传 真：0851-85594612<br></p>
			<ul>
				<li><span>分享到：</span></li>
				<li><a href="http://connect.qq.com/widget/shareqq/index.html?url=file%3A%2F%2F%2FC%3A%2FUsers%2Fadmin%2FDesktop%2F%25E6%25BD%2598%25E4%25B8%25AD%25E5%2585%25A8%2F%25E7%25BD%2591%25E7%25AB%2599%2Fgztnwy_qt%2Fnewlist.html%230-sqq-1-12217-9737f6f9e09dfaf5d3fd14d775bfee85&title=%E5%A4%A9%E8%83%BD%E7%89%A9%E4%B8%9A%E7%AE%A1%E7%90%86&desc=&summary=&site=baidu" target="_black"><img src="images/dibu_06.png"></a></li>
				<li><a href="http://service.weibo.com/share/share.php" target="_black"><img src="images/dibu_08.png"></a></li>
				<li><a href="http://widget.renren.com/dialog/share?resourceUrl=file%3A%2F%2F%2FC%3A%2FUsers%2Fadmin%2FDesktop%2F%25E6%25BD%2598%25E4%25B8%25AD%25E5%2585%25A8%2F%25E7%25BD%2591%25E7%25AB%2599%2Fgztnwy_qt%2Fnewlist.html%230-renren-1-63647-98fde57bb3d39343db0f272b38411f3e&srcUrl=file%3A%2F%2F%2FC%3A%2FUsers%2Fadmin%2FDesktop%2F%25E6%25BD%2598%25E4%25B8%25AD%25E5%2585%25A8%2F%25E7%25BD%2591%25E7%25AB%2599%2Fgztnwy_qt%2Fnewlist.html%230-renren-1-63647-98fde57bb3d39343db0f272b38411f3e&title=%E5%A4%A9%E8%83%BD%E7%89%A9%E4%B8%9A%E7%AE%A1%E7%90%86&description=" target="_black"><img src="images/dibu_10.png"></a></li>
			</ul>
		</div>
		<div class="dibu_you">
			<ul>
				<li><a href="#">公司简介&nbsp;&nbsp;</a>｜</li>
				<li><a href="#">企业文化&nbsp;&nbsp;</a>｜</li>
				<li><a href="#">人才招聘&nbsp;&nbsp;</a>｜</li>
				<li><a href="#">意见反馈&nbsp;&nbsp;</a>｜</li>
				<li><a href="#">联系我们</a></li>
			</ul>
			<img class="dibu_logo" src="images/dibu_03.png">
		</div>
	</div>
</div>
<div class="dibu_1">
	<p>版权所有 绿地物业管理有限公司 黔ICP备10001741号<br>
技术支持：WangID 驰通网络</p>
</div>


</body>
</html>
