<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Queries.aspx.cs" Inherits="DigitalPeaceTalks.Queries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Digital Peace Talks|Question</title>

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
            margin-top: 15px;
        }

        .myfootertxt a {
            color: white;
        }

        .myfootertxt {
            color: white;
        }

        .margtopzero {
            margin-top: 0px !important;
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
    </style>
    <form id="form" runat="server">
        <asp:ScriptManager ID="ScrptMngr" runat="server"></asp:ScriptManager>
        <div id="wrapper" class="white-bg">


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
                                                            <a style="color:cornflowerblue"><strong><%# Eval("Message") %></strong></a>
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
                                                <a class="dropdown-item" data-toggle="modal" data-target="#myModal3">
                                                    <strong>See ongoing chats</strong>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="wrapper wrapper-content animated fadeInRight" style="padding: 20px 10px 10px;">


                    <div class="row brdr">
                        <div class="col-4">
                            <div id="yoyo" style="min-width: 150px; height: 150px; margin: 0 auto"></div>
                        </div>
                        <div class="col-5">
                            <br />
                            <br />
                            <br />
                            <label class="lbl1" runat="server">
                                <strong><%=Question.Rows[0]["Question"].ToString() %></strong><br />
                                Topic Keywords : <%=keys %><br />
                                Top Keywords : <%=topkeys %>
                            </label>

                        </div>

                    </div>






                    <asp:Repeater ID="rptdata" runat="server" OnItemDataBound="rptdata_ItemDataBound">
                        <ItemTemplate>
                            <br />
                            <br />
                            <div class=" brdr">
                                <div class="row">
                                    <div class="col-2"></div>
                                    <div class="col-10">



                                        <td><strong>Post of User Current Version : </strong><%# Eval("Post") %>
                                            <br />
                                        </td>
                                        <small class=" text-muted"><%# Eval("timestamp") %></small>
                                        <asp:HiddenField ID="hfPOwner" runat="server" Value='<%# Eval("Author") %>' />



                                    </div>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </div>

                                <div class="row">
                                    <div class="col-2">
                                        <a onclick="openModal2('<%# Eval("Pid") %>')">
                                            <img src="img/hand.png" style="height: 30px; margin-left: 20px" /></a>
                                        <asp:Literal ID="litStatus2" runat="server"></asp:Literal>
                                        <%--<ul class="dropdown-menu dropdown-user">
                                            <asp:Repeater ID="rptConflict" runat="server">
                                                <ItemTemplate>
                                            <li><a class="dropdown-item">Config option 1</a>
                                               
                                            </li>
                                            </ItemTemplate>
                                                </asp:Repeater>
                                        </ul>--%>
                                    </div>
                                    <div class="col-2">
                                        <a data-toggle="dropdown">
                                            <img src="img/bulb.png" style="height: 30px; margin-left: 20px" /></a>
                                        <asp:Literal ID="litStatus1" runat="server"></asp:Literal>
                                        
                                       <%-- <ul class="dropdown-menu dropdown-user">
                                            <li><a href="#" class="dropdown-item">Config option 3</a>
                                            </li>
                                            <li><a href="#" class="dropdown-item">Config option 4</a>
                                            </li>
                                        </ul>--%>
                                    </div>
                                   
                                    <div class="col-4"></div>
                                    <div class="col-2">
                                        <a onclick="openModal1('<%# Eval("Pid") %>');" >
                                            
                                            <img src="img/clock.png" style="height: 30px; float: right; margin-right: 20px" /></a>
                                        </div>
                                    <div class="col-2">
                                        <a onclick="openModal('<%# Eval("Author") %>','<%# Eval("Pid") %>')">
                                            <img src="img/chat.png" style="height: 30px; float: right; margin-right: 20px" /></a>
                                    </div>
                                </div>
                            </div>

                            <%--  <a onclick="openModal('<%# Eval("Author") %>')">
                                <img src="img/chat.png" style="height: 30px; float: right; margin-right: 20px" /></a>
                           
                              
                            <a class="dropdown-toggle" data-toggle="dropdown">
                                <img src="img/clock.png" style="height: 30px; float: right; margin-right: 20px" /></a>
                           <ul class="dropdown-menu dropdown-user">
                                            <li><a href="#" class="dropdown-item">Config option 1</a>
                                            </li>
                                            <li><a href="#" class="dropdown-item">Config option 2</a>
                                            </li>
                                        </ul>
                                    
                               
                            <a class="dropdown-toggle count-info" data-toggle="dropdown">
                                <img src="img/hand.png" style="height: 30px; margin-left: 20px" /></a>
                               

                            <a class="dropdown-toggle count-info" data-toggle="dropdown">
                                <img src="img/bulb.png" style="height: 30px; margin-left: 20px" /></a>--%>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>




            </div>
            <div class=" modal inmodal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">Send a chat request</h4>
                        </div>
                        <div class="modal-body">
                            <textarea id="txtChat" runat="server" class="form-control" placeholder="Type your enquiry.."></textarea>
                        </div>

                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>--%>
                            <button id="btnChatSbmt" runat="server" class=" mysignupbtn" onserverclick="btnChatSbmt_ServerClick">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" modal inmodal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">Post a question</h4>
                            <%--<small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>--%>
                        </div>
                        <div class="modal-body">
                            <textarea id="txtQstn" runat="server" class="form-control" placeholder="Type question here.."></textarea>
                        </div>

                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>--%>
                            <button id="btnSubmit" runat="server" class=" mysignupbtn" onserverclick="btnAsk_Click">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" modal inmodal fade" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">Post a comment</h4>
                            <%--<small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>--%>
                        </div>
                        <div class="modal-body">
                            <textarea id="txtComment" runat="server" class="form-control" placeholder="Type comment here.."></textarea>
                        </div>

                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>--%>
                            <button id="Button1" runat="server" class=" mysignupbtn" onserverclick="PostComment">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
              <div class=" modal inmodal fade" id="myModal3" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content"  style="height:300px;">
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
                                        <a href="Chat.aspx?id=<%# Eval("id") %>"><h2><strong><%# Eval("Message") %></strong></h2></a>
                                    
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
            
            <div class=" modal inmodal fade" id="myModal4" tabindex="-1" role="dialog" aria-hidden="true" >
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" style="height:500px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">Previous versions</h4>
                        </div>
                        <div class="modal-body">
                           
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class=" modal inmodal fade" id="myModal7" tabindex="-1" role="dialog" aria-hidden="true" >
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" style="height:500px;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">Conflicts</h4>
                        </div>
                        <div class="modal-body">
                           
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                            
                        </div>
                    </div>
                </div>
            </div>
                    
            <asp:HiddenField ID="hfAuthor" runat="server" />
            <asp:HiddenField ID="hfPid" runat="server" />
            
            <div class="myfoot">
                <br />
                <br />
                <div class="row">
                    <div class="col-4 text-center">
                        <%-- <label class="lbl">Welcome</label>--%>
                    </div>
                    <%-- <%chkLogin();
                                    if (!loggedin)
                                    {%>--%>
                    <div class="col-4 text-center">
                        <button type="button" class=" mysignupbtn" data-toggle="modal" data-target="#myModal1" style="width: 175px;">Disclose your opinion</button>
                    </div>
                    <div class="col-4 text-center">
                        <asp:Button ID="btnLogout" runat="server" CssClass=" myloginbtn" Text="Logout" OnClick="logout" />
                    </div>
                    <%--<%} %>--%>
                </div>
                <div class="row ">
                    <div class="col-12 text-center">
                        <br />
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
            }
            <%if (keywords.Rows.Count > 0)
        {%>,


            series: [{
                name: 'Trend',
                colorByPoint: true,
                data: [{
                    name: '<%=keywords.Rows[0][1].ToString()%>',
                    y: <%=keywords.Rows[0][2].ToString()%>

                }
                    <%int i = 1;
        while (i < keywords.Rows.Count)
        {%>
                    , {
                        name: '<%=keywords.Rows[i][1].ToString()%>',
                        y: <%=keywords.Rows[i][2].ToString()%>

                    }
                  <%i++;
        }%>
                ]
            }]
   <%}%>
        });
    </script>
    <script type="text/javascript">

        function openModal(str1, str2) {
            var hidden1 = document.getElementById("hfAuthor");
            hidden1.value = str1;
            var hidden2 = document.getElementById("hfPid");
            hidden2.value = str2;
            $('#myModal2').modal();
        }

        function openModal1(str) {


            $('#myModal4').modal('show').find('.modal-body').load('versions.aspx?vid=' + str);
        }
        function openModal2(str) {


            $('#myModal7').modal('show').find('.modal-body').load('ConflictModal.aspx?vid=' + str);
        }

    </script>


</body>
</html>
