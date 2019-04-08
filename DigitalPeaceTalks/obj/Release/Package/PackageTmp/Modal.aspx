<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modal.aspx.cs" Inherits="DigitalPeaceTalks.Modal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
        <%if (Request.QueryString["id"]!= null)
            { %>
        <div id="yoyo2" style="min-width: 300px; height: 300px; margin: 0 auto">
        </div>
        <%} %>
   
    <script src="js/highcharts.js"></script>
    <script src="js/highcharts-more.js"></script>
    <script>
        <%if (Request.QueryString["id"] != null)
        {%>
        Highcharts.chart('yoyo2', {
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
                text: '<%=qstn.DT.Rows[0][1].ToString()%>'
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
            ,


            series: [{

                name: 'Trend',
                colorByPoint: true,
                data: [
                <%if (key.DT.Rows.Count > 0)
        {%>
                    {
                        name: '<%=key.DT.Rows[0][1].ToString()%>',
                        y: <%=key.DT.Rows[0][2].ToString()%>

                }
                    <%int i = 1;
        while (i < key.DT.Rows.Count)
        {
        %>

                    , {
                        name: '<%=key.DT.Rows[i][1].ToString()%>',
                        y:<%=key.DT.Rows[i][2].ToString()%>

                    }

                    <%i++;
        }%>
                    <%}%>
                ]
            }]

        });
        <%}%>
    </script>
</body>
</html>
