<%@ Page Title="" Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="status.aspx.cs" Inherits="status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("StatusMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        .gen-list.box-list ul li.pk {
            width: calc(32.9% - 10px)
        }

        @media screen and (max-width: 600px) {
            .gen-list.box-list ul li.pk {
                width: calc(99.9% - 10px)
            }
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
                                <li class="current">Status</li>
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
                        <h1>Status</h1>
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
                        <div class="vc_row wpb_row vc_row-fluid">
                            <div class="wpb_column vc_column_container vc_col-sm-12">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="gen-list no-border no-bg padding-15 border-radius-none box-list   normal-font fore-color-black ">
                                            <ul>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="status2223.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-user border-radius-round"></span>
                                                        <div class="list-text"><strong>Application Status (आवेदन की स्थिति) 2022-23</strong></div>
                                                    </a>
                                                </li>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="status1920.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                        <div class="list-text"><strong>Application Status (आवेदन की स्थिति) 2019-20</strong></div>
                                                    </a>
                                                </li>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="PreviousYrTimeTables.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                        <div class="list-text"><strong>Important Information (महत्वपूर्ण सूचना)</strong></div>
                                                    </a>
                                                </li>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="status2122.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                        <div class="list-text"><strong>Application Status (आवेदन की स्थिति) 2021-22</strong></div>
                                                    </a>
                                                </li>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="status1819.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                        <div class="list-text"><strong>Application Status (आवेदन की स्थिति) 2018-19</strong></div>
                                                    </a>
                                                </li>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="status2021.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                        <div class="list-text"><strong>Application Status (आवेदन की स्थिति) 2020-21</strong></div>
                                                    </a>
                                                </li>
                                                <li class="pk no-bg gray-border border-radius-medium">
                                                    <a href="status1718.aspx" class="hvr hvr-forward">
                                                        <span class="list-icon no-bg fa fa-arrow-right border-radius-round"></span>
                                                        <div class="list-text"><strong>Application Status (आवेदन की स्थिति) 2017-18</strong></div>
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
    </section>
</asp:Content>
