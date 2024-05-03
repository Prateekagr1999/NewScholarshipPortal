<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="RegistrationFormInstituteOS.aspx.cs" Inherits="RegistrationFormInstituteOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("StudentsMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>

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
                                    <span>Postmetric other state (Fresh)</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content" style="text-align: center;">


                <div style="padding-top: 5px;">
                    <div class="col-md-12 brdrtheme2" style="box-shadow: inset 11px 20em 32em 25em rgba(201, 224, 234, 0.4), 0 3.3em rgba(201, 224, 234,0.4);border-radius:15px; margin: 10px;">
                        <p class="bgtheme" style="color: white; border-radius: 10px; font-size: 18px; line-height: 2; padding: 5px 10px 5px 10px;"><b><u>दशमोत्तर छात्रवृत्ति व शुल्क प्रतिपूर्ति सत्र-<span id="lblsession"></span> (उ0प्र0 के बाहर अन्य प्रदेश में अध्ययनरत उ0प्र0 के (कक्षा 11-12 के अतिरिक्त) छात्र/छात्राओं (Fresh Student) के लिए ऑनलाइन रजिस्ट्रेशन फॉर्म </u></b></p>

                        <div class="col-md-12">
                            <div class="panel-heading1" style="background-color: #387391;">
                                <h3 class="panel-title" style="font-size: 14px; color: black; font-weight: bold; padding: 5px; text-align: left">महत्वपूर्ण दिशानिर्देश:-</h3>
                                <ol style="font-size: 11px;">
                                    <li class="" style="margin-top: 5px; color: #ffffff; text-align: left">रजिस्ट्रेशन फॉर्म छात्र / छात्रा द्वारा सही - सही भरा जाय। जन्मतिथि, नाम तथा पिता का नाम उपलब्ध साक्ष्य के अनुसार भरी जाय। आवेदन पत्र में तारांकित(*) बॉक्स में प्रविष्टि किया जाना अनिवार्य है|</li>
                                    <li class="" style="margin-top: 5px; color: #ffffff; text-align: left">सभी बाक्सों में प्रविष्टियाँ <b>अंग्रेजी भाषा के कैपिटल लैटर्स </b>में अंकित की जानी हैं|</li>
                                    <li class="" style="margin-top: 5px; color: #ffffff; text-align: left">पासवर्ड की लंबाई 6-12 वर्णों के बीच हो सकती है (कम से कम 1 संख्या, 1 बड़ा अक्षर, 1 विशेष वर्ण शामिल करें (@ # $ &))|</li>

                                </ol>
                            </div>
                        </div>

                        <div id="ContentPlaceHolder1_dvreg" class="panel-body">
                            <div class="col-md-12 col-sm-12"></div>
                            <div class="col-md-12 form-group" style="text-align: left">
                                <label class="col-md-2 control-label">1: जिला (जहाँ छात्र / छात्रा अध्ययनरत है)* </label>
                                <div class="col-md-4 selectContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList ID="ddl_district" TabIndex="1" CssClass="txtbox dropdown  validate[required] form-control" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <label class="col-md-2 control-label">2: प्रदेश (जहाँ छात्र / छात्रा अध्ययनरत है)*</label>
                                <div class="col-md-4 selectContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList ID="ddl_state" TabIndex="2" runat="server" Style="padding-top: 0px;" CssClass="txtbox dropdown  validate[required] form-control input-sm">
                                            <asp:ListItem Selected="True" Value="">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Andaman and Nicobar</asp:ListItem>
                                            <asp:ListItem Value="2">Andhra Pradesh</asp:ListItem>
                                            <asp:ListItem Value="3">Arunachal Pradesh</asp:ListItem>
                                            <asp:ListItem Value="4">Assam</asp:ListItem>
                                            <asp:ListItem Value="5">Bihar</asp:ListItem>
                                            <asp:ListItem Value="6">Chandigarh</asp:ListItem>
                                            <asp:ListItem Value="7">Chhattisgarh</asp:ListItem>
                                            <asp:ListItem Value="8">Dadra and Nagar Haveli</asp:ListItem>
                                            <asp:ListItem Value="9">Daman and Diu</asp:ListItem>
                                            <asp:ListItem Value="10">Delhi</asp:ListItem>
                                            <asp:ListItem Value="11">Goa</asp:ListItem>
                                            <asp:ListItem Value="12">Gujarat</asp:ListItem>
                                            <asp:ListItem Value="13">Haryana</asp:ListItem>
                                            <asp:ListItem Value="14">Himachal Pradesh</asp:ListItem>
                                            <asp:ListItem Value="15">Jammu and Kashmir</asp:ListItem>
                                            <asp:ListItem Value="16">Jharkhand</asp:ListItem>
                                            <asp:ListItem Value="17">Karnataka</asp:ListItem>
                                            <asp:ListItem Value="18">Kerala</asp:ListItem>
                                            <asp:ListItem Value="19">Lakshadweep</asp:ListItem>
                                            <asp:ListItem Value="20">Madhya Pradesh</asp:ListItem>
                                            <asp:ListItem Value="21">Maharashtra</asp:ListItem>
                                            <asp:ListItem Value="22">Manipur</asp:ListItem>
                                            <asp:ListItem Value="23">Meghalaya</asp:ListItem>
                                            <asp:ListItem Value="24">Mizoram</asp:ListItem>
                                            <asp:ListItem Value="25">Nagaland</asp:ListItem>
                                            <asp:ListItem Value="26">Orissa</asp:ListItem>
                                            <asp:ListItem Value="27">Pondicherry</asp:ListItem>
                                            <asp:ListItem Value="28">Punjab</asp:ListItem>
                                            <asp:ListItem Value="29">Rajasthan</asp:ListItem>
                                            <asp:ListItem Value="30">Sikkim</asp:ListItem>
                                            <asp:ListItem Value="31">Tamil Nadu</asp:ListItem>
                                            <asp:ListItem Value="32">Tripura</asp:ListItem>
                                            <asp:ListItem Value="36">Telangana</asp:ListItem>
                                            <asp:ListItem Value="34">Uttarakhand</asp:ListItem>
                                            <asp:ListItem Value="35">West Bengal</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 form-group" style="text-align: left">
                                <label class="col-md-2 control-label">3: जिला (छात्र / छात्रा जहाँ का स्थायी निवासी है)* </label>
                                <div class="col-md-4 selectContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList ID="ddl_otherstatedist" TabIndex="3" CssClass="txtbox dropdown  validate[required] form-control input-sm" runat="server"></asp:DropDownList>
                                    </div>
                                    <span style="color: red; font-size: 11px">(जहाँ छात्र / छात्रा अध्ययनरत है)*</span>
                                </div>
                                <label class="col-md-2 control-label">4: शिक्षण संस्थान<span style="color: red">*</span> :</label>
                                <div class="col-md-4 selectContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList runat="server" TabIndex="4" ID="ddl_institute">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Institute list here</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:HiddenField ID="hdclg" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 form-group" style="text-align: left">
                                <label class="col-md-2 control-label">3: वर्ग / जाति समूह<span style="color: red">*</span> :</label>
                                <div class="col-md-4 selectContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList ID="ddl_caste" CssClass="txtbox dropdown inp-form validate[required] form-control input-sm" TabIndex="5" runat="server" Style="padding-top: 0px;">
                                            <asp:ListItem Selected="True" Value="">Select </asp:ListItem>
                                            <asp:ListItem Value="2">अनुसूचित जाति</asp:ListItem>
                                            <asp:ListItem Value="3">अनुसूचित जनजाति</asp:ListItem>
                                            <asp:ListItem Value="5">सामान्य वर्ग</asp:ListItem>
                                        </asp:DropDownList>
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$hdn_caste" id="ContentPlaceHolder1_hdn_caste" />
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
                                        <asp:TextBox ID="txt_studentname" MaxLength="50" TabIndex="7" AutoCompleteType="Disabled" onkeypress="return onKeyValidate(event,alpha);" Style="margin-bottom: 0px; text-transform: uppercase" runat="server" CssClass="txtbox form-control input-sm validate[required,custom[onlyLetterSp]]"></asp:TextBox>
                                    </div>
                                </div>

                                <label class="col-md-2 control-label">6: मोबाइल नं0 </label>
                                <div class="col-md-4 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                        <asp:TextBox ID="txt_mobileno" TextMode="Number" TabIndex="8" MaxLength="10" CssClass="form-control" onkeypress="return isNumber(event)" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                    </div>
                                    <span style="color: red; font-size: 11px">(आधार नंबर से लिंक)</span>
                                </div>
                            </div>
                            <div class="col-md-12 form-group" style="text-align: left">
                                <label class="col-md-2 control-label">7: हाई-स्कूल उत्तीर्ण करने का वर्ष <span style="color: red">*</span>:</label>
                                <div class="col-md-4 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList ID="ddl_highschpassyear" runat="server" TabIndex="9" CssClass="txtbox dropdown form-control validate[required]">
                                            <asp:ListItem Value="">Select Year</asp:ListItem>
                                        </asp:DropDownList>

                                        <script>
                                            var dropdown = document.getElementById('<%= ddl_highschpassyear.ClientID %>');

                                            function generateYears(startYear, endYear) {
                                                var currentYear = new Date().getUTCFullYear();

                                                for (var year = endYear; year >= startYear; year--) {
                                                    var option = document.createElement("option");
                                                    option.value = year;
                                                    option.text = year;
                                                    dropdown.add(option);
                                                }
                                            }

                                            // Call the function to generate years from 1980 to the current year    
                                            generateYears(1980, new Date().getUTCFullYear());
                                        </script>
                                    </div>
                                </div>

                                <label class="col-md-2 control-label">8: हाई-स्कूल बोर्ड </label>
                                <div class="col-md-4 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                        <asp:DropDownList runat="server" ID="ddl_board" TabIndex="10" CssClass="txtbox dropdown form-control input-sm validate[required] ">
                                            <asp:ListItem Value="">Select</asp:ListItem>
                                            <asp:ListItem Value="1">UP BOARD</asp:ListItem>
                                            <asp:ListItem Value="2">CBSE</asp:ListItem>
                                            <asp:ListItem Value="3">ICSE</asp:ListItem>
                                            <asp:ListItem Value="4">National Institute of Open Schooling</asp:ListItem>
                                            <asp:ListItem Value="5">Jammu and Kashmir Board</asp:ListItem>
                                            <asp:ListItem Value="6">Rajasthan Board</asp:ListItem>
                                            <asp:ListItem Value="7">Himachal Pradesh Board</asp:ListItem>
                                            <asp:ListItem Value="8">Madhya Pradesh Board</asp:ListItem>
                                            <asp:ListItem Value="9">Chhattisgarh Board</asp:ListItem>
                                            <asp:ListItem Value="10">Punjab Board</asp:ListItem>
                                            <asp:ListItem Value="11">Haryana Board</asp:ListItem>
                                            <asp:ListItem Value="12">Bihar Board</asp:ListItem>
                                            <asp:ListItem Value="13">Gujarat Board</asp:ListItem>
                                            <asp:ListItem Value="14">Maharashtra Board</asp:ListItem>
                                            <asp:ListItem Value="15">Andhra Pradesh Board</asp:ListItem>
                                            <asp:ListItem Value="16">West Bengal Board</asp:ListItem>
                                            <asp:ListItem Value="17">UP Sanskrit Board</asp:ListItem>
                                            <asp:ListItem Value="18">Uttarakhand Board</asp:ListItem>
                                            <asp:ListItem Value="19">Jharkhand Academic Council</asp:ListItem>
                                            <asp:ListItem Value="20">A M U Board</asp:ListItem>
                                            <asp:ListItem Value="21">Maharashtra Board</asp:ListItem>
                                            <asp:ListItem Value="22">U.P. Madarsa Board</asp:ListItem>
                                            <asp:ListItem Value="24">Meghalaya Board of School of Education</asp:ListItem>
                                            <asp:ListItem Value="25">Dayalbagh Educational Institute, Agra</asp:ListItem>
                                            <asp:ListItem Value="26">Tamil Nadu Board of Higher Secondary Education</asp:ListItem>
                                            <asp:ListItem Value="27">Board of Secondary Education Assam</asp:ListItem>
                                            <asp:ListItem Value="28">Karanataka Secondary Education Examination Board</asp:ListItem>
                                            <asp:ListItem Value="29">Dev Sanskriti Vishwavidyalaya Haridwar</asp:ListItem>
                                            <asp:ListItem Value="30">Board of Secondary Education Odisha</asp:ListItem>
                                            <asp:ListItem Value="31">Board of Secondary Education Manipur</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 form-group" style="text-align: left">
                                <label class="col-md-2 control-label">9: हाई-स्कूल बोर्ड का अनुक्रमांक <span style="color: red">*</span>:</label>
                                <div class="form-group col-md-2 col-sm-2">
                                    <asp:TextBox runat="server" ID="txt_hghrollnoA" MaxLength="2" TabIndex="11" CssClass="txtbox form-control input-sm validate[required,custom[onlyLetterSp]]" ToolTip="Enter only Alphabet if exist in roll no." Style="margin-bottom: 0px; text-transform: uppercase; float: left;"></asp:TextBox>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    &nbsp;<asp:TextBox ID="txt_hghrollno" MaxLength="11" TabIndex="12" CssClass="txtbox form-control input-sm validate[custom[leng]]" TextMode="Number" onkeypress="return isNumber(event)" Style="float: right;" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-12 form-group" style="text-align: left">
                                <label class="col-md-2 control-label">10: स्वनिर्मित पासवर्ड डाले <span style="color: red">*</span> : </label>
                                <div class="col-md-4 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                        <asp:TextBox ID="txt_pwd" TextMode="Password" MaxLength="12" TabIndex="13" CssClass="txtbox form-control input-sm validate[required]" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                    </div>
                                    <span style="color: red; font-size: 11px">(6-12 अंको/अक्षरों का)*</span>
                                </div>

                                <label class="col-md-2 control-label">11: स्वनिर्मित पासवर्ड कन्फर्म करे <span style="color: red">*</span> : </label>
                                <div class="col-md-4 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                        <asp:TextBox ID="txt_pwd_confirm" MaxLength="12" TabIndex="14" TextMode="Password" CssClass="txtbox form-control input-sm validate[required]" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                    </div>
                                    <span style="color: red; font-size: 11px">(स्वनिर्मित पासवर्ड सुरक्षित जगह नोट कर लें)</span>
                                </div>
                            </div>
                            <div class="form-group col-md-12" style="text-align: left">

                                <label class="col-md-6 control-label" style="text-align: right">
                                    <img id="Captcha" src="captcha.ashx" alt="Captcha Loading.." style="vertical-align: middle;" />&ensp;
                                    <img onclick="rcaptcha();" id="reloadcaptcha" style="height: 35px; width: 35px;" class="reloadcaptcha" src="https://scholarship.up.gov.in/image/refresh.png" alt="Refresh Captcha" /><br />
                                    <span style="color: #ff4500; font-size: 13px; width: 123px;">दिया गया कैप्चा कोड डालें (<span>केस सेंसिटिव</span>):*</span>
                                </label>
                                <div class="col-md-3 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-check-square-o"></i></span>
                                        <input name="ctl00$ContentPlaceHolder1$txtCaptcha" type="text" maxlength="5" id="ContentPlaceHolder1_txtCaptcha" tabindex="15" class="txtbox form-control input-sm validate[required,custom[onlyLetterNumber]]" autocomplete="off" style="height: 35px;" />

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <br>
                                    <asp:Button ID="btn_submit" Text="Generate OTP" CssClass="btn btn-success" runat="server" Style="border-radius: 5px; height: 40px" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>