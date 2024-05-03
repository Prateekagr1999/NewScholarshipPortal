<%@ Page Title="" Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="institutes.aspx.cs" Inherits="institutes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        .panel-body {
            padding:0 !important;
        }
    </style>
    <!--section-row start-->
    <section class="section-row ">
        <div class="container">
            <div class="page-head">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div id="breadcrumb" class="push-left" role="navigation" aria-label="breadcrumb">
                            <ul class="breadcrumbs">
                                <li><a href="index.aspx" class="home"><span>Home</span></a></li>
                                <li class="current">Institutes</li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" id="row-content">
            <div class="switchViewHead">
                <div class="row">
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12">
                        <h1>Institutes</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">Prematric Institution (पूर्व दशम संस्थान)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="InstituteAddPreNew.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>New Registration<br />
                                                                        (नया पंजीकरण)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>Login<br />
                                                                        (लॉगिन)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">Postmatric Inter Institution (दशमोत्तर इंटर संस्थान)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="InstituteAddInterNew.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>New Registration<br />
                                                                        (नया पंजीकरण)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>Login<br />
                                                                        (लॉगिन)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">Postmatric Otherthan Inter Institution (दशमोत्तर (इंटर के अतिरिक्त) संस्थान)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="InstituteAddNew.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>New Registration<br />
                                                                        (नया पंजीकरण)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>Login<br />
                                                                        (लॉगिन)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">Outside State Institution (राज्य के बाहर के संस्थान)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="InstituteAddOtherStateNew.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>New Registration<br />
                                                                        (नया पंजीकरण)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="oscollege_login.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>Login<br />
                                                                        (लॉगिन)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">University / Affiliating Agency (विश्वविद्यालय/संबद्ध एजेंसी)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <div class="col-sm-6">
                                                    <ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="Univ_login_SM.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-institution border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>Login (University / Affiliating Agency Login)<br />
                                                                        (विश्वविद्यालय/संबद्ध एजेंसी लॉगिन)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6">
                                                    <%--<ul>
                                                        <li class="no-bg gray-border border-radius-medium">
                                                            <a href="InstituteAddInterNew.aspx" class="hvr hvr-forward">
                                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                                <div class="list-text">
                                                                    <strong>Login<br />
                                                                        (लॉगिन)</strong>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="row">
                <div class="col-sm-4">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">New Registration (नया पंजीकरण)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <ul>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="InstituteAddPreNew.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Prematric Institution<br />
                                                                    (पूर्व दशम संस्थान)</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="InstituteAddInterNew.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Postmatric Inter Institution<br />
                                                                    (दशमोत्तर इंटर संस्थान)</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="InstituteAddNew.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Postmatric Otherthan Inter Institution<br />
                                                                    (दशमोत्तर (इंटर के अतिरिक्त) संस्थान)</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="InstituteAddOtherStateNew.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Outside State Institution
                                                                <br />
                                                                    (राज्य के बाहर के संस्थान)</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">Logins (लॉगिन)</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <ul>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-arrow-circle-right border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Prematric Institution
                                                    <br />
                                                                    (पूर्वदशम संस्थान)		</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-arrow-circle-right border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Postmatric Inter Institution
                                                    <br />
                                                                    (दशमोत्तर इंटर संस्थान)	</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-arrow-circle-right border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Post Matric Otherthan Inter Institution
                                                    <br />
                                                                    (दशमोत्तर (इंटर के अतिरिक्त) संस्थान)	</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="oscollege_login.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-arrow-circle-right border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Outside State Institution
                                                    <br />
                                                                    (राज्य के बाहर के संस्थान)				</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">University / Affiliating Agency</div>
                        </div>
                        <div class="panel-body">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner">
                                        <div class="wpb_wrapper">
                                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list normal-font fore-color-black ">
                                                <ul>
                                                    <li class="no-bg gray-border border-radius-medium">
                                                        <a href="Univ_login_SM.aspx" class="hvr hvr-forward">
                                                            <span class="list-icon no-bg fa fa-institution border-radius-round"></span>
                                                            <div class="list-text">
                                                                <strong>Login (University / Affiliating Agency Login)<br />
                                                                    (विश्वविद्यालय/संबद्ध एजेंसी लॉगिन)</strong>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
    </section>
</asp:Content>
