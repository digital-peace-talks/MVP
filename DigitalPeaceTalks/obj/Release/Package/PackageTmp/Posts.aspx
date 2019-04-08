<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="DigitalPeaceTalks.Posts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Digital Peace Talks|Posts</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="chat.css" rel="stylesheet" />

    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <style>
        .outgoing_msg {
            overflow: hidden;
            margin: 26px 0 26px;
        }

        .sent_msg {
            float: right;
            width: 46%;
        }

        .brdr {
            border-bottom: 2px solid cornflowerblue;
        }

        .lbl1 {
            color: cornflowerblue;
        }

        .mylogo {
            padding: 11px 2px 2px 2px;
            height: 60px;
            width: 60px;
        }

        .myfootertxt a {
            color: white;
        }

        .myfootertxt {
            color: white;
        }
         .myfoot {
            min-height: 100px;
            background: -moz-linear-gradient(90deg, rgba(0,128,128,1) 0%, rgba(100,149,237,0.57) 43%, rgba(100,149,237,0) 100%); /* ff3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(100,149,237,0)), color-stop(57%, rgba(100,149,237,0.57)), color-stop(100%, rgba(0,128,128,1))); /* safari4+,chrome */
            background: -webkit-linear-gradient(90deg, rgba(0,128,128,1) 0%, rgba(100,149,237,0.57) 43%, rgba(100,149,237,0) 100%); /* safari5.1+,chrome10+ */
            background: -o-linear-gradient(90deg, rgba(0,128,128,1) 0%, rgba(100,149,237,0.57) 43%, rgba(100,149,237,0) 100%); /* opera 11.10+ */
            background: -ms-linear-gradient(90deg, rgba(0,128,128,1) 0%, rgba(100,149,237,0.57) 43%, rgba(100,149,237,0) 100%); /* ie10+ */
            background: linear-gradient(0deg, rgba(0,128,128,1) 0%, rgba(100,149,237,0.57) 43%, rgba(100,149,237,0) 100%); /* w3c */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6495ED', endColorstr='#008080',GradientType=0 ); /* ie6-9 */
        }
    </style>
    <div id="wrapper">


        <div id="page-wrapper" class=" white-bg" style="margin: 0 0 0 0px; padding: 0 0px;">
            <div class="border-bottom text-center">
                <div class="row">
                    <div class="col-2">
                        <a href="Home.aspx">
                            <asp:Image runat="server" ImageUrl="~/img/logo.png" CssClass="mylogo" /></a>
                    </div>
                    <div class="col-8">
                        <div class="ibox-title" style="padding: 15px 15px 8px 15px !important">
                            <h2 style="margin-top: 0px; color: cornflowerblue; font-family: monospace;">DIGITAL PEACE TALKS </h2>
                        </div>
                    </div>
                    <div class="col-2">
                        <asp:Image runat="server" ImageUrl="~/img/Message.png" CssClass="mylogo" />
                    </div>
                </div>
            </div>

            <form id="form" runat="server">
                <div class="wrapper wrapper-content animated fadeInRight" style="padding: 20px 10px 10px;">


                    <div class="row brdr">
                        <div class="col-4">
                            <div id="yoyo" style="min-width: 150px; height: 150px; margin: 0 auto"></div>
                        </div>
                        <div class="col-5">
                            <br />
                            <br />
                            <br />
                            <label class="lbl1" runat="server">topic keywords: energy, green, atomic, renewable</label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row brdr">
                        <div class="col-12 text-center">


                            <%if (Question.Rows.Count > 0)
                                { %>
                            <strong>Original version of the post: </strong>
                            <%-- <small class="float-right text-muted"><%=Question.Rows[0]["timestamp"].ToString() %></small>--%>
                            <%=Question.Rows[0]["Question"].ToString() %>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="row">

                        <div class="col-12">
                            <div class=" messaging">
                                <div class="mesgs" style="width: 100%; float: none;">
                                    <div class="msg_history">
                                        <%
                                            int j = 0;
                                            while (j < Post.Rows.Count)
                                            {%>
                                        <%
                                            if (j % 2 == 0)
                                            {%>
                                        <div class="outgoing_msg">
                                            <div class="sent_msg">
                                                <p style="background-color: #ebebeb; color: #646464">
                                                    <%=Post.Rows[j]["Post"]%>
                                                </p>
                                                <span class="time_date"><%=Post.Rows[j]["timestamp"] %></span>
                                            </div>
                                        </div>
                                        <%}
                                            else
                                            { %>
                                        <div class="incoming_msg">
                                            <div class="received_msg">
                                                <div class="received_withd_msg">
                                                    <p><%=Post.Rows[j]["Post"]%></p>
                                                    <span class="time_date"><%=Post.Rows[j]["timestamp"] %></span>
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>
                                        <%j++;
                                            }%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>


            </form>
             <div class="myfoot">
                            <br />
                            <br />
                           <%-- <div class="row">
                                <div class="col-4 text-center">
                                    <label class="lbl">Welcome</label>
                                </div>
                                <%chkLogin();
                                    if (!loggedin)
                                    {%>
                                <div class="col-4 text-center">
                                    <asp:Button ID="btnSignup" runat="server" CssClass=" mysignupbtn" Text="SIGN UP" OnClick="btnSignup_Click" />
                                </div>
                                <div class="col-4 text-center">
                                    <asp:Button ID="btnLogin" runat="server" CssClass=" myloginbtn" Text="SIGN IN" OnClick="btnLogin_Click" />
                                </div>
                                <%} %>
                            </div>--%>
                            <div class="row ">
                                <div class="col-12 text-center">
                                    <span class="myfootertxt"><a href="#">About</a> | <a href="#">Team</a> | <a href="#">Contact</a> | <a href="#">Imprint</a></span>
                                </div>

                            </div>
                        </div>

        </div>


    </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script src="js/highcharts-more.js"></script>

    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script>
        Highcharts.chart('yoyo', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            credits: {
                enabled: false
            },
            title: {
                text: ''
            },
            tooltip: {
                pointFormat: '<b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: false
                }
            },
            series: [{
                name: 'Trend',
                colorByPoint: true,
                data: [{
                    name: 'Positive',
                    y: 61.41

                }, {
                    name: 'Negative',
                    y: 11.84
                }, {
                    name: 'Nuetral',
                    y: 26.75
                }]
            }]
        });
    </script>


</body>
</html>
