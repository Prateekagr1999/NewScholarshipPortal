<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="LoginStudentPostOS.aspx.cs" Inherits="LoginStudentPostOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                    <a href="students.aspx">Students</a>
                                </li>
                                <li>
                                    <span>Login Fresh (Postmatric Otherthan Inter) (Other State)</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <div class="panel-body">
                    <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12" style="border-radius: 15px; box-shadow:inset 11px 20em 32em 25em rgba(201, 224, 234, 0.4), 0 3.3em rgba(201, 224, 234,0.4); ">

                        <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12" style="text-align: center;">
                            <h4 style=" border-radius: 20px; padding: 5px; color: white; background:#589DBF">अन्य प्रदेश में अध्ययनरत छात्र/छात्राओं के लिए छात्रवृति एवं शुल्क प्रतिपूर्ति सत्र : <span id="ContentPlaceHolder1_lblsession" style="color: Maroon;">(2023-24)</span></h4>
                        </div>
                        <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                            <div id="ErrorDivHtml" style="display: none;" class="check">
                                <div class="bad">
                                    <img src="http://164.100.181.232/image/x.gif" alt="check" class="icon" /><div class="bad" id="ErrorDivBad"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                            <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12 form-group" style="text-align: left; margin-bottom: 6px;">
                                <label class="col-md-5 col-sm-5 col-lg-5 col-xl-5 control-label">1: आवेदन का प्रकार <span style="color: red">*</span> :</label>
                                <div class="col-md-7 col-sm-7 col-lg-7 col-xl-7 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <asp:TextBox type="text" MaxLength="10" ID="rbtnFR" TabIndex="2" CssClass="txtbox form-control" autocomplete="off" Style="" runat="server" ReadOnly="true" Text="नवीन (Fresh)" />
                                    </div>
                                </div>
                                <br />
                                <br />
                                <label class="col-md-5 col-sm-5 col-lg-5 col-xl-5 control-label">2: पाठ्यक्रम का प्रकार<span style="color: red">*</span> :</label>

                                <div class="col-md-7 col-sm-7 col-lg-7 col-xl-7 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:TextBox type="text" MaxLength="10" ID="rbtnLoginType" TabIndex="2" CssClass="txtbox form-control input-sm" autocomplete="off" Style="" runat="server" ReadOnly="true" Text="दशमोत्तर (Postmatric OtherThan Inter)" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12">
                            <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12 form-group" style="text-align: left">
                                <label class="col-md-5 col-sm-5 col-lg-5 col-xl-5 control-label">3: रजिस्ट्रेशन संख्या भरें सत्र <span id="ContentPlaceHolder1_lblsession1" style="color: Maroon;">(2023-24)</span> <span style="color: red">*</span> : </label>

                                <div class="col-md-7 col-sm-7 col-lg-7 col-xl-7 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input name="txtLogin" type="text" maxlength="15" id="txtLogin" tabindex="1" class="txtbox form-control input-sm validate[required,custom[onlyLetterNumber]]" autocomplete="off" style="background-color: white;" />
                                    </div>
                                </div>

                                <br />
                                <br />
                                <label class="col-md-5 col-sm-5 col-lg-5 col-xl-5 control-label">4: जन्म तिथि भरें<span style="color: red; font-size: 11px">(dd/mm/yyyy)*</span> :</label>

                                <div class="col-md-7 col-sm-7 col-lg-7 col-xl-7 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <input name="ctl00$ContentPlaceHolder1$txtdob" type="text" maxlength="10" id="ContentPlaceHolder1_txtdob" tabindex="2" class="txtbox form-control input-sm validate[required,custom[date]]" autocomplete="off" style="background-color: white;" />
                                    </div>
                                </div>

                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
                            <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12 form-group" style="text-align: left">
                                <label class="col-md-5 col-sm-5 col-lg-5 col-xl-5 control-label">5: अपना पासवर्ड / वेरिफिकेशन कोड डाले <span style="color: red">*</span> : </label>
                                <div class="col-md-7 col-sm-7 col-lg-7 col-xl-7 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                        <input name="ctl00$ContentPlaceHolder1$txt_pwd" type="password" id="ContentPlaceHolder1_txt_pwd" tabindex="3" class="txtbox form-control input-sm validate[required]" onchange="return chksign();" autocomplete="off" style="background-color: white;" />
                                    </div>
                                </div>
                                <br />
                                <br />
                                <label class="col-md-6 col-sm-5 col-lg-5 col-xl-5 control-label">6: कैप्चा कोड :<span style="color: red">*</span> :</label>
                                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-6 inputGroupContainer">
                                    <img id="Captcha" src="captcha.ashx" alt="Captcha Loading.." style="vertical-align: middle;" />&ensp;<img onclick="rcaptcha();" id="reloadcaptcha" class="reloadcaptcha" src="http://164.100.181.232/image/refresh.png" alt="Refresh Captcha" />

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-check"></i></span>
                                        <input name="ctl00$ContentPlaceHolder1$txtCaptcha" type="text" maxlength="5" id="ContentPlaceHolder1_txtCaptcha" tabindex="4" class="txtbox form-control input-sm validate[required,custom[onlyLetterNumber]]" autocomplete="off" style="background-color: white;" />
                                    </div>
                                    <span style="color: red; font-size: 11px">ऊपर दिया गया कैप्चा कोड डालें (<span>केस सेंसिटिव</span>)</span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12">
                        </div>

                        <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12">
                        </div>

                        <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 row" style="text-align: center">
                            <div class="form-group col-md-12 col-sm-12 col-lg-12 col-xl-12 row">
                                <input type="submit" name="ctl00$ContentPlaceHolder1$btnLogin" value="Submit" onclick=" return check();" id="ContentPlaceHolder1_btnLogin" tabindex="5" class="btn-success btn" style="width: 150px; color: white; border-radius: 6px;" />
                            </div>


                            <div class="form-group col-md-12 col-sm-12 row" style="text-align: right">
                                <u style="font-weight: 600; color: red;">Forgot Password for Institute?</u>
                                <a href="ForgetPwd_pre.aspx" onkeypress="return false;" onclick="window.location.href = 'ForgetPwd_pre.aspx'; return false;" style="font-weight: 700">Click Here</a>
                            </div>
                        </div>
                    </div>

                </div>

                <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
            </div>
        </div>
    </section>
    <!--section-row end-->
</asp:Content>
