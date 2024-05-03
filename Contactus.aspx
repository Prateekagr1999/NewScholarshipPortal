<%@ Page Title="" Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("ContactUsMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <link rel="stylesheet" href="css/hover.css" type="text/css">
    <style>
        .bg-grey {
            background-color: #f1f3f4;
        }

        .section-list-bg {
            border-radius: 10px;
            padding: 30px 0;
        }

        .socialCont ul li a {
            font-size: 14px;
        }

        .panel-heading {
            border-start-start-radius: 10px;
            border-start-end-radius: 10px;
            min-width:290px;
        }

        .panel-body {
            height: 100%;
            padding: 0
        }

        .bg-light{
            background:#f8f9fa !important;
        }

        /*.awardListing {
            min-height: 90%;
        }*/

        @media screen and (max-width: 1220px) {
            .awardListing {
                /*min-height: 87%;*/
            }
        }

        @media screen and (max-width: 769px) {
            .socialCont {
                left:0;
            }
            .panel-heading{
                width:85vw;
            }
        }

        h3, h2 {
            margin: 0 !important;
        }

        .socialCont {
            position:relative !important;
            bottom:0;
        }

        .awardListing .awardContent {
            text-align: left;
        }

        .customMargin{
            margin-top:12px !important;
        }

        .custcard{
                border-radius: 12px;
    /* box-shadow: 0px 0px 5px 0px #999; */
    /* box-shadow: 0px 10px 1px #ddd, 0 10px 20px #ccc; */
    transition: box-shadow 0.4s;
    box-shadow: 0 4px 6px rgba(50, 50, 93, .15), 0 1px 3px rgba(0, 0, 0, .08);
        }
    </style>
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
                                    <span>Contact US    </span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <div class="section-list-bg">
                    <div class="thumbs_view">
                        <div class="equal-height" style="display: flex; justify-content: center;">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 custcard bg-light hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Social Welfare Department<br />समाज कल्याण विभाग</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing bg-light" style="border-radius: 15px;">
                                            <div class="awardContent">
                                                <h4 class="text-center">For Scheduled Caste and General Category</h4>
                                                <h5 class="text-center">(अनुसूचित जाति एवं सामान्य वर्ग के लिए)</h5>

                                                <h3 style="color: #589DBF">Mr. R P Singh</></h3>
                                                <h2>Deputy Director</></h2>
                                                <ul class="text-left">
                                                    <li>09:30 AM to 06:00 PM (except holidays)</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: 05223538700" style="color: inherit; text-decoration: none;"><span style="color: inherit;">0522-3538700</span></a></li>
                                                    </ul>
                                                </div>


                                                <h3 class="customMargin" style="color: #589DBF">Mr. Siddharth Mishra</h3>
                                                <h2>Assistant Director</></h2>
                                                <ul class="text-left">
                                                    <li>10:00 AM to 12:00 PM (except holidays)</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="#" style="color: inherit; text-decoration: none;"><span style="color: inherit;"></span></a></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 custcard bg-light hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Backward Welfare Department<br />पिछड़ा वर्ग कल्याण विभाग</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing bg-light" style="border-radius: 15px;">
                                            <div class="awardContent">
                                                <h4 class="text-center">For Other Backward Class<br /><br /></h4>
                                                <h5 class="text-center">(पिछड़ा वर्ग के लिए)</h5>
                                                <h3 style="color: #589DBF">Mr. Ajeet Pratap Singh</></h3>
                                                <h2>Deputy Director</h2>
                                                <ul class="text-left">
                                                    <li>Except holidays <br /><br /></li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 05222288861" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">0522-2288861</span></a></li>
                                                    </ul>
                                                </div>
                                                <br />
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 18001805131" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">1800-180-5131</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 custcard bg-light hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Minority Welfare Department<br />अल्पसंख्यक कल्याण विभाग</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing bg-light" style="border-radius: 15px;">
                                            <div class="awardContent">
                                                <h4 class="text-center">For Minority Class.<br /><br /></h4>
                                                <h5 class="text-center">(अल्पसंख्यक वर्ग के लिए)</h5>
                                                <h3 style="color: #589DBF">Mr. Sheshnath Panday</></h3>
                                                <h2>Joint Director</></h2>
                                                <ul class="text-left">
                                                    <li>Except holidays.<br /><br /></li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: 05223538700" style="color: inherit; text-decoration: none;"><span style="color: inherit;">0522-3538700</span></a></li>
                                                    </ul>
                                                </div>
                                                <br />
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 05222286150" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">0522-2286150</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 custcard bg-light hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Tribal Development Department<br />आदिवासी विकास विभाग</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing bg-light" style="border-radius: 15px;">
                                            <div class="awardContent">
                                                <h4 class="text-center">For Scheduled Tribes Class <br /><br /></h4>
                                                <h5 class="text-center">(अनुसूचित जनजाति वर्ग के लिए)</h5>
                                                <h3 style="color: #589DBF">Officer Name Here</></h3>
                                                <h2>Designation Here</></h2>
                                                <ul class="text-left">
                                                    <li>Availibility Timings<br /><br /></li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><span>&nbsp;</span></li>
                                                    </ul>
                                                </div>
                                                <br />
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><span>&nbsp;</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<%--                <div class="section-list-bg">
                    <div class="thumbs_view">
                        <div class="equal-height" style="display: flex; justify-content: center;">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Minority Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing" style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Mr. Sheshnath Panday</></h3>
                                                <h2>Joint Director</></h2>
                                                <ul class="text-left">
                                                    <li>Only for Other Minority Class (MIN).</li>
                                                    <li>Except holidays.</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: 05223538700" style="color: inherit; text-decoration: none;"><span style="color: inherit;">0522-3538700</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Social Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing" style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Mr. R P Singh</></h3>
                                                <h2>Deputy Director</></h2>
                                                <ul class="text-left">
                                                    <li>Only for Scheduled Caste (SC) and General Category (GENERAL).</li>
                                                    <li>09:30 AM to 06:00 PM (except holidays)</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: 05223538700" style="color: inherit; text-decoration: none;"><span style="color: inherit;">0522-3538700</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Backward Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing" style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Mr. Ajeet Pratap Singh</></h3>
                                                <h2>Deputy Director</h2>
                                                <ul class="text-left">
                                                    <li>Only for Other Backward Class (OBC).</li>
                                                    <li>Except holidays</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 05222288861" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">0522-2288861</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Social Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing" style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Mr. Siddharth Mishra</></h3>
                                                <h2>Assistant Director</></h2>
                                                <ul class="text-left">
                                                    <li>Only for Scheduled Caste (SC) and General Category (GENERAL).</li>
                                                    <li>10:00 AM to 12:00 PM (except holidays)</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><span>&nbsp;</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Minority Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing" style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Minority Welfare Department</h3>
                                                <h2>Uttar Pradesh</h2>
                                                <ul class="text-left">
                                                    <li>Only for Other Minority Class (OBC).</li>
                                                    <li>Only for within State.</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 05222286150" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">0522-2286150</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Social Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing " style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Social Welfare Department</h3>
                                                <h2>Uttar Pradesh</></h2>
                                                <ul class="text-left">
                                                    <li>Only for Scheduled Caste (SC) and General Category (GENERAL).</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 05223538700" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">0522-3538700</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="border-radius: 15px;">
                                <div class="panel brdrtheme1 hvr hvr-glow" style="border-radius: 15px;">
                                    <div class="panel-heading bgtheme" style="color: white;">
                                        <div class="panel-title">Backward Welfare Department</div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="awardListing " style="border-radius: 15px;">
                                            <div class="pressImage">
                                                <img src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="box-shadow: 0 0 10px rgb(0 0 0 / 35%);">
                                            </div>
                                            <div class="awardContent">
                                                <h3 style="color: #589DBF">Backward Class Welfare Department</h3>
                                                <h2>Uttar Pradesh</></h2>
                                                <ul class="text-left">
                                                    <li>Only for Other Backward Class (OBC).</li>
                                                    <li>Only for within State.</li>
                                                </ul>
                                                <div class="socialCont brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                                    <ul>
                                                        <li><span class="fa fa-phone"></span></li>
                                                        <li><a href="Tel: +91 18001805131" style="color: inherit; text-decoration: none;">Toll Free No:<span style="color: inherit;">1800-180-5131</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </section>
    <!--section-row end-->
</asp:Content>
