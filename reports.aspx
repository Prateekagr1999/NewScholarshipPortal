<%@ Page Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="reports.aspx.cs" Inherits="reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        var studentsElement = document.getElementById("ReportsMenu");
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
                                    <span>Reports</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <center>
                    <asp:DropDownList CssClass="form-control" Width="50%" BackColor="#c9e0ea" ID="DropDownList1" runat="server">
                        <asp:ListItem>--Select Session(Year)--</asp:ListItem>
	                    <asp:ListItem Value="2010-11">Session 2010-11</asp:ListItem>
	                    <asp:ListItem Value="2011-12">Session 2011-12</asp:ListItem>
	                    <asp:ListItem Value="2012-13">Session 2012-13</asp:ListItem>
	                    <asp:ListItem Value="2013-14">Session 2013-14</asp:ListItem>
	                    <asp:ListItem Value="2014-15">Session 2014-15</asp:ListItem>
	                    <asp:ListItem Value="2015-16">Session 2015-16</asp:ListItem>
	                    <asp:ListItem Value="2016-17">Session 2016-17</asp:ListItem>
	                    <asp:ListItem Value="2017-18">Session 2017-18</asp:ListItem>
	                    <asp:ListItem Value="2018-19">Session 2018-19</asp:ListItem>
	                    <asp:ListItem Value="2019-20">Session 2019-20</asp:ListItem>
	                    <asp:ListItem Value="2020-21">Session 2020-21</asp:ListItem>
	                    <asp:ListItem Value="2021-22">Session 2021-22</asp:ListItem>
                    </asp:DropDownList>
                </center>
            </div>
        </div>
    </section>
</asp:Content>

