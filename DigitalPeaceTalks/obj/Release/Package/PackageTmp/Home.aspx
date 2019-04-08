<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DigitalPeaceTalks.Home" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Digital Peace Talks|Home</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />

</head>
<body>

    <style>
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

        .myloginbtn {
            width: 135px;
            background-color: dimgrey;
            color: white;
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            /* border: 1px solid transparent; */
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        .mysignupbtn {
            width: 135px;
            background-color: dodgerblue;
            color: white;
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            /* border: 1px solid transparent; */
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        .lbl {
            font-size: 23px;
            color: white;
        }

        .srchbar {
            width: 60%;
            background-color: cornflowerblue;
            text-emphasis-color: white;
            color: white;
            border: none;
            font-family: monospace;
        }

        ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
            color: white;
            opacity: 1; /* Firefox */
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
    <form id="form" runat="server">

        <div id="wrapper" class="white-bg">



            <div id="page-wrapper" class=" white-bg" style="margin: 0 0 0 0px; padding: 0 0px;">

                <div class="border-bottom text-center">
                    <div class="row">
                        <div class="col-2">
                            <asp:Image runat="server" ImageUrl="~/img/logo.png" CssClass="mylogo" />
                        </div>
                        <div class="col-8">
                            <div class="ibox-title" style="padding: 15px 15px 8px 15px !important">
                                <h2 style="margin-top: 0px; color: cornflowerblue; font-family: monospace;">DIGITAL PEACE TALKS </h2>
                            </div>
                        </div>
                        <%if (!loggedin)
                            { %>
                        <div class="col-2">
                            <asp:Image runat="server" ImageUrl="~/img/Message.png" CssClass="mylogo" />
                        </div>
                        <%}
                        else
                        { %>
                         <div class="col-2">
                            <ul class="nav navbar-top-links navbar-right">
                                <li class="dropdown">
                                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                        <asp:Image runat="server" ImageUrl="~/img/Message.png" CssClass="mylogo margtopzero" />
                                        <span class="label label-warning" style=" background-color:#17a2b8";><%=chatreq %></span>                                </a>
                                    <ul class="dropdown-menu dropdown-messages dropdown-menu-right">
                                        <li>
                                        <div id="noReqdiv" runat="server">
                                            No chat requests
                                        </div>
                                            </li>
                                        <asp:Repeater ID="rptChatreq" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="dropdown-messages-box">
                                                        <div class="media-body">
                                                            <%-- <small class="float-right">46h ago</small>--%>
                                                            <a  style="color:cornflowerblue"><strong><%# Eval("Message") %></strong></a>
                                                            <br>
                                                            <small class="text-muted"><%# Eval("timestamp") %></small>
                                                            <asp:LinkButton ID="btnAccept" runat="server" CommandName="Accept" CommandArgument='<%# Eval("id")%>' OnCommand="btnAccept_Command" style="color:cornflowerblue"><i class="fa fa-thumbs-up"></i> Accept</asp:LinkButton>
                                                            <asp:LinkButton ID="btnReject" runat="server" CommandName="Reject" CommandArgument='<%# Eval("id")%>' OnCommand="btnReject_Command" style="color:red"><i class="fa fa-ban"></i> No</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dropdown-divider"></li>
                                            </ItemTemplate>
                                        </asp:Repeater>


                                        <li>
                                            <div class="text-center link-block">
                                                <a class="dropdown-item" data-toggle="modal" data-target="#myModal2">
                                                    <strong>See ongoing chats</strong>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <%} %>
                    </div>
                </div>

                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
               
                        <div class="wrapper wrapper-content animated fadeInRight text-center" style="padding: 20px 10px 10px;">

                            <asp:HiddenField ID="hfID" ClientIDMode="Static" runat="server" />
                           
                            <asp:UpdatePanel ID="searchPanel" runat="server" UpdateMode="Conditional">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="txtSearch" />
                                </Triggers>
                                <ContentTemplate>
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="srchbar" placeholder="Search..." ClientIDMode="Static" onkeypress="return EnterEvent(event)"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div id="yoyo" style="width: 100%; height: 500px;"></div>

                           
                        </div>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class=" modal inmodal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-body"></div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                        <button id="btnGo" runat="server" onserverclick="btnGo_ServerClick" class="mysignupbtn">Check opinions</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" modal inmodal fade" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title">Initiate a discussion</h4>
                                        <%--<small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>--%>
                                    </div>
                                    <div class="modal-body">
                                        <textarea id="txtQstn" runat="server" class="form-control" placeholder="Type question here.."></textarea>
                                    </div>

                                    <div class="modal-footer">
                                        <%--<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>--%>
                                        <asp:Button ID="Button2" runat="server" class="mysignupbtn" Text="Publish" OnClick="btnAsk_Click" />
                                        <%--<button id="Button1" runat="server" class=" mysignupbtn" onserverclick="btnAsk_Click">Submit</button>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" modal inmodal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true" >
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content" style="height:300px;">
                                   <%-- <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title">Post a question</h4>
                                        <small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                                    </div>--%>
                                   
                                    
                                    <div class="modal-body">
                                         
                                        <div id="NoChatDiv" runat="server">
                                            <h2>No ongoing chats</h2>
                                        </div>
                                              <asp:Repeater ID="rptChat" runat="server">
                                        <ItemTemplate>
                                       
                                        <a href="Chat.aspx?id=<%# Eval("id") %>"><h2><strong><%# Eval("Message") %></strong></h2></a><br />
                                             </ItemTemplate>
                                    </asp:Repeater>
                                    </div>
                                           
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                       <%-- <asp:Button ID="Button1" runat="server" class="mysignupbtn" Text="Submit" OnClick="btnAsk_Click" />--%>
                                        <%--<button id="Button1" runat="server" class=" mysignupbtn" onserverclick="btnAsk_Click">Submit</button>--%>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </ContentTemplate>
                    <Triggers>
                        <%-- <asp:PostBackTrigger ControlID="btnSignup" />
                        <asp:PostBackTrigger ControlID="btnLogin" />--%>
                    </Triggers>

                </asp:UpdatePanel>

            </div>

             <div class=" modal inmodal fade" id="mySrchModal" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-body"></div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                        <%--<button id="Button1" runat="server" onserverclick="btnGo_ServerClick" class="mysignupbtn">Check opinions</button>--%>
                                    </div>
                                </div>
                            </div>
                        </div>


            <div class="myfoot">
                <br />
                <br />
                <div class="row">
                    <div class="col-4 text-center">
                        <label class="lbl">Welcome...</label>
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
                    <%}
                        else
                        { %>
                    <div class="col-4 text-center">

                        <button type="button" class=" mysignupbtn" data-toggle="modal" data-target="#myModal1" style="width: 160px;">Initiate a discussion</button>

                        <%-- <asp:Button ID="Button1" runat="server" CssClass=" mysignupbtn" Text="SIGN UP" OnClick="btnSignup_Click" />--%>
                    </div>
                    <div class="col-4 text-center">
                        <asp:Button ID="btnLogout" runat="server" CssClass=" myloginbtn" Text="LOG OUT" OnClick="logout" />
                    </div>
                    <%} %>
                </div>
                <div class="row ">
                    <div class="col-12 text-center">
                        <span class="myfootertxt"><a href="#">About</a> | <a href="#">Team</a> | <a href="#">Contact</a> | <a href="#">Imprint</a></span>
                    </div>

                </div>
            </div>


        </div>

    </form>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script src="js/highcharts-more.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/summernote/summernote-bs4.js"></script>

    <script type="text/javascript">
        Highcharts.chart('yoyo', {

            chart: {
                type: 'bubble',
                plotBorderWidth: 0,
                zoomType: 'xy'
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                bubble: {
                    minSize: '10%',
                    maxSize: '30%'
                },
                series: {
                    cursor: 'pointer',
                    point: {
                        events: {
                            click: function (e) {
                                var val = document.getElementById("hfID");
                                val.value = e.point.id1;
                                $('#myModal').modal('show').find('.modal-body').load('Modal.aspx?id=' + e.point.id1);

                            }
                        }
                    }
                }
            },

            title: {
                text: ''
            },
            tooltip: {
                enabled: true,
                formatter: function () {
                    return this.point.name;
                },

                style: {
                    color: 'blue',
                    textOutline: 'none',
                    fontWeight: 'normal'
                }


            },
            xAxis: {
                visible: false,
                gridLineWidth: 0,
                labels: {
                    enabled: false
                }
            },

            yAxis: {
                visible: false,
                startOnTick: false,
                endOnTick: false,
                gridLineWidth: 0,

            },
            series: [{
                showInLegend: false,
                dataLabels: {
                    enabled: false,

                    formatter: function () {
                        return this.point.name;
                    },
                    style: {
                        color: 'black',
                        textOutline: 'none',
                        fontWeight: 'normal'
                    }
                }<%if (charts.Rows.Count > 0)
        {
            int post = getPostCount(0);
       %>,

                data: [{

                    "x": <%=charts.Rows[0]["X"].ToString()%>,
                    "y": <%=charts.Rows[0]["Y"].ToString()%>,
                    "z": <%=post%>,
                    "name": "<%=Questions.Rows[0]["Question"].ToString()%>",
                    "id1":<%=Questions.Rows[0]["id"].ToString()%> ,

                    color: {
                        radialGradient: { cx: 0.4, cy: 0.3, r: 0.7 },
                        stops: [
                            [0, 'rgba(255,255,255,0.5)'],
                            [1, Highcharts.Color(Highcharts.getOptions().colors[parseInt(Math.random() * 10)]).setOpacity(0.5).get('rgba')]
                        ]
                    }
                }

                    <%int i = 1;
        while (i < Questions.Rows.Count)
        {
            post = getPostCount(i);
        %>,
                    {
                        "x": <%=charts.Rows[i]["X"].ToString()%>,
                    "y": <%=charts.Rows[i]["Y"].ToString()%>,
                    "z": <%=post%>,
                    "name": "<%=Questions.Rows[i]["Question"].ToString()%>",
                    "id1": "<%=Questions.Rows[i]["id"].ToString()%>",

                        color: {
                            radialGradient: { cx: 0.4, cy: 0.3, r: 0.7 },
                            stops: [
                                [0, 'rgba(255,255,255,0.5)'],
                                [1, Highcharts.Color(Highcharts.getOptions().colors[parseInt(Math.random() * 10)]).setOpacity(0.5).get('rgba')]
                            ]
                        }
                    }

<%i++;
        }%>
                ]



            <%}%>
            }]

        });
    </script>
    <script>
        function EnterEvent(e) {
            if (e.keyCode == 13) {
                e.preventDefault();
                var str = document.getElementById("txtSearch");
           $('#mySrchModal').modal('show').find('.modal-body').load('Search.aspx?id=' + str.value);
        }
    }
    </script>


    <%--    <script>
        Highcharts.chart('yoyo1', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            credits: {
                enabled: false
            },
            <%if (posts!=null)
        {
            getQs(posts.DT.Rows[0][2].ToString());%>
            title: {
                text: '<%=qstn.DT.Rows[0][1].ToString()%>'
            },
            tooltip: {
                pointFormat: '<b>{point.percentage: .1f}%</b>'
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

            <%double val = 100 / posts.DT.Rows.Count;
        Random random = new Random();%>
            series: [{
                name: 'Trend',
                colorByPoint: true,
                data: [{
                    name: '<%=posts.DT.Rows[0][3].ToString()%>',
                        y: <%=random.Next(0, Convert.ToInt32(val)).ToString()%>

                }
                <%int k = 1;
        while (k < posts.DT.Rows.Count)
        {%>   , {
                            name: '<%=posts.DT.Rows[k][3].ToString()%>',
                    y: <%=random.Next(0, Convert.ToInt32(val)).ToString()%>

                    }
                <%
            k++;
        }%>]
            }]
                <%}%>
        });


    </script>--%>
</body>

</html>
