<%@ Page Title="" Language="C#" MasterPageFile="SecondMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--section-row start-->
    <section class="section-row ">
        <div class="container">
            <div class="page-head">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <div id="breadcrumb" class="push-left" role="navigation" aria-label="breadcrumb">
                            <ul class="breadcrumbs">
                                <li><a href="index.aspx" class="home"><span>Home</span></a></li>
                                <li class="current">Feedback</li>
                            </ul>
                            <!-- .breadcrumbs -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" id="row-content">
            <div class="switchViewHead">
                <div class="row">
                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12">
                        <h1>Feedback</h1>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 hidden-xs hide">
                        <div class="viewSwicther push-right clearfix">
                            <a href="#" tabindex="0" class="thumbs-view-btn" aria-label="Grid View" title="Grid View"><span class="icon-thumbs-view" aria-hidden="true"></span></a>
                            <a href="#" tabindex="0" class="thumbs-list-view-btn" aria-label="List View" title="List View"><span class="icon-list-view" aria-hidden="true"></span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div role="form" class="wpcf7" id="wpcf7-f743-p717-o1" lang="en-US" dir="ltr">
                        <div class="screen-reader-response" aria-live="polite"></div>
                        <form action="#" method="post" class="wpcf7-form" novalidate="novalidate">
                            <div style="display: none;">
                                <input type="hidden" name="_wpcf7" value="743">
                                <input type="hidden" name="_wpcf7_version" value="5.1.9">
                                <input type="hidden" name="_wpcf7_locale" value="en_US">
                                <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f743-p717-o1">
                                <input type="hidden" name="_wpcf7_container_post" value="717">
                            </div>
                            <div class="border box bg-grey-light">
                                <div class="push-center col-lg-8  box bg-white">
                                    <label class="label">Your Name (required) </label>
                                    <span class="wpcf7-form-control-wrap your-name">
                                        <input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required input" autocomplete="off" aria-required="true" aria-invalid="false"></span>
                                    <label class="label">Your Email (required)</label>
                                    <span class="wpcf7-form-control-wrap your-email">
                                        <input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email input" autocomplete="off" aria-required="true" aria-invalid="false"></span>
                                    <label class="label">Subject </label>
                                    <span class="wpcf7-form-control-wrap your-subject">
                                        <input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text input" autocomplete="off" aria-invalid="false"></span>
                                    <label class="label">Your Message (required) </label>
                                    <span class="wpcf7-form-control-wrap your-message">
                                        <textarea name="your-message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required textarea" autocomplete="off" aria-required="true" aria-invalid="false"></textarea></span>
                                    <label class="label">
                                        <span class="wpcf7-form-control-wrap securimage_wp"></span>
                                        <div class="siwp-captcha-cntr" id="siwp_captcha_container_0">
                                            <div style="float: left">
                                                <img id="siwp_captcha_image_0" src="captcha.ashx" alt="CAPTCHA Image" style="vertical-align: middle; margin-right: 10px; height: 45px;" class="siwp_img">
                                            </div>
                                            <div class="audio-refresh-box" style="float: left">
                                                <a class="captcha-refresh-btn" tabindex="0" style="border-style: none;" href="#" aria-label="Refresh Image" title="Refresh Image" onclick="siwp_refresh('0', siwp_captcha_image_0_audioObj); this.blur(); return false"><span class="fa fa-refresh"><strong class="hide">Refresh</strong></span></a>
                                            </div>
                                            <div style="clear: both;"></div>
                                            <label for="siwp_captcha_value_0"></label>
                                            <input type="hidden" id="input_siwp_captcha_id_0" name="scid" value="b36f03d052004e607c0f3f2a2f1c6707a780fa5f"><input type="hidden" id="tok_eccd3d5b4573dcfbecff2cb236202166c6737d53" name="tok_eccd3d5b4573dcfbecff2cb236202166c6737d53" value="5f77887d6ebab0f1bd8b98602d94e8a08b011d32"><input class="enter-captcha" placeholder="Enter Code" id="siwp_captcha_value_0" name="siwp_captcha_value" size="10" maxlength="8" type="text" aria-required="true">
                                        </div>
                                    </label>
                                    <input type="submit" value="Send" class="wpcf7-form-control wpcf7-submit btn btn-gov accent-color">
                                </div>
                            </div>
                            <div class="wpcf7-response-output wpcf7-display-none" aria-hidden="true"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

