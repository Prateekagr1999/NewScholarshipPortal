<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="SecondMasterPage.master" CodeFile="oscollege_login.aspx.cs" Inherits="oscollege_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
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
                                    <a href="institutes.aspx">Institutes</a>
                                </li>
                                <li>
                                    <span>Login Institute (OTHER STATE INSTITUTES)</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <div class="col-md-3 col-sm-0">&nbsp;</div>
                <div class="col-md-4 col-sm-12">
                    <div class="card brdrtheme2" style="box-shadow: 0 0 10px rgb(0 0 0 / 45%); border-radius: 10px;">
                        <div class="card-header bgtheme" style="color: white;">
                            <h4 class="text-center">Other State Postmatric Institute Login</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <asp:Label runat="server" ID="errLbl" CssClass="text-danger text-center"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label class="font-bold" for="<%# state.ClientID %>">State:<span class="text-danger">*</span></label>
                                <asp:DropDownList ID="state" runat="server" CssClass="form-control dropdown">
                                    <asp:ListItem Selected="true" Value="">Select</asp:ListItem>
                                    <asp:ListItem Value="1">State 1</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="font-bold" for="<%# dist.ClientID %>">District:<span class="text-danger">*</span></label>
                                <asp:DropDownList ID="dist" runat="server" CssClass="form-control dropdown">
                                    <asp:ListItem Selected="true" Value="">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Dist 1</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="font-bold" for="<%# inst.ClientID %>">Institute:<span class="text-danger">*</span></label>
                                <asp:DropDownList CssClass="form-control dropdown" runat="server" ID="inst">
                                    <asp:ListItem Value="">Select</asp:ListItem>
                                    <asp:ListItem>Inst 1</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="font-bold" for="<%# pass.ClientID %>">Password:<span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="pass" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="font-bold" for="<%# txtCaptcha.ClientID %>">Catptch:<span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <div class="col-sm-5">
                                        <asp:TextBox CssClass="form-control" ID="txtCaptcha" TextMode="Password" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-5">
                                        <img src="captcha.ashx" id="Captcha" alt="Captcha Loading" />
                                    </div>
                                    <div class="col-sm-2">
                                        <img src="https://scholarship.up.gov.in/image/refresh.png" onclick="rcaptcha()" alt="Refresh Captcha" />
                                    </div>
                                    <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
                                </div>
                            </div>
                            <div class="input-group" style="padding-top: 5px;">
                                <asp:Button ID="btnReset" CssClass="btn btn-info pull-left" Text="Reset" runat="server" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" />
                                <asp:HyperLink NavigateUrl="ddsign.aspx" runat="server" Style="padding-left: 5px;">Help File for Digital Signature.</asp:HyperLink>
                                <asp:Button ID="btnLogin" CssClass="btn btn-primary pull-right" Text="Login" runat="server" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-0">&nbsp;</div>
            </div>
        </div>
    </section>
    <!--section-row end-->
</asp:Content>
