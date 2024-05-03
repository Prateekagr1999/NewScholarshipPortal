<%@ Page Title="" Language="C#" MasterPageFile="BlocksMasterPage.master" AutoEventWireup="true" CodeFile="Contactus-retired.aspx.cs" Inherits="Contactus" %>

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

        .vc_clearfix {
            height: 25px;
            width: 100%;
        }

        .cardImgSection {
            padding: 10px 0 0 0;
        }

        .cardImgWrapper {
            height: 120px;
            width: 120px;
            overflow: hidden;
            box-shadow: 0 0 10px rgb(0 0 0 / 35%);
            border-radius: 15px;
        }

        .cardttl {
            color: #589DBF;
            font-size: 15px;
            margin: 12px 0;
            font-weight: 600;
            margin-bottom: 0.2rem;
        }

        .cardSubttl {
            font-size: 14px;
            font-weight: 500;
            margin-top: 0;
            margin-bottom: 12px !important;
        }

        .cardWrapper {
            padding: 15px;
            border-radius: 15px;
        }

        .cardContentWrapper {
            padding: 13px 20px 5px;
        }

        .cardContent {
            padding-bottom: 6px;
            margin: 0;
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
                <div class="row">
                    <div class="col-xl-6 col-md-6 col-sm-12 col-xs-12 hvr hvr-glow cardWrapper">
                        <div class="col-sm-12 brdrtheme2" style="border-radius: 15px;">
                            <div class="row">
                                <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12" style="">
                                    <div class=" cardImgSection">
                                        <div class="cardImgWrapper" style="">
                                            <img class="img-responsive gen-card-img" src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="height: 100%; width: 100%;border:4px solid grey; border-radius:15px;">
                                        </div>
                                    </div>
                                    <div class="mt-2" style="padding: 0;">
                                        <p class="cardttl">Mr. Sheshnath Panday</p>
                                        <p class="cardSubttl">Joint Director</p>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="loreakfh" style="padding: 0; min-height: 150px;">
                                        <ul class="text-left cardContentWrapper">
                                            <li class="cardContent">Only for Other Minority Class (MIN).</li>
                                            <li class="cardContent">Except holidays.</li>
                                        </ul>
                                    </div>
                                    <div class="mt-2">
                                        <a href="tel:+9105222286199" class="btn brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                            <span class="fa fa-phone"></span>
                                            <span style="color: inherit;">0522-2286199</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6 col-sm-12 col-xs-12 hvr hvr-glow cardWrapper">
                        <div class="col-sm-12 brdrtheme2" style="border-radius: 15px;">
                            <div class="row">
                                <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12" style="">
                                    <div class="cardImgSection">
                                        <div class="cardImgWrapper">
                                            <img class="img-responsive gen-card-img" src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="height: 100%; width: 100%">
                                        </div>
                                    </div>
                                    <div class="mt-2" style="padding: 0;">
                                        <p class="cardttl">Mr. R. P. Singh</p>
                                        <p class="cardSubttl">Deputy Director</p>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="loreakfh" style="padding: 0; min-height: 150px;">
                                        <ul class="text-left cardContentWrapper">
                                            <li class="cardContent">Prematric and Postmatric (within state and Outside State).</li>
                                            <li class="cardContent">Only for Scheduled Caste (SC) and General Category (GENERAL).</li>
                                            <li class="cardContent">09:30 AM to 06:00 PM (except holidays)</li>
                                        </ul>
                                    </div>
                                    <div class="mt-2">
                                        <a href="tel:+9105223538700" class="btn brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                            <span class="fa fa-phone"></span>
                                            <span style="color: inherit;">0522-3538700</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vc_row-full-width vc_clearfix"></div>
                <div class="row">
                    <div class="col-xl-6 col-md-6 col-sm-12 col-xs-12 hvr hvr-glow cardWrapper">
                        <div class="col-sm-12 brdrtheme2" style="border-radius: 15px;">
                            <div class="row">
                                <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12" style="">
                                    <div class=" cardImgSection">
                                        <div class="cardImgWrapper">
                                            <img class="img-responsive gen-card-img" src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="height: 100%; width: 100%">
                                        </div>
                                    </div>
                                    <div class="mt-2" style="padding: 0;">
                                        <p class="cardttl">Mr. Ajeet Pratap Singh</p>
                                        <p class="cardSubttl">Deputy Director</p>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="loreakfh" style="padding: 0; min-height: 150px;">
                                        <ul class="text-left cardContentWrapper">
                                            <li class="cardContent">Prematric and Postmatric (within state and Outside State).</li>
                                            <li class="cardContent">Only for Other Backward Class (OBC).</li>
                                            <li class="cardContent">Except holidays.</li>
                                        </ul>
                                    </div>
                                    <div class="mt-2">
                                        <a href="tel:+9105222288861" class="btn brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                            <span class="fa fa-phone"></span>
                                            <span style="color: inherit;">Toll Free No:0522-2288861</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6 col-sm-12 col-xs-12 hvr hvr-glow cardWrapper">
                        <div class="col-sm-12 brdrtheme2" style="border-radius: 15px;">
                            <div class="row">
                                <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12" style="">
                                    <div class=" cardImgSection">
                                        <div class="cardImgWrapper">
                                            <img class="img-responsive gen-card-img" src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="height: 100%; width: 100%">
                                        </div>
                                    </div>
                                    <div class="mt-2" style="padding: 0;">
                                        <p class="cardttl">Mr. Siddharth Mishra</p>
                                        <p class="cardSubttl">Assistant Director</p>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="loreakfh" style="padding: 0; min-height: 150px;">
                                        <ul class="text-left cardContentWrapper">
                                            <li class="cardContent">Prematric and Postmatric (within state and Outside State).</li>
                                            <li class="cardContent">Only for Scheduled Caste (SC) and General Category (GENERAL).</li>
                                            <li class="cardContent">10:00 AM to 12:00 PM (except holidays).</li>
                                        </ul>
                                    </div>
                                    <div class="mt-2">
                                        <a href="tel:#" class="btn brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                            <span class="fa fa-phone"></span>
                                            <span style="color: inherit;"></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="vc_row-full-width vc_clearfix"></div>
                <div class="row">
                    <div class="col-xl-6 col-md-6 col-sm-12 col-xs-12 hvr hvr-glow cardWrapper">
                        <div class="col-sm-12 brdrtheme2" style="border-radius: 15px;">
                            <div class="row">
                                <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12" style="">
                                    <div class=" cardImgSection">
                                        <div class="cardImgWrapper">
                                            <img class="img-responsive gen-card-img" src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="height: 100%; width: 100%">
                                        </div>
                                    </div>
                                    <div class="mt-2" style="padding: 0;">
                                        <p class="cardttl">Minority Welfare Department</p>
                                        <p class="cardSubttl">Uttar Pradesh</p>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="loreakfh" style="padding: 0; min-height: 150px;">
                                        <ul class="text-left cardContentWrapper">
                                            <li class="cardContent">Only for Other Minority Class (OBC).</li>
                                        </ul>
                                    </div>
                                    <div class="mt-2">
                                        <a href="tel:+9105222286150" class="btn brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                            <span class="fa fa-phone"></span>
                                            <span style="color: inherit;">Toll Free No:0522-2286150</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6 col-sm-12 col-xs-12 hvr hvr-glow cardWrapper">
                        <div class="col-sm-12 brdrtheme2" style="border-radius: 15px;">
                            <div class="row">
                                <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12" style="">
                                    <div class=" cardImgSection">
                                        <div class="cardImgWrapper">
                                            <img class="img-responsive gen-card-img" src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/images/award/award-1.png" style="height: 100%; width: 100%">
                                        </div>
                                    </div>
                                    <div class="mt-2" style="padding: 0;">
                                        <p class="cardttl">Backward Class Welfare Department</p>
                                        <p class="cardSubttl">Uttar Pradesh</p>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-8 col-sm-12 col-xs-12">
                                    <div class="loreakfh" style="padding: 0; min-height: 150px;">
                                        <ul class="text-left cardContentWrapper">
                                            <li class="cardContent">Only for Other Backward Class (OBC).</li>
                                        </ul>
                                    </div>
                                    <div class="mt-2">
                                        <a href="tel:+9118001805131" class="btn brdrtheme1" style="transition: color 0.3s, background 0.3s, box-shadow 0.3s; color: black; border-radius: 5px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" onmouseover="this.style.color='white'; this.style.background='#589DBF';" onmouseout="this.style.color='black'; this.style.background='white';">
                                            <span class="fa fa-phone"></span>
                                            <span style="color: inherit;">Toll Free No:1800-180-5131</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--section-row end-->
</asp:Content>
