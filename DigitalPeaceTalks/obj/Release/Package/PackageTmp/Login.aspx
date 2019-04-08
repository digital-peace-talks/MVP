<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DigitalPeaceTalks.Login" %>

<!DOCTYPE html>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Digital Peace Talks</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
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
            width: 125px;
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

    <div id="wrapper">



        <div id="page-wrapper" class=" white-bg" style="margin: 0 0 0 0px; padding: 0 0px;">

            <div class="border-bottom text-center">
                <div class="row">
                    <div class="col-2">
                        <a href="Home.aspx"><asp:Image runat="server" ImageUrl="~/img/logo.png" CssClass="mylogo" /></a>
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

            <div class="middle-box text-center loginscreen animated fadeInDown">
                <div>
                    <div>

                        <h1 class="logo-name">DPT</h1>

                    </div>
                    <h3>Welcome to Digital Peace Talks</h3>
                    <p>
                        The Foundation for digital peace talks seeks to establish and promote peace by fostering software that enables all humans to enter a fairand meaningful discussion about the future of the world 

                    </p>
                    <p>Login in. To see it in action.</p>
                    <form id="frmLogin" runat="server">

                        <div class="form-group">
                            <textarea id="txtPassphrase" runat="server" class="form-control" placeholder="Passphrase"></textarea>
                        </div>

                        <button type="submit" id="btnLogin" runat="server" onserverclick="login" class=" mysignupbtn block full-width m-b">Login</button>
                        <p class="text-muted text-center"><small>Do not have an account?</small></p>
                        <a class="btn btn-sm btn-white btn-block" href="Signup.aspx">Create an account</a>
                    </form>

                </div>
            </div>
             <div class="myfoot">
                            <br />
                            <br />
                          <%--  <div class="row">
                                <div class="col-4 text-center">
                                    <label class="lbl">Welcome</label>
                                </div>
                                <div class="col-4 text-center">
                                    <asp:Button ID="btnSignup" runat="server" CssClass=" mysignupbtn" Text="SIGN UP" OnClick="btnSignup_Click" />
                                </div>
                                <div class="col-4 text-center">
                                    <asp:Button ID="Button1" runat="server" CssClass=" myloginbtn" Text="SIGN IN" OnClick="btnLogin_Click" />
                                </div>
                            </div>
                            <div class="row ">
                                <div class="col-12 text-center">
                                    <span class="myfootertxt"><a href="#">About</a> | <a href="#">Team</a> | <a href="#">Contact</a> | <a href="#">Imprint</a></span>
                                </div>

                            </div>--%>
                        </div>
            </div>
        </div>

            <!-- Mainly scripts -->
            <script src="js/jquery-3.1.1.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.js"></script>
</body>

</html>
