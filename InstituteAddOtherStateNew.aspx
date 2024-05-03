<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="InstituteAddOtherStateNew.aspx.cs" Inherits="InstituteAddOtherStateNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("InstituteMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        /* .step {
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
        }

            table#Mgmt.bt tfoot th,
            table#Mgmt.bt tfoot td,
            table#Mgmt.bt tbody td {
                border: none;
                display: inline-block;
            }

                table#Mgmt.bt tfoot th::before,
                table#Mgmt.bt tfoot td::before,
                table#Mgmt.bt tbody td::before {
                    content: unset;
                    display: inherit;
                    flex-shrink: unset;
                }
    </style>
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
                                    <a href="institutes.aspx">Institutes</a>
                                </li>
                                <li>
                                    <a href="instReg.aspx">Registration</a>
                                </li>
                                <li>
                                    <span>Postmetric Otherthan Inter (Other State)</span>
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
                        <h2 style="background: #062F4F; color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Institute's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>कृपया राज्य चुनें :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList CssClass="form-control" ID="stt" ClientIDMode="Static" runat="server" required="">
                                <asp:ListItem Value="">Select State</asp:ListItem>
                                <asp:ListItem Value="1">State 1</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-state"></div>
                        </div>
                        <div class="col-md-2">
                            <label>कृपया जिला चुनें :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-sm-4">
                            <asp:DropDownList CssClass="form-control" ID="dist" ClientIDMode="Static" runat="server" required="">
                                <asp:ListItem Value="">Select State</asp:ListItem>
                                <asp:ListItem Value="1">State 1</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtdistrict" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                            <div class="error-message" id="error-dist"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label class="mb-0">कृपया संस्था का प्रकार चुनें : <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList runat="server" ClientIDMode="Static" CssClass="form-control dropdown" ID="typeCollege">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Selected="True" Value="">Select</asp:ListItem>
                                <asp:ListItem Value="U">University</asp:ListItem>
                                <asp:ListItem Value="PG">PG College</asp:ListItem>
                                <asp:ListItem Value="G">Degree College</asp:ListItem>
                                <asp:ListItem Value="P">Polytechnic</asp:ListItem>
                                <asp:ListItem Value="T">I.T.I</asp:ListItem>
                                <asp:ListItem Value="I">Technical / Management Inst.</asp:ListItem>
                                <asp:ListItem Value="M">Medical / Paramedical Inst./ College</asp:ListItem>
                                <asp:ListItem Value="O">Other</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-typeCollege"></div>
                        </div>
                        <div class="col-md-2">
                            <label>कृपया संस्था का नाम लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" CssClass="form-control" ID="instName" required=""></asp:TextBox>
                            <div class="error-message" id="error-instName"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>प्रबंधन प्रकार:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4" style="padding-bottom:10px;">
                            <asp:RadioButtonList CssClass="form-control" ClientIDMode="Static" runat="server" ID="Mgmt" RepeatColumns="3" required="" BorderStyle="None">
                                <asp:ListItem Selected="True">Govt.&nbsp;</asp:ListItem>
                                <asp:ListItem>Govt. Aided&nbsp;</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                            </asp:RadioButtonList>
                            <div class="error-message" id="error-Mgmt"></div>
                        </div>
                        <div class="col-md-2">
                            <label>कृपया संस्था का पता लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="instAdd" required=""></asp:TextBox>
                            <div class="error-message" id="error-instAdd"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>एसटीडी कोड के साथ फ़ोन नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="instPhone" required="" oninput="limitNumberLength(this, 10)"></asp:TextBox>
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
                </div>

                <!-- Step 2 -->
                <div class="step" id="step2">
                    <center>
                        <h2 style="background: #062F4F; color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Principal's Details:</h2>
                    </center>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>नाम :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="prncplName" ClientIDMode="Static" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field7"></div>
                        </div>
                        <div class="col-md-2">
                            <label>पद :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="Pdesignation" ClientIDMode="Static" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-principalDesignation"></div>
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
                </div>

                <!-- Step 3 -->
                <div class="step" id="step3">
                    <center>
                        <h2 style="background: #062F4F; color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Nodal Officer's Details:</h2>
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
                    <%-- <button type="button" class="btn btn-secondary prev-step pull-left" style="background: #0dcaf0; color: white; border-radius: 5px;">Previous</button>
         <button type="button" class="btn btn-primary next-step pull-right" style="border-radius: 5px;">Next</button>--%>
                </div>

                <!-- Step 4 -->
                <div class="step" id="step4">
                    <center>
                        <h2 style="background: #062F4F; color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">Affiliation 's Details:</h2>
                    </center>

                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>संबद्धता विश्वसंस्था नाम :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="txt_AfflUnivercity" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-AfflUnivercity"></div>
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
                            <label>संबद्धता की वैधता:<span style="color: red;">*</span><span class="text-muted">(dd-mm-yyyy)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" TextMode="Date" ClientIDMode="Static" ID="affValid" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-affValid"></div>
                        </div>
                        <div class="col-md-2">
                            <label>संबद्धता पत्र क्रमांक:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="affLetterNo" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-affLetterNo"></div>
                        </div>
                    </div>
                    <div class="form-group row">

                        <div class="col-md-2">
                            <label>संबद्धता पत्र अपलोड करें:<span style="color: red;">*</span><span class="text-muted" style="font-size: 12px;">(पीडीएफ में)(फाइल का साइज़ 500kb से कम होना चाहिए)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:FileUpload runat="server" ID="affLetter" CssClass="form-control" ClientIDMode="Static" />
                            <div class="error-message" id="error-affLetter"></div>
                        </div>
                        <div class="col-md-2">
                            <label>AISHE कोड:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="AISHECode" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-field16"></div>
                        </div>
                    </div>
                    <%-- <button type="button" class="btn btn-secondary prev-step pull-left" style="background: #0dcaf0; color: white; border-radius: 5px;">Previous</button>
         <button type="button" class="next-step btn btn-primary pull-right" style="border-radius: 5px;">Next</button>--%>
                </div>

                <!-- Step 5 -->
                <div class="step" id="step5">
                    <center>
                        <h2 style="background: #062F4F; color: white; border-radius: 10px; padding: 5px 0px 5px 0px;">NAAC/NBA Grading Details:</h2>
                    </center>

                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>क्या संबंधित विश्वसंस्था/शिक्षण संस्थान NAAC/NBA से ग्रेडिंग से आच्छादित है:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList runat="server" ID="NAAC" CssClass="form-control dropdown" ClientIDMode="Static">
                                <asp:ListItem Value="1" Selected="True">Yes</asp:ListItem>
                                <asp:ListItem Value="0">No</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-NAAC"></div>
                        </div>
                        <div class="col-md-2">
                            <label>NAAC / NBA चुनें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList runat="server" CssClass="form-control dropdown" ClientIDMode="Static" ID="naac_nba">
                                <asp:ListItem Selected="True">NAAC</asp:ListItem>
                                <asp:ListItem>NBA</asp:ListItem>
                            </asp:DropDownList>
                            <div class="error-message" id="error-naac_nba"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>ग्रेडिंग अंकित करें :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="NAAC_NBA_Grade" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-NAAC_NBA_Grade"></div>
                        </div>
                        <div class="col-md-2">
                            <label>NAAC/NBA ग्रेडिंग से सम्बंधित जारी पत्र / प्रमाण पत्र की संख्या::<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" ID="certNum" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-certNum"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>NAAC/NBA ग्रेडिंग से सम्बंधित जारी पत्र / प्रमाण पत्र दिनांक:<span style="color: red;">*</span><span class="text-muted">(dd-mm-yyyy)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" TextMode="Date" ClientIDMode="Static" ID="cert_date" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-cert_date"></div>
                        </div>
                        <div class="col-md-2">
                            <label>संबंधित विश्वसंस्था / शिक्षण संस्थान का NAAC / NBA से ग्रेडिंग से सम्बंधित जारी पत्र / प्रमाण पत्र के वैद्यता की अवधि :<span style="color: red;">*</span><span class="text-muted" style="font-size: 12px;">(अन्तिम तिथि) (dd/mm/yyyy) </span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox runat="server" TextMode="Date" ClientIDMode="Static" ID="cert_validity" CssClass="form-control" required=""></asp:TextBox>
                            <div class="error-message" id="error-cert_validity"></div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>NAAC/NBA ग्रेडिंग से सम्बंधित जारी पत्र / प्रमाण पत्र:<span style="color: red;">*</span><span class="text-muted" style="font-size: 12px;">(In pdf)(File Size should be less than 500kb)</span></label>
                        </div>
                        <div class="col-md-4">
                            <asp:FileUpload runat="server" ClientIDMode="Static" ID="certificate" CssClass="form-control" required=""></asp:FileUpload>
                            <div class="error-message" id="error-certificate"></div>
                        </div>
                        <div class="col-md-1">
                            <label>केप्च भरें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox runat="server" ClientIDMode="Static" ID="captcha" required="" CssClass="form-control"></asp:TextBox>
                            <div class="error-message" id="error-field17"></div>
                        </div>
                        <div class="col-md-2">
                            <img id="Captcha" class="img-responsive img-thumbnail" src="captcha.ashx" />
                        </div>
                        <div class="col-md-1" style="padding: 0px; margin: 0px;">
                            <img onclick="rcaptcha();" class="img-responsive" style="height: 35px; width: 35px;" src="https://scholarship.up.gov.in/image/refresh.png" />
                        </div>
                    </div>
                    <button type="button" class="next-step btn btn-success pull-right" style="border-radius: 5px;">Submit</button>
                    <button type="submit" id="submit" style="display: none;">Hello</button>
                    <asp:Button ID="submitMain2" runat="server" OnClick="submitMain2_Click" Style="display: none;" />
                </div>
                <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
            </div>
        </div>
    </section>
    <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {

            // Function to show the current step and hide others
            function showStep(step) {
                if (step < 6) {
                    $('.step').removeClass('active');
                    $('#step' + step).addClass('active');
                    updateFormIndicator(step);
                }
            }

            // Function to update the form indicator
            function updateFormIndicator(step) {
                $('#form-indicator h5').text('Step ' + step + ' of 5 to Register New Postmatric Otherthan Intermediate Institute');
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
                }
                if (!isValid) {
                    $(errorSelector).text(errorMessage);
                } else {
                    $(errorSelector).text('');
                }

                return isValid;
            }

            function validateFile(fileInput, maxSizeKB, field, errorField) {
                var isValid = true;
                var errorMessage = '';

                // Ensure that the file input exists and is not null or undefined
                if (fileInput && fileInput.length > 0) {
                    // Check if a file is selected
                    if (fileInput[0].files && fileInput[0].files.length === 0) {
                        isValid = false;
                        errorMessage = 'File is required.';
                    } else {
                        var file = fileInput[0].files[0];
                        var fileSizeKB = file.size / 1024; // Convert to KB

                        // Check file size
                        if (fileSizeKB > maxSizeKB) {
                            isValid = false;
                            errorMessage = 'File size exceeds the maximum allowed size of ' + maxSizeKB + ' KB.';
                            // Clear the file input value
                            fileInput[0].value = '';
                        }

                        // Check file type
                        if (!file.type.toLowerCase().includes('pdf')) {
                            isValid = false;
                            errorMessage = 'Please select a PDF file.';

                            // Clear the file input value
                            fileInput[0].value = '';
                        }
                    }
                } else {
                    // Handle the case where the file input is not found
                    isValid = false;
                    errorMessage = 'File input not found.';
                }

                // Display error message
                $(errorField).text(errorMessage);

                return isValid;
            }

            function validateStep(step) {
                var isValid = true;
                // Validate fields specific to the current step
                if (step === 1) {
                    isValid &= validateField($("#stt").val(), '#error-state', 'This field is required.', 'required');
                    isValid &= validateField($("#dist").val(), '#error-dist', 'This field is required.', 'required');
                    isValid &= validateField($("#typeCollege").val(), '#error-typeCollege', 'This field is required.', 'required');
                    isValid &= validateField($("#instName").val().trim(), '#error-instName', 'Please give valid name and also do not use special characters except [dot].', 'required');
                    isValid &= validateField($("#instAdd").val().trim(), '#error-instAdd', 'Please give a valid address', 'details');
                    isValid &= validateField($("#instPhone").val().trim(), '#error-instPhone', 'Enter a valid 10-digit mobile number.', 'mobile');
                    isValid &= validateField($("#instEmail").val().trim(), '#error-instEmail', 'Please give a valid email address', 'email');
                } else if (step === 2) {
                    isValid &= validateField($("#prncplName").val().trim(), '#error-field7', 'Please give valid name and also do not use special characters.', 'required');
                    isValid &= validateField($("#Pdesignation").val().trim(), '#error-principalDesignation', 'Please give valid name and also do not use special characters.', 'required');
                    isValid &= validateField($("#prncplemail").val().trim(), '#error-field10', 'Enter a valid email address.', 'email');
                    isValid &= validateField($("#prncplMob").val().trim(), '#error-field8', 'Enter a valid 10-digit mobile number.', 'mobile');
                    isValid &= validateField($("#prncplAltMob").val().trim(), '#error-field9', 'Enter a valid 10-digit mobile number.', 'mobile');
                } else if (step === 3) {
                    isValid &= validateField($("#nOfficerName").val(), '#error-nOfficerName', 'This field is required.', 'required');
                    isValid &= validateField($("#nOfficerDesignation").val(), '#error-nOfficerDesignation', 'This field is required.', 'required');
                    isValid &= validateField($("#nOfficeremail").val(), '#error-nOfficeremail', 'This field is required.', 'email');
                    isValid &= validateField($("#nOfficerMob").val(), '#error-nOfficerMob', 'Enter a valid 10-digit mobile number.', 'mobile');
                    isValid &= validateField($("#nOfficerAltMob").val().trim(), '#error-nOfficerAltMob', 'Enter a valid 10-digit mobile number..', 'mobile');
                } else if (step === 4) {
                    isValid &= validateField($("#txt_AfflUnivercity").val().trim(), '#error-AfflUnivercity', 'This field is required.', 'required');
                    isValid &= validateField($("#affDate").val().trim(), '#error-affDate', 'This field is required.', 'date');
                    isValid &= validateField($("#affValid").val(), '#error-affValid', 'This field is required.', 'datePrev');
                    isValid &= validateField($("#affLetterNo").val(), '#error-affLetterNo', 'This field is required.', 'details');
                    isValid &= validateFile($("#affLetter"), 500, "#affLetter", "#error-affLetter");
                    isValid &= validateField($("#AISHECode").val(), '#error-field16', 'This field is required.', 'details');
                } else if (step === 5) {
                    isValid &= validateField($("#NAAC").val().trim(), '#error-NAAC', 'This field is required.', 'required');
                    if ($("#NAAC").val() === '1') {
                        isValid &= validateField($("#naac_nba").val().trim(), '#error-naac_nba', 'This field is required.', 'date');
                        isValid &= validateField($("#NAAC_NBA_Grade").val(), '#error-NAAC_NBA_Grade', 'This field is required.', 'details');
                        isValid &= validateField($("#certNum").val().trim(), '#error-certNum', 'This field is required.', 'datePrev');
                        isValid &= validateField($("#cert_date").val().trim(), '#error-cert_date', 'This field is required.', 'date');
                        isValid &= validateField($("#cert_validity").val().trim(), '#error-cert_validity', 'This field is required.', 'datePrev');
                        isValid &= validateFile($("#certificate"), 500, '#certificate', '#error-certificate');
                        isValid &= validateField($("#captcha").val().trim(), '#error-field17', 'This field is required.', 'required');
                    }
                }
                return isValid;
            }
            // Next button click event
            $('.next-step').on('click', function () {
                validateAllSteps();
                //if (validateStep(currentStep)) {
                //    currentStep++;
                //    if (currentStep < 6) {
                //        showStep(currentStep);
                //    } else {
                //        validateAllSteps();
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


            function validateAllSteps() {
                var isValid = true;
                // Validate each step
                for (var step = 1; step <= 5; step++) {
                    if (!validateStep(step)) {
                        isValid = false;
                    }
                }
                // If all steps are valid, trigger the submission
                if (isValid) {
                    document.getElementById('<%= submitMain2.ClientID %>').click();
                    }
                }

                // Attach change event listener to the DropDownList
                $('#Min').change(function () {
                    // Get the selected value
                    var selectedValue = $(this).val();

                    // Check if the selected value is 'Yes'
                    if (selectedValue === '1') {
                        // Show the div with id "minFileUp"
                        $('#minFileUp').show();
                    } else {
                        // Hide the div with id "minFileUp"
                        $('#minFileUp').hide();
                    }
                });

                // Trigger the change event on page load to initially set the visibility based on the default selected value
                $('#Min').change();


                // Disable controls if "No" is initially selected
                if ($('#NAAC').val() === '0') {
                    disableControls();
                }

                // Attach change event to NAAC DropDownList
                $('#NAAC').change(function () {
                    if ($(this).val() === '0') {
                        disableControls();
                        clearErrorLbls();
                    } else {
                        enableControls();
                    }
                });

                function disableControls() {
                    $('#naac_nba, #NAAC_NBA_Grade, #certNum, #cert_date, #cert_validity, #certificate').prop('disabled', true).val(null);
                }

                function clearErrorLbls() {
                    $('#error-naac_nba, #error-NAAC_NBA_Grade, #error-certNum, #error-cert_date, #error-cert_validity, #error-certificate').text('');
                }

                function enableControls() {
                    $('#naac_nba, #NAAC_NBA_Grade, #certNum, #cert_date, #cert_validity, #certificate').prop('disabled', false);
                }
            });
        function limitNumberLength(input, maxLength) {
            if (input.value.length > maxLength) {
                input.value = input.value.slice(0, maxLength);
            }
        }
    </script>
</asp:Content>