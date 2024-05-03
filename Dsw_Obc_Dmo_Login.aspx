<%@ Page Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="Dsw_Obc_Dmo_Login.aspx.cs" Inherits="Dsw_Obc_Dmo_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("DepartmentMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <section class="section-row">
        <div class="container">
            <div class="page-head">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <div id="breadcrumb" class="push-left" role="navigation" aria-label="breadcrumb">
                            <ul class="breadcrumbs">
                                <li>
                                    <a href="index.aspx" class="home"><span>Home</span></a>
                                </li>
                                <li>
                                    <a href="departments.aspx">Departments</a>
                                </li>
                                <li>
                                    <%string param = Request.QueryString["a"]; string user = ""; if (param.Equals("SW")) { user = "Social Welfare Officer"; } else if (param.Equals("OBC")) { user = "Backward Class Welfare Officer"; } else if (param.Equals("MIN")) { user = "Minority Welfare Officer"; } else if (param.Equals("ST")) { user = "ST Welfare Officer"; }%>

                                    <span>District Welfare (<%=user %>) Login</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <div class="col-sm-12">
                    <div class="col-sm-4">&nbsp;</div>
                    <div class="col-sm-4">
                        <div class="card brdrtheme2" style="box-shadow: 0 0 10px rgb(0 0 0 / 45%);">
                            <div class="card-header bgtheme" style="color: white;">
                                <h4 class="text-center"><%=user %> Login</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="<%# dist.ClientID %>">District:<span class="text-danger">*</span></label>
                                    <asp:DropDownList runat="server" CssClass="form-control dropdown" ID="dist">
                                        <asp:ListItem Value="">Select District</asp:ListItem>
                                        <asp:ListItem Value="1">Dist 1</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="<%# user.ClientID %>">Department:<span class="text-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="user" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="<%# userType.ClientID %>">User Type:<span class="text-danger">*</span></label>
                                    <asp:DropDownList CssClass="form-control dropdown" runat="server" ID="userType">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>User</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="<%# pass.ClientID %>">Password<span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="pass" TextMode="Password" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="<%# txtCaptcha.ClientID %>">Catptch<span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <div class="col-sm-5">
                                            <asp:TextBox CssClass="form-control" ID="txtCaptcha" TextMode="Password" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-5">
                                            <img src="captcha.ashx" id="Captcha" alt="Captcha Loading" />
                                        </div>
                                        <div class="col-sm-2">
                                            <img src="https://scholarship.up.gov.in/image/refresh.png" onclick="rcaptcha()" alt="Refresh Captcha" style="height: 30px;width: 30px;"/>
                                        </div>
                                        <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
                                    </div>
                                    <div class="input-div" style="padding-top: 5px;">
                                        <asp:HyperLink NavigateUrl="ddsign.aspx" runat="server" Style="padding-left: 5px;">Help File for Digital Signature.</asp:HyperLink>
                                        <asp:Button ID="btnLogin" CssClass="btn btn-primary pull-right" Text="Login" runat="server" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" />
                                    </div>
                                </div>
                                <center>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">&nbsp;</div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>

