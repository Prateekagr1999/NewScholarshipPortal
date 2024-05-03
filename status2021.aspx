<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="status2021.aspx.cs" Inherits="status2021" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                    <span>Status of Session 2020-2021</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content" class="col-md-6 col-md-offset-3 col-sm-12">
                <div class="panel panel-default brdrtheme2" style=" box-shadow: 0 0 10px rgb(0 0 0 / 25%);">
                    <div class="panel-heading bgtheme" style=" color: white;">
                        <h3 class="panel-title" style="font-weight: 200; line-height: 25px;">छात्रवृत्ति व शुल्क प्रतिपूर्ति सत्र-2020-21 प्रदेश में/प्रदेश से बाहर अध्ययनरत छात्र / छात्रा के ऑनलाइन आवेदन पत्र की स्थिति<span style="float: right;"><span id="lbl_date" class="label label-danger"></span></span></h3>
                    </div>
                    <div class="panel-body" style="background: whitesmoke;">
                        <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12 form-group" style="text-align: left">
                            <div id="tbl_search" class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12">
                                <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 control-label">
                                    <label>रजिस्ट्रेशन संख्या (Registration Number)</label>
                                </div>
                                <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 control-label">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <asp:TextBox runat="server" MaxLength="15" ID="txt_appid" TextMode="Number" CssClass="form-control input-sm txtbox" autocomplete="off" placeholder="Enter Registration No." onkeypress="return isNumber(event)"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 control-label">
                                    <label>जन्म-तिथि (DOB) </label>
                                </div>
                                <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 control-label">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <asp:TextBox runat="server" TextMode="Date" ID="txt_dob" CssClass="form-control input-sm txtbox" autocomplete="off" placeholder="dd/mm/yyyy"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 control-label">
                                    <label>Captcha (कैप्चा कोड) </label>
                                </div>
                                <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12 inputGroupContainer">
                                    <img id="Captcha" src="captcha.ashx" alt="Captcha Loading.." style="vertical-align: middle; border-radius: 5px; border: 1px solid #bbbbbb">
                                    <img onclick="rotateImage(this)" id="reloadcaptcha" class="reloadcaptcha" src="https://scholarship.up.gov.in/image/refresh.png" alt="Refresh Captcha" title="Click here to refresh Captcha Code." style="height: 35px;">
                                    <br />
                                    <br />
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-check"></i></span>
                                        <asp:TextBox runat="server" MaxLength="5" ID="txtCaptcha" TabIndex="4" class="form-control input-sm txtbox" autocomplete="off" placeholder="Enter captcha code" Style="background-color: White;"></asp:TextBox>
                                    </div>
                                    <span style="color: red; font-size: 11px">ऊपर दिया गया कैप्चा कोड डालें (<span>केस सेंसिटिव</span>)</span>
                                </div>

                                <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 control-label">
                                    <asp:Button runat="server" type="submit" Style="padding: 7px 20px 7px 20px; border-radius: 5px;" value="Search" OnClientClick=" return check_pwd();" ID="btn_find" CssClass="btn btn-success pull-right" Text="Search" />
                                </div>
                            </div>
                            <div class="form-group col-md-12 col-sm-12">

                                <div id="ErrorDivHtml" style="display: none;" class="check">
                                    <div class="bad">
                                        <img src="https://scholarship.up.gov.in/image/x.gif" alt="check" class="icon">
                                        <div class="bad" id="ErrorDivBad" style="color: red;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--section-row end-->
    <script type="text/javascript">
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        function check_pwd() {
            document.getElementById('ErrorDivHtml').style.display = 'none';
            document.getElementById('ErrorDivBad').innerHTML = '';
            var password = document.getElementById('txt_dob').value;
            var appid = document.getElementById('txt_appid').value;
            var text = document.getElementById('txt_dob');


            if (appid == "") {
                document.getElementById('ErrorDivHtml').style.display = '';
                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter Registration No.';
                document.getElementById('txt_appid').focus();
                return false;
            }
            if (appid.length < 15) {
                document.getElementById('ErrorDivHtml').style.display = '';
                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter A Valid Registration No.';
                document.getElementById('txt_appid').focus();
                return false;
            }
            if (password == '' && text.enabled) {
                document.getElementById('ErrorDivHtml').style.display = '';
                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter Date of Birth.';
                document.getElementById('txt_dob').focus();
                return false;
            }
            if (password.length < 10 && text.enabled) {
                document.getElementById('ErrorDivHtml').style.display = '';
                document.getElementById('ErrorDivBad').innerHTML = 'Please Enter A Valid Date of Birth.';
                document.getElementById('txt_dob').focus();
                return false;
            }
            if (password.length = 10 && text.enabled) {
                var input = password;

                var fields = input.split('/');

                var a = fields[0];
                var b = fields[1];
                var c = fields[2];
                if (isNaN(a + b + c)) {
                    document.getElementById('ErrorDivHtml').style.display = '';
                    document.getElementById('ErrorDivBad').innerHTML = "Please Enter A Valid Date of Birth. Numeric Letter";
                    document.getElementById('txt_dob').focus();
                    return false;
                }
            }
        }
    </script>
</asp:Content>
