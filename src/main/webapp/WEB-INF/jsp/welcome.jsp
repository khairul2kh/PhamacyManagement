    <%-- 
    Document   : welcome
    Created on : Nov 21, 2016, 10:27:26 PM
    Author     : Khairul
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes/js_css.jsp"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Pharmacy</title>

        <style>
            
            .icon-success {
                color: #088A08;
            }
            body, #mainWrapper {
                height: 70%;
                background-color:rgb(245, 245, 245);
                padding-top: 50px;
            }
            body, .form-control{
                font-size:14px!important;
            }
            .floatRight{
                float:right;
                margin-right: 18px;
            }
            .has-error{
                color:red;
            }
            .formcontainer{
                background-color: #DAE8E8;
                padding: 20px;
            }
            .tablecontainer{
                padding-left: 20px;
            }
            .generic-container {
                width:80%;
                margin-left: 10%;
                margin-top: 20px;
                margin-bottom: 20px;
                padding: 20px;
                background-color: #EAE7E7;
                border: 1px solid #ddd;
                border-radius: 4px;
                box-shadow: 0 0 10px #A4A4A4;
            }
            .custom-width {
                width: 80px !important;
            }
            .tdn a{text-decoration: none;}
            .nav-tabs>li.active>a,
            .nav-tabs>li.active>a:hover,
            .nav-tabs>li.active>a:focus {
                color: #555;
                background-color: #F2F2F2;
                border: 1px solid #eee;
                border-bottom-color: transparent;
                cursor: default
            }
            .header{
                display:block;
                height:50px;
                position:relative;
                background: #50a3a2;
                background: -webkit-linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
                background: linear-gradient(to bottom right, #50a3a2 0%, #53e3a6 100%);
                width:100%;
            }

            .datetimepicker {

                margin: 5px auto 0;
                font: 4pt Arial, sans-serif;
                -webkit-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);
                -moz-box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);
                box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, .5);
            }

        </style>
        <link href="<c:url value="/resources/bootstrap/bootstrap.min.css" />" rel="stylesheet">
    </head>
    <body  >


        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header" style="padding-top:12px;">
                    <span> Welcome Mr./Ms. : ${u.person.givenName} ${u.person.middleName} ${u.person.familyName} </span>
                </div>
                <div class="navbar-collapse" uib-collapse="vm.isNavbarCollapsed" ng-switch="vm.isAuthenticated()">

                    <ul class="nav navbar-nav navbar-right">
                        <li ui-sref-active="active">
                            <a ui-sref="home" href="${pageContext.request.contextPath}/">
                                <span class="glyphicon glyphicon-home"></span>
                                <span class="hidden-sm">Home</span>
                            </a>
                        </li>

                        <li   class="dropdown pointer">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="" id="account-menu">
                                <span>
                                    <span class="glyphicon glyphicon-user"></span>
                                    <span class="hidden-sm">
                                        Account
                                    </span>
                                    <b class="caret"></b>
                                </span>
                            </a>
                            <ul class="dropdown-menu" role="menu" >
                                <li><a role="menuitem" tabindex="-1" href="#">HTML</a></li>
                                <li  ><a role="menuitem" tabindex="-1" href="#">CSS</a></li>
                                <li  ><a role="menuitem" tabindex="-1" href="#">JavaScript</a></li>
                                <li role="presentation" class="divider"></li>
                                <li><a role="menuitem" tabindex="-1" href='${pageContext.request.contextPath}/logout'>
                                        <span class="glyphicon glyphicon-log-out"></span>&nbsp; Log Out</a></li>

                            </ul>
                        </li>
                    </ul> 
                </div>
            </div>  
        </nav>

        <div class="generic-container">
            <div class="panel panel-default">

                <div class="formcontainer">

                    <form name="myForm" action="main.form" class="form-horizontal" method="POST" >
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="control-label col-sm-4" for="memo">Memo No:</label>
                                <div class="col-md-7">
                                    <input type="text" style="padding-left:10px;" name="memo" id="memo" class="form-control input-sm" placeholder="Enter memo no"  />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12 has-feedback">
                                <label class="control-label col-sm-4" >Date : </label>
                                <div class="col-md-3">

                                    <input type="text" style="padding-left:10px;" name="date"  data-date-format="dd MM yyyy"
                                           id="date" class="username form-control input-sm" placeholder="Enter date" />                  
                                    <span class="glyphicon glyphicon-calendar form-control-feedback icon-success" ></span>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="control-label col-sm-4" >Date : </label>
                                <div class="input-group col-md-3"> 
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-envelope"></span> 
                                    </div>
                                    <input class="form-control input-sm" id="email" name="email" type="text"/>
                                </div>
                            </div>
                        </div>



                    </form>
                </div>
            </div>
        </div>

        <a href="welcome.htm"> <span class="glyphicon glyphicon-home"></span>
            <span class="hidden-sm">Home</span></a>
        <a href="second.form">
            <span class="glyphicon glyphicon-cloud"></span>  
            second</a>


        <script>
            jQuery(document).ready(function () {
                $("#date").css('cursor', 'pointer');
                $('#date').datetimepicker({
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    minView: 2,
                    forceParse: 0

//                    weekStart: 1,             
//                    todayBtn: 1,
//                    autoclose: 1,
//                    todayHighlight: 1,
//                    startView: 2,
//                    forceParse: 0,
//                    showMeridian: 1
                });
                console.log("sdfdsfdsf");
                $('.datepicker').datepicker();
            });
            $('.clockpicker').clockpicker()
                    .find('input').change(function () {
                console.log(this.value);
            });
            var input = $('#single-input').clockpicker({
                placement: 'bottom',
                align: 'left',
                autoclose: true,
                'default': 'now'
            });
            $('ul li a').click(function () {
                $('ul li.active').removeClass('active');
                $(this).closest('li').addClass('active');
            });</script>



    </body>

</html>

