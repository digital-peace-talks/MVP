<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="DigitalPeaceTalks.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Digital Peace Talks|Chat</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="chat.css" rel="stylesheet" />

    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />

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
        function OpenModal() {
            $('#myModal1').modal('show');
        }
    </script>

</head>
<body>
    <style>
        .outgoing_msg {
            overflow: hidden;
            margin: 26px 0 26px;
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
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
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

                <div class="wrapper wrapper-content animated fadeInRight" style="padding: 20px 10px 10px;">
                   
                    <div class="row brdr">
                        <div class="col-8 text-center">


                            <%if (p.Rows.Count > 0)
                                { %>
                            <strong>Original version of the post: </strong>
                            <%-- <small class="float-right text-muted"><%=Question.Rows[0]["timestamp"].ToString() %></small>--%>
                            <%=p.Rows[0]["Post"].ToString() %>

                            <%} %>

                            
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />

                        <a class="mysignupbtn" data-toggle="modal" data-target="#myModal1" style="height: 30px; width: 180px; background-color: #1ab394; color: white">Change my opinion</a>
                        <asp:LinkButton ID="btnWarning" runat="server" CssClass="mysignupbtn" Style="height: 30px; width: 80px; background-color: #ed5565; margin-left: 10px;" OnCommand="btnWarning_Command">Conflict</asp:LinkButton>
                       

                    </div>

                    
                    <asp:Timer runat="server" ID="Timer1" Interval="5000" OnTick="Timer1_Tick" />
                    <asp:UpdatePanel ID="updPanel" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                        
                        <ContentTemplate>
                            <div class="row">

                                <div class="col-12">
                                    <div class=" messaging">
                                        <div class="mesgs" style="width: 100%; float: none;">
                                            <div class="msg_history">
                                                <%if (Session["usr"] != null)
                                                    {
                                                        foreach (System.Data.DataRow item in snd.Rows)
                                                        {
                                                            if (item["sender"].ToString() == Session["usr"].ToString())
                                                            {%>
                                                <div class="outgoing_msg">
                                                    <div class="sent_msg">
                                                        <p style="background-color: #ebebeb; color: #646464">
                                                            <%=item["Message"] %>
                                                        </p>
                                                        <span class="time_date"><%=item["timestamp"] %></span>
                                                    </div>
                                                </div>
                                                <%}
                                                    else
                                                    { %>
                                                <div class="incoming_msg">
                                                    <div class="received_msg">
                                                        <div class="received_withd_msg">
                                                            <p style="background-color: #ebebeb; color: #646464">
                                                                <%=item["Message"] %>
                                                            </p>
                                                            <span class="time_date"><%=item["timestamp"] %></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}
                                                        }
                                                    }%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="row">
                        <div class="col-12">
                            <div class="ibox">
                                <div class="ibox-content">
                                    <textarea id="txtMsg" runat="server" class="form-control m-t" style="height: 80px;"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-12 text-right">
                            <asp:Button ID="btnSend" runat="server" CssClass=" mysignupbtn" Style="margin-right: 18px;" Text="Send" OnClick="btnSend_Click" />
                        </div>
                    </div>

                    

                     <div class="modal inmodal fade" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title">Enter the updated opinion</h4>
                                </div>
                                <div class="modal-body">
                                    <textarea id="txtOpinion" runat="server" class="form-control" placeholder="Type your opinion.."></textarea>
                                </div>

                                <div class="modal-footer">
                                    <%--<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>--%>
                                    <button id="btnUpdate" runat="server" class="mysignupbtn" onserverclick="btnUpdate_ServerClick">Update Opinion</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    

                </div>
            </div>
        </div>

    </form>
</body>
</html>
