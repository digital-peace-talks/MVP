<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="DigitalPeaceTalks.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="noResDiv" runat="server">
            <h2>No results found</h2>
        </div>
       <asp:Repeater ID="rptdata" runat="server">
           <ItemTemplate>
               <div>
                   <a href="Queries.aspx?id="<%# Eval("id") %>><h3><%# Eval("Question") %></h3></a>
               </div>
           </ItemTemplate>
       </asp:Repeater>
    </form>
</body>
</html>
