<%@ Page Title="" Language="C#" MasterPageFile="~/BlocksMasterPage.master" AutoEventWireup="true" CodeFile="institutes2.aspx.cs" Inherits="institutes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
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
                        <h1>Institues</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="vc_row wpb_row vc_row-fluid">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner">
                            <div class="wpb_wrapper">
                                <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                    <ul>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="instReg.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                <div class="list-text"><strong>New Registration				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Institute (Pre Matric)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="Inst_login_SM.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Institute (Post Matric)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="oscollege_login.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login Institute (OTHER STATE INSTITUTES)				</strong></div>
                                            </a>
                                        </li>
                                        <li class="no-bg gray-border border-radius-medium">
                                            <a href="Univ_login_SM.aspx" class="hvr hvr-forward">
                                                <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                <div class="list-text"><strong>Login (University/ Affiliating Agencies Login)				</strong></div>
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
    </section>
</asp:Content>
