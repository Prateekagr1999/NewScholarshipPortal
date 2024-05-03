<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="PreviousYrTimeTables.aspx.cs" Inherits="PreviousYrTimeTables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        var studentsElement = document.getElementById("StatusMenu");
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
                                    <a href="status.aspx">Status</a>
                                </li>
                                <li>
                                    <span>Important Information</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <center>
                    <h2>Contents here....</h2>
                </center>
            </div>
        </div>
    </section>
    <!--section-row end-->
</asp:Content>

