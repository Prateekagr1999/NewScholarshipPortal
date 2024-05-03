<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="SecondMasterPage.master" CodeFile="instReg.aspx.cs" Inherits="instReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
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
                                    <a href="institutes.aspx">Institutes</a>
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
                <%--<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12" style="border: 2px solid #062F4F; border-radius:10px; padding: 10px; margin: 10px; box-shadow: inset 0px 0em 15em 50px 	rgba(75, 53, 4, 0.4), 0 0 0 50px rgb(255 255 255), 0.3em 0.3em rgba(86,61,5,0.4);">--%>
                    <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12 brdrtheme2" style="border-radius:10px; padding: 10px; margin: 10px; box-shadow: inset 11px 20em 32em 25em rgba(201, 224, 234, 0.4), 0 0.1em rgba(201, 224, 234,0.4);">
                    <p class="bgtheme" style="color: white; padding: 5px; border-radius: 10px; font-size: 17px;">
                        <b><u>Registration Of New Institution / School (Session 2023-24)</u></b>
                    </p>

                    <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                        <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                            <ul class="informationList" style="list-style: none; text-align: left; font-size: larger;">
                                <li>
                                    <span class="fa fa-hand-o-right"></span>&emsp;<asp:LinkButton runat="server" PostBackUrl="InstituteAddPreNew.aspx">Registration Of New Prematric School (नए पूर्वदशम  संस्था का पंजीकरण)</asp:LinkButton></li>
                                <li>
                                    <span class="fa fa-hand-o-right"></span>&emsp;<asp:LinkButton runat="server" PostBackUrl="InstituteAddInterNew.aspx">Registration Of New Postmatric Inter College (नए दशमोत्तर (इंटर) संस्था का पंजीकरण)</asp:LinkButton></li>
                                <li>
                                    <span class="fa fa-hand-o-right"></span>&emsp;<asp:LinkButton runat="server" PostBackUrl="InstituteAddNew.aspx">Registration Of New Postmatric Otherthan Inter Institute (नए दशमोत्तर (इंटरमीडिएट के अलावा) संस्था का पंजीकरण)</asp:LinkButton>
                                </li>
                                <li>
                                    <span class="fa fa-hand-o-right"></span>&emsp;<asp:LinkButton runat="server" PostBackUrl="InstituteAddOtherStateNew.aspx">Registration Of New Other State Institute (अन्य राज्य के संस्था का पंजीकरण)</asp:LinkButton></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
