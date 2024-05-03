<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/StyleSheet_form.css">
</head>
<body>
    <div class="container">
        <center>
            <form runat="server">
                <div class="card">
                    <div class="form">
                        <div class="left-side">
                            <div class="left-heading">
                                <h3>Add Institution</h3>
                            </div>
                            <div class="steps-content">
                                <h3>Step <span class="step-number">1</span></h3>
                                <p class="step-number-content active">Enter details of Institute.</p>
                                <p class="step-number-content d-none">Enter details of Principal.</p>
                                <p class="step-number-content d-none">Enter details of Nodal Officer.</p>
                                <p class="step-number-content d-none">Enter details of institute.</p>
                            </div>
                            <ul class="progress-bar">
                                <li class="active">Institute Detail</li>
                                <li>Principal Detail</li>
                                <li>Nodal Officer Detail</li>
                                <li>Affiliation Detail</li>
                            </ul>
                        </div>
                        <div class="right-side">
                            <div class="main active">
                                <small><i class="fa fa-institution"></i></small>

                                <div class="text">
                                    <h2>Your Institute's Information</h2>
                                    <%--<p>Enter details of Institute.</p>--%>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <h6 style="text-align: left">Select District:</h6>
                                        <asp:DropDownList ID="District" runat="server" CssClass="validate">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Selected="True" Value="">--Select District--</asp:ListItem>
                                            <asp:ListItem Value="15">Agra</asp:ListItem>
                                            <asp:ListItem Value="12">Aligarh</asp:ListItem>
                                            <asp:ListItem Value="48">Ambedkar Ngr.</asp:ListItem>
                                            <asp:ListItem Value="72">Amethi</asp:ListItem>
                                            <asp:ListItem Value="06">Amroha</asp:ListItem>
                                            <asp:ListItem Value="32">Auraiya </asp:ListItem>
                                            <asp:ListItem Value="47">Ayodhya</asp:ListItem>
                                            <asp:ListItem Value="61">Azamgarh</asp:ListItem>
                                            <asp:ListItem Value="08">Baghpat </asp:ListItem>
                                            <asp:ListItem Value="50">Bahraich</asp:ListItem>
                                            <asp:ListItem Value="63">Ballia</asp:ListItem>
                                            <asp:ListItem Value="52">Balrampur </asp:ListItem>
                                            <asp:ListItem Value="40">Banda</asp:ListItem>
                                            <asp:ListItem Value="46">Barabanki</asp:ListItem>
                                            <asp:ListItem Value="20">Bareilly</asp:ListItem>
                                            <asp:ListItem Value="55">Basti</asp:ListItem>
                                            <asp:ListItem Value="03">Bijnor</asp:ListItem>
                                            <asp:ListItem Value="19">Budaun</asp:ListItem>
                                            <asp:ListItem Value="11">Bulandshahr</asp:ListItem>
                                            <asp:ListItem Value="66">Chandauli </asp:ListItem>
                                            <asp:ListItem Value="41">Chitrakoot </asp:ListItem>
                                            <asp:ListItem Value="60">Deoria</asp:ListItem>
                                            <asp:ListItem Value="17">Etah</asp:ListItem>
                                            <asp:ListItem Value="31">Etawah</asp:ListItem>
                                            <asp:ListItem Value="29">Farrukhabad</asp:ListItem>
                                            <asp:ListItem Value="42">Fatehpur</asp:ListItem>
                                            <asp:ListItem Value="16">Firozabad</asp:ListItem>
                                            <asp:ListItem Value="10">GB Nagar</asp:ListItem>
                                            <asp:ListItem Value="09">Ghaziabad</asp:ListItem>
                                            <asp:ListItem Value="65">Ghazipur</asp:ListItem>
                                            <asp:ListItem Value="53">Gonda</asp:ListItem>
                                            <asp:ListItem Value="58">Gorakhpur</asp:ListItem>
                                            <asp:ListItem Value="38">Hamirpur</asp:ListItem>
                                            <asp:ListItem Value="74">Hapur</asp:ListItem>
                                            <asp:ListItem Value="25">Hardoi</asp:ListItem>
                                            <asp:ListItem Value="13">Hathras </asp:ListItem>
                                            <asp:ListItem Value="35">Jalaun</asp:ListItem>
                                            <asp:ListItem Value="64">Jaunpur</asp:ListItem>
                                            <asp:ListItem Value="36">Jhansi</asp:ListItem>
                                            <asp:ListItem Value="30">Kannauj </asp:ListItem>
                                            <asp:ListItem Value="33">Kanpur Dehat</asp:ListItem>
                                            <asp:ListItem Value="34">Kanpur Nagar</asp:ListItem>
                                            <asp:ListItem Value="71">Kasganj</asp:ListItem>
                                            <asp:ListItem Value="44">Kaushambi </asp:ListItem>
                                            <asp:ListItem Value="23">Kheri</asp:ListItem>
                                            <asp:ListItem Value="59">Kushinagar </asp:ListItem>
                                            <asp:ListItem Value="37">Lalitpur</asp:ListItem>
                                            <asp:ListItem Value="27">Lucknow</asp:ListItem>
                                            <asp:ListItem Value="57">Maharajganj</asp:ListItem>
                                            <asp:ListItem Value="39">Mahoba </asp:ListItem>
                                            <asp:ListItem Value="18">Mainpuri</asp:ListItem>
                                            <asp:ListItem Value="14">Mathura</asp:ListItem>
                                            <asp:ListItem Value="62">Mau</asp:ListItem>
                                            <asp:ListItem Value="07">Meerut</asp:ListItem>
                                            <asp:ListItem Value="69">Mirzapur</asp:ListItem>
                                            <asp:ListItem Value="04">Moradabad</asp:ListItem>
                                            <asp:ListItem Value="02">Muzaffarnagar</asp:ListItem>
                                            <asp:ListItem Value="99">OState</asp:ListItem>
                                            <asp:ListItem Value="21">Pilibhit</asp:ListItem>
                                            <asp:ListItem Value="43">Pratapgarh</asp:ListItem>
                                            <asp:ListItem Value="45">Prayagraj</asp:ListItem>
                                            <asp:ListItem Value="28">Rae Bareli</asp:ListItem>
                                            <asp:ListItem Value="05">Rampur</asp:ListItem>
                                            <asp:ListItem Value="01">Saharanpur</asp:ListItem>
                                            <asp:ListItem Value="75">Sambhal</asp:ListItem>
                                            <asp:ListItem Value="22">Shahjahanpur</asp:ListItem>
                                            <asp:ListItem Value="73">Shamli</asp:ListItem>
                                            <asp:ListItem Value="51">Shrawasti </asp:ListItem>
                                            <asp:ListItem Value="54">Siddharthnagar</asp:ListItem>
                                            <asp:ListItem Value="24">Sitapur</asp:ListItem>
                                            <asp:ListItem Value="56">SK Nagar</asp:ListItem>
                                            <asp:ListItem Value="70">Sonbhadra</asp:ListItem>
                                            <asp:ListItem Value="68">SR Nagar</asp:ListItem>
                                            <asp:ListItem Value="49">Sultanpur</asp:ListItem>
                                            <asp:ListItem Value="26">Unnao</asp:ListItem>
                                            <asp:ListItem Value="67">Varanasi</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="input-div">
                                        <h6 style="text-align: left">Type of Area:</h6>
                                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="validate">
                                            <asp:ListItem Selected="True">Rural</asp:ListItem>
                                            <asp:ListItem>Urban</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">                                        
                                        <h6 style="text-align:left">Select Block/Town:</h6>
                                        <asp:DropDownList ID="town_block" runat="server" CssClass="validate">
                                            <asp:ListItem Value="">----Select Town/Blocl---</asp:ListItem>
                                            <asp:ListItem Value="Town1">Towm:1</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>                                    
                                    <div class="input-div">
                                        <h6 style="text-align:left">Type of Institute:</h6>
                                        <asp:DropDownList ID="InstType" runat="server" Enabled="false" CssClass="validate">
                                            <asp:ListItem Value="12" Selected="True">Intermediate</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <h6 style="text-align:left">Name of Institute:</h6>
                                        <asp:TextBox CssClass="validate" ID="instName" runat="server"> </asp:TextBox>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">                                        
                                        <h6 style="text-align:left">Minority Institution?</h6>
                                        <asp:DropDownList ID="Minority" runat="server" CssClass="validate">
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="input-div">
                                        <h6 style="text-align: left">Management Type: </h6>
                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="validate">
                                            <asp:ListItem Selected="True">Govt.</asp:ListItem>
                                            <asp:ListItem>Govt. Aided</asp:ListItem>
                                            <asp:ListItem>Private</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <h6 style="text-align: left">Address of Institute:</h6>
                                        <asp:TextBox runat="server" ID="instAdd" CssClass="validate"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <h6 style="text-align: left">Phone No with STD:</h6>
                                        <asp:TextBox runat="server" ID="instPhone" TextMode="number" CssClass="validate"></asp:TextBox>
                                    </div>
                                    <div class="input-div">
                                        <h6 style="text-align: left">Email: </h6>
                                        <asp:TextBox runat="server" ID="instEmail" TextMode="Email" CssClass="validate"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="buttons">
                                    <button class="next_button">Next Step</button>
                                </div>
                            </div>
                            <div class="main">
                                <small><i class="fa fa-smile-o"></i></small>
                                <div class="text">
                                    <h2>Principal's Information</h2>
                                    <%--<p>Inform companies about your education life.</p>--%>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <input type="text" required>
                                        <span>School Name</span>
                                    </div>
                                    <div class="input-div">
                                        <input type="text" required>
                                        <span>Board Name</span>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <input type="text" required aria-required="true">
                                        <span>College/University name</span>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <select>
                                            <option>Select Course</option>
                                            <option>BCA</option>
                                            <option>B-TECH</option>
                                            <option>BA</option>
                                            <option>B-COM</option>
                                            <option>B-SC</option>
                                            <option>MBA</option>
                                            <option>MCA</option>
                                            <option>M-COM</option>
                                            <option>M-TECH</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="buttons button_space">
                                    <button class="back_button">Back</button>
                                    <button class="next_button">Next Step</button>
                                </div>
                            </div>
                            <div class="main">
                                <small><i class="fa fa-smile-o"></i></small>
                                <div class="text">
                                    <h2>Work Experiences</h2>
                                    <p>Can you talk about your past work experience?</p>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <input type="text" required aria-required="true">
                                        <span>Experience 1</span>
                                    </div>
                                    <div class="input-div">
                                        <input type="text" required require>
                                        <span>Position</span>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <input type="text" required>
                                        <span>Experience 2</span>
                                    </div>
                                    <div class="input-div">
                                        <input type="text" required>
                                        <span>Position</span>
                                    </div>
                                </div>
                                <div class="input-text">
                                    <div class="input-div">
                                        <input type="text" required>
                                        <span>Experience 3</span>
                                    </div>
                                    <div class="input-div">
                                        <input type="text" required>
                                        <span>Position</span>
                                    </div>
                                </div>
                                <div class="buttons button_space">
                                    <button class="back_button">Back</button>
                                    <button class="next_button">Next Step</button>
                                </div>
                            </div>
                            <div class="main">
                                <small><i class="fa fa-smile-o"></i></small>
                                <div class="text">
                                    <h2>User Photo</h2>
                                    <p>Upload your profile picture and share yourself.</p>
                                </div>
                                <div class="user_card">
                                    <span></span>
                                    <div class="circle">
                                        <span>
                                            <img src="https://i.imgur.com/hnwphgM.jpg"></span>
                                    </div>
                                    <div class="social"><span><i class="fa fa-share-alt"></i></span><span><i class="fa fa-heart"></i></span></div>
                                    <div class="user_name">
                                        <h3>Peter Hawkins</h3>
                                        <div class="detail">
                                            <p><a href="#">Izmar,Turkey</a>Hiring</p>
                                            <p>17 last day . 94Apply</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons button_space">
                                    <button class="back_button">Back</button>
                                    <button class="submit_button">Submit</button>
                                </div>
                            </div>
                            <div class="main">
                                <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
                                    <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none" />
                                    <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8" />
                                </svg>
                                <div class="text congrats">
                                    <h2>Congratulations!</h2>
                                    <p>Thanks Mr./Mrs. <span class="shown_name"></span>your information have been submitted successfully for the future reference we will contact you soon.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </center>
    </div>
    <script>
        var next_click = document.querySelectorAll(".next_button");
        var main_form = document.querySelectorAll(".main");
        var step_list = document.querySelectorAll(".progress-bar li");
        var num = document.querySelector(".step-number");
        let formnumber = 0;

        next_click.forEach(function (next_click_form) {
            next_click_form.addEventListener('click', function () {
                var valueh = validateform();
                if (!validateform()) {
                    alert(valueh);
                    return false;

                }
                formnumber++;
                updateform();
                progress_forward();
                contentchange();
            });
        });

        var back_click = document.querySelectorAll(".back_button");
        back_click.forEach(function (back_click_form) {
            back_click_form.addEventListener('click', function () {
                formnumber--;
                updateform();
                progress_backward();
                contentchange();
            });
        });

        var username = document.querySelector("#user_name");
        var submit_click = document.querySelectorAll(".submit_button");

        submit_click.forEach(function (submit_click_form) {
            submit_click_form.addEventListener('click', function () {
                shownname.innerHTML = username.value;
                formnumber++;
                updateform();
            });
        });

        var heart = document.querySelector(".fa-heart");
        heart.addEventListener('click', function () {
            heart.classList.toggle('heart');
        });

        var share = document.querySelector(".fa-share-alt");
        share.addEventListener('click', function () {
            share.classList.toggle('share');
        });

        function updateform() {
            main_form.forEach(function (mainform_number) {
                mainform_number.classList.remove('active');
            });
            main_form[formnumber].classList.add('active');
        }

        function progress_forward() {
            num.innerHTML = formnumber + 1;
            step_list[formnumber].classList.add('active');
        }

        function progress_backward() {
            var form_num = formnumber + 1;
            step_list[form_num].classList.remove('active');
            num.innerHTML = form_num;
        }

        var step_num_content = document.querySelectorAll(".step-number-content");

        function contentchange() {
            step_num_content.forEach(function (content) {
                content.classList.remove('active');
                content.classList.add('d-none');
            });
            step_num_content[formnumber].classList.add('active');
        }

        function validateform() {
            let validate = true;

            // Reset 'warning' classes for elements with 'validate' class
            var validate_inputs = document.querySelectorAll(".validate");
            validate_inputs.forEach(function (validate_input) {
                validate_input.classList.remove('warning');
                if (validate_input.hasAttribute('required')) {
                    if (validate_input.value.trim() === "") {
                        validate = false;
                        validate_input.classList.add('warning');
                    }
                }
            });

            <%--// Your existing validation logic
            var dist = document.getElementById(<%= District.ClientID%>);
            var town_block = document.getElementById(<%= town_block.ClientID%>);
            var instName = document.getElementById(<%= instName.ClientID%>);
            var instAdd = document.getElementById(<%= instAdd.ClientID%>);
            var instPhone = document.getElementById(<%= instPhone.ClientID%>);
            var instEmail = document.getElementById(<%= instEmail.ClientID%>);

            // Reset 'warning' classes for specific elements
            dist.classList.remove('warning');
            town_block.classList.remove('warning');
            instName.classList.remove('warning');
            instAdd.classList.remove('warning');
            instPhone.classList.remove('warning');
            instEmail.classList.remove('warning');

            if (dist.selectedIndex === 0) {
                validate = false;
                dist.classList.add('warning');
            } else if (town_block.selectedIndex === 0) {
                validate = false;
                town_block.classList.add('warning');
            } else if (!instName.value.trim() || !/^[A-Za-z\s]+$/.test(instName.value.trim())) {
                validate = false;
                instName.classList.add('warning');
            } else if (!instAdd.value.trim() || /[!@#$%^&*;]/.test(instAdd.value.trim())) {
                validate = false;
                instAdd.classList.add('warning');
            } else if (!instPhone.value.trim() || !/^\d{10}$/.test(instPhone.value.trim())) {
                validate = false;
                instPhone.classList.add('warning');
            } else if (!instEmail.value.trim() || !/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/.test(instEmail.value.trim())) {
                validate = false;
                instEmail.classList.add('warning');
            }--%>

            return validate;
        }

    </script>
</body>
</html>



<%--<script>
    // to make it responsive
    function adjustIframeHeight() {
        var iframe = document.getElementById('myIframe');
        if (iframe) {
            iframe.style.height = (iframe.contentWindow.document.body.scrollHeight + 30) + 'px';
        }
    }
    // Adjust the height initially and whenever the content inside the iframe changes
    window.onload = adjustIframeHeight;
    window.addEventListener('resize', adjustIframeHeight);
    // Add the following line if the content inside the iframe might change asynchronously
    // iframe.contentWindow.addEventListener('resize', adjustIframeHeight);






    
    <script type="text/javascript">

        // "#ContentPlaceHolder1_txt_AffdateExpiry"
        var affiliationDateExpiry = '';
        // "#ContentPlaceHolder1_txt_Affdate"
        var affiliationDate = '';
        // "#ContentPlaceHolder1_txtcertificateissuedate"
        var certificateIssueDate = '';
        //"#ContentPlaceHolder1_txtcertificateLastDate"
        var certificateIssueValidUpTo = '';

        try {
            affiliationDateExpiry = 'ContentPlaceHolder1_txt_AffdateExpiry';
        } catch (e) { }

        try {
            affiliationDate = 'ContentPlaceHolder1_txt_Affdate';
        } catch (e) { }


    </script>

    <script type="text/javascript">
        this.MinChange = function () {
            try {
                var ddlval = document.getElementById('ContentPlaceHolder1_minority').value;
                if (ddlval == "Y") {
                    document.getElementById('ContentPlaceHolder1_FileUpload3').setAttribute('required', '');
                    document.getElementById('ContentPlaceHolder1_dv_min').className = "col-md-12 col-sm-12 mobclass";
                }
                else {
                    document.getElementById('ContentPlaceHolder1_FileUpload3').removeAttribute('required');
                    document.getElementById('ContentPlaceHolder1_dv_min').className = "col-md-12 col-sm-12 mobclass hidden";
                }
            } catch (e) {

            }
        }

        MinChange();


    </script>

    <script>
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
            var phoneNo = document.getElementById('txtMobileNo');

            if (phoneNo.value == "" || phoneNo.value == null) {
                alert("Please enter your Mobile No.");
                return false;
            }
            if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
                alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
                return false;
            }

            alert("Success ");
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









</script>--%>