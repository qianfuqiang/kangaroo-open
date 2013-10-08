<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>任管理</title>
</head>

<body>

        <div class="row">
            <div class="span3">
                <div class="well stats clearfix">
                    <ul class="statistic statistic-red">
                        <li style="height:80%"></li>
                        <li style="height:40%"></li>
                        <li style="height:50%"></li>
                        <li style="height:20%"></li>
                        <li style="height:10%"></li>
                    </ul>
                    <div class="detail">
                        <span class='detail-head'>9320</span>
                        <span>Unique users this week</span>
                    </div>
                </div>
            </div>
            <div class="span3">
                <div class="well stats clearfix">
                    <ul class="statistic statistic-grey">
                        <li style="height:60%"></li>
                        <li style="height:40%"></li>
                        <li style="height:20%"></li>
                        <li style="height:70%"></li>
                        <li style="height:80%"></li>
                        <li style="height:60%"></li>
                        <li style="height:40%"></li>
                    </ul>
                    <div class="detail">
                        <span class='detail-head'>9320</span>
                        <span>Unique users this week</span>
                    </div>
                </div>
            </div>
            <div class="span3">
                <div class="well stats clearfix">
                    <ul class="statistic statistic-blue">
                        <li style="height:80%"></li>
                        <li style="height:60%"></li>
                        <li style="height:40%"></li>
                        <li style="height:20%"></li>
                        <li style="height:10%"></li>
                        <li style="height:5%"></li>
                        <li style="height:15%"></li>
                    </ul>
                    <div class="detail">
                        <span class='detail-head'>9320</span>
                        <span>Unique users this week</span>
                    </div>
                </div>
            </div>
            <div class="span3">
                <div class="well stats clearfix">
                    <ul class="statistic statistic-green">
                        <li style="height:80%"></li>
                        <li style="height:70%"></li>
                        <li style="height:60%"></li>
                        <li style="height:40%"></li>
                        <li style="height:50%"></li>
                        <li style="height:20%"></li>
                        <li style="height:10%"></li>
                    </ul>
                    <div class="detail">
                        <span class='detail-head'>9320</span>
                        <span>Unique users this week</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <div class="page-header clearfix tabs">
                    <h2>Statistics</h2>
                    <ul class="nav nav-pills">
                        <li class="active">
                            <a href="#bars" data-toggle="pill">Bars</a>
                        </li>
                        <li><a href="#pie" data-toggle="pill">Pie</a></li>
                        <li><a href="#lines" data-toggle="pill">Lines</a></li>
                    </ul>
                </div>
                <div class="box">
                    <div class="tab-content">
                        <div class="tab-pane active" id="bars">
                            <div class="flot bar"></div>
                        </div>
                        <div class="tab-pane" id="pie">
                            <div class="flot pie"></div>
                        </div>
                        <div class="tab-pane" id="lines">
                            <div class="flot line"></div>
                        </div>
                    </div>	
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span6">
                <div class="page-header tabs clearfix nm">
                    <h2>Recent transactions</h2>
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#p" data-toggle="tab">Positive</a>
                        </li>
                        <li>
                            <a href="#n" data-toggle="tab">Negative</a>
                        </li>
                    </ul>
                </div>
                <div class="box">
                    <div class="tab-content">
                        <div class="tab-pane active" id="p">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>Transaction</th>
                                        <th>Date</th>
                                        <th>Income</th>
                                    </tr>	
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Hover me</a></td>
                                    <td>1293KCSX-DD</td>
                                    <td>Jul 16, 2012</td>
                                    <td>
                                        <span class="green">
                                            + 16,34 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Lorem</a></td>
                                    <td>19138TJSFA-XMQ</td>
                                    <td>Jul 11, 2012</td>
                                    <td>
                                        <span class="green">
                                            + 11,34 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Username</a></td>
                                    <td>1934JSAS-1R13</td>
                                    <td>Jul 11, 2012</td>
                                    <td>
                                        <span class="green">
                                            + 13,94 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Seraphim</a></td>
                                    <td>9183SMX-D</td>
                                    <td>Jul 10, 2012</td>
                                    <td>
                                        <span class="green">
                                            + 24,19 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Leaso</a></td>
                                    <td>8134KD</td>
                                    <td>Jul 8, 2012</td>
                                    <td>
                                        <span class="green">
                                            + 94,19 $
                                        </span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="n">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>Transaction</th>
                                        <th>Date</th>
                                        <th>Income</th>
                                    </tr>	
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Pad-Ing</a></td>
                                    <td>123KSA-TQWD</td>
                                    <td>Jun 24, 2012</td>
                                    <td>
                                        <span class="red">
                                            - 16,34 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">WhITE</a></td>
                                    <td>ASDKGQ123-55</td>
                                    <td>Jun 05, 2012</td>
                                    <td>
                                        <span class="red">
                                            - 11,34 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Gre-en</a></td>
                                    <td>BLA123TOL-XX</td>
                                    <td>May 03, 2012</td>
                                    <td>
                                        <span class="red">
                                            - 13,94 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Leaso</a></td>
                                    <td>CASD131t131</td>
                                    <td>May 10, 2012</td>
                                    <td>
                                        <span class="red">
                                            - 24,19 $
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="#" class='tip' title="Lorem ipsum">Backend</a></td>
                                    <td>12t2t24299CXSS</td>
                                    <td>May 8, 2012</td>
                                    <td>
                                        <span class="red">
                                            - 94,19 $
                                        </span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>	
            </div>
            <div class="span6">
                <div class="page-header nm">
                    <h2>New users</h2>
                </div>
                <div class="box">
                    <table class="table table-striped media">
                        <thead>
                            <tr>
                                <th>Avatar</th>
                                <th>Username</th>
                                <th>Register date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/40.gif" alt="">
                                </a>
                            </td>
                            <td>
                                <a href="#">Username</a>
                            </td>
                            <td>Jul 21, 2012</td>
                            <td class='action-buttons'>
                                <div class="btn-group"><a href="#" class='btn btn-mini tip' title="Show user"><i class="icon-search"></i></a><a href="#" class='btn btn-mini tip' title="Edit user"><i class="icon-pencil"></i></a><a href="#" class='btn btn-mini tip' title="Delete user"><i class="icon-remove"></i></a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/40.gif" alt="">
                                </a>
                            </td>
                            <td>
                                <a href="#">Username</a>
                            </td>
                            <td>Jul 21, 2012</td>
                            <td class='action-buttons'>
                                <div class="btn-group"><a href="#" class='btn btn-mini tip' title="Show user"><i class="icon-search"></i></a><a href="#" class='btn btn-mini tip' title="Edit user"><i class="icon-pencil"></i></a><a href="#" class='btn btn-mini tip' title="Delete user"><i class="icon-remove"></i></a></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/40.gif" alt="">
                                </a>
                            </td>
                            <td>
                                <a href="#">Username</a>
                            </td>
                            <td>Jul 21, 2012</td>
                            <td class='action-buttons'>
                                <div class="btn-group"><a href="#" class='btn btn-mini tip' title="Show user"><i class="icon-search"></i></a><a href="#" class='btn btn-mini tip' title="Edit user"><i class="icon-pencil"></i></a><a href="#" class='btn btn-mini tip' title="Delete user"><i class="icon-remove"></i></a></div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>	
        <div class="row">
            <div class="span4">
                <div class="page-header nm">
                    <h2>Comments</h2>
                </div>
                <div class="box">
                    <table class="table table-striped table-nohead">
                        <tbody>
                        <tr>
                            <td>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.</td>
                            <td class='action-buttons-small'><div class="btn-group"><a href="#" class='btn btn-mini tip' title="Edit comment"><i class="icon-pencil"></i></a><a href="#" class='btn btn-mini tip' title="Delete comment"><i class="icon-remove"></i></a></div></td>
                        </tr>
                        <tr>
                            <td>At vero eos et accusam et justo duo dolores et ea rebum.</td>
                            <td><div class="btn-group"><a href="#" class='btn btn-mini tip' title="Edit comment"><i class="icon-pencil"></i></a><a href="#" class='btn btn-mini tip' title="Delete comment"><i class="icon-remove"></i></a></div></td>
                        </tr>
                        <tr>
                            <td>At vero eos et accusam et justo duo dolores et ea rebum.</td>
                            <td><div class="btn-group"><a href="#" class='btn btn-mini tip' title="Edit comment"><i class="icon-pencil"></i></a><a href="#" class='btn btn-mini tip' title="Delete comment"><i class="icon-remove"></i></a></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="span8">
                <div class="page-header nm">
                    <h2>Gallery</h2>
                </div>
                <div class="box">
                    <div class="gallery">
                        <ul class='clearfix'>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                            <li>
                                <a class='fancy' href="img/500.gif">
                                    <img src="img/60.gif" alt="">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    
</body>
</html>
