<%@ Page Title="" Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="departments.aspx.cs" Inherits="departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("DepartmentMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        .custPanel {
            min-height: 467px;
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
                                <li class="current">Departments</li>
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
                        <h1>Departments</h1>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 hidden-xs hide">
                        <div class="viewSwicther push-right clearfix">
                            <a href="#" tabindex="0" class="thumbs-view-btn" aria-label="Grid View" title="Grid View"><span class="icon-thumbs-view" aria-hidden="true"></span></a>
                            <a href="#" tabindex="0" class="thumbs-list-view-btn" aria-label="List View" title="List View"><span class="icon-list-view" aria-hidden="true"></span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">
                                Hon'ble Minister
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                <ul>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="LoginUser.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                            <div class="list-text"><strong>Hon'ble Minister Login (माननीय मंत्री लॉगिन)</strong></div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel brdrtheme1 custPanel">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">
                                Directorate & Administrators
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                <ul>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="dwbmo_Login.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Directorate<br />
                                                    (निदेशालय)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Mandal_Login.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Deputy Director<br />
                                                    (उप निदेशक)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="CommingSoon.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Administrator<br />
                                                    (व्यवस्थापक)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="osInst_login.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Other State Administrator<br />
                                                    (अन्य राज्य व्यवस्थापक)</strong>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel brdrtheme1 custPanel">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">
                                District Welfare
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                <ul>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Dsw_Obc_Dmo_Login.aspx?a=SW" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>District Social Welfare Officer<br />
                                                    (जिला समाज कल्याण अधिकारी)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Dsw_Obc_Dmo_Login.aspx?a=OBC" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>District Backward Class Welfare Officer<br />
                                                    (जिला पिछड़ा वर्ग कल्याण अधिकारी)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Dsw_Obc_Dmo_Login.aspx?a=MIN" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>District Minority Welfare Officer<br />
                                                    (जिला अल्पसंख्यक कल्याण अधिकारी)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Dsw_Obc_Dmo_Login.aspx?a=ST" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>District Scheduled Tribes Officer<br />
                                                    (जिला अनुसूचित जनजाति अधिकारी)</strong>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">
                                Officers
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                <ul>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Dios_Login.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>DIOS Login<br />
                                                    (जिला विद्यालय निरीक्षक लॉगिन)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="Div18_login.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Higher Education Divisional Officer<br />
                                                    (उच्च शिक्षा संभागीय अधिकारी)</strong>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="EduDeptHodLogin.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Head Of Department of Education<br />
                                                    (शिक्षा विभाग प्रमुख)</strong>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="panel brdrtheme1">
                        <div class="panel-heading bgtheme" style="color: white;">
                            <div class="panel-title">
                                Auditor
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                <ul>
                                    <li class="no-bg gray-border border-radius-medium">
                                        <a href="AuditerLogin.aspx" class="hvr hvr-forward">
                                            <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                            <div class="list-text">
                                                <strong>Auditor<br />
                                                    (लेखापरीक्षक)</strong>
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
    </section>
</asp:Content>
