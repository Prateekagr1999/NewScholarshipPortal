<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="InstituteAddPreNew-retired.aspx.cs" Inherits="InstituteAddPreNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        .step {
            display: none;
        }

            .step.active {
                display: block;
            }

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
            width: 138px !important
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
                <div id="form-indicator" style="background: aliceblue; width: fit-content; padding: 5px 13px; border-radius: 10px;">
                    <h5 style="display:inline;"></h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- Form Indicator -->                       
                    <h6 style="display:inline; text-decoration:underline;">Go to step: </h6><button class="btn" id="btn1" style="border:1px solid black;" disabled>1</button><button class="btn" id="btn2" style="border:1px solid black;" disabled>2</button><button class="btn" id="btn3" style="border:1px solid black;" disabled>3</button>
                </div>
                <!-- Step 1 -->
                <div class="step active" id="step1">
                    <center>
                        <h2 style="background: #589DBF; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Institute's Details:</h2>
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
                            <label>कृपया विद्यालय का नाम लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" CssClass="form-control" ID="instName" required=""></asp:TextBox>
                            <div class="error-message" id="error-field4"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>अल्पसंख्यक विद्यालय?:<span style="color: red;">*</span></label>
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
                    <button type="button" class="btn btn-primary next-step pull-right" style="border-radius: 5px;">Next</button>
                </div>

                <!-- Step 2 -->
                <div class="step" id="step2">
                    <center>
                        <h2 style="background: #589DBF; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Principal's Details:</h2>
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
                            <asp:TextBox runat="server" ID="prncplMob" ClientIDMode="Static" TextMode="Number" MaxLength="10" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field8"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>वैकल्पिक मोबाइल नंबर:</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" ID="prncplAltMob" ClientIDMode="Static" TextMode="Number" required="" MaxLength="10" CssClass="form-control"></asp:TextBox>
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
                    <button type="button" class="btn btn-secondary prev-step pull-left" style="background: #0dcaf0; color: white; border-radius: 5px;">Previous</button>
                    <button type="button" class="btn btn-primary next-step pull-right" style="border-radius: 5px;">Next</button>
                </div>

                <!-- Step 3 -->
                <div class="step" id="step3">
                    <center>
                        <h2 style="background: #589DBF; color:white; border-radius: 10px; padding: 5px 0px 5px 0px;">Affiliation 's Details:</h2>
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
                        <div class="col-md-3">
                            <asp:TextBox runat="server" ClientIDMode="Static" MaxLength="5" ID="captcha" required="" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-field17"></div>
                        </div>
                        <div class="col-md-2">
                            <img id="Captcha" class="img-responsive img-thumbnail" src="captcha.ashx"  style="height:35px; width:35px;"/>
                        </div>
                        <div class="col-md-1" style="padding: 0px; margin: 0px;">
                            <img onclick="rcaptcha();" class="img-responsive img-thumbnail" src="https://scholarship.up.gov.in/image/refresh.png" style="height:35px; width:35px;" />
                        </div>
                    </div>
                    <button type="button" class="btn btn-secondary prev-step pull-left" style="background: #0dcaf0; color: white; border-radius: 5px;">Previous</button>
                    <button type="button" class="next-step btn btn-success pull-right" style="border-radius: 5px;">Submit</button>
                    <button type="submit" id="submit" style="display: none;">Hello</button>
                    <asp:Button ID="submitMain" runat="server" OnClick="submitMain_Click" Style="display: none;" />
                </div>
                <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {

                function enablePreviousButtons() {
                    for (var i = 1; i < currentStep; i++) {
                        $('#btn' + i).prop('disabled', false);
                    }
                }

                var currentStep = 1;
                // Function to show the current step and hide others
                function showStep(step) {
                    if (step <= 3 && step >= 1) {
                        $('.step').removeClass('active');
                        $('#step' + step).addClass('active');
                        updateFormIndicator(step);
                        currentStep = step;
                        enablePreviousButtons();
                    }
                }

                // Function to update the form indicator
                function updateFormIndicator(step) {
                    $('#form-indicator h5').text('Step ' + step + ' of 3 to Register New Prematric Institute');
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
                            break;
                        case 'mobile':
                            // Regular expression for a 10-digit Indian mobile number
                            var mobileRegex = /^[6789][0-9]{9}$/;
                            isValid = isValid && mobileRegex.test(value);
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
                    } else if (step === 2) {
                        isValid &= validateField($("#prncplName").val().trim(), '#error-field7', 'Please give valid name and also do not use special characters.', 'required');
                        isValid &= validateField($("#prncplMob").val().trim(), '#error-field8', 'Enter a valid 10-digit mobile number.', 'mobile');
                        isValid &= validateField($("#prncplAltMob").val().trim(), '#error-field9', 'Enter a valid 10-digit mobile number.', 'mobile');
                        isValid &= validateField($("#prncplemail").val().trim(), '#error-field10', 'Enter a valid email address.', 'email');
                    } else if (step === 3) {
                        isValid &= validateField($("#clsFrom").val(), '#error-field11', 'This field is required.', 'required');
                        isValid &= validateField($("#clsTo").val(), '#error-field12', 'This field is required.', 'required');
                        isValid &= validateField($("#board").val(), '#error-field13', 'This field is required.', 'required');
                        isValid &= validateField($("#affDate").val().trim(), '#error-field14', 'This field is required.', 'date');
                        isValid &= validateField($("#affDetail").val().trim(), '#error-field15', 'This field is required.', 'details');
                        isValid &= validateField($("#UDiseCode").val().trim(), '#error-field16', 'This field is required.', 'required');
                        isValid &= validateField($("#captcha").val().trim(), '#error-field17', 'This field is required.', 'required');
                        var clsFromValue = parseInt($("#clsFrom").val(), 10);
                        var clsToValue = parseInt($("#clsTo").val(), 10);
                        if (clsFromValue >= clsToValue) {
                            $('#error-field11').text('Class from should be less than class to.');
                            $('#error-field12').text('Class to should be greater than class from.');
                            isValid = false;
                        }
                    }
                    return isValid;
                }

                // Next button click event
                $('.next-step').on('click', function () {
                    if (validateStep(currentStep)) {
                        currentStep++;
                        if (currentStep < 4) {
                            showStep(currentStep);
                        } else {
                            validateAllSteps();
                        }
                    }
                });

                // Previous button click event
                $('.prev-step').on('click', function () {
                    currentStep--;
                    showStep(currentStep);
                });

                // Button click event for btn1, btn2, and btn3
                $('#btn1').on('click', function () {
                    showStep(1);
                });

                $('#btn2').on('click', function () {
                    showStep(2);
                });

                $('#btn3').on('click', function () {
                    showStep(3);
                });

                // Initialize form indicator
                updateFormIndicator(currentStep);

                function validateAllSteps() {
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
                    if (isValid) {
                        document.getElementById('<%= submitMain.ClientID %>').click();
                    }
                }
            });
        </script>
    </section>
</asp:Content>