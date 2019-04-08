<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatView.aspx.cs" Inherits="DigitalPeaceTalks.ChatView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         
        <div class="row">

            <div class="col-12">
                <div class=" messaging">
                    <div class="mesgs" style="width: 100%; float: none;">
                        <div class="msg_history">
                            <%if (Session["usr"] != null)
                                {
                                    sender = snd.Rows[0]["Sender"].ToString();
                                    foreach (System.Data.DataRow item in snd.Rows)
                                    {
                                        if (item["sender"].ToString() == sender)
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
    </form>
     
</body>
</html>
