<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="InstituteAddInterNew.aspx.cs" Inherits="InstituteAddInterNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        /*.step {
            display: none;
        }

            .step.active {
                display: block;
            }*/

        .error-message {
            color: red;
            font-size: 80%;
            margin-top: 5px;
            margin-bottom: 10px;
        }

        #form-indicator {
            margin-bottom: 20px;
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
            width: 130px !important;
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
                                    <span>Postmetric</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content" style="padding-left: 15%; padding-right: 15%; font-size: 16px; border: 1px solid white; border-radius: 10px; box-shadow: 0 0 10px rgb(0 0 0 / 15%); padding: 20px 46px 60px;">
                <div id="form-indicator" style="background: aliceblue; width: fit-content; padding: 5px 13px; border-radius: 10px;">
                    <h5 style="display: inline"></h5>
                </div>
                <!-- Step 1 -->
                <div class="step active" id="step1">
                    <center>
                        <h2 style="background: #062F4F; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Institute's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>कृपया जिला चुनें :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList CssClass="form-control" ID="dist" runat="server" required="">
                                <asp:ListItem Value="">----Select District-----</asp:ListItem>
                                <asp:ListItem Value="1">Dist 1</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field2"></div>
                        </div>
                        <div class="col-md-2">
                            <label class="mb-0">कृपया स्थान का प्रकार चुनें : <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:RadioButtonList ID="type" runat="server" RepeatColumns="2" required="">
                                <asp:ListItem Selected="True">Rural &nbsp;</asp:ListItem>
                                <asp:ListItem>Urban</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-field1"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>कृपया
                                <asp:Label runat="server" Text="ब्लॉक"></asp:Label>
                                चुनें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList CssClass="dropdown form-control" ID="town_block" ClientIDMode="Static" runat="server" required="">
                                <asp:ListItem Value="">--SELECT--</asp:ListItem>
                                <asp:ListItem Value="1">Town1</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-field3"></div>
                        </div>
                        <div class="col-md-2" style="text-align: left;">
                            <label>संस्था  का प्रकार:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox CssClass="dropdown form-control" ID="instType" ClientIDMode="Static" runat="server" Text="Intermediate" ReadOnly="true" required=""></asp:TextBox>
                            <div class="error-message" id="error-instType"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>कृपया संस्था  का नाम लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" CssClass="form-control" ID="instName" required=""></asp:TextBox>
                            <div class="error-message" id="error-field4"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>अल्पसंख्यक संस्था ?:<span style="color: red;">*</span></label>
                        </div>
                        <%--<div class="col-md-4" style="border:1px solid #ccc; border-radius:8px;">--%>
                        <div class="col-md-4">
                            <asp:RadioButtonList runat="server" ID="Min" RepeatColumns="2" required="">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem Selected="True">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-field5"></div>
                        </div>
                        <div class="col-md-2">
                            <label>प्रबंधन प्रकार:<span style="color: red;">*</span></label>
                        </div>
                        <%--<div class="col-md-4" style="border:1px solid #ccc; border-radius:8px;">--%>
                        <div class="col-md-4">
                            <asp:RadioButtonList runat="server" ID="Mgmt" RepeatColumns="3" required="">
                                <asp:ListItem Selected="True">Govt.&nbsp;</asp:ListItem>
                                <asp:ListItem>Govt. Aided&nbsp;</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-field6"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>कृपया संस्था  का पता लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="instAdd" required=""></asp:TextBox>
                            <div class="error-message" id="error-instAdd"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>एसटीडी कोड के साथ फ़ोन नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" CssClass="form-control" TextMode="Number" ClientIDMode="Static" ID="instPhone" required="" oninput="limitNumberLength(this, 10)"></asp:TextBox>
                            <div class="error-message" id="error-instPhone"></div>
                        </div>
                        <div class="col-md-2">
                            <label>ईमेल आईडी:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="instEmail" required=""></asp:TextBox>
                            <div class="error-message" id="error-instEmail"></div>
                        </div>
                    </div>
                    <%--<button type="button" class="btn btn-primary next-step pull-right" style="border-radius: 5px;">Next</button>--%>
                </div>

                <!-- Step 2 -->
                <div class="step" id="step2">
                    <center>
                        <h2 style="background: #062F4F; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Principal's Details:</h2>
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
                            <asp:TextBox runat="server" oninput="limitNumberLength(this, 10)" ID="prncplMob" ClientIDMode="Static" TextMode="Number" MaxLength="10" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field8"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>एसटीडी कोड के साथ फ़ोन नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ID="prncplAltMob" oninput="limitNumberLength(this, 10)" ClientIDMode="Static" TextMode="Number" required="" MaxLength="10" CssClass="form-control"></asp:TextBox>
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
<%--                    <button type="button" class="btn btn-secondary prev-step pull-left" style="background: #0dcaf0; color: white; border-radius: 5px;">Previous</button>
                    <button type="button" class="btn btn-primary next-step pull-right" style="border-radius: 5px;">Next</button>--%>
                </div>

                <!-- Step 3 -->
                <div class="step" id="step3">
                    <center>
                        <h2 style="background: #062F4F; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Nodal Officer's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>नाम :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="nOfficerName" ClientIDMode="Static" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-nOfficerName"></div>
                        </div>
                        <div class="col-md-2">
                            <label>पद :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="nOfficerDesignation" ClientIDMode="Static" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-nOfficerDesignation"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3">
                            <label>ईमेल आईडी <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="nOfficeremail" ClientIDMode="Static" TextMode="Email" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-nOfficeremail"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3">
                            <label>मोबाईल नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="nOfficerMob" oninput="limitNumberLength(this, 10)" ClientIDMode="Static" TextMode="Number" MaxLength="10" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-nOfficerMob"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3">
                            <label>एसटीडी कोड के साथ फ़ोन नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="nOfficerAltMob" ClientIDMode="Static" oninput="limitNumberLength(this, 10)" TextMode="Number" required="" MaxLength="10" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-nOfficerAltMob"></div>
                        </div>
                    </div>
                    <%--<button type="button" class="btn btn-secondary prev-step pull-left" style="background: #0dcaf0; color: white; border-radius: 5px;">Previous</button>
                    <button type="button" class="btn btn-primary next-step pull-right" style="border-radius: 5px;">Next</button>--%>
                </div>

                <!-- Step 4 -->
                <div class="step" id="step4">
                    <center>
                        <h2 style="background: #062F4F; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Affiliation 's Details:</h2>
                    </center>

                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>U-Dise कोड:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="UDiseCode" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field16"></div>
                        </div>
                        <div class="col-md-2">
                            <label>संबद्धता की तिथि:<span style="color: red;">*</span><span class="text-muted">(dd-mm-yyyy)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="affDate" TextMode="Date" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-affDate"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>संबद्धता पत्र क्रमांक:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="affLetterNo" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-affLetterNo"></div>
                        </div>
                        <div class="col-md-2">
                            <label>संबद्धता प्रकार:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList runat="server" ClientIDMode="Static" ID="DropDownList1" CssClass="form-control" required="">
                                <asp:ListItem>स्थायी</asp:ListItem>
                                <asp:ListItem>अस्थायी</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-affType"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>संबद्धता की वैधता:<span style="color: red;">*</span><span class="text-muted">(dd-mm-yyyy)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" TextMode="Date" ClientIDMode="Static" ID="affValid" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-affValid"></div>
                        </div>
                        <div class="col-md-2">
                            <label>संबद्धता पत्र अपलोड करें:<span style="color: red;">*</span><span class="text-muted" style="font-size: 12px;">(पीडीएफ में)(फाइल का साइज़ 500kb से कम होना चाहिए)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:FileUpload runat="server" ID="FileUpload1"  ClientIDMode="Static"/>
                            <div class="error-message" id="error-affLetter"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
                            <label>इंटरमीडिएट सीटों का विवरण:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-12">&nbsp;</div>
                        <div class="col-md-3">
                            <label>कक्षा</label></div>
                        <div class="col-md-3">
                            <label>कला वर्ग</label></div>
                        <div class="col-md-3">
                            <label>विज्ञान वर्ग</label></div>
                        <div class="col-md-3">
                            <label>कॉमर्स वर्ग</label></div>
                        <div class="col-md-12">&nbsp;</div>
                        <div class="col-md-3">
                            <label>कक्षा-11:<span style="color: red;">*</span></label></div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="seat11Art" ClientCssClass="form-control" ClientIDMode="Static"></asp:TextBox>                            
                            <div class="error-message" id="error-seat11Art"></div>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="seat11Sci" ClientCssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                            <div class="error-message" id="error-seat11Sci"></div>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="seat11Com" ClientCssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                            <div class="error-message" id="error-seat11Com"></div>
                        </div>
                        <div class="col-sm-12">&nbsp;</div>
                        <div class="col-md-3">
                            <label>कक्षा-12:<span style="color: red;">*</span></label></div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="seat12Art" ClientCssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                            <div class="error-message" id="error-seat12Art"></div>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="seat12Sci" ClientCssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                            <div class="error-message" id="error-seat12Sci"></div>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="seat12Com" ClientCssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                            <div class="error-message" id="error-seat12Com"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3">
                            <label>केप्च भरें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="captcha" required="" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-field17"></div>
                        </div>
                        <div class="col-md-3 form-inline">
                            <img id="Captcha" class="img-thumbnail" src="captcha.ashx" style="width: 135px; float: left;" />
                            <img onclick="rcaptcha();" class="img-thumbnail" src="https://scholarship.up.gov.in/image/refresh.png" style="height: 40px; width: 40px;position: absolute;right: 32px;" />
                        </div>

                        <div class="col-md-3" style="padding: 0px; margin: 0px;">
                            <center>
                                <button type="button" class="next-step btn-md btn-success" style="border-radius: 5px;">Submit</button>
                                <button type="submit" id="submit" style="display: none;">Hello</button>
                                <asp:Button ID="submitMain2" runat="server" OnClick="submitMain2_Click" Style="display: none;" />
                            </center>
                        </div>
                    </div>
                </div>
                <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<%--        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>--%>
        <script>
            $(document).ready(function () {
                //var currentStep = 1;
                // Function to show the current step and hide others
                function showStep(step) {
                    if (step < 5) {
                        $('.step').removeClass('active');
                        $('#step' + step).addClass('active');
                        updateFormIndicator(step);
                    }
                }

                // Function to update the form indicator
                function updateFormIndicator(step) {
                    $('#form-indicator h5').text('Step ' + step + ' of 4 to Register New Postmatric Institute');
                }
                // Function to validate the field
                function validateField(value, errorSelector, errorMessage, validationType) {
                    var isValid = true;
                    var forbiddenSubstrings = ["@", "select", ";", "--", "-", "/", "insert", "www", "delete", "xp_", "#", "%", "&", "'", "<", ">", "[", "]", "?", "$", "|", "+", "_", "*", ":", "~", "`", "=", "!", "^", ",", "\\", "(", ")"];
                    switch (validationType) {
                        case 'required':
                            var name = value.toLowerCase();
                            if (forbiddenSubstrings.some(substring => name.includes(substring))) {
                                isValid = false;
                            }
                            isValid = isValid && (value !== "");
                            break;
                        case 'date':
                            if (value === "") {
                                isValid = false;
                                errorMessage = 'This field is required.';
                            } else {
                                // Assuming the date format is 'yyyy-MM-dd'
                                var dateComponents = value.split('-');
                                var enteredDate = new Date(
                                    parseInt(dateComponents[0], 10),
                                    parseInt(dateComponents[1], 10) - 1,  // Months are zero-based
                                    parseInt(dateComponents[2], 10)
                                );
                                var currentDate = new Date();
                                if (enteredDate > currentDate) {
                                    isValid = false;
                                    errorMessage = 'Date cannot be greater than today.';
                                }
                            }
                            break;
                        case 'datePrev':
                            if (value === "") {
                                isValid = false;
                                errorMessage = 'This field is required.';
                            } else {
                                // Assuming the date format is 'yyyy-MM-dd'
                                var dateComponents = value.split('-');
                                var enteredDate = new Date(
                                    parseInt(dateComponents[0], 10),
                                    parseInt(dateComponents[1], 10) - 1,  // Months are zero-based
                                    parseInt(dateComponents[2], 10)
                                );
                                var currentDate = new Date();

                                if (enteredDate < currentDate) {
                                    isValid = false;
                                    errorMessage = 'Date cannot be less than today.';
                                }
                            }
                            break;
                        case 'details':
                            var name = value.toLowerCase();
                            var forbiddenSubstrings = ["@", "select", ";", "--", "insert", "www", "delete", "xp_", "#", "%", "&", "'", "<", ">", "[", "]", "?", "$", "|", "+", "_", "*", "~", "`", "=", "!", "^", "\\"];
                            if (forbiddenSubstrings.some(substring => name.includes(substring))) {
                                isValid = false;
                                errorMessage = 'Please Give Affiliation Details. Special Characters allowed(".",",","/","-","(", ")")';
                            }
                            isValid = isValid && (value !== "");
                            break;
                        case 'email':
                            // Regular expression for a simple email validation
                            isValid = isValid && /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
                            errorMessage = 'Please giva a valid email address !!';
                            break;
                        case 'mobile':
                            // Regular expression for a 10-digit Indian mobile number
                            var mobileRegex = /[6789][0-9]{9}/;
                            isValid = isValid && mobileRegex.test(value);
                            errorMessage = 'Please give a valid mobile number!!';
                            break;
                        case 'seat':
                            var enteredNumber = parseInt(value, 10);
                            // Check if enteredNumber is a valid integer and within the range [0, 120]
                            isValid = !isNaN(enteredNumber) && enteredNumber >= 0 && enteredNumber <= 120;
                            errorMessage = 'Please enter a valid number between 0 and 120.';
                            break;
                        case 'file':
                            if (value === "") {
                                isValid = false;
                                errorMessage = 'File upload is required.';
                            } else {
                                var file = value.files[0];
                                if (file) {
                                    // Check file type and size
                                    if (file.type !== 'application/pdf') {
                                        isValid = false;
                                        errorMessage = 'Please upload a PDF file.';
                                    }
                                    if (file.size > 500 * 1024) { // 500 KB
                                        isValid = false;
                                        errorMessage = 'File size exceeds 500 KB.';
                                    }
                                } else {
                                    isValid = false;
                                    errorMessage = 'Affilation letter must be uploaded!!';
                                }
                            }
                            break;
                    }

                    if (!isValid) {
                        $(errorSelector).text(errorMessage);
                    } else {
                        $(errorSelector).text('');
                    }

                    return isValid;
                }

                function validateStep(step) {
                    var isValid = true;

                    // Validate fields specific to the current step
                    if (step === 1) {
                        isValid &= validateField($("#ContentPlaceHolder1_dist").val(), '#error-field2', 'This field is required.', 'required');
                        isValid &= validateField($("#town_block").val(), '#error-field3', 'This field is required.', 'required');
                        isValid &= validateField($("#ContentPlaceHolder1_instName").val().trim(), '#error-field4', 'Please give valid name and also do not use special characters except [dot].', 'required');
                        isValid &= validateField($("#instAdd").val().trim(), '#error-instAdd', 'Please give a valid address', 'details');
                        isValid &= validateField($("#instPhone").val().trim(), '#error-instPhone', 'Enter a valid 10-digit mobile number.', 'mobile');
                        isValid &= validateField($("#instEmail").val().trim(), '#error-instEmail', 'Please give a valid email address', 'email');
                    } else if (step === 2) {
                        isValid &= validateField($("#prncplName").val().trim(), '#error-field7', 'Please give valid name and also do not use special characters.', 'required');
                        isValid &= validateField($("#prncplMob").val().trim(), '#error-field8', 'Enter a valid 10-digit mobile number.', 'mobile');
                        isValid &= validateField($("#prncplAltMob").val().trim(), '#error-field9', 'Enter a valid 10-digit mobile number.', 'mobile');
                        isValid &= validateField($("#prncplemail").val().trim(), '#error-field10', 'Enter a valid email address.', 'email');
                    } else if (step === 3) {
                        isValid &= validateField($("#nOfficerName").val(), '#error-nOfficerName', 'This field is required.', 'required');
                        isValid &= validateField($("#nOfficerDesignation").val(), '#error-nOfficerDesignation', 'This field is required.', 'required');
                        isValid &= validateField($("#nOfficeremail").val(), '#error-nOfficeremail', 'This field is required.', 'email');
                        isValid &= validateField($("#nOfficerMob").val(), '#error-nOfficerMob', 'Enter a valid 10-digit mobile number.', 'mobile');
                        isValid &= validateField($("#nOfficerAltMob").val().trim(), '#error-nOfficerAltMob', 'Enter a valid 10-digit mobile number..', 'mobile');
                    } else if (step === 4) {
                        isValid &= validateField($("#UDiseCode").val().trim(), '#error-field16', 'This field is required.', 'required');
                        isValid &= validateField($("#affDate").val().trim(), '#error-affDate', 'This field is required.', 'date');
                        isValid &= validateField($("#affLetterNo").val(), '#error-affLetterNo', 'This field is required.', 'details');
                        isValid &= validateField($("#affValid").val(), '#error-affValid', 'This field is required.', 'datePrev');
                        isValid &= validateField(document.getElementById('FileUpload1'), '#error-affLetter', 'File upload is required.', 'file');
                        isValid &= validateField($("#seat11Art").val(), '#error-seat11Art', 'This field is required.', 'seat');
                        isValid &= validateField($("#seat11Sci").val(), '#error-seat11Sci', 'This field is required.', 'seat');
                        isValid &= validateField($("#seat11Com").val(), '#error-seat11Com', 'This field is required.', 'seat');
                        isValid &= validateField($("#seat12Art").val(), '#error-seat12Art', 'This field is required.', 'seat');
                        isValid &= validateField($("#seat12Sci").val(), '#error-seat12Sci', 'This field is required.', 'seat');
                        isValid &= validateField($("#seat12Com").val(), '#error-seat12Com', 'This field is required.', 'seat');
                        isValid &= validateField($("#captcha").val().trim(), '#error-field17', 'This field is required.', 'required');
                    }
                    return isValid;
                }

                // Next button click event
                $('.next-step').on('click', function () {
                    validateAllSteps();
                    //for (var currentStep = 1; currentStep < 5; currentStep++) {
                    //    if (validateStep(currentStep)) {
                    //        currentStep++;
                    //        if (currentStep < 5) {
                    //            showStep(currentStep);
                    //        } else {
                    //            validateAllSteps();
                    //        }
                    //    }
                    //}
                });

                // Previous button click event
                $('.prev-step').on('click', function () {
                    currentStep--;
                    showStep(currentStep);
                });

                // Prevent form submission on enter key
                $('#multiStepForm').on('keypress', function (e) {
                    if (e.which === 13) {
                        e.preventDefault();
                        return false;
                    }
                });

                // Initialize form indicator
                updateFormIndicator(currentStep);

                function validateAllSteps() {
                    var isValid = true;

                    // Validate each step
                    for (var step = 1; step <= 4; step++) {
                        if (!validateStep(step)) {
                            isValid = false;
                        }
                    }

                    // If all steps are valid, trigger the submission
                    if (isValid) {
                        document.getElementById('<%= submitMain2.ClientID %>').click();
                    }
                }


<%--                function validateAllSteps() {
                    var isValid = true;

                    // Validate fields specific to each step
                    if (!validateStep(1)) {
                        isValid = false;
                        showStep(1);  // Show the first step with errors
                    }
                    if (!validateStep(2)) {
                        isValid = false;
                        showStep(2);  // Show the second step with errors
                    }
                    if (!validateStep(3)) {
                        isValid = false;
                        showStep(3);  // Show the third step with errors
                    }
                    if (!validateStep(4)) {
                        isValid = false;
                        showStep(4);  // Show the fourth step with errors
                    }
                    if (isValid) {
                        document.getElementById('<%= submitMain2.ClientID %>').click();
                    }
                }--%>
            });
            function limitNumberLength(input, maxLength) {
                if (input.value.length > maxLength) {
                    input.value = input.value.slice(0, maxLength);
                }
            }
        </script>
    </section>
    <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
</asp:Content>
