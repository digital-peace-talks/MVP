<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DigitalPeaceTalks.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Digital Peace Talks|Register</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet" />
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
                       <a href="Home.aspx"> <asp:Image runat="server" ImageUrl="~/img/logo.png" CssClass="mylogo" /></a>
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

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">DPT</h1>

            </div>
            <h3>Signup to Digital Peace Talks</h3>
            <p>Create account to participate</p>
            <form id="frmRegister" runat="server">
                <%--  <div class="form-group">
                    <input id="txtName" runat="server" type="text" class="form-control" placeholder="Name" />
                </div>
                <div class="form-group">
                    <input id="txtEmail" runat="server" type="email" class="form-control" placeholder="Email"/>
                </div>--%>
                <div class="form-group generate-container">
                    <%-- <input id="phrase" runat="server" type="text" class="form-control form-control-lg phrase" placeholder="Passphrase" /><br />--%>
                    <textarea id="phrase" runat="server" class="phrase private-data form-control" placeholder="Passphrase"></textarea>

                    <input id="strength" hidden="hidden" class="strength" value="6" />
                    <button id="btnGenerate" class="btn btn-default generate">Generate</button>
                </div>
                <div class="form-group">
                    <div class="checkbox i-checks">
                        <label>
                            <asp:CheckBox ID="chkAgree" runat="server" /><i></i>     I agree the <a href="#">terms and policy</a></label></div>
                </div>

                <button id="btnRegister" runat="server" onserverclick="Register" type="submit" class=" mysignupbtn block full-width m-b">Register</button>

                <p class="text-muted text-center"><small>Already have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="Login.aspx">Login</a>
                <div class="modal inmodal fade" id="mymodal" runat="server" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
                                                printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,
                                                remaining essentially unchanged.
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
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
    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script src="js/wordlist_english.js"></script>

    <script src="js/jsbip39.js"></script>
    <script src="js/sjcl-bip39.js"></script>
    <script src="js/basex.js"></script>
    <script src="js/bchaddrjs-0.2.1.js"></script>
    <script src="js/biginteger.js"></script>
    <script src="js/bitcoinjs-3.3.2.js"></script>
    <script src="js/bitcoinjs-bip38-2.0.2.js"></script>
    <script src="js/bitcoinjs-extensions.js"></script>
    <script src="js/entropy.js"></script>
    <script src="js/ethereumjs-util.js"></script>
    <script src="js/kjua-0.1.1.min.js"></script>
    <script src="js/levenshtein.js"></script>
    <script src="js/polyfill.es6.js"></script>
    <script src="js/ripple-util.js"></script>
    <script src="js/segwit-parameters.js"></script>
    <script src="js/unorm.js"></script>
    <script src="js/zxcvbn.js"></script>
    <script src="js/index.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });

            document.getElementById("btnGenerate").click();

        });
    </script>
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }
    </script>
</body>
</html>
