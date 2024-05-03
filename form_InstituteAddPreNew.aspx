<%@ Page Language="VB" AutoEventWireup="false" CodeFile="form_InstituteAddPreNew.aspx.vb" Inherits="form_InstituteAddPreNew" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="description" content="Search Scheme" />
    <meta name="keywords" content="services, scheme" />
    <meta name="author" content="NIC" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>Search Wizard</title>
    <link href="https://edistrict.up.gov.in/eDistrictServiceWizard/dist/css/bootstrap4.min.css" rel="stylesheet" />
    <link href="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/multi-form.css" rel="stylesheet" />
    <link href="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/jQuery-ui.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/CommonStyleSheet.css" rel="stylesheet" />
</head>
<body oncut="return false" onpaste="return false" oncopy="return false">

    <div class="d-md-flex flex-md-column align-item-md-center justify-content-md-between hvh">
        <form method="post" action="#" id="myForm" runat="server">
            <div id="wizardTabDiv" class="wizardTabDiv user-select-none">
                <h3 style="margin: 0; text-align: center; text-transform: uppercase;">Register New Prematric Institute</h3>
                <hr />
                <br />

                <!-- One "tab" for each step in the form: -->
                <div class="tab" id="tab1">
                    <center>
                        <span class="h4">Institute's Details:</span>
                        <hr style="width: 40%; height: 5px;" />
                    </center>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label class="mb-0">कृपया स्थान का प्रकार चुनें : <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList ID="type" runat="server" RepeatColumns="2">
                                <asp:ListItem Selected="True">Rural &nbsp;</asp:ListItem>
                                <asp:ListItem>Urban</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>कृपया जिला चुनें :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-sm-7">
                            <asp:DropDownList CssClass="form-control" ID="dist" runat="server">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
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
                            <asp:DropDownList CssClass="dropdown form-control" runat="server">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>कृपया विद्यालय का नाम लिखें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>अल्पसंख्यक विद्यालय?:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList runat="server" RepeatColumns="2">
                                <asp:ListItem>Yes&nbsp;</asp:ListItem>
                                <asp:ListItem Selected="True">No</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>प्रबंधन प्रकार:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList runat="server" RepeatColumns="3">
                                <asp:ListItem Selected="True">Govt.&nbsp;</asp:ListItem>
                                <asp:ListItem>Govt. Aided&nbsp;</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
                <div class="tab" id="tab2">
                    <center>
                        <span class="h4">Principal's Details:</span>
                        <hr style="width: 40%; height: 5px;" />
                    </center>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>नाम :<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>मोबाईल नंबर:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>वैकल्पिक मोबाइल नंबर:</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>ईमेल आईडी <span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="tab" id="tab3">
                    <center>
                        <span class="h4">Affiliation 's Details:</span>
                        <hr style="width: 40%; height: 5px;" />
                    </center>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>कक्षा से:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList runat="server" CssClass="dropdown form-control">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-1">
                            <label>तक:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList runat="server" CssClass="form-control dropdown">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>के साथ संबद्ध:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:DropDownList runat="server" CssClass="dropdown form-control">
                                <asp:ListItem Selected="True" Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">Madhyamik Shiksha Parishad UP BOARD</asp:ListItem>
                                <asp:ListItem Value="2">CBSE</asp:ListItem>
                                <asp:ListItem Value="3">ICSE</asp:ListItem>
                                <asp:ListItem Value="4">Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>संबद्धता की तिथि:<span style="color: red;">*</span><span class="text-muted">(dd-mm-yyyy)</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>संबद्धता का विवरण:<span style="color: red;">*</span><span class="text-muted">(पत्र संख्या, संबद्धता का वर्ष और पत्र कब तक वैध है)</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>U-Dise कोड:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label>केप्च भरें:<span style="color: red;">*</span></label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <img id="Captcha" class="img-responsive img-thumbnail" src="captcha.ashx" />
                        </div>
                        <div class="col-md-1" style="padding: 0px; margin: 0px;">
                            <img onclick="rcaptcha();" class="img-responsive" src="https://scholarship.up.gov.in/image/refresh.png" />
                        </div>
                    </div>
                </div>
                <script> function rcaptcha() { document.getElementById('Captcha').src = "captcha.ashx?id=" + Math.random(); } rcaptcha();</script>


                <div class="d-flex align-items-center justify-content-center justify-content-md-between flex-column flex-md-row mt-5">
                    <div class="order-12 order-lg-0 borderlayoutParentDiv">
                        <div style="text-align: center;" class="borderlayout">
                            <span class="step" id="step1">1</span>
                            <span class="step" id="step2">2</span>
                            <span class="step" id="step3">3</span>
                        </div>
                    </div>
                    <div class="order-0 order-lg-12">
                        <div class="mb-3 mb-md-0">
                            <button type="button" class="previous button-29"><i class="fa fa-chevron-left" aria-hidden="true"></i>&nbsp;पीछे जायें</button>
                            <button type="button" class="next button-29">आगे बढें&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i></button>
                            <input type="submit" name="btnSearch" value="खोजें" onclick="return validate();" id="btnSearch" class="submit button-29" />
                        </div>
                    </div>
                </div>

                <div style="text-align: center; margin-top: 10px;" class="cbg-warning">
                    <span id="lblError"></span>
                </div>
            </div>
        </form>
    </div>


    <script src="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/jQuery.js"></script>
    <script src="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/jQuery-validation.js"></script>
    <script src="https://edistrict.up.gov.in/eDistrictServiceWizard/dist/js/bootstrap4.min.js"></script>
    <script src="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/multi-form.js"></script>
    <script src="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/app.js"></script>
    <script src="https://edistrict.up.gov.in/eDistrictServiceWizard/assets/jQuery-ui.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('input').on('cut copy paste', function (event) {
                event.preventDefault();
            });
        });
        $(window).ready(function () {
            $("#myForm").on("keypress", function (event) {
                //console.log("aaya");
                var keyPressed = event.keyCode || event.which;
                if (keyPressed === 13) {
                    //alert("You pressed the Enter key!!");
                    event.preventDefault();
                    return false;
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $("input").attr("autocomplete", "off");

            $("#txtDOB").on("keyup", function () {
                var ageVal = 0;
                ageVal = $("#txtDOB").val();

                $("#ddlGender").val('');
                if (ageVal < 18) {
                    $("#ddlIsEmployed").val('N');
                    $("#hfddlIsEmployed").val($("#ddlIsEmployed").val());
                    $("#ddlIsEmployed").prop('disabled', 'disabled');
                    $("#ddlIsEmployed").removeAttr("required");

                    $("#ddlIsMarried").val('N');
                    $("#hfddlIsMarried").val($("#ddlIsMarried").val());
                    $("#ddlIsMarried").prop('disabled', 'disabled');
                    $("#ddlIsMarried").removeAttr("required");

                    if (ageVal < 16) {
                        $("#ddlDriveVehicle").val('N');
                        $("#hfddlDriveVehicle").val($("#ddlDriveVehicle").val());
                        $("#ddlDriveVehicle").prop('disabled', 'disabled');
                        $("#ddlDriveVehicle").removeAttr("required");
                    }
                    else {
                        $("#ddlDriveVehicle").val('');
                        $("#hfddlDriveVehicle").val($("#ddlDriveVehicle").val());
                        $("#ddlDriveVehicle").removeAttr("disabled");
                        $("#ddlDriveVehicle").attr("required", "required");
                    }



                }
                else {
                    $("#ddlIsEmployed").val('');
                    $("#hfddlIsEmployed").val($("#ddlIsEmployed").val());
                    $("#ddlIsEmployed").removeAttr("disabled");
                    $("#ddlIsEmployed").attr("required", "required");

                    $("#ddlIsMarried").val('');
                    $("#hfddlIsMarried").val($("#ddlIsMarried").val());
                    $("#ddlIsMarried").removeAttr("disabled");
                    $("#ddlIsMarried").attr("required", "required");

                    $("#ddlDriveVehicle").val('');
                    $("#hfddlDriveVehicle").val($("#ddlDriveVehicle").val());
                    $("#ddlDriveVehicle").removeAttr("disabled");
                    $("#ddlDriveVehicle").attr("required", "required");



                }
            });

            $("#ddlGender").on("change", function () {
                var IsMale = $(this).val();
                var ageVal = 0;
                ageVal = $("#txtDOB").val();
                $("#ddlIsResidentUP").val('');
                if (ageVal < 21) {
                    if (IsMale == "M" || IsMale == "O") {
                        $("#ddlIsMarried").val('N');
                        $("#hfddlIsMarried").val($("#ddlIsMarried").val());
                        $("#ddlIsMarried").prop('disabled', 'disabled');
                        $("#ddlIsMarried").removeAttr("required");
                    }
                    else {
                        $("#ddlIsMarried").val('');
                        $("#hfddlIsMarried").val($("#ddlIsMarried").val());
                        $("#ddlIsMarried").removeAttr("disabled");
                        $("#ddlIsMarried").attr("required", "required");
                    }
                }
            });








            $("#ddlDistrict").on('change', function () {
                //debugger;
                var dcode = $(this).val();
                var distname = $("#ddlDistrict option:selected");
                $("#hfSlectedDcode").val('');
                $("#hfSlectedDcode").val(dcode);
                $("#hfSlectedDName").val('');
                $("#hfSlectedDName").val(distname.text());
            });

            $("#ddlIsResidentUP").on('change', function () {
                debugger;
                var IsResidentUP = $(this).val();
                var ageVal = 0;
                ageVal = $("#txtDOB").val();
                var IsMale = $('#ddlGender').val();



                if (IsResidentUP == "N") {
                    $("#ddlUrbanRural").append("<option value='NA'>लागू नहीं</option>");
                    $("#ddlUrbanRural").val('NA');
                    $("#ddlUrbanRural").prop('disabled', 'disabled');
                    $("#hfddlUrbanRural").val($("#ddlUrbanRural").val());

                    $("#ddlIsGenCaste").append("<option value='NA'>लागू नहीं</option>");
                    $("#ddlIsGenCaste").val('NA');
                    $("#ddlIsGenCaste").prop('disabled', 'disabled');
                    $("#hfddlIsGenCaste").val($("#ddlIsGenCaste").val());

                    $("#ddlIsMarried").append("<option value='NA'>लागू नहीं</option>");
                    $("#ddlIsMarried").val('NA');
                    $("#ddlIsMarried").prop('disabled', 'disabled');
                    $("#hfddlIsMarried").val($("#ddlIsMarried").val());

                    $("#ddlQualification").append("<option value='NA'>लागू नहीं</option>");
                    $("#ddlQualification").val('NA');
                    $("#ddlQualification").prop('disabled', 'disabled');
                    $("#hfddlQualification").val($("#ddlQualification").val());

                    $("#ddlYearlyIncome").append("<option value='NA'>लागू नहीं</option>");
                    $("#ddlYearlyIncome").val('NA');
                    $("#ddlYearlyIncome").prop('disabled', 'disabled');
                    $("#hfddlYearlyIncome").val($("#ddlYearlyIncome").val());

                    $("#ddlDriveVehicle").append("<option value='NA'>लागू नहीं</option>");
                    $("#ddlDriveVehicle").val('NA');
                    $("#ddlDriveVehicle").prop('disabled', 'disabled');
                    $("#hfddlDriveVehicle").val($("#ddlDriveVehicle").val());


                } else {

                    $("#ddlUrbanRural option[value=NA]").remove();
                    $("#ddlUrbanRural").val('');
                    $("#ddlUrbanRural").removeAttr("disabled");
                    $("#ddlUrbanRural").attr("required", "required");
                    $("#hfddlUrbanRural").val($("#ddlUrbanRural").val());

                    $("#ddlIsGenCaste option[value=NA]").remove();
                    $("#ddlIsGenCaste").val('');
                    $("#ddlIsGenCaste").removeAttr("disabled");
                    $("#hfddlIsGenCaste").val($("#ddlIsGenCaste").val());

                    if (ageVal >= 21) {
                        $("#ddlIsMarried option[value=NA]").remove();
                        $("#ddlIsMarried").val('');
                        $("#ddlIsMarried").removeAttr("disabled");
                        $("#hfddlIsMarried").val($("#ddlIsMarried").val());
                    }
                    else {
                        $("#ddlIsMarried option[value=NA]").remove();
                        $("#ddlIsMarried").val('N');
                        $("#ddlIsMarried").prop('disabled', 'disabled');
                        $("#hfddlIsMarried").val($("#ddlIsMarried").val());
                    }

                    $("#ddlQualification option[value=NA]").remove();
                    $("#ddlQualification").val('');
                    $("#ddlQualification").removeAttr("disabled");
                    $("#hfddlQualification").val($("#ddlQualification").val());

                    $("#ddlYearlyIncome option[value=NA]").remove();
                    $("#ddlYearlyIncome").val('');
                    $("#ddlYearlyIncome").removeAttr("disabled");
                    $("#hfddlYearlyIncome").val($("#ddlYearlyIncome").val());

                    $("#ddlDriveVehicle option[value=NA]").remove();
                    $("#ddlDriveVehicle").val('');
                    $("#ddlDriveVehicle").removeAttr("disabled");
                    $("#hfddlDriveVehicle").val($("#ddlDriveVehicle").val());

                }
            });

            $("#ddlUrbanRural").on('change', function () {

                $('#ddlYearlyIncome').empty()
                var $options = $("#ddlTestYI > option").clone();

                $('#ddlYearlyIncome').append($options);
                var UrbanRural = $(this).val();
                if (UrbanRural == "R") {
                    $("#ddlYearlyIncome option[value=3L]").remove();
                    $("#ddlYearlyIncome option[value=3LT]").remove();
                    $("#ddlYearlyIncome option[value=NA]").remove();
                    $("#ddlYearlyIncome").val('');
                }
                else if (UrbanRural == "U") {
                    $("#ddlYearlyIncome option[value=2L]").remove();
                    $("#ddlYearlyIncome option[value=2LT]").remove();
                    $("#ddlYearlyIncome option[value=NA]").remove();
                    $("#ddlYearlyIncome").val('');
                }
            });
        });

        function validate() {
            var ins = document.getElementById("txtName").value;
            if (ins == "") {
                alert("Please enter name!!");
            }
            else if (CheckSpecialCharcter(ins)) {
                return true;
            }
            else {
                alert("Special characters are not allowed in Name!!");
            }
            return false;
        }
        function CheckSpecialCharcter(ins) {
            // alert(ins);
            // var str = $.trim(ins.val());
            var str = ins;

            var ss = str;
            var i = 0;
            var found = false;
            var ctr = new Array("@", "select", ";", "--", "-", "/", "insert", "www", "delete", "xp_", "#", "%", "&", "'", "<", ">", "[", "]", "?", "$", "|", "+", "_", "*", ":", "~", "`", "=", "!", "^", ".", ",", "\\", "(", ")");
            for (i = 0; i < ctr.length; i++) {
                var pos = ss.indexOf(ctr[i]);
                if (pos != -1) {
                    found = true;
                    break;
                }
            }
            if (found) {
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</body>
</html>
