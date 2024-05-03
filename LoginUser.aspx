<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="SecondMasterPage.master" CodeFile="LoginUser.aspx.cs" Inherits="LoginUser" %>

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
                                    <span>Hon'ble Minister</span>
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
                                <h4 class="text-center">Hon'ble Minister Login</h4>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <asp:Label runat="server" ID="errLbl" CssClass="text-danger text-center"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label class="font-bold" for="<%# user.ClientID %>">UserID:<span class="text-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="user" CssClass="form-control"></asp:TextBox>
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
                                    <asp:Button ID="btnLogin" CssClass="btn btn-primary pull-right" Text="Login" runat="server" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" />
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
