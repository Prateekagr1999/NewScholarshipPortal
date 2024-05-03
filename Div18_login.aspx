<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="Div18_login.aspx.cs" Inherits="Div18_login" %>
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
                                    <span>Higher Education Divisional Officer</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content" style="padding-top:15vh">
                <center><h2>Comming Soon...!!!!</h2></center>
            </div>
        </div>
    </section>
</asp:Content>
