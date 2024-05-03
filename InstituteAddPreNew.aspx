<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="InstituteAddPreNew.aspx.cs" Inherits="InstituteAddPreNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        /*        table {
            border: none;
            width: max-content;
            min-width: max-content;
            max-width: max-content;
        }

            table tbody tr td {
                border-right: none !important;
                border-top: none !important;
            }*/ 
        .error-message {
            color: red;
            font-size: 80%;
            margin-top: 5px;
            margin-bottom: 10px;
        }

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
            /*width: 125px !important*/
        }
    </style>
    <!--section-row start-->
    <section class="section-row">
        <div class="container" id="multiStepForm">
            <div class="page-head">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <div id="breadcrumb" class="push-left" role="navigation" aria-label="breadcrumb">
                            <ul class="breadcrumbs">
                                <li>
                                    <a href="index.aspx" class="home"><span>Home</span></a>
                                </li>
                                <li>
                                    <a href="institutes.aspx">Institutes</a>
                                </li>
                                <li>
                                    <a href="instReg.aspx">Registration</a>
                                </li>
                                <li>
                                    <span>Premetric</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content" style="padding-left: 15%; padding-right: 15%; font-size: 16px; border: 1px solid white; border-radius: 10px; box-shadow: 0 0 10px rgb(0 0 0 / 15%); padding: 20px 46px 60px;">
                <!-- Step 1 -->
                <div class="step active" id="step1">
                    <center>
                        <h2 class="bgtheme" style="color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Institute's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label class="mb-0">कृपया स्थान का प्रकार चुनें : <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList ID="type" runat="server" RepeatColumns="2" required="">
                                <asp:ListItem Selected="True">Rural &nbsp;</asp:ListItem>
                                <asp:ListItem>Urban</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-field1"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>कृपया जिला चुनें :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-sm-7">
                            <asp:DropDownList CssClass="form-control" ID="dist" runat="server" required="">
                                <asp:ListItem Value="">----Select District-----</asp:ListItem>
                                <asp:ListItem Value="1">Dist 1</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field2"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>
                                कृपया
            <asp:Label runat="server" Text="ब्लॉक"></asp:Label>
                                चुनें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:DropDownList CssClass="dropdown form-control" ID="town_block" ClientIDMode="Static" runat="server" required="">
                                <asp:ListItem Value="">--SELECT--</asp:ListItem>
                                <asp:ListItem Value="1">Town1</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field3"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>कृपया संस्था  का नाम लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" CssClass="form-control" ID="instName" required=""></asp:TextBox>
                            <div class="error-message" id="error-field4"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>अल्पसंख्यक संस्था ?:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList runat="server" ID="Min" RepeatColumns="2" required="">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem Selected="True">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-field5"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>प्रबंधन प्रकार:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList runat="server" ID="Mgmt" RepeatColumns="3" required="">
                                <asp:ListItem Selected="True">Govt.&nbsp;</asp:ListItem>
                                <asp:ListItem>Govt. Aided&nbsp;</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-field6"></div>
                        </div>
                    </div>
                </div>

                <!-- Step 2 -->
                <div class="step" id="step2">
                    <center>
                        <h2 class="bgtheme" style="color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Principal's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>नाम :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ID="prncplName" ClientIDMode="Static" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field7"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>मोबाईल नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ID="prncplMob" ClientIDMode="Static" TextMode="Number" oninput="limitNumberLength(this,10)" MaxLength="10" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field8"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>वैकल्पिक मोबाइल नंबर:</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ID="prncplAltMob" ClientIDMode="Static" TextMode="Number" oninput="limitNumberLength(this,10)" MaxLength="10" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-field9"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>ईमेल आईडी <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ID="prncplemail" ClientIDMode="Static" TextMode="Email" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field10"></div>
                        </div>
                    </div>
                </div>

                <!-- Step 3 -->
                <div class="step" id="step3">
                    <center>
                        <h2 class="bgtheme" style="color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Affiliation 's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>कक्षा से:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList runat="server" ClientIDMode="Static" ID="clsFrom" CssClass="dropdown form-control" required="">
                                <asp:ListItem Selected="True" Value="">Select</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field11"></div>
                        </div>
                        <div class="col-md-1">
                            <label>तक:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList runat="server" ClientIDMode="Static" ID="clsTo" CssClass="form-control dropdown" required="">
                                <asp:ListItem Selected="True" Value="">Select</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field12"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>के साथ संबद्ध:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:DropDownList ClientIDMode="Static" runat="server" ID="board" CssClass="dropdown form-control" required="">
                                <asp:ListItem Selected="True" Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Madhyamik Shiksha Parishad UP BOARD</asp:ListItem>
                                <asp:ListItem Value="2">CBSE</asp:ListItem>
                                <asp:ListItem Value="3">ICSE</asp:ListItem>
                                <asp:ListItem Value="4">Other</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field13"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>संबद्धता की तिथि:<span style="color: red;">*</span><span class="text-muted">(dd-mm-yyyy)</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="affDate" TextMode="Date" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field14"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>संबद्धता का विवरण:<span style="color: red;">*</span><span class="text-muted">(पत्र संख्या, संबद्धता का वर्ष और पत्र कब तक वैध है)</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="affDetail" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field15"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>U-Dise कोड:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="UDiseCode" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field16"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>केप्च भरें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox runat="server" ClientIDMode="Static" MaxLength="5" ID="captcha" required="" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-field17"></div>
                        </div>
                        <div class="col-md-3">
                            <img id="Captcha" class="img-thumbnail" src="captcha.ashx" />
                            <img onclick="rcaptcha();" class="img-thumbnail" src="https://scholarship.up.gov.in/image/refresh.png" style="height: 40px; width: 40px;" />
                        </div>
                        <div class="col-md-2">
                            <button type="button" class="next-step btn btn-success" onclick="validateAllSteps();" style="border-radius: 5px;">Submit</button>
                            <button type="submit" id="submit" style="display: none;">Hello</button>
                            <asp:Button ID="submitMain" runat="server" OnClick="submitMain_Click" Style="display: none;" />
                        </div>
                    </div>
                </div>
                <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script>
            function validateField(value, errorSelector, errorMessage, validationType) {
                var isValid = true;
                var forbiddenSubstrings = ["@", "select", ";", "--", "-", "/", "insert", "www", "delete", "xp_", "#", "%", "&", "'", "<", ">", "[", "]", "?", "$", "|", "+", "_", "*", ":", "~", "`", "=", "!", "^", ",", "\\", "(", ")"];

                switch (validationType) {
                    case 'required':
                        isValid = value.trim() !== "" && !forbiddenSubstrings.some(substring => value.toLowerCase().includes(substring));
                        break;
                    case 'date':
                        if (value === "") {
                            isValid = false;
                            errorMessage = 'This field is required.';
                        } else {
                            // Assuming the date format is 'yyyy-MM-dd'
                            var enteredDate = new Date(value);
                            var currentDate = new Date();
                            if (enteredDate > currentDate) {
                                isValid = false;
                                errorMessage = 'Date cannot be greater than today.';
                            }
                        }
                        break;
                    case 'details':
                        var specialCharactersAllowed = [".", ",", "/", "-", "(", ")"];
                        isValid = value.trim() !== "" && specialCharactersAllowed.some(char => value.includes(char));
                        errorMessage = 'Please give affiliation details. Special characters allowed (., /, -, (, ))';
                        break;
                    case 'email':
                        isValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
                        break;
                    case 'mobile':
                        var mobileRegex = /^[6789][0-9]{9}$/;
                        isValid = mobileRegex.test(value);
                        break;
                }

                if (!isValid) {
                    $(errorSelector).text(errorMessage);
                } else {
                    $(errorSelector).text('');
                }
                return isValid;
            }
            function validateAllSteps() {
                var isValid = true;

                // Validate all fields without breaking into steps
                isValid = validateField($("#ContentPlaceHolder1_dist").val(), '#error-field2', 'This field is required.', 'required') &&
                    validateField($("#town_block").val(), '#error-field3', 'This field is required.', 'required') &&
                    validateField($("#ContentPlaceHolder1_instName").val().trim(), '#error-field4', 'Please give valid name and also do not use special characters except [dot].', 'required') &&
                    validateField($("#prncplName").val().trim(), '#error-field7', 'Please give valid name and also do not use special characters.', 'required') &&
                    validateField($("#prncplMob").val().trim(), '#error-field8', 'Enter a valid 10-digit mobile number.', 'mobile') &&
                    validateField($("#prncplAltMob").val().trim(), '#error-field9', 'Enter a valid 10-digit mobile number.', 'mobile') &&
                    validateField($("#prncplemail").val().trim(), '#error-field10', 'Enter a valid email address.', 'email') &&
                    validateField($("#clsFrom").val(), '#error-field11', 'This field is required.', 'required') &&
                    validateField($("#clsTo").val(), '#error-field12', 'This field is required.', 'required') &&
                    validateField($("#board").val(), '#error-field13', 'This field is required.', 'required') &&
                    validateField($("#affDate").val().trim(), '#error-field14', 'This field is required.', 'date') &&
                    validateField($("#affDetail").val().trim(), '#error-field15', 'This field is required.', 'details') &&
                    validateField($("#UDiseCode").val().trim(), '#error-field16', 'This field is required.', 'required') &&
                    validateField($("#captcha").val().trim(), '#error-field17', 'This field is required.', 'required');

                var clsFromValue = parseInt($("#clsFrom").val(), 10);
                var clsToValue = parseInt($("#clsTo").val(), 10);
                if (clsFromValue >= clsToValue) {
                    $('#error-field11').text('Class from should be less than class to.');
                    $('#error-field12').text('Class to should be greater than class from.');
                    isValid = false;
                }

                if (isValid) {
                    $('#<%= submitMain.ClientID %>').click(); // Assuming submitMain is the ID of your submit button
                }
            }
            function limitNumberLength(input, maxLength) {
                if (input.value.length > maxLength) {
                    input.value = input.value.slice(0, maxLength);
                }
            }
        </script>

    </section>
</asp:Content>
