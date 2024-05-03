<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="RegistrationFormPrematric.aspx.cs" Inherits="RegistrationFormPrematric" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("StudentsMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <!--section-row start-->
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
                                    <a href="registration.aspx">Registration</a>
                                </li>
                                <li>
                                    <span>Prematric (Fresh)</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content" style="text-align: center; margin-top: 38px;">
                <%--<div class="col-md-12" style="border-radius: 15px; box-shadow: inset 0px 0em 15em 50px 	rgba(75, 53, 4, 0.4), 0 0 0 50px rgb(255 255 255), 0.3em 0.3em rgba(86,61,5,0.4); margin: 10px;">--%>
                <div class="col-md-12 brdrtheme2" style="border-radius: 15px;border-radius: 15px; margin: 10px;">
                    <p class="bgtheme" style="color: white; padding: 5px; border-radius: 10px; font-size: 18px; line-height: 2;">
                        <b><u>उ0प्र0 में पूर्वदशम(कक्षा 9-10) सत्र <span id="lblsession">(2023-24)</span> में अध्ययनरत छात्र/छात्राओं के लिए ऑनलाइन रजिस्ट्रेशन फॉर्म</u></b>
                    </p>
                    <div class="col-md-12">
                        <div class="panel-heading1">
                            <fieldset style="border: 2px solid black;">
                                <legend style="font-size: 1.2em; color: black; font-weight: bold; padding: 5px; text-align: left">महत्वपूर्ण दिशानिर्देश:-</legend>
                                <ol style="font-size: 15px;">
                                    <li style="color: black; text-align: left; padding:0">रजिस्ट्रेशन फॉर्म छात्र / छात्रा द्वारा सही - सही भरा जाय। नाम उपलब्ध साक्ष्य के अनुसार भरी जाय। आवेदन पत्र में तारांकित(*) बॉक्स में प्रविष्टि किया जाना अनिवार्य है|</li>
                                    <li style="color: black; text-align: left; padding:0">सभी बॉक्सों में प्रविष्टियाँ <b>अंग्रेजी भाषा के कैपिटल लैटर्स </b>में अंकित की जानी हैं|</li>
                                    <li style="color: black; text-align: left; padding:0">पासवर्ड की लंबाई 6-12 वर्णों के बीच हो सकती है (कम से कम 1 संख्या, 1 बड़ा अक्षर, 1 विशेष वर्ण शामिल करें (@ # $ &))|</li>
                                </ol>
                            </fieldset>
                        </div>
                    </div>

                    <div id="ContentPlaceHolder1_dvreg" class="panel-body">
                        <div class="col-md-12 col-sm-12">
                            &nbsp;
                        </div>

                        <div class="col-md-12 form-group" style="text-align: left">
                            <label class="col-md-2 control-label">1: जिला <span style="color: red">*</span> : </label>
                            <div class="col-md-4 selectContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                    <asp:DropDownList runat="server" ID="ddl_dist">
                                    </asp:DropDownList>
                                </div>
                                <span style="color: red; font-size: 11px">(जहाँ छात्र / छात्रा अध्ययनरत है)*</span>
                            </div>
                            <label class="col-md-2 control-label">2: शिक्षण संस्थान<span style="color: red">*</span> :</label>
                            <div class="col-md-4 selectContainer">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-list"></i></span>
                                        </div>
                                        <select class="form-control" runat="server" id="ddl_institute">
                                            <option>Select</option>
                                            <option>Institute list here</option>
                                        </select>
                                        <input type="hidden" id="hdclg" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-12 form-group" style="text-align: left">
                            <label class="col-md-2 control-label">3: वर्ग / जाति समूह<span style="color: red">*</span> :</label>
                            <div class="col-md-4 selectContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                    <asp:DropDownList ID="ddl_caste" CssClass="txtbox input-control dropdown form-control validate[required]" runat="server">
                                        <asp:ListItem Selected="True" Value="">Select </asp:ListItem>
                                        <asp:ListItem Value="1">अन्य पिछड़ा वर्ग (अल्पसंख़्यक पिछड़े वर्ग को छोड़कर)</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:HiddenField ID="hdn_caste" runat="server" />
                                </div>
                            </div>
                            <label class="col-md-2 control-label">4: धर्म<span style="color: red">*</span> :</label>
                            <div class="col-md-4 selectContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                    <asp:DropDownList ID="ddl_relegion" CssClass="input-control txtbox dropdown  validate[required] form-control input-sm" runat="server" Style="padding-top: 0px;">
                                        <asp:ListItem Valu="">Select Rel</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:HiddenField ID="hdn_rel" runat="server" />
                                </div>
                            </div>
                        </div>


                        <div class="col-md-12 form-group" style="text-align: left">
                            <label class="col-md-2 control-label">5: छात्र / छात्रा का नाम <span style="color: red">*</span>:</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <asp:TextBox ID="txt_studentname" MaxLength="50" AutoCompleteType="Disabled" onkeypress="return onKeyValidate(event,alpha);" Style="margin-bottom: 0px; text-transform: uppercase" runat="server"></asp:TextBox>
                                </div>
                                <span style="color: red; font-size: 11px">(आधार कार्ड पर अंकित नाम )</span>
                            </div>

                            <label class="col-md-2 control-label">6: मोबाइल नं0 <span style="color: red">*</span>: </label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                    <asp:TextBox ID="txt_mobileno" TextMode="Number" MaxLength="10" CssClass="form-control" onkeypress="return isNumber(event)" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </div>
                                <span style="color: red; font-size: 11px">(आधार नंबर से लिंक)</span>
                            </div>
                        </div>

                        <div class="col-md-12 form-group" style="text-align: left">
                            <label class="col-md-2 control-label">7: स्वनिर्मित पासवर्ड डाले<span style="color: red">*</span>:</label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <asp:TextBox ID="txt_pwd" TextMode="Password" MaxLength="12" CssClass="txtbox form-control input-sm validate[required]" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </div>
                                <span style="color: red; font-size: 11px">(6-12 अंको/अक्षरों का)*</span>
                            </div>

                            <label class="col-md-2 control-label">8: स्वनिर्मित पासवर्ड कन्फर्म करे <span style="color: red">*</span> : </label>
                            <div class="col-md-4 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <asp:TextBox ID="txt_pwd_confirm" MaxLength="12" TextMode="Password" CssClass="txtbox form-control input-sm validate[required]" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </div>
                                <span style="color: red; font-size: 11px">(स्वनिर्मित पासवर्ड सुरक्षित जगह नोट कर लें)</span>
                            </div>
                        </div>
                        <div class="form-group col-md-12" style="text-align: left">

                            <label class="col-md-6 control-label" style="text-align: right">
                                <img id="Captcha" src="captcha.ashx" alt="Captcha Loading.." style="vertical-align: middle;" />&ensp;<img onclick="rcaptcha();" id="reloadcaptcha" class="reloadcaptcha" style="height: 35px; width: 35px;" src="https://scholarship.up.gov.in/image/refresh.png" alt="Refresh Captcha" /><br />
                                <span style="color: #ff4500; font-size: 13px; width: 123px;">दिया गया कैप्चा कोड भरें (<span>केस सेंसिटिव</span>):*</span>
                            </label>
                            <div class="col-md-3 inputGroupContainer">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-check-square-o"></i></span>
                                    <asp:TextBox ID="txtCaptcha" MaxLength="5" CssClass="txtbox form-control input-sm validate[required,custom[onlyLetterNumber]]" autocomplete="off" Style="height: 35px;" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                                <br>
                                <asp:Button CssClass="bgtheme" ID="btn_submit" Text="Generate OTP" runat="server" Style="border-radius: 5px; height: 40px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://scholarship.up.gov.in/js/sha512.js"></script>
    <script language="javascript" type="text/javascript">

        function validateComplexity(elementValue) {
            var PComplexity = /^.*(?=.{6,})(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[\W]).*$/;
            var PComplexity = /^.*(?=.{6,12})(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[@|#|$|&]).*$/;
            return PComplexity.test(elementValue);
        }

        function check() {
            //if ($("#ContentPlaceHolder1_hdclg").val() == "") { $("#ContentPlaceHolder1_ddl_institute").val(""); alert("कृपया शिक्षण संस्थान फिर से चुने"); return false; }
            var password2, password3;
            password2 = document.getElementById('ContentPlaceHolder1_txt_pwd');
            password3 = document.getElementById('ContentPlaceHolder1_txt_pwd_confirm');

            if (password2.value == "") {
                alert("Password Cannot Be Blank...!");
                return false;
            }
            if (password3.value == "") {
                alert("Confirm  Password Cannot Be Blank...!");
                return false;
            }
            if (password2.value != password3.value) {
                alert("Password and Confirm Password Do NOt Match...!");
                return false;
            }
            if ((password2.value.length < 6) || (password2.value.length > 12)) {
                alert("Password Should Be of Minimum 6 characters and Maximum 12 characters..! Please see the instructions for PASSWORD!");
                return false;
            }



            if (validateComplexity(password2.value) == false) {
                alert("Password Contains Invalid Character...! Please see the instructions for PASSWORD!");
                password2.focus();
                return false;
            }
            else {
                var p1, p2, pass2, pass3;
                pass2 = password2.value;
                pass3 = password3.value;
                p1 = SHA512(pass2);
                p2 = SHA512(pass3);
                document.getElementById('ContentPlaceHolder1_txt_pwd').value = p1;
                document.getElementById('ContentPlaceHolder1_txt_pwd_confirm').value = p2;
            }
        }
        function cleaar() {

            document.getElementById('ContentPlaceHolder1_txt_pwd').value = "";
            document.getElementById('ContentPlaceHolder1_txt_pwd_confirm').value = "";
        }
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Please enter only Numbers.");
                return false;
            }

            return true;
        }


        function ValidateNo() {
            var phoneNo = document.getElementById('txt_mobileno');

            if (phoneNo.value == "" || phoneNo.value == null) {
                alert("Please enter your Mobile No.");
                return false;
            }
            if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
                alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
                return false;
            }

            return true;
        }


        var alpha = "[ A-Za-z]";
        var numeric = "[0-9]";
        var alphanumeric = "[ A-Za-z0-9]";

        function onKeyValidate(e, charVal) {
            var keynum;
            var keyChars = /[\x00\x08]/;
            var validChars = new RegExp(charVal);
            if (window.event) {
                keynum = e.keyCode;

            }
            else if (e.which) {
                keynum = e.which;

            }
            var keychar = String.fromCharCode(keynum);
            if (!validChars.test(keychar) && !keyChars.test(keychar)) {
                return false
            }

            else {

                return keychar;
            }
        }
    </script>
</asp:Content>
