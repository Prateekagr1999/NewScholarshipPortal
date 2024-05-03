<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var studentsElement = document.getElementById("HelpMenu");
        if (studentsElement) {
            studentsElement.classList.add("active");
        }
    </script>
    <style>
        .marquee-container {
            overflow: hidden;
        }

        .marquee {
            white-space: nowrap;
            animation: marquee 20s linear infinite;
        }

        @keyframes marquee {
            0% {
                transform: translateX(100%);
            }

            100% {
                transform: translateX(-100%);
            }
        }

        h4 {
            margin: 15px 0;
            font-weight: 600;
            font-size: 1.3em;
        }
    </style>
    <script>
        var marqueeAnimation;

        function stopMarquee() {
            var marquee = document.querySelector('.marquee');
            marquee.style.animationPlayState = 'paused';
        }

        function startMarquee() {
            var marquee = document.querySelector('.marquee');
            marquee.style.animationPlayState = 'running';
        }
    </script>
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
                                    <span>Help</span>
                                </li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="row-content">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-xs-12" style="padding-left: 0px; padding-right: 20px; margin-top: 20px;"></div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding-left: 0px; padding-right: 20px; margin-top: 20px; line-height: 12px; padding: 5px 15px 5px 15px;">
                    <%--<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding: 0px; border: 2px solid darkcyan;box-shadow: 0 0 10px rgb(0 0 0 / 50%);border-radius:10px;">--%>
                    <%--<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 " style="padding: 0px; border: 2px solid darkcyan;border-radius: 21px; background: #e0e0e0; box-shadow: inset 5px -5px 11px #747474, inset -5px 5px 11px #ffffff;">--%>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 brdrtheme2" style="padding: 0px; border-radius: 22px; background: linear-gradient(145deg, #e6e6e6, #ffffff); box-shadow: 20px 20px 18px #c9c9c9, -20px -20px 18px #ffffff;">
                        <div class="single_sidebar wow fadeInDown">
                            <h2 style="text-align: center"><span class="bgtheme" style="color: white; padding: 4px 10px 4px 10px; box-shadow: 0 0 10px rgb(0 0 0 /45%); border-radius: 15px;">HELP - May We Help You</span></h2>

                            <h4 style="text-align: center"><a href="https://scholarship.up.gov.in/PDFS/%E0%A4%9B%E0%A4%BE%E0%A4%A4%E0%A5%8D%E0%A4%B0%E0%A4%BE%20%E0%A4%B9%E0%A5%87%E0%A4%A4%E0%A5%81%20%E0%A4%AE%E0%A4%B9%E0%A4%A4%E0%A5%8D%E0%A4%A4%E0%A5%8D%E0%A4%B5%E0%A4%AA%E0%A5%82%E0%A4%B0%E0%A5%8D%E0%A4%A3%20%E0%A4%A8%E0%A4%BF%E0%A4%B0%E0%A5%8D%E0%A4%A6%E0%A5%87%E0%A4%B6%20.pdf" target="_blank">General Instruction for Students (छात्रों के लिए सामान्य निर्देश)</a></h4>
                            <br>
                            <h4 style="text-align: center"><a href="https://scholarship.up.gov.in/pdfs/%E0%A4%AA%E0%A5%8D%E0%A4%B0%E0%A4%A6%E0%A5%87%E0%A4%B6%20%E0%A4%B8%E0%A5%87%20%E0%A4%AC%E0%A4%BE%E0%A4%B9%E0%A4%B0%20%E0%A4%85%E0%A4%A7%E0%A5%8D%E0%A4%AF%E0%A4%AF%E0%A4%A8%E0%A4%B0%E0%A4%A4%20%E0%A4%89%E0%A4%A4%E0%A5%8D%E0%A4%A4%E0%A4%B0%20%E0%A4%AA%E0%A5%8D%E0%A4%B0%E0%A4%A6%E0%A5%87%E0%A4%B6%20.pdf" target="_blank">General Instructions for Outside State Institutions/Students (अन्य राज्य के छात्रों एवं संस्थानों के लिए सामान्य निर्देश)</a></h4>
                            <br>
                            <h4 style="text-align: center"><a href="https://scholarship.up.gov.in/pdfs/Advertisement%202023-24.pdf" target="_blank">Advertisement (सार्वजनिक सूचना) (Session2023-24) </a></h4>
                            <br>
                            <h4 style="text-align: center">OUTSIDE STATE INSTITUTIONS REGISTRATION FORM (अन्य राज्य के संस्थानों के लिए पंजीकरण फॉर्म)=><a href="https://scholarship.up.gov.in/pdfs/Application%20form%202020-21%20OUT%20OF%20STATE.docx" target="_blank">हिंदी</a>
                            </h4>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-xs-12" style="padding-left: 0px; padding-right: 20px; margin-top: 20px;"></div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 brdrtheme2" style="padding-left: 0px; padding-right: 20px; margin-top: 20px; border-radius: 15px;">
                    <div class="marquee-container" onmouseenter="stopMarquee()" onmouseleave="startMarquee()">
                        <h3 class="marquee">
                            <span class="fa fa-hand-o-right"></span>Toll Free No (OBC): 1800 180 5131 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="fa fa-hand-o-right"></span>Toll Free No (Minority): 1800 180 5229 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="fa fa-hand-o-right"></span>Contact No (SC & GEN): 9621650064
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--section-row end-->
</asp:Content>
