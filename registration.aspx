<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="SecondMasterPage.master" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("StudentsMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <!--section-row start-->
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
                                    <a href="students.aspx">Students</a>
                                </li>
                                <li>
                                    <span>Registration</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <%--<center>
                    <h2>Registration form here.</h2>
                </center>--%>

                <div class="col-md-12 col-sm-12">
                    <h4 style="color: red; text-align: center;">अल्पसंख्यक पिछड़े वर्ग(मुस्लिम, सिख, ईसाई, बौद्ध,जैन तथा पारसी) के छात्र / छात्राएँ अल्पसंख्यक कल्याण विभाग में आवेदन करेंगे |</h4>
                </div>

                <div class="col-md-12 col-sm-12">

                        <div id="SWD_Fresh" class="form-group col-md-4 col-sm-4">
                            <div class="panel panel-primary brdrtheme1">
                                <div class="panel-heading bgtheme" style="color:white;">
                                    <h3 class="panel-title">समाज कल्याण विभाग उ0प्र0 (For ST,SC,General Category) (Fresh)</h3>
                                </div>

                                <div class="panel-body" style="padding: 0px">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="form-group col-md-12 col-sm-12" style="line-height:30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PreFreshSW" PostBackUrl="RegistrationFormPrematric.aspx">Prematric (Fresh)</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="InterFreshSW" PostBackUrl="RegistrationFormIntermediate.aspx?">Postmatric Intermediate (Fresh)</asp:LinkButton>
                                            </div>

                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PostFreshSW" PostBackUrl="RegistrationFormInstitute.aspx">Postmatric Other Than Intermediate (Fresh)</asp:LinkButton>
                                            </div>

                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PostFreshOS" PostBackUrl="RegistrationFormInstituteOS.aspx">Postmatric Other State (Fresh)</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="OBC_Fresh" class="form-group col-md-4 col-sm-4">
                            <div class="panel panel-primary brdrtheme1">
                                <div class="panel-heading bgtheme" style="color:white;">
                                    <h3 class="panel-title">पिछड़ा वर्ग कल्याण विभाग उ0प्र0 (For OBC Category) (Fresh)</h3>
                                </div>
                                <div class="panel-body" style="padding: 0px">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="form-group col-md-12 col-sm-12" style="line-height:30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PreFreshOBC" PostBackUrl="RegistrationFormPrematric.aspx">Prematric (Fresh)</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="FreshOBC" PostBackUrl="RegistrationFormIntermediate.aspx?">Postmatric Intermediate (Fresh)</asp:LinkButton>
                                            </div>

                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PostFreshOBC" PostBackUrl="RegistrationFormInstitute.aspx">Postmatric Other Than Intermediate (Fresh)</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                &emsp;
                                                <asp:LinkButton runat="server" ID="LinkButton1"></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="Min_Fresh" class="form-group col-md-4 col-sm-4">
                            <div class="panel panel-primary brdrtheme1">
                                <div class="panel-heading bgtheme" style="color:white;">
                                    <h3 class="panel-title">अल्प-संख्यक कल्याण विभाग उ0प्र0 (For Minority Category) (Fresh)</h3>
                                </div>
                                <div class="panel-body" style="padding: 0px">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="form-group col-md-12 col-sm-12" style="line-height:30px;">
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PreFreshMin" PostBackUrl="RegistrationFormPrematric.aspx">Prematric (Fresh)</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="InterFreshMin" PostBackUrl="RegistrationFormIntermediate.aspx?">Postmatric Intermediate (Fresh)</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                <span class="fa fa-hand-o-right"></span>
                                                <asp:LinkButton runat="server" ID="PostFreshMin" PostBackUrl="RegistrationFormInstitute.aspx">Postmatric Other Than Intermediate (Fresh)</asp:LinkButton>
                                            </div>
                                            <div class="col-md-12 col-sm-12">
                                                &emsp;
                                                <asp:LinkButton runat="server" ID="LinkButton2"></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <div class="col-md-12 col-sm-12">
                        <h4 style="color: red; text-align: center;">नवीनीकरण (Renewal)के सभी छात्र /छात्रा  छात्रवृत्ति हेतु आनलाइन आवेदन बिना रजिस्ट्रेशन के सीधे भरें।</h4>
                    </div>

                </div>
            </div>
        </div>
    </section>
</asp:Content>