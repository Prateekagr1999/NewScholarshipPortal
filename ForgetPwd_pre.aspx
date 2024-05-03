<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="SecondMasterPage.master" CodeFile="ForgetPwd_pre.aspx.cs" Inherits="ForgetPwd_pre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        input[type="radio" i] {
            background-color: initial;
            cursor: default;
            appearance: auto;
            box-sizing: border-box;
            margin: 3px 3px 0px 5px;
            padding: initial;
            border: initial;
        }

        table, table > tbody > tr > td {
            margin: 0 !important;
            padding-left: 0 !important;
            border: none !important;
            width: 130px !important;
        }
    </style>
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
                                    <a href="students.aspx" class="home"><span>Student </span></a>
                                </li>
                                <li>
                                    <a href="LoginStudentPreFresh.aspx" class="home"><span>Login Fresh (Prematric) </span></a>
                                </li>
                                <li>
                                    <span>Forgot Password</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <div style="min-height: 500px;">


                    <div class="panel panel-primary" style="margin-left: 14%; margin-right: 14%; background-color: #F7F7F7; border: 2px solid #4b3504; box-shadow: inset 0px 0em 15em 11px rgb(199 77 84 / 10%), 0 0 0 2px rgb(255 255 255), 0.3em 0.3em 1em rgb(0 0 0 / 30%);">
                        <div class="panel-body">
                            <div class="col-md-12 col-sm-12">
                            </div>
                            <div class="col-md-12 col-sm-12">
                                <div id="ErrorDivHtml" style="display: none;" class="check">
                                    <div class="bad">
                                        <img src="image/x.gif" alt="check" class="icon"><div class="bad" id="ErrorDivBad"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 col-sm-12">

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">आवेदन का प्रकार:*</label>
                                </div>

                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:RadioButtonList runat="server" ID="rbtnFR"  RepeatColumns="2" >
                                        <asp:ListItem Value="2" Selected="True">नवीनीकरण (Renewal)&nbsp;&nbsp;</asp:ListItem>
                                        <asp:ListItem Value="1">नवीन (Fresh)&nbsp;&nbsp;</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">पाठ्यक्रम का प्रकार:*</label>
                                </div>

                                <div class="form-group col-md-6 col-sm-6">
                                    <table id="ContentPlaceHolder1_rbtnLoginType" style="font-family: Verdana;">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input id="ContentPlaceHolder1_rbtnLoginType_0" type="radio" name="ctl00$ContentPlaceHolder1$rbtnLoginType" value="1" checked="checked"><label for="ContentPlaceHolder1_rbtnLoginType_0">पूर्वदशम (Prematric)</label></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">जनपद का नाम:*</label>
                                </div>

                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:DropDownList ID="ddl_dist" CssClass="form-control input-sm validate[required]" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">शिक्षण संस्थान का नाम:*</label>
                                </div>

                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:DropDownList ID="ddl_school" runat="server" CssClass="form-control input-sm validate[required]"></asp:DropDownList>
                                </div>

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">रजिस्ट्रेशन संख्या भरें (सत्र 2022-23):*</label>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:TextBox ID="txtLogin" MaxLength="15" CssClass="form-control input-sm validate[custom[onlyLetterNumber]]" runat="server" ></asp:TextBox>
                                </div>

                                <div class="form-group col-md-12 col-sm-12">
                                    <label style="color: red;">OR</label>
                                </div>

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">रजिस्ट्रेशन संख्या भरें (सत्र 2021-22):*</label>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:TextBox ID="txtLogin_1617" MaxLength="15" CssClass="form-control input-sm validate[custom[onlyLetterNumber]]" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">जन्म तिथि भरें:*</label>
                                </div>

                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:TextBox TextMode="Date" ID="txtdob" MaxLength="10" CssClass="form-control input-sm validate[required,custom[date]]" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-2 col-sm-2">
                                    <span style="color: #ff4500; font-size: 13px;">(dd/mm/yyyy)</span>
                                </div>
                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">कक्षा-8 उत्तीर्ण करने का वर्ष :-*</label>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:DropDownList ID="ddl_highschpassyear" runat="server" CssClass="form-control input-sm validate[required]">  
                                        <asp:ListItem value="">Select Year</asp:ListItem>
                                        <asp:ListItem value="2022">2022</asp:ListItem>
                                        <asp:ListItem value="2021">2021</asp:ListItem>
                                        <asp:ListItem value="2020">2020</asp:ListItem>
                                        <asp:ListItem value="2019">2019</asp:ListItem>
                                        <asp:ListItem value="2018">2018</asp:ListItem>
                                        <asp:ListItem value="2017">2017</asp:ListItem>
                                        <asp:ListItem value="2016">2016</asp:ListItem>
                                        <asp:ListItem value="2015">2015</asp:ListItem>
                                        <asp:ListItem value="2014">2014</asp:ListItem>
                                        <asp:ListItem value="2013">2013</asp:ListItem>
                                        <asp:ListItem value="2012">2012</asp:ListItem>
                                        <asp:ListItem value="2011">2011</asp:ListItem>
                                        <asp:ListItem value="2010">2010</asp:ListItem>
                                        <asp:ListItem value="2009">2009</asp:ListItem>
                                        <asp:ListItem value="2008">2008</asp:ListItem>
                                        <asp:ListItem value="2007">2007</asp:ListItem>
                                        <asp:ListItem value="2006">2006</asp:ListItem>
                                        <asp:ListItem value="2005">2005</asp:ListItem>
                                        <asp:ListItem value="2004">2004</asp:ListItem>
                                        <asp:ListItem value="2003">2003</asp:ListItem>
                                        <asp:ListItem value="2002">2002</asp:ListItem>
                                        <asp:ListItem value="2001">2001</asp:ListItem>
                                        <asp:ListItem value="2000">2000</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">कैप्चा कोड:*</label>
                                </div>


                                <div class="form-group col-md-6 col-sm-6">

                                    <img id="Captcha" src="captcha.ashx" alt="Captcha Loading.." style="vertical-align: middle;">
                                    <img onclick="rcaptcha();" id="reloadcaptcha" class="reloadcaptcha" src="http://164.100.181.231/image/refresh.png" style="height: 30px; width: 30px;" alt="Refresh Captcha">
                                </div>
                                <div class="form-group col-md-4 col-sm-4">
                                    <label for="email">ऊपर दिया गया कैप्चा कोड डालें (<span>केस सेंसिटिव</span>):*</label>
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                    <asp:TextBox ID="txtCaptcha" MaxLength="5" CssClass="form-control input-sm validate[required,custom[onlyLetterNumber]]" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group col-md-12 col-sm-12">
                                </div>

                                <div class="form-group col-md-12 col-sm-12">

                                    <strong></strong>
                                </div>

                                <div class="form-group col-md-8 col-sm-8">
                                    <asp:Button ID="btnLogin" Text="पासवर्ड पुनः प्राप्त करें" CssClass="btn btn-primary pull-right" OnClientClick="return check()" runat="server" style="height:40px; border-radius:5px;" />
                                </div>

                                <input type="hidden" name="ctl00$ContentPlaceHolder1$hf" id="ContentPlaceHolder1_hf" value="69148">
                            </div>
                            <script>       function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
                        </div>
                    </div>


                    <script type="text/javascript">
                        function check_pwd() {
                            document.getElementById('ErrorDivHtml').style.display = 'none';
                            document.getElementById('ErrorDivBad').innerHTML = '';
                            var appid = document.getElementById('ContentPlaceHolder1_txtLogin').value;

                            if (document.getElementById('txtCaptcha').value == "") {
                                document.getElementById('ErrorDivHtml').style.display = '';
                                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter Captcha.';
                                document.getElementById('ContentPlaceHolder1_txtCaptcha').focus();
                                return false;
                            }
                            if (appid == "") {
                                document.getElementById('ErrorDivHtml').style.display = '';
                                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter Registration No.';
                                document.getElementById('ContentPlaceHolder1_txtLogin').focus();
                                return false;
                            }

                            if (appid.length != 15) {
                                document.getElementById('ErrorDivHtml').style.display = '';
                                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter A Valid Registration No.';
                                document.getElementById('ContentPlaceHolder1_txtLogin').focus();
                                return false;
                            }
                        }
                    </script>


                    <script type="text/javascript">    $(document).ready(function () { rcaptcha(); $(".form1").validationEngine(); });</script>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
