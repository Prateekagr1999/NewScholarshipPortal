﻿<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="Mandal_Login.aspx.cs" Inherits="Mandal_Login" %>
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
                                    <span>Deputy Director</span>
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
                                <h4 class="text-center">Deputy Director (Mandal Officer) Login</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <asp:Label runat="server" ID="errLbl" CssClass="text-danger text-center"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label class="font-bold" for="<%# castegrup.ClientID %>">Caste Group:<span class="text-danger">*</span></label>
                                    <asp:DropDownList ID="castegrup" runat="server" CssClass="form-control dropdown">
                                        <asp:ListItem Value="">Select</asp:ListItem>
                                        <asp:ListItem Value="1">अन्य पिछड़ा वर्ग (अल्पसंख़्यक पिछड़े वर्ग को छोड़कर)</asp:ListItem>
                                        <asp:ListItem Value="2">अनुसूचित जाति/अनुसूचित जनजाति/सामान्य वर्ग</asp:ListItem>
                                        <asp:ListItem Value="4">अल्पसंख़्यक वर्ग</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label class="font-bold" for="<%# Mandal.ClientID %>">Mandal:<span class="text-danger">*</span></label>
                                    <asp:DropDownList ID="Mandal" runat="server" CssClass="form-control dropdown">

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
                                    <asp:Button ID="forgtPass" CssClass="btn btn-info pull-left" Text="Forgot Password" runat="server" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" />
                                    <asp:Button ID="btnLogin" CssClass="btn btn-primary pull-right" Text="Login" runat="server" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" /><br /><br />
                                    <asp:HyperLink NavigateUrl="ddsign.aspx" runat="server" style="padding-left:5px;">Help File for Digital Signature.</asp:HyperLink>
                                </div>
                                <center>
                                    <%--<button onclick="window.location.href = 'index.html';" class=" btn-lg btn-outline-secondary pull-right">Go Back</button></center>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">&nbsp;</div>
                </div>
            </div>
        </div>
    </section>
    <!--section-row end-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>