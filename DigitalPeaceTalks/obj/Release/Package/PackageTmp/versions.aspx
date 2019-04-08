<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="versions.aspx.cs" Inherits="DigitalPeaceTalks.versions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" modal inmodal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title">Chat History</h4>
                        </div>
                        <div class="modal-body">
                           
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                            
                        </div>
                    </div>
                </div>
            </div>
        <div id="mydiv" runat="server">
            <asp:Repeater ID="rptVersion" runat="server">
                <ItemTemplate>

                    <a onclick="openModal('<%# Eval("Cid") %>')"><h2>Version <%# Container.ItemIndex + 1 %> of user: <strong><%# Eval("Post")%></strong></h2></a><br />

                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="noDiv" runat="server">
            <h2>No previous versions</h2>
        </div>

    </form>

    <script type="text/javascript">
        function openModal(str) {
            $('#myModal5').modal('show').find('.modal-body').load('ChatView.aspx?Cid=' + str);
        }


    </script>
</body>
</html>
