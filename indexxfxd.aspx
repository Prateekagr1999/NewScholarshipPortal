<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indexxfxd.aspx.cs" Inherits="index" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Uttar Pradesh Scholarship Portal</title>
    <link rel="icon" href="https://scholarship.up.gov.in/imagesnew/l.jpg" type="image/x-icon">
    <link rel="stylesheet" href="css/print.css" type="text/css" media="print">
    <meta name="robots" content="max-image-preview:large">
    <meta name="description" content="Scholarship and Fee Reimbursement System of Uttar Pradesh.">
    <meta name="keywords" content="Scholarship, UP Scholarship, UP GOV Scholarship">
    <link rel="stylesheet" id="wp-block-library-css" href="css/style.min.css" media="all">
    <link rel="stylesheet" href="css/hover.css" type="text/css">


    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden; /* Prevent scrolling while loading */
        }

        header, main, footer {
            filter: blur(8px); /* Apply blur effect to header, main, and footer */
            transition: filter 0.5s ease-out; /* Add a smooth transition */
        }

        .loader-container {
            width: 6em;
            height: 6em;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 9999; /* Make sure it's above other content */
            display: block; /* Initially visible */
        }

        .pl {
            width: 100%;
            height: 100%;
            animation: rotate 2s linear infinite;
        }

        .pl__ring {
            animation: ringA 2s linear infinite;
        }

        .pl__ring--a {
            stroke: #f42f25;
        }

        .pl__ring--b {
            animation-name: ringB;
            stroke: #f49725;
        }

        .pl__ring--c {
            animation-name: ringC;
            stroke: #255ff4;
        }

        .pl__ring--d {
            animation-name: ringD;
            stroke: #f42582;
        }

        /* Animations */
        @keyframes rotate {
            100% {
                transform: rotate(360deg);
            }
        }

        @keyframes ringA {
            from, 4% {
                stroke-dasharray: 0 660;
                stroke-width: 20;
                stroke-dashoffset: -330;
            }

            12% {
                stroke-dasharray: 60 600;
                stroke-width: 30;
                stroke-dashoffset: -335;
            }

            32% {
                stroke-dasharray: 60 600;
                stroke-width: 30;
                stroke-dashoffset: -595;
            }

            40%, 54% {
                stroke-dasharray: 0 660;
                stroke-width: 20;
                stroke-dashoffset: -660;
            }

            62% {
                stroke-dasharray: 60 600;
                stroke-width: 30;
                stroke-dashoffset: -665;
            }

            82% {
                stroke-dasharray: 60 600;
                stroke-width: 30;
                stroke-dashoffset: -925;
            }

            90%, to {
                stroke-dasharray: 0 660;
                stroke-width: 20;
                stroke-dashoffset: -990;
            }
        }

        @keyframes ringB {
            from, 12% {
                stroke-dasharray: 0 220;
                stroke-width: 20;
                stroke-dashoffset: -110;
            }

            20% {
                stroke-dasharray: 20 200;
                stroke-width: 30;
                stroke-dashoffset: -115;
            }

            40% {
                stroke-dasharray: 20 200;
                stroke-width: 30;
                stroke-dashoffset: -195;
            }

            48%, 62% {
                stroke-dasharray: 0 220;
                stroke-width: 20;
                stroke-dashoffset: -220;
            }

            70% {
                stroke-dasharray: 20 200;
                stroke-width: 30;
                stroke-dashoffset: -225;
            }

            90% {
                stroke-dasharray: 20 200;
                stroke-width: 30;
                stroke-dashoffset: -305;
            }

            98%, to {
                stroke-dasharray: 0 220;
                stroke-width: 20;
                stroke-dashoffset: -330;
            }
        }

        @keyframes ringC {
            from {
                stroke-dasharray: 0 440;
                stroke-width: 20;
                stroke-dashoffset: 0;
            }

            8% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -5;
            }

            28% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -175;
            }

            36%, 58% {
                stroke-dasharray: 0 440;
                stroke-width: 20;
                stroke-dashoffset: -220;
            }

            66% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -225;
            }

            86% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -395;
            }

            94%, to {
                stroke-dasharray: 0 440;
                stroke-width: 20;
                stroke-dashoffset: -440;
            }
        }

        @keyframes ringD {
            from, 8% {
                stroke-dasharray: 0 440;
                stroke-width: 20;
                stroke-dashoffset: 0;
            }

            16% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -5;
            }

            36% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -175;
            }

            44%, 50% {
                stroke-dasharray: 0 440;
                stroke-width: 20;
                stroke-dashoffset: -220;
            }

            58% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -225;
            }

            78% {
                stroke-dasharray: 40 400;
                stroke-width: 30;
                stroke-dashoffset: -395;
            }

            86%, to {
                stroke-dasharray: 0 440;
                stroke-width: 20;
                stroke-dashoffset: -440;
            }
        }
    </style>


  <%--  <!-- Styles -->
    <style>
        #chartdiv {
            width: 100%;
            height: 300px;
        }

        #chartdiv2 {
            width: 100%;
            height: 300px;
        }

        #chartdiv1 {
            width: 100%;
            height: 300px;
        }
    </style>

    <!-- Resources -->
    <!-- Resources -->
    <script src="https://cdn.amcharts.com/lib/5/index.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
    <script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>

    <script>
        function createXYChart(containerID) {
            am5.ready(function () {
                // Create root element
                var root = am5.Root.new(containerID);

                // Set themes
                root.setThemes([am5themes_Animated.new(root)]);

                // Create chart
                var chart = root.container.children.push(am5xy.XYChart.new(root, {
                    panX: false,
                    panY: false,
                    paddingLeft: 0,
                    wheelX: "panX",
                    wheelY: "zoomX",
                    layout: root.verticalLayout
                }));

                // Add legend
                var legend = chart.children.push(
                    am5.Legend.new(root, {
                        centerX: am5.p50,
                        x: am5.p50
                    })
                );

                var data = [{
                    "Scheme": "Prematric",
                    "Gen": 2.7,
                    "obc": 2.5,
                    "min": 2.1,
                    "sc": 1,
                    "st": 0.8
                }, {
                    "Scheme": "Postmatric",
                    "Gen": 2.6,
                    "obc": 2.7,
                    "min": 2.2,
                    "sc": 0.5,
                    "st": 0.4
                }, {
                    "Scheme": "Postmatric_Otherthan_Inter",
                    "Gen": 2.8,
                    "obc": 2.9,
                    "min": 2.4,
                    "sc": 0.3,
                    "st": 0.9
                }];

                // Create axes
                var xRenderer = am5xy.AxisRendererX.new(root, {
                    cellStartLocation: 0.1,
                    cellEndLocation: 0.9,
                    minorGridEnabled: true
                });

                var xAxis = chart.xAxes.push(am5xy.CategoryAxis.new(root, {
                    categoryField: "Scheme",
                    renderer: xRenderer,
                    tooltip: am5.Tooltip.new(root, {})
                }));

                xRenderer.grid.template.setAll({
                    location: 1
                });

                xAxis.data.setAll(data);

                var yAxis = chart.yAxes.push(am5xy.ValueAxis.new(root, {
                    renderer: am5xy.AxisRendererY.new(root, {
                        strokeOpacity: 0.1
                    })
                }));

                // Add series
                function makeSeries(name, fieldName) {
                    var series = chart.series.push(am5xy.ColumnSeries.new(root, {
                        name: name,
                        xAxis: xAxis,
                        yAxis: yAxis,
                        valueYField: fieldName,
                        categoryXField: "Scheme"
                    }));

                    series.columns.template.setAll({
                        tooltipText: "{name}, {categoryX}:{valueY}",
                        width: am5.percent(90),
                        tooltipY: 0,
                        strokeOpacity: 0
                    });

                    series.data.setAll(data);

                    // Make stuff animate on load
                    series.appear();

                    series.bullets.push(function () {
                        return am5.Bullet.new(root, {
                            locationY: 0,
                            sprite: am5.Label.new(root, {
                                text: "{valueY}",
                                fill: root.interfaceColors.get("alternativeText"),
                                centerY: 0,
                                centerX: am5.p50,
                                populateText: true
                            })
                        });
                    });

                    legend.data.push(series);
                }

                makeSeries("General", "Gen");
                makeSeries("OBC", "obc");
                makeSeries("Minority", "min");
                makeSeries("SC", "st");
                makeSeries("ST", "sc");

                // Make stuff animate on load
                chart.appear(1000, 100);

            }); // end am5.ready()
        }

        function createPieChart(containerID) {
            am5.ready(function () {
                // Create root element
                var root = am5.Root.new(containerID);

                // Set themes
                root.setThemes([am5themes_Animated.new(root)]);

                // Create chart
                var chart = root.container.children.push(
                    am5percent.PieChart.new(root, {
                        endAngle: 270,
                        layout: root.verticalLayout,
                        innerRadius: am5.percent(60)
                    })
                );

                // Create series
                var series = chart.series.push(
                    am5percent.PieSeries.new(root, {
                        valueField: "value",
                        categoryField: "category",
                        endAngle: 270
                    })
                );

                series.set("colors", am5.ColorSet.new(root, {
                    colors: [
                        am5.color(0x73556E),
                        am5.color(0x9FA1A6),
                        am5.color(0xF2AA6B),
                        am5.color(0xF28F6B),
                        am5.color(0xA95A52),
                        am5.color(0xE35B5D),
                        am5.color(0xFFA446)
                    ]
                }));

                var gradient = am5.RadialGradient.new(root, {
                    stops: [
                        { color: am5.color(0x000000) },
                        { color: am5.color(0x000000) },
                        {}
                    ]
                });

                series.slices.template.setAll({
                    fillGradient: gradient,
                    strokeWidth: 2,
                    stroke: am5.color(0xffffff),
                    cornerRadius: 10,
                    shadowOpacity: 0.1,
                    shadowOffsetX: 2,
                    shadowOffsetY: 2,
                    shadowColor: am5.color(0x000000),
                    fillPattern: am5.GrainPattern.new(root, {
                        maxOpacity: 0.2,
                        density: 0.5,
                        colors: [am5.color(0x000000)]
                    })
                });

                series.slices.template.states.create("hover", {
                    shadowOpacity: 1,
                    shadowBlur: 10
                });

                series.ticks.template.setAll({
                    strokeOpacity: 0.4,
                    strokeDasharray: [2, 2]
                });

                series.states.create("hidden", {
                    endAngle: -90
                });

                // Set data
                series.data.setAll([{
                    category: "General",
                    value: 500
                }, {
                    category: "OBC",
                    value: 400
                }, {
                    category: "Min",
                    value: 300
                }, {
                    category: "ST",
                    value: 200
                }, {
                    category: "Sc",
                    value: 100
                }]);

                var legend = chart.children.push(am5.Legend.new(root, {
                    centerX: am5.percent(50),
                    x: am5.percent(50),
                    marginTop: 15,
                    marginBottom: 15,
                }));
                legend.markerRectangles.template.adapters.add("fillGradient", function () {
                    return undefined;
                });
                legend.data.setAll(series.dataItems);

                series.appear(1000, 100);

            }); // end am5.ready()
        }

        function createNestedPieChart(containerId, preVal, preVal_Gen, preVal_OBC, preVal_ST, preVal_SC, postVal, postVal_Gen, postVal_OBC, postVal_ST, postVal_SC, post_otherVal, post_otherVal_Gen, post_otherVal_OBC, post_otherVal_ST, post_otherVal_SC, osval, osval_Gen, osval_Res) {
            am5.ready(function () {
                var root = am5.Root.new(containerId);

                // Set themes
                root.setThemes([am5themes_Animated.new(root)]);

                var container = root.container.children.push(
                    am5.Container.new(root, {
                        width: am5.p100,
                        height: am5.p100,
                        layout: root.horizontalLayout
                    })
                );

                // Create main chart
                var chart = container.children.push(
                    am5percent.PieChart.new(root, {
                        tooltip: am5.Tooltip.new(root, {})
                    })
                );

                // Create series
                var series = chart.series.push(
                    am5percent.PieSeries.new(root, {
                        valueField: "value",
                        categoryField: "category",
                        alignLabels: false
                    })
                );

                series.labels.template.setAll({
                    textType: "circular",
                    radius: 10
                });
                series.ticks.template.set("visible", false);
                series.slices.template.set("toggleKey", "none");

                // add events
                series.slices.template.events.on("click", function (e) {
                    selectSlice(e.target);
                });

                // Create sub chart
                var subChart = container.children.push(
                    am5percent.PieChart.new(root, {
                        radius: am5.percent(50),
                        tooltip: am5.Tooltip.new(root, {})
                    })
                );

                // Create sub series
                var subSeries = subChart.series.push(
                    am5percent.PieSeries.new(root, {
                        valueField: "value",
                        categoryField: "category"
                    })
                );

                subSeries.data.setAll([
                    { category: "A", value: 0 },
                    { category: "B", value: 0 },
                    { category: "C", value: 0 },
                    { category: "D", value: 0 },
                    { category: "E", value: 0 },
                    { category: "F", value: 0 },
                    { category: "G", value: 0 }
                ]);
                subSeries.slices.template.set("toggleKey", "none");

                var selectedSlice;

                series.on("startAngle", function () {
                    updateLines();
                });

                container.events.on("boundschanged", function () {
                    root.events.once("frameended", function () {
                        updateLines();
                    })
                });

                function updateLines() {
                    if (selectedSlice) {
                        var startAngle = selectedSlice.get("startAngle");
                        var arc = selectedSlice.get("arc");
                        var radius = selectedSlice.get("radius");

                        var x00 = radius * am5.math.cos(startAngle);
                        var y00 = radius * am5.math.sin(startAngle);

                        var x10 = radius * am5.math.cos(startAngle + arc);
                        var y10 = radius * am5.math.sin(startAngle + arc);

                        var subRadius = subSeries.slices.getIndex(0).get("radius");
                        var x01 = 0;
                        var y01 = -subRadius;

                        var x11 = 0;
                        var y11 = subRadius;

                        var point00 = series.toGlobal({ x: x00, y: y00 });
                        var point10 = series.toGlobal({ x: x10, y: y10 });

                        var point01 = subSeries.toGlobal({ x: x01, y: y01 });
                        var point11 = subSeries.toGlobal({ x: x11, y: y11 });

                        line0.set("points", [point00, point01]);
                        line1.set("points", [point10, point11]);
                    }
                }

                // lines
                var line0 = container.children.push(
                    am5.Line.new(root, {
                        position: "absolute",
                        stroke: root.interfaceColors.get("text"),
                        strokeDasharray: [2, 2]
                    })
                );
                var line1 = container.children.push(
                    am5.Line.new(root, {
                        position: "absolute",
                        stroke: root.interfaceColors.get("text"),
                        strokeDasharray: [2, 2]
                    })
                );

                // Set data
                series.data.setAll([
                    {
                        category: "Prematric",
                        value: preVal,
                        subData: [
                            { category: "GEN", value: preVal_Gen },
                            { category: "OBC", value: preVal_OBC },
                            { category: "ST", value: preVal_ST },
                            { category: "SC", value: preVal_SC }
                        ]
                    },
                    {
                        category: "Postmatric",
                        value: postVal,
                        subData: [
                            { category: "GEN", value: postVal_Gen },
                            { category: "OBC", value: postVal_OBC },
                            { category: "ST", value: postVal_ST },
                            { category: "SC", value: postVal_SC }
                        ]
                    },
                    {
                        category: "OtherThan Inter",
                        value: post_otherVal,
                        subData: [
                            { category: "GEN", value: post_otherVal_Gen },
                            { category: "OBC", value: post_otherVal_OBC },
                            { category: "ST", value: post_otherVal_ST },
                            { category: "SC", value: post_otherVal_SC }
                        ]
                    },
                    {
                        category: "Other State",
                        value: osval,
                        subData: [
                            { category: "GEN", value: osval_Gen },
                            { category: "RESERV", value: osval_Res }
                        ]
                    }
                ]);

                function selectSlice(slice) {
                    selectedSlice = slice;
                    var dataItem = slice.dataItem;
                    var dataContext = dataItem.dataContext;

                    if (dataContext) {
                        var i = 0;
                        subSeries.data.each(function (dataObject) {
                            var dataObj = dataContext.subData[i];
                            if (dataObj) {
                                if (!subSeries.dataItems[i].get("visible")) {
                                    subSeries.dataItems[i].show();
                                }
                                subSeries.data.setIndex(i, dataObj);
                            }
                            else {
                                subSeries.dataItems[i].hide();
                            }

                            i++;
                        });
                    }

                    var middleAngle = slice.get("startAngle") + slice.get("arc") / 2;
                    var firstAngle = series.dataItems[0].get("slice").get("startAngle");

                    series.animate({
                        key: "startAngle",
                        to: firstAngle - middleAngle,
                        duration: 1000,
                        easing: am5.ease.out(am5.ease.cubic)
                    });
                    series.animate({
                        key: "endAngle",
                        to: firstAngle - middleAngle + 360,
                        duration: 1000,
                        easing: am5.ease.out(am5.ease.cubic)
                    });
                }

                container.appear(1000, 10);

                series.events.on("datavalidated", function () {
                    selectSlice(series.slices.getIndex(0));
                });

            }); // end am5.ready()
        }

        // calling functions to create charts:
        createNestedPieChart("chartdiv", 350, 100, 50, 80, 120, 300, 80, 100, 20, 100, 250, 100, 50, 50, 50, 200, 75, 125);
        createXYChart("chartdiv1");
        createPieChart("chartdiv2");
    </script>--%>


    <style id="classic-theme-styles-inline-css" type="text/css">
        /*! This file is auto-generated */
        .wp-block-button__link {
            color: #fff;
            background-color: #32373c;
            border-radius: 9999px;
            box-shadow: none;
            text-decoration: none;
            padding: calc(.667em + 2px) calc(1.333em + 2px);
            font-size: 1.125em
        }

        .wp-block-file__button {
            background: #32373c;
            color: #fff;
            text-decoration: none
        }
    </style>
    <style id="global-styles-inline-css" type="text/css">
        body {
            --wp--preset--color--black: #000000;
            --wp--preset--color--cyan-bluish-gray: #abb8c3;
            --wp--preset--color--white: #ffffff;
            --wp--preset--color--pale-pink: #f78da7;
            --wp--preset--color--vivid-red: #cf2e2e;
            --wp--preset--color--luminous-vivid-orange: #ff6900;
            --wp--preset--color--luminous-vivid-amber: #fcb900;
            --wp--preset--color--light-green-cyan: #7bdcb5;
            --wp--preset--color--vivid-green-cyan: #00d084;
            --wp--preset--color--pale-cyan-blue: #8ed1fc;
            --wp--preset--color--vivid-cyan-blue: #0693e3;
            --wp--preset--color--vivid-purple: #9b51e0;
            --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);
            --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
            --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);
            --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);
            --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
            --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
            --wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
            --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
            --wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
            --wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
            --wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
            --wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
            --wp--preset--font-size--small: 13px;
            --wp--preset--font-size--medium: 20px;
            --wp--preset--font-size--large: 36px;
            --wp--preset--font-size--x-large: 42px;
            --wp--preset--spacing--20: 0.44rem;
            --wp--preset--spacing--30: 0.67rem;
            --wp--preset--spacing--40: 1rem;
            --wp--preset--spacing--50: 1.5rem;
            --wp--preset--spacing--60: 2.25rem;
            --wp--preset--spacing--70: 3.38rem;
            --wp--preset--spacing--80: 5.06rem;
            --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
            --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
            --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
        }

        :where(.is-layout-flex) {
            gap: 0.5em;
        }

        :where(.is-layout-grid) {
            gap: 0.5em;
        }

        body .is-layout-flow > .alignleft {
            float: left;
            margin-inline-start: 0;
            margin-inline-end: 2em;
        }

        body .is-layout-flow > .alignright {
            float: right;
            margin-inline-start: 2em;
            margin-inline-end: 0;
        }

        body .is-layout-flow > .aligncenter {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained > .alignleft {
            float: left;
            margin-inline-start: 0;
            margin-inline-end: 2em;
        }

        body .is-layout-constrained > .alignright {
            float: right;
            margin-inline-start: 2em;
            margin-inline-end: 0;
        }

        body .is-layout-constrained > .aligncenter {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)) {
            max-width: var(--wp--style--global--content-size);
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained > .alignwide {
            max-width: var(--wp--style--global--wide-size);
        }

        body .is-layout-flex {
            display: flex;
        }

        body .is-layout-flex {
            flex-wrap: wrap;
            align-items: center;
        }

            body .is-layout-flex > * {
                margin: 0;
            }

        body .is-layout-grid {
            display: grid;
        }

            body .is-layout-grid > * {
                margin: 0;
            }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        :where(.wp-block-columns.is-layout-grid) {
            gap: 2em;
        }

        :where(.wp-block-post-template.is-layout-flex) {
            gap: 1.25em;
        }

        :where(.wp-block-post-template.is-layout-grid) {
            gap: 1.25em;
        }

        .has-black-color {
            color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-color {
            color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-color {
            color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-color {
            color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-color {
            color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-color {
            color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-color {
            color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-color {
            color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-color {
            color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-color {
            color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-color {
            color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-color {
            color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-background-color {
            background-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-background-color {
            background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-background-color {
            background-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-background-color {
            background-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-background-color {
            background-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-background-color {
            background-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-background-color {
            background-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-background-color {
            background-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-background-color {
            background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-background-color {
            background-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-border-color {
            border-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-border-color {
            border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-border-color {
            border-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-border-color {
            border-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-border-color {
            border-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-border-color {
            border-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-border-color {
            border-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-border-color {
            border-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-border-color {
            border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-border-color {
            border-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
            background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
        }

        .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
            background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
        }

        .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-orange-to-vivid-red-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
        }

        .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
            background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
        }

        .has-cool-to-warm-spectrum-gradient-background {
            background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
        }

        .has-blush-light-purple-gradient-background {
            background: var(--wp--preset--gradient--blush-light-purple) !important;
        }

        .has-blush-bordeaux-gradient-background {
            background: var(--wp--preset--gradient--blush-bordeaux) !important;
        }

        .has-luminous-dusk-gradient-background {
            background: var(--wp--preset--gradient--luminous-dusk) !important;
        }

        .has-pale-ocean-gradient-background {
            background: var(--wp--preset--gradient--pale-ocean) !important;
        }

        .has-electric-grass-gradient-background {
            background: var(--wp--preset--gradient--electric-grass) !important;
        }

        .has-midnight-gradient-background {
            background: var(--wp--preset--gradient--midnight) !important;
        }

        .has-small-font-size {
            font-size: var(--wp--preset--font-size--small) !important;
        }

        .has-medium-font-size {
            font-size: var(--wp--preset--font-size--medium) !important;
        }

        .has-large-font-size {
            font-size: var(--wp--preset--font-size--large) !important;
        }

        .has-x-large-font-size {
            font-size: var(--wp--preset--font-size--x-large) !important;
        }

        .wp-block-navigation a:where(:not(.wp-element-button)) {
            color: inherit;
        }

        :where(.wp-block-post-template.is-layout-flex) {
            gap: 1.25em;
        }

        :where(.wp-block-post-template.is-layout-grid) {
            gap: 1.25em;
        }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        :where(.wp-block-columns.is-layout-grid) {
            gap: 2em;
        }

        .wp-block-pullquote {
            font-size: 1.5em;
            line-height: 1.6;
        }
    </style>

    <link rel="stylesheet" id="extra-feature-css-css" href="css/extra.features.css" media="all">
    <link rel="stylesheet" id="contact-form-7-css" href="css/styles.css" media="all">
    <link rel="stylesheet" id="wsl-widget-css" href="css/style.css" media="all">
    <link rel="stylesheet" id="base-css-css" href="css/base.css" media="all">
    <link rel="stylesheet" id="jquery-ui-datepicker-css" href="css/jquery.ui.datepicker.css" media="all">
    <link rel="stylesheet" id="sliderhelper-css-css" href="css/sliderhelper.css" media="all">
    <link rel="stylesheet" id="main-css-css" href="css/style_1.css" media="all">
    <link rel="stylesheet" id="js_composer_front-css" href="css/js_composer.min.css" media="all">
    <link rel="stylesheet" id="font-awesome-css" href="css/font-awesome.css" media="all">
    <script src="js/jquery.min.js" id="jquery-core-js"></script>
    <script src="js/jquery-migrate.min.js" id="jquery-migrate-js"></script>
    <script src="js/external.js" id="external-link-js"></script>
    <script type="text/javascript" id="s3waas-accessibility-js-extra">
        /* <![CDATA[ */
        var S3WaaSAccessibilityParams = { "blogInfoName": "Department Preview Site", "defaultLinkAriaLabel": "External site that opens in a new window", "defaultLinkTitle": "External site that opens in a new window", "flexNavPrevTitle": "Previous", "flexNavPlayPauseTitle": "Play\/Pause", "flexNavNextTitle": "Next", "ariaLabelDownload": "Download" };
        /* ]]> */
    </script>
    <script src="js/accessibility.js" id="s3waas-accessibility-js"></script>
    <link rel="https://api.w.org/" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-json/">
    <link rel="alternate" type="application/json" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-json/wp/v2/pages/4637">
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/xmlrpc.php?rsd">
    <link rel="canonical" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/">
    <link rel="shortlink" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/">
    <link rel="alternate" type="application/json+oembed" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fs3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in%2F">
    <link rel="alternate" type="text/xml+oembed" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fs3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in%2F&amp;format=xml">
    <noscript>
        <style>
            #topBar #accessibility ul li .goiSearch, #topBar1 #accessibility ul li .goiSearch {
                visibility: visible;
            }

            #topBar #accessibility ul li .socialIcons ul, #topBar1 #accessibility ul li .socialIcons ul {
                background: #fff !important;
            }

            #topBar #accessibility ul li .goiSearch, #topBar1 #accessibility ul li .goiSearch {
                right: 0;
                left: inherit;
            }

            .nav li a:focus > ul {
                left: 0;
                opacity: 0.99;
            }

            a:focus, button:focus, .carasoleflex-wrap .flexslider .slides > li a:focus, .flexslider .slides > li a:focus {
                outline: 3px solid #ff8c00 !important;
            }

            .flexslider .slides > li {
                display: block !important;
            }

            .flexslider .slides img {
                width: auto !important;
            }

            .nav li.active > a, .nav li > a:hover, .nav li > a:focus, .nav ul li a:hover,
            .nav li:hover > a {
                border-top: none;
                color: #ffffff;
            }

            .nav li.active > a {
                border: 0;
            }

            .nav ul {
                opacity: 1;
                left: 0;
                position: static !important;
                width: auto;
                border: 0;
            }

            .nav li {
                position: static !important;
                display: block;
                float: none;
                border: 0 !important;
            }

                .nav li > a {
                    float: none;
                    display: block;
                    background-color: #ff9f08 !important;
                    color: #ffffff;
                    margin: 0;
                    padding: 0px 15px;
                    border-radius: 0;
                    border-bottom: 1px solid #ffffff !important;
                    position: static !important;
                    border-top: 0;
                    font-size: 14px !important;
                }

            .nav ul.sub-menu li > a {
                background-color: #464141 !important;
                font-size: 12px !important;
                padding: 0 25px;
            }

            .style-1 .menuWrapper, .style-2 .menuWrapper, .style-6 .menuWrapper, .style-5 .menuWrapper {
                background: #e1e1e1 !important;
            }

            .style-1 .nav li > a, .style-1 .nav li > a:hover {
                background-color: #875506 !important;
            }

            .style-1 .nav ul.sub-menu li > a, .style-1 .nav ul.sub-menu li > a:hover {
                background-color: #3e2908 !important;
            }

            .style-2 .nav li > a, .style-2 .nav li > a:hover {
                background-color: #11372a !important;
            }

            .style-2 .nav ul.sub-menu li > a, .style-2 .nav ul.sub-menu li > a:hover {
                background-color: #677314 !important;
            }

            .style-6 .nav li > a, .style-6 .nav li > a:hover {
                background-color: #f65a64 !important;
            }

            .style-6 .nav ul.sub-menu li > a:hover {
                background-color: #fff !important;
            }

            .style-6 .nav ul.sub-menu li > a {
                background-color: transparent !important;
            }

            .style-6 .menuWrapper .nav li ul li {
                border-bottom: 1px solid transparent !important;
            }

            .style-6 .menuWrapper .nav li a {
                border-radius: 0 !important;
                color: #fff !important;
            }

                .style-6 .menuWrapper .nav li a:hover {
                    color: #000 !important;
                }

            .style-5 .nav li > a, .style-5 .nav li > a:hover {
                background-color: #fd9c29 !important;
                color: #ffffff !important;
            }

            .style-5 .nav ul.sub-menu li > a, .style-5 .nav ul.sub-menu li > a:hover {
                background-color: #464141 !important;
                color: #ffffff !important;
            }

            .style-6 .menuWrapper .nav li ul li a {
                margin: 0;
                padding: 7px 15px;
            }

            ul li .socialIcons {
                visibility: visible !important;
            }
        </style>
    </noscript>
    <link rel="alternate" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/" hreflang="en">
    <link rel="alternate" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/mr/" hreflang="mr">
    <link rel="alternate" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/hi/" hreflang="hi">
    <link rel="alternate" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/pa/" hreflang="pa">
    <link rel="alternate" href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/or/" hreflang="or">
    <meta name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress.">
    <style data-type="vc_shortcodes-custom-css">
        .vc_custom_1579691556227 {
            padding-bottom: 25px !important;
        }

        .vc_custom_1581920934061 {
            padding-top: 20px !important;
            padding-bottom: 15px !important;
        }

        .vc_custom_1579691374150 {
            padding-bottom: 30px !important;
        }

        .vc_custom_1581940391946 {
            border-top-width: 1px !important;
            padding-bottom: 30px !important;
            border-top-color: #cecece !important;
            border-top-style: dashed !important;
        }

        .vc_custom_1568981760284 {
            margin-bottom: -4px !important;
        }

        .vc_custom_1530876290014 {
            padding-top: 0px !important;
        }

        .vc_custom_1572839845724 {
            padding-top: 0px !important;
            padding-bottom: 0px !important;
        }

        .vc_custom_1579691520488 {
            padding-top: 35px !important;
        }

        .vc_custom_1579691530465 {
            padding-top: 35px !important;
        }

        .vc_custom_1579691538250 {
            padding-top: 35px !important;
        }

        .vc_custom_1575432554252 {
            padding-top: 0px !important;
        }

        .vc_custom_1575432942725 {
            padding-top: 15px !important;
            background-color: #ffffff !important;
            border-radius: 5px !important;
        }

        .vc_custom_1575441432797 {
            padding-right: 70px !important;
        }

        .vc_custom_1575455456864 {
            padding-top: 0px !important;
        }


        /*.vc_active{
            background:#8fbdd4!important;
            color:white;
        }*/
        .vc_active a {
            background: #062F4F !important;
            border-color: #062F4F !important;
            color: white !important;
        }

            .vc_active a:hover {
                color: #8fbdd4!important;
            }

            .vc_active a span:hover {
                color: #8fbdd4!important;
            }
    </style>
    <noscript>
        <style>
            .wpb_animate_when_almost_visible {
                opacity: 1;
            }
        </style>
    </noscript>
    <!--[if lt IE 9]>
        <script src="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-content/themes/sdo-theme/js/html5shiv.min.js"></script>
    <![endif]-->
    <script>
        //let ajaxurl = ajax_url = ajaxUrl = AJAX_URL = AJAXURL = "https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-admin/admin-ajax.php";
    </script>
   <script>
       window.addEventListener('load', function () {
           // Remove the blur effect when the page has loaded
           document.body.style.filter = 'none';
           document.querySelector('header').style.filter = 'none';
           document.querySelector('main').style.filter = 'none';
           document.querySelector('footer').style.filter = 'none';
           // Hide the loader container when the page has loaded
           document.querySelector('.loader-container').style.display = 'none';
       });
   </script>
</head>
<body class="home page-template-default page page-id-4637 lang-en style-2 home-8 wpb-js-composer js-comp-ver-6.1 vc_responsive">
   <div class="loader-container">
    <svg class="pl" width="240" height="240" viewBox="0 0 240 240">
      <circle class="pl__ring pl__ring--a" cx="120" cy="120" r="105" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 660" stroke-dashoffset="-330" stroke-linecap="round"></circle>
      <circle class="pl__ring pl__ring--b" cx="120" cy="120" r="35" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 220" stroke-dashoffset="-110" stroke-linecap="round"></circle>
      <circle class="pl__ring pl__ring--c" cx="85" cy="120" r="70" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 440" stroke-linecap="round"></circle>
      <circle class="pl__ring pl__ring--d" cx="155" cy="120" r="70" fill="none" stroke="#000" stroke-width="20" stroke-dasharray="0 440" stroke-linecap="round"></circle>
    </svg>
  </div>
    <div id="google_translate_element"></div>
    <header id="mainHeader">
        <!--topBar start-->
        <div id="topBar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="push-right" aria-label="Primary">
                            <div id="accessibility">
                                <ul id="accessibilityMenu" class="clearfix">
                                    <li>
                                        <a href="#SkipContent" class="skipContent" aria-label="Skip to main content" title="Skip to main content">
                                            <span class="m-hide">Skip to main content</span>
                                            <span class="icon-skip-to-main m-show"></span>
                                        </a>
                                    </li>
                                    <li class="searchbox">
                                        <a href="javascript:void(0);" tabindex="0" title="Site Search" aria-label="Site Search" role="button" data-toggle="dropdown">
                                            <img class="show-con" src="images/search_icon.svg" title="Search Icon" alt="Search Icon">
                                        </a>
                                        <div class="goiSearch search-form-container">
                                            <form action="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/" method="get">
                                                <label for="search" class="hide">Search</label>
                                                <input type="search" placeholder="Search here..." name="s" id="search" value="">
                                                <button class="accent-color accent-border-color" type="submit" title="Search"><span class="icon-search"></span><span class="hide">Search</span></button>
                                            </form>
                                        </div>
                                    </li>
                                    <li class="social-media">
                                        <a href="javascript:void(0);" tabindex="0" class="social-group-icon" title="Social Media Links" aria-label="Social Media Links" role="button" data-toggle="dropdown">
                                            <img class="show-con" src="images/social_media.svg" title="Social Icon" alt="Social Icon">
                                            <span class="hide">Social Media Links</span>
                                        </a>
                                        <ul class="socialIcons">
                                            <li>
                                                <a href="#" target="_self" aria-label="Facebook | External site that opens in a new window"><img src="images/facebook_icon.svg" title="Facebook | External site that opens in a new window" alt="Facebook, External Link that opens in a new window"></a>
                                            </li>
                                            <li>
                                                <a href="#" target="_self" aria-label="Twitter | External site that opens in a new window"><img class="twitter" src="images/twitter_icon.svg" title="Twitter | External site that opens in a new window" alt="Twitter, External Link that opens in a new window"></a>
                                            </li>
                                            <li>
                                                <a href="#" target="_self" aria-label="Youtube | External site that opens in a new window"><img src="images/youtube_icon.svg" title="Youtube | External site that opens in a new window" alt="youtube, External Link that opens in a new window"></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="top-sitemap">
                                        <a href="https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/sitemap/" aria-label="Sitemap" title="Sitemap">
                                            <img class="show-con" src="images/sitemap.svg" title="Sitemap Icon" alt="Sitemap Icon">
                                            <span class="hide">Sitemap</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0);" tabindex="0" title="Accessibility Links" aria-label="Accessibility Links" class="accessible-icon" role="button" data-toggle="dropdown">
                                            <span class="tcon">Accessibility Links</span>
                                            <img class="show-con" src="images/accessibility_icon.svg" title="Accessibility Icon" alt="Accessibility Icon">
                                        </a>
                                        <ul class="accessiblelinks textSizing" aria-label="Font size and Contrast controls">
                                            <li class="fontSizeEvent">
                                                <a data-selected-text="selected" data-event-type="increase" href="javascript:void(0);" tabindex="0" data-label="Font Size Increase" title="Font Size Increase" aria-label="Font Size Increase"><span aria-hidden="true">A+</span> <span class="tcon">Font Size Increase</span></a>
                                            </li>
                                            <li class="fontSizeEvent">
                                                <a data-selected-text="selected" data-event-type="normal" href="javascript:void(0);" tabindex="0" data-label="Normal Font" title="Normal Font" aria-label="Normal Font"><span aria-hidden="true">A</span> <span class="tcon">Normal Font</span></a>
                                            </li>
                                            <li class="fontSizeEvent">
                                                <a data-selected-text="selected" data-event-type="decrease" href="javascript:void(0);" tabindex="0" data-label="Font Size Decrease" title="Font Size Decrease" aria-label="Font Size Decrease"><span aria-hidden="true">A-</span> <span class="tcon">Font Size Decrease</span></a>
                                            </li>
                                            <li class="highContrast dark tog-con">
                                                <a href="javascript:void(0);" tabindex="0" title="High Contrast" aria-label="High Contrast"><span aria-hidden="true">A</span> <small class="tcon">High Contrast</small></a>
                                            </li>
                                            <li class="highContrast light">
                                                <a class="link-selected" href="javascript:void(0);" tabindex="0" title="Normal Contrast - Selected" aria-label="Normal Contrast - Selected"><span aria-hidden="true">A</span> <small class="tcon">Normal Contrast</small></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="languageCont" aria-label="Change Language">
                                        <a href="javascript:void(0);" tabindex="0" class="language link-selected" aria-label="English - Selected" title="English - Selected" role="button" data-toggle="dropdown">English</a>
                                        <ul class="socialIcons">
                                            <li class="lang-item lang-item-55 lang-item-hi mFocus">
                                                <a lang="hi" hreflang="hi-IN" href="#" aria-label="हिन्दी" title="हिन्दी">हिन्दी</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="push-left">
                            <div class="govBranding">
                                <ul>
                                    <li>
                                        <a lang="hi" href="https://up.gov.in/hi">
                                            उत्तर प्रदेश सरकार
                                        </a>
                                    </li>
                                    <li>
                                        <a lang="en" href="https://up.gov.in/en">
                                            Government of Uttar Pradesh
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--topBar end-->
        <!--header middle start-->
        <div class="header-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-7">
                        <div class="logo">
                            <a href="index.aspx" title="Go to home" class="site_logo" rel="home">
                                <img class="emblem" src="https://scholarship.up.gov.in/imagesnew/l.jpg" style="max-height: 90px; max-width: 90px;" alt="UP state emblem">
                                <div class="logo_text">
                                    <strong lang="hi">छात्रवृत्ति एवं शुल्क प्रतिपूर्ति ऑनलाइन प्रणाली
                                    </strong>
                                    <h1 class="h1-logo">Scholarship and Fee Reimbursement Online System</h1>    
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-5">
                        <div class="header-right hidden-xs push-right">
                            <a aria-label="Space for logo - External site that opens in a new window" href="#" target="_blank" title="CM Uttar Pradesh">
                                <img id="logo" class="sw-logo" src="images/ADITYANATH_YOGI-removebg-preview.png" alt="State Emblem of India">
                                <%--<img class="sw-logo" src="https://scholarship.up.gov.in/imagesnew/l.jpg" alt="space for logo image">--%>
                            </a>
                            <a aria-label="Digital India Image - External site that opens in a new window" href="https://www.digitalindia.gov.in/" target="_blank" title="Digital India Image">
                                <img class="sw-logo" src="images/2019031587.png" alt="Digital India">
                            </a>
                        </div>
                        <a class="menuToggle" href="javascript:void(0);"><span class="icon-menu" aria-hidden="true"></span><span class="menu-text">Menu Toggle</span> </a>
                    </div>
                </div>
            </div>
        </div>
        <!--header middle end-->
        <!--main menu start-->
        <div class="menuWrapper">
            <div class="menuMoreText hide">More</div>
            <div class="container">
                <nav class="menu">
                    <ul id="menu-header-en" class="nav clearfix">
                        <li id="menu-item-4" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-4 active ">
                            <a href="index.aspx">Home</a>
                        </li>
                        <li id="menu-item-3092" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3092 has-sub">
                            <a href="students.aspx" aria-haspopup="true" aria-expanded="false">Students<span class="indicator"></span></a>
                            <ul aria-hidden="true" class="sub-menu">
                                <li id="menu-item-196" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-196 has-sub-child">
                                    <a href="registration.aspx" tabindex="-1">New Registration</a>
                                </li>
                                <li id="menu-item-3088" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3088 has-sub has-sub-child">
                                    <a href="#" tabindex="-1" aria-haspopup="true" aria-expanded="false">Login Fresh<span class="indicator"></span></a>
                                    <ul aria-hidden="true" class="sub-menu">
                                        <li id="menu-item-310" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-310 has-sub-child">
                                            <a href="LoginStudentPreFresh.aspx" tabindex="-1">Prematric Students</a>
                                        </li>
                                        <li id="menu-item-311" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-311 has-sub-child">
                                            <a href="LoginStudentPostInter.aspx" tabindex="-1">Postmetric Students</a>
                                        </li>
                                        <li id="menu-item-312" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-312 has-sub-child">
                                            <a href="LoginStudentPost.aspx" tabindex="-1">Postmetric Other than Inter Students</a>
                                        </li>
                                        <li id="menu-item-314" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-314 has-sub-child">
                                            <a href="LoginStudentPostOS.aspx" tabindex="-1">Postmetric Other State Students</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-3088" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3088 has-sub has-sub-child">
                                    <a href="#" tabindex="-1" aria-haspopup="true" aria-expanded="false">Login Renewal<span class="indicator"></span></a>
                                    <ul aria-hidden="true" class="sub-menu">
                                        <li id="menu-item-310" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-310 has-sub-child">
                                            <a href="LoginStudentPreRenew.aspx" tabindex="-1">Prematric Students</a>
                                        </li>
                                        <li id="menu-item-311" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-311 has-sub-child">
                                            <a href="LoginStudentPostRenewInter.aspx" tabindex="-1">Postmetric Students</a>
                                        </li>
                                        <li id="menu-item-312" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-312 has-sub-child">
                                            <a href="LoginStudentPostRenew.aspx" tabindex="-1">Postmetric Other than Inter Students</a>
                                        </li>
                                        <li id="menu-item-314" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-314 has-sub-child">
                                            <a href="LoginStudentPostRenewOS.aspx" tabindex="-1">Postmetric Other State Students</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-item-3092" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3092 has-sub">
                            <a href="institutes.aspx" aria-haspopup="true" aria-expanded="false">Institutes<span class="indicator"></span></a>
                            <ul aria-hidden="true" class="sub-menu">
                                <li id="menu-item-196" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-196 has-sub-child">
                                    <a href="instReg.aspx" tabindex="-1">New Registration</a>
                                </li>
                                <li id="menu-item-3088" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3088 has-sub has-sub-child">
                                    <a href="#" tabindex="-1" aria-haspopup="true" aria-expanded="false">Login<span class="indicator"></span></a>
                                    <ul aria-hidden="true" class="sub-menu">
                                        <li id="menu-item-310" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-310 has-sub-child">
                                            <a href="Inst_login_SM.aspx" tabindex="-1">Prematric Institution</a>
                                        </li>
                                        <li id="menu-item-311" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-311 has-sub-child">
                                            <a href="Inst_login_SM.aspx" tabindex="-1">Postmetric Institution</a>
                                        </li>
                                        <li id="menu-item-312" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-312 has-sub-child">
                                            <a href="oscollege_login.aspx" tabindex="-1">Out of State Institution</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-196" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-196 has-sub-child">
                                    <a href="Univ_login_SM.aspx" tabindex="-1">University/ Affiliating Agencies Login</a>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-item-63" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-63 has-sub">
                            <a href="departments.aspx" aria-haspopup="true" aria-expanded="false">Departments<span class="indicator"></span></a>
                            <ul aria-hidden="true" class="sub-menu">
                                <li id="menu-item-3849" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3849 has-sub-child">
                                    <a href="LoginUser.aspx" tabindex="-1">Hon'ble Minister Login</a>
                                </li>
                                <li id="menu-item-3088" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3088 has-sub has-sub-child">
                                    <a href="#" tabindex="-1" aria-haspopup="true" aria-expanded="false">District Welfare<span class="indicator"></span></a>
                                    <ul aria-hidden="true" class="sub-menu">
                                        <li id="menu-item-310" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-310 has-sub-child">
                                            <a href="Dsw_Obc_Dmo_Login.aspx?a=SW" tabindex="-1">District Social Welfare Officer</a>
                                        </li>
                                        <li id="menu-item-311" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-311 has-sub-child">
                                            <a href="Dsw_Obc_Dmo_Login.aspx?a=OBC" tabindex="-1">District Backward Class Welfare Officer</a>
                                        </li>
                                        <li id="menu-item-312" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-312 has-sub-child">
                                            <a href="Dsw_Obc_Dmo_Login.aspx?a=MIN" tabindex="-1">District Minority Welfare Officer</a>
                                        </li>
                                        <li id="menu-item-314" class="menu-item menu-item-type-taxonomy menu-item-object-organization-type menu-item-314 has-sub-child">
                                            <a href="Dsw_Obc_Dmo_Login.aspx?a=ST" tabindex="-1">District Scheduled Tribes Officer</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-1531" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1531 has-sub-child">
                                    <a href="CommingSoon.aspx" tabindex="-1">Administrator</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="AuditerLogin.aspx" tabindex="-1">Auditor</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="Mandal_Login.aspx" tabindex="-1">Deputy Director</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="dwbmo_Login.aspx" tabindex="-1">Directorate</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="Dios_Login.aspx" tabindex="-1">DIOS Login</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="osInst_login.aspx" tabindex="-1">Other State Administrator</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="Div18_login.aspx" tabindex="-1">Higher Education Divisional Officer</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="EduDeptHodLogin.aspx" tabindex="-1">Head Of Department of Education</a>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-item-337" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-337 has-sub">
                            <a href="reports.aspx" aria-haspopup="true" aria-expanded="false">Reports<span class="indicator"></span></a>
                            <ul aria-hidden="true" class="sub-menu">
                                <li id="menu-item-338" class="menu-item menu-item-type-taxonomy menu-item-object-provider menu-item-338 has-sub-child">
                                    <a href="reports.aspx" tabindex="-1">All Session Reports</a>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-item-63" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-63 has-sub">
                            <a href="status.aspx" aria-haspopup="true" aria-expanded="false">Status<span class="indicator"></span></a>
                            <ul aria-hidden="true" class="sub-menu">
                                <li id="menu-item-3849" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3849 has-sub-child">
                                    <a href="status2223.aspx" tabindex="-1">Application Status 2022-23</a>
                                </li>
                                <li id="menu-item-1531" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1531 has-sub-child">
                                    <a href="status2122.aspx" tabindex="-1">Application Status 2021-22</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="status2021.aspx" tabindex="-1">Application Status 2020-21</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="status1920.aspx" tabindex="-1">Application Status 2019-20</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="status1819.aspx" tabindex="-1">Application Status 2018-19</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="status1718.aspx" tabindex="-1">Application Status 2017-18</a>
                                </li>
                                <li id="menu-item-1676" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1676 has-sub-child">
                                    <a href="PreviousYrTimeTables.aspx" tabindex="-1">Important Information</a>
                                </li>
                            </ul>
                        </li>
                        <li id="menu-item-174" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1522">
                            <a href="CommingSoon.aspx" aria-haspopup="true" aria-expanded="false">Grievance Redressal System</a>
                        </li>
                        <li id="menu-item-174" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1522">
                            <a href="Contactus.aspx" aria-haspopup="true" aria-expanded="false">Contact Us</a>
                        </li>
                        <li id="menu-item-174" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1522">
                            <a href="help.aspx" aria-haspopup="true" aria-expanded="false">Help</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!--main menu end-->
        <div id="overflowMenu">
            <div class="ofMenu">
                <ul></ul>
            </div>
            <a href="#" title="Close" class="closeMenu"><span class="icon-close" aria-hidden="true"></span> Close</a>
        </div>
    </header>
    <main>
        <div id="SkipContent"></div>    <!--section-row start-->
        <section class="section-row apply-in-home">
            <div class="container-fluid">
            </div>
            <div class="container-fluid" id="row-content">
                <div class="row">
                    <div class="col-xs-12">
                        <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid vc_row-no-padding">
                            <div class="wpb_column vc_column_container vc_col-sm-12">
                                <div class="vc_column-inner vc_custom_1530876290014">
                                    <div class="wpb_wrapper">
                                        <div id="slide" class="home-slider full-cntrl-left-caption-right nav-white  flexslider ">
                                            <ul class="slides">
                                                <li>
                                                    <img src="images/Banner01.png" style="min-height:120px;" alt="sdbanner1">
                                                </li>
                                                <li>
                                                    <img src="images/Banner02.png" style="min-height:120px;" alt="sdbanner1">
                                                </li>
                                                <li>
                                                    <img src="images/Banner03.png" style="min-height:120px;" alt="sdbanner1">
                                                </li>
                                                <li>
                                                    <img src="images/2018070674.jpg" style="min-height:120px;" alt="sdbanner1">
                                                    <%--<div class="container">
                                                        <div class="slide-caption accent-color lighten caption-color-white">
                                                            <p class="heading3">BANNER TITLE DISPLAYED HERE</p>
                                                            <p>Banner description appears here</p>

                                                        </div>
                                                    </div>--%>
                                                </li>

<%--                                            <li>
                                                    <img src="images/2018070635.jpg" style="max-height: 350px;" alt="commonimage">
                                                </li>--%>
                                            </ul>
                                        </div>
                                        <script>
                                            jQuery(document).ready(function ($) {
                                                let controlsDisable = false
                                                controlsDisable = true
                                                $('.home-slider').flexslider({
                                                    animation: ($('body').hasClass('rtl')) ? "fade" : "slide",
                                                    directionNav: controlsDisable,
                                                    pausePlay: controlsDisable,
                                                    controlNav: controlsDisable,
                                                    start: function (slider) {
                                                        $('body').find('.flexslider').resize();
                                                        if (slider.count == 1) {
                                                            slider.pausePlay.parent().remove();
                                                        }
                                                        $('.flexslider ul.slides li.clone a').each(function () {
                                                            $(this).replaceWith($(this).html());
                                                        })
                                                    }

                                                });
                                            });
                                        </script>
                                        <div class="wrapper" id="skipCont"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="vc_row-full-width vc_clearfix"></div>
                        <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid accent-fixed-color">
                            <div class="wpb_column vc_column_container vc_col-sm-12">
                                <div class="vc_column-inner vc_custom_1572839845724">
                                    <div class="wpb_wrapper">
                                        <div class="news-ticker-horizontal viewall-with-cntrls nth-flexslider color-white  title-left show-controls   ">
                                            <h2 class="pd-15 title-font-bold">LATEST NEWS</h2>
                                            <div class="newsticker flexslider pd-15">
                                                <ul class="slides">
                                                    <li>
                                                        <a class="with-urlchange" href="https://resident.uidai.gov.in/bank-mapper" target="_blank"><img src="https://scholarship.up.gov.in/imagesnew/new-icon.gif" style="height:15px; width:35px;">अपनी आधार सीडिंग की स्थिति जांचें। </a>
                                                    </li>
                                                    <li>
                                                        <a class="with-urlchange" href="#">
                                                             <span class="fa fa-hand-o-right"></span> &nbsp;&nbsp;नवीनीकरण (Renewal)के सभी छात्र /छात्रा छात्रवृत्ति हेतु आनलाइन आवेदन बिना रजिस्ट्रेशन के सीधे भरें।
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="with-urlchange" href="#">
                                                             <span class="fa fa-hand-o-right"></span> &nbsp;&nbsp; समस्त छात्र-छात्राएं जिन्होंने अभी तक अपने बैंक खाते में  आधार सीडिंग नहीं कराया है, तत्काल अपने संचालित बैंक खाते में आधार सीडिंग करा लें।
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="with-urlchange" href="https://pfms.nic.in/static/NewLayoutCommonContent.aspx?RequestPagename=static/KnowYourPayment_new.aspx">
                                                             <span class="fa fa-hand-o-right"></span> &nbsp;&nbsp;अपनी भुगतान की स्थिति जानने के लिए क्लिक करें 
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                        </div>
                                        <script>
                                            jQuery(document).ready(function ($) {
                                                jQuery(".newsticker").flexslider({
                                                    animation: "slide",
                                                    directionNav: true,
                                                    pausePlay: true,
                                                    maxItems: 1,
                                                    controlNav: false,
                                                    slideshowSpeed: 5000,
                                                    prevText: "<span class='hide'>Previous</span>",
                                                    nextText: "<span class='hide'>Next</span>",
                                                    pauseText: "<span class='hide'>Pause</span>",
                                                    playText: "<span class='hide'>PlayPlay</span>",
                                                    start: function () {
                                                        $('.newsticker ul.slides li.clone a').each(function () {
                                                            $(this).replaceWith($(this).html());
                                                        })
                                                    }
                                                });
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="vc_row-full-width vc_clearfix"></div>
                        <div class="vc_row wpb_row vc_row-fluid">
                            <div class="wpb_column vc_column_container vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="vc_col-sm-12" style="background:#062F4F ; color:white; margin:5px;">
                                            <h2 style="position: sticky;top: 0;z-index: 1;">Notice Board</h2>
                                        </div>
                                        <div style="width: 100%; max-height: 225px;overflow-x: hidden; overflow-y: auto; text-align: justify;">
                                            <table style="font-family: 'Roboto', sans-serif;">                                                
                                                <thead style="position: sticky;top: 0;z-index: 1;">
                                                    <tr>
                                                        <th scope="col" style="min-width: 25px;">Sl No.</th>
                                                        <th scope="col">Title</th>
                                                        <th scope="col">Dated</th>
                                                        <th scope="col">Attachment</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-center" style="min-width: 25px;">1</td>
                                                        <td><b>REVISED PREMATRIC SCHOLARSHIP TIME-TABLE 21 August 2023</b></td>
                                                        <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                        <td class="text-center"><a href="https://scholarship.up.gov.in/PDFS/Prematric%20Time%20Table%202023-24%20revised.pdf" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width: 25px;">2</td>
                                                        <td><b>PREMATRIC SCHOLARSHIP TIME-TABLE 28 July 2023</b></td>
                                                        <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                        <td class="text-center"><a href="https://scholarship.up.gov.in/PDFS/Prematric%20Time%20Table%202023-24.pdf" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                        <tr>
                                                            <td class="text-center" style="min-width: 25px;">3</td>
                                                            <td><b>Demo Title 3</b></td>
                                                            <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                            <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                        </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width: 25px;">4</td>
                                                        <td><b>Demo Title 4</b></td>
                                                        <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width: 25px;">5</td>
                                                        <td><b>Demo Title 5</b></td>
                                                        <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width: 25px;">6</td>
                                                        <td><b>Demo Title 6</b></td>
                                                        <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width: 25px;">7</td>
                                                        <td><b>Demo Title 7</b></td>
                                                        <td><% Response.Write(DateTime.Now.ToString("dd-MM-yyyy")); %></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="wpb_column vc_column_container vc_col-sm-4" style="padding-top:5px;">
                                <div class="vc_column-inner vc_custom_1575432554252">
                                    <div class="wpb_wrapper">
                                        <div class="vc_tta-container" data-vc-action="collapse">
                                            <div class="vc_general vc_tta vc_tta-tabs vc_tta-color-grey vc_tta-style-classic vc_tta-shape-rounded vc_tta-spacing-1  tabstyle-eight vc_tta-tabs-position-top vc_tta-controls -align-left">
                                                <div class="vc_tta-tabs-container">
                                                    <ul class="vc_tta-tabs-list">
                                                        <li class="vc_tta-tab vc_active" data-vc-tab="">
                                                            <a href="#whats-new" data-vc-tabs="" data-vc-container=".vc_tta" style="border-top-left-radius:8px;border-top-right-radius:8px;"><span class="vc_tta-title-text btn"><strong>योजनाएं</strong></span></a>
                                                        </li>
                                                        <li class="vc_tta-tab" data-vc-tab="">
                                                            <a href="#forms" data-vc-tabs="" data-vc-container=".vc_tta" style="border-top-left-radius:8px;border-top-right-radius:8px;"><span class="vc_tta-title-text btn "><strong>पूर्व दशम नियमावली</strong> </span></a>
                                                        </li>
                                                        <li class="vc_tta-tab" data-vc-tab="">
                                                            <a href="#1575355913694-2a3de635-8d03" data-vc-tabs="" data-vc-container=".vc_tta" style="border-top-left-radius:8px;border-top-right-radius:8px;"><span class="vc_tta-title-text btn"><strong>दशमोत्तर नियमावली</strong></span></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="vc_tta-panels-container">
                                                    <div class="vc_tta-panels">
                                                        <div class="vc_tta-panel vc_active" id="whats-new" data-vc-content=".vc_tta-panel-body">
                                                            <div class="vc_tta-panel-heading">
                                                                <h4 class="vc_tta-panel-title">
                                                                    <a href="#whats-new" data-vc-accordion="" data-vc-container=".vc_tta-container"><span class="vc_tta-title-text">योजनाएं</span></a>
                                                                </h4>
                                                            </div>
                                                            <div class="vc_tta-panel-body">
                                                                <div class="gen-list  no-border no-bg  padding-0 border-radius-none square-list   color-black">
                                                                    <ul>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h5>Pre Matric Class 9-10</h5>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width:fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <div style="margin:10px; width:85%">
                                                                                        <table>
                                                                                            <tr>
                                                                                                <td>&nbsp;</td>
                                                                                                <td>&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>&nbsp;</td>
                                                                                                <td>&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h5>Post Matric Inter Class 11-12</h5>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width:fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h5>Post Matric Other than Inter</h5>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width:fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h5>Post Matric Out Side State</h5>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width:fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="vc_tta-panel" id="forms" data-vc-content=".vc_tta-panel-body">
                                                            <div class="vc_tta-panel-heading">
                                                                <h4 class="vc_tta-panel-title">
                                                                    <a href="#forms" data-vc-accordion="" data-vc-container=".vc_tta-container"><span class="vc_tta-title-text">पूर्व दशम नियमावली </span></a>
                                                                </h4>
                                                            </div>
                                                            <div class="vc_tta-panel-body">
                                                                <div class="gen-list    no-border no-bg  padding-0 border-radius-none square-list  ">
                                                                    <ul>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 2</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 2</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 2</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 2</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="vc_tta-panel" id="1575355913694-2a3de635-8d03" data-vc-content=".vc_tta-panel-body">
                                                            <div class="vc_tta-panel-heading">
                                                                <h4 class="vc_tta-panel-title">
                                                                    <a href="#1575355913694-2a3de635-8d03" data-vc-accordion="" data-vc-container=".vc_tta-container"><span class="vc_tta-title-text">दशमोत्तर नियमावली</span></a>
                                                                </h4>
                                                            </div>
                                                            <div class="vc_tta-panel-body">                                                                
                                                                <div class="gen-list    no-border no-bg  padding-0 border-radius-none square-list  ">
                                                                    <ul>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 3</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 3</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 3</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li style="list-style: none;">
                                                                            <div class="colspexp-container">
                                                                                <div class="colspexp_header" style="display: flex; justify-content: space-between; align-items: center;">
                                                                                    <h3>Your Heading 3</h3>
                                                                                    <div class="colspexp_header_Toggler btn accent-border-color accent-hover-color" role="checkbox" aria-checked="true" style="margin-left: auto; width: fit-content;">
                                                                                        <span class="fa fa-plus"></span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="colspexp_content">
                                                                                    <p>Hello</p>
                                                                                </div>
                                                                            </div>
                                                                        </li>
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
                            </div>    
                            
                            <div class="wpb_column vc_column_container vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="gen-list  no-border no-bg padding-3 border-radius-none iconTop-textBottom-box-list  col-three normal-font ">
                                            <div class="vc_col-sm-12" style="background: #062F4F; color: white; margin: 2px 0 5px 0;">
                                                <h2>Login Portals</h2>
                                            </div>
                                            <div class="vc_col-sm-12">
                                                <center>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='students.aspx'" style="padding: 5px; cursor: pointer;">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%201.png" /></center>
                                                                <%--<span class="fa fa-users" style="font-size: 30px;"></span>
                                                            <h3>Students</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='institutes.aspx'" style="padding: 5px; cursor: pointer">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%202.png" /></center>
                                                                <%-- <span class="fa fa-institution" style="font-size: 30px;"></span>
                                                            <h3>Institutes</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='Univ_login_SM.aspx'" style="padding: 5px; cursor: pointer">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%203.png" /></center>
                                                                <%-- <span class="fa fa-institution" style="font-size: 30px;"></span>
                                                            <h3>Institutes</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='Dios_Login.aspx'" style="padding: 5px; cursor: pointer;">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%205.png" /></center>
                                                                <%--<span class="fa fa-graduation-cap" style="font-size: 30px;"></span>
                                                            <h3>Universities</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </center>
                                            </div>
                                            <div class="vc_col-sm-12">
                                                <center>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='Dsw_Obc_Dmo_Login.aspx?a=SW'" style="padding: 5px; cursor: pointer;">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%206.png" /></center>
                                                                <%--<span class="fa fa-users" style="font-size: 30px;"></span>
                                                            <h3>Students</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='dwbmo_Login.aspx'" style="padding: 5px; cursor: pointer">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%207.png" /></center>
                                                                <%-- <span class="fa fa-institution" style="font-size: 30px;"></span>
                                                            <h3>Institutes</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='Mandal_Login.aspx'" style="padding: 5px; cursor: pointer">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%204.png" /></center>
                                                                <%-- <span class="fa fa-institution" style="font-size: 30px;"></span>
                                                            <h3>Institutes</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3 text-center hvr hvr-bounce-out" onclick="location.href='osInst_login.aspx'" style="padding: 5px; cursor: pointer;">
                                                        <div class="list-anchor" style="background-color: #f1f1f1 !important; border-color: #ccc !important; border-radius: 4px; padding: 10px 0 5px 0;">
                                                            <div class="list-text">
                                                                <center><img class="img-responsive" src="images/Icons/Group%209.png" /></center>
                                                                <%--<span class="fa fa-graduation-cap" style="font-size: 30px;"></span>
                                                            <h3>Universities</h3>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </center>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid accent-fixed-color tab-rowbg-home8 vc_custom_1579691374150 vc_column-gap-30">
                            <div class="wpb_column vc_column_cont4iner vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">                                        
                                        <div class="vc_col-sm-12" style="background: #062F4F; color: white; margin: 5px 0 0 0;">
                                            <h2 style="position: sticky; top: 0; z-index: 1;">Download Links(2023-24)</h2>
                                        </div>
                                        <div style="width: 100%; max-height: 300px; overflow-x: hidden; overflow-y: scroll; padding: 0; margin: 0;">
                                            <table class="table vc_table-bordered table-striped table-hover ">
                                                <thead style="color:black; font-weight:bold; position: sticky;top: 0;z-index: 1;">
                                                    <tr>
                                                        <th style="min-width:10px; max-width:15px;">Sl No.</th>
                                                        <th scope="col">Title</th>
                                                        <th scope="col">Attachment</th>
                                                    </tr>
                                                </thead>
                                                <tbody style="background:white; color:black;">
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">1</td>
                                                        <td><b>Demo Title 1</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">2</td>
                                                        <td><b>Demo Title 2</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">3</td>
                                                        <td><b>Demo Title 3</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">4</td>
                                                        <td><b>Demo Title 4</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">5</td>
                                                        <td><b>Demo Title 5</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">6</td>
                                                        <td><b>Demo Title 5</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:10px; max-width:15px;">7</td>
                                                        <td><b>Demo Title 5</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" sstyle="min-width:10px; max-width:15px;">8</td>
                                                        <td><b>Demo Title 5</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_cont4iner vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="vc_col-sm-12" style="background:#062F4F ; color:white; margin:5px 0 0 0;">
                                            <h2 style="position: sticky;top: 0;z-index: 1;">List of Blacklisted Institutes</h2>
                                        </div>
                                        <div style="width: 100%; max-height: 300px;overflow-x:hidden; overflow-y: scroll;">
                                            <table class="table">
                                                <thead style="color:black; position: sticky;top: 0;z-index: 1;">
                                                    <tr class="text-center">
                                                        <th scope="col" style="min-width:15px; max-width:20px; max-width:30px;">DISTRICT</th>
                                                        <th scope="col">INSTITUTE</th>
                                                        <th scope="col">ORDER DATE</th>
                                                    </tr>
                                                </thead>
                                                <tbody style="background:white; color:black;">
                                                    <tr>
                                                        <td class="text-center" style="min-width:15px; max-width:20px;">Hathras</td>
                                                        <td >CHAUDHARY BABULAL INSTITUTE OF TECHNOLOGY AND MANAGEMENT</td>
                                                        <td class="text-center">30 Sep 2015</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:15px; max-width:20px;">Meerut</td>
                                                        <td >EXCELLENCE COLLEGE OF PROFESSIONAL STUDIES SHASTRI NAGAR MEERUT</td>
                                                        <td class="text-center">30 Jul 2015</td>
                                                    <tr>
                                                        <td class="text-center" style="min-width:15px; max-width:20px;">3</td>
                                                        <td ><b>Demo Title 3</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:15px; max-width:20px;">4</td>
                                                        <td ><b>Demo Title 4</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center" style="min-width:15px; max-width:20px;">5</td>
                                                        <td ><b>Demo Title 5</b></td>
                                                        <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_cont4iner vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">                                        
                                        <div class="vc_col-sm-12" style="background:#062F4F ; color:white; margin:5px 0 0 0;">
                                            <h2 style="position: sticky;top: 0;z-index: 1;">Download Links(2023-24)</h2>
                                        </div>
                                        <div style="width: 100%; max-height: 300px;overflow-x:hidden; overflow-y: scroll;">
                                        <table class="table table-striped">
                                            <thead style="color: black; position: sticky; top: 0; z-index: 1;">
                                                <tr>
                                                    <th style="min-width: 70px;">Sl No.</th>
                                                    <th scope="col">Title</th>
                                                    <th scope="col">Attachment</th>
                                                </tr>
                                            </thead>
                                            <tbody style="background: white; color: black;">
                                                <tr>
                                                    <td class="text-center" style="min-width: 15px; max-width: 20px;">1</td>
                                                    <td><b>Demo Title 1Demo Title 1Demo Title 1Demo Title 1Demo Title 1Demo Title 1</b></td>
                                                    <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" style="min-width: 15px; max-width: 20px;">2</td>
                                                    <td><b>Demo Title 2</b></td>
                                                    <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" style="min-width: 15px; max-width: 20px;">3</td>
                                                    <td><b>Demo Title 3</b></td>
                                                    <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" style="min-width: 15px; max-width: 20px;">4</td>
                                                    <td><b>Demo Title 4</b></td>
                                                    <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" style="min-width: 15px; max-width: 20px;">5</td>
                                                    <td><b>Demo Title 5</b></td>
                                                    <td class="text-center"><a href="#" title="Download Notice"><span class="fa fa-download"></span></a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--<div class="vc_row-full-width vc_clearfix"></div>
                        <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1579691374150">
                            <div class="wpb_column vc_column_container vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="dynamic-card-wrapper btn-left">
                                            <h2 class="title-font-normal title-font-black" style="background:#062F4F; padding:8px; color:white;">
                                                <span class=""></span>Applications Finally Submitted (2023-24)
                                            </h2>
                                            <div style="font-size:10px;" id="chartdiv"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_container vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="dynamic-card-wrapper btn-left ">
                                            <h2 class="title-font-normal title-font-black" style="background:#062F4F; padding:8px; color:white;">
                                                <span class=""></span>Applications Forwarded by Institutions (2023-24)
                                            </h2>
                                            <div id="chartdiv2"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_container vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="dynamic-card-wrapper btn-left ">
                                           <h2 class="title-font-normal title-font-black" style="background:#062F4F; padding:8px; color:white;">
                                                <span class=""></span>Schemet wise summary (2023-24)
                                            </h2>
                                            <div id="chartdiv1"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        <div class="vc_row-full-width vc_clearfix"></div>
                        <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid accent-nutural-color vc_custom_1581940391946 vc_row-has-fill vc_column-gap-35">
                            <div class="wpb_column vc_column_container vc_col-sm-8">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="photo-glry-cntr flexslider   thumb-right  ">

                                            <div class="gallery-heading">
                                                <h2 class="title-font-bold">Photo Gallery</h2>
                                            </div>

                                            <ul class="slides">
                                                <li data-thumb="https://cdnbbsr.s3waas.gov.in/s3f1981e4bd8a0d6d8462016d2fc6276b3/uploads/2019/12/2019120478.jpg" style="height:100%">
                                                    <img src="images/2019120478.jpg" alt="Photo banner image 1" style="height:100%">
                                                </li>
                                                <li data-thumb="https://cdnbbsr.s3waas.gov.in/s3f1981e4bd8a0d6d8462016d2fc6276b3/uploads/2019/12/2019120468.jpg" style="height:100%">
                                                    <img src="images/2019120468.jpg" alt="Photo banner image 2" style="height:100%">
                                                </li>
                                                <li data-thumb="https://cdnbbsr.s3waas.gov.in/s3f1981e4bd8a0d6d8462016d2fc6276b3/uploads/2019/12/2019120492.jpg" style="height:100%">
                                                    <img src="images/2019120492.jpg" alt="Photo banner image 3" style="height:100%">
                                                </li>
                                            </ul>
                                        </div>

                                        <script>
                                            jQuery(document).ready(function (e) {
                                                //=========================
                                                jQuery('.thumb-bottom-scroll').flexslider({
                                                    animation: "fade",
                                                    controlNav: false,
                                                    animationLoop: false,
                                                    slideshow: false,
                                                    sync: ".thumb-bottom-crucel"
                                                }),
                                                    jQuery('.thumb-bottom-crucel').flexslider({
                                                        animation: "slide",
                                                        controlNav: false,
                                                        animationLoop: false,
                                                        slideshow: false,
                                                        itemWidth: 210,
                                                        //itemMargin: 5,
                                                        asNavFor: ".thumb-bottom-scroll"
                                                    }),
                                                    //=========================

                                                    jQuery('.thumb-bottom').flexslider({
                                                        animation: "fade",
                                                        controlNav: "thumbnails",
                                                        start: function (slider) {
                                                            jQuery('body').removeClass('loading');
                                                        }
                                                    });
                                                //=========================
                                                jQuery('.no-thumb').flexslider({
                                                    animation: "fade",
                                                    controlNav: false,
                                                    start: function (slider) {
                                                        jQuery('body').removeClass('loading');
                                                    }
                                                });
                                                //=========================
                                                jQuery('.thumb-right').flexslider({
                                                    animation: "fade",
                                                    controlNav: "thumbnails",
                                                    start: function (slider) {
                                                        jQuery('body').removeClass('loading');
                                                    }
                                                });
                                                //=========================
                                                jQuery('.thumb-left').flexslider({
                                                    animation: "fade",
                                                    controlNav: "thumbnails",
                                                    start: function (slider) {
                                                        jQuery('body').removeClass('loading');
                                                    }
                                                });

                                                //=========================

                                                //Main slider components start
                                                jQuery(".full-cntrl-center-caption-blank").flexslider({
                                                    animation: "slide",
                                                    directionNav: true,
                                                    prevText: "Previous",
                                                    nextText: "Next",
                                                    pausePlay: true,
                                                    pauseText: "Pause",
                                                    playText: "Play",
                                                    controlNav: true
                                                })

                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_container vc_col-sm-4">
                                <div class="vc_column-inner">
                                    <div class="wpb_wrapper">
                                        <div class="gen-list no-border no-bg padding-0 border-radius-none square-list  col-two normal-font  ">
                                            <h2 class="title-font-normal title-font-black">IMPORTANT LINKS</h2>
                                            <ul>
                                                <li class="  ">
                                                    <a href="https://swachhbharatmission.gov.in/sbmcms/index.htm" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Swachh Bharat Mission</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="https://digitalindia.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Digital India			</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="https://www.mygov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">My GOV		</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="https://www.india.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">India's official website</div>
                                                        </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="http://www.ujala.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Ujala Yojna				</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="http://www.ujala.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Ujala Yojna				</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="http://poshanabhiyaan.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Poshan Abhiyaan	</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="http://www.up.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">UP Govt's official website.	</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="https://meity.gov.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Ministy of Electronis & IT</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="https://shasanadesh.up.nic.in/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">UP Gov Shasanadesh		</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="https://cmhelpline.in/up-govt-scheme/cm-yogi-helpline-number/" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">CM Helpline no.		</div>
                                                    </a>
                                                </li>

                                                <%--<li class="  ">
                                                    <a href="#" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">State Departments				</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="#" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Transforming India				</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="#" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">DISHA				</div>
                                                    </a>
                                                </li>
                                                <li class="  ">
                                                    <a href="#" style="">
                                                        <span class="list-icon -bg  border-radius-round"></span>
                                                        <div class="list-text">Success Stories at Ground				</div>
                                                    </a>
                                                </li>--%>
                                            </ul>
                                        </div>

                                        <div class="ad-banner-cntr  col_two">
                                            <ul>
                                                <li class="color-white    no-content " title="Minority Welfare Website">
                                                    <a class="hyperlikdiv" href="http://minoritywelfare.up.gov.in/en" title="Minority Welfare Website">
                                                        <img class="ad-bnr-img img-responsive img-thumbnail" src="images/Minority.jpg" alt="Minority Welfare Website">
                                                        <div class="ad-bnr-wrap">
                                                            <div class="ad-bnr-text">
                                                                <span style="color:white; padding-left:20px; padding-right:20px; background:rgba(88, 157, 191,0.8);">Minority Welfare</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="color-white    no-content ">
                                                    <a class="hyperlikdiv" href="https://www.backwardwelfareup.gov.in/">
                                                        <img class="ad-bnr-img img-responsive img-thumbnail" src="images/backward.jpg"  alt="Backward Welfare Website">
                                                        <div class="ad-bnr-wrap">
                                                            <div class="ad-bnr-text">
                                                                <span style="color:white; padding-left:20px; padding-right:20px; background:rgba(88, 157, 191,0.8);">Backward Welfare</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="color-white    no-content ">
                                                    <a class="hyperlikdiv" href="https://tribal.nic.in/">
                                                        <img class="ad-bnr-img img-responsive img-thumbnail" src="images/Tribal.jpg" alt="Tribal Welfare Website">
                                                        <div class="ad-bnr-wrap">
                                                            <div class="ad-bnr-text">
                                                                <span style="color:white; padding-left:20px; padding-right:20px; background:rgba(88, 157, 191,0.8);">Tribal Welfare</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="color-white    no-content ">
                                                    <a class="hyperlikdiv" href="http://samajkalyan.up.gov.in/">
                                                        <img class="ad-bnr-img img-responsive img-thumbnail" src="images/Social.jpg" alt="Social Welfare Website">
                                                        <div class="ad-bnr-wrap">
                                                            <div class="ad-bnr-text">
                                                                <span style="color:white; padding-left:20px; padding-right:20px; background:rgba(88, 157, 191,0.8);">Social Welfare</span>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="vc_row-full-width vc_clearfix"></div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="mainFooter">
        <div class="footer-top">
            <div class="container">
                <div class="col-xs-12 text-center">
                    <div class="footerMenu">
                        <ul id="menu-footer-en" class="menu">
                            <li id="menu-item-738" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-738">
                                <a href="feedback.aspx">Feedback</a>
                            </li>
                            <li id="menu-item-737" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-737">
                                <a href="WebsitePolicies.aspx">Website Policies</a>
                            </li>
                            <li id="menu-item-736" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-736">
                                <a href="Contactus.aspx">Contact Us</a>
                            </li>
                            <li id="menu-item-735" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-735">
                                <a href="help.aspx">Help</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <div class="copyRights">
                            <div class="copyRightsText">
                                <p class="mr-none">Content Owned by <a href="http://samajkalyan.up.gov.in/en" target="_blank">Social Welfare Department, Uttar Pradesh</a></p>
                                <p>
                                    Developed and hosted by
                                    <a href="http://www.nic.in/" target="_blank">National Informatics Centre</a>,
                                    <br>
                                    <a href="http://meity.gov.in/" target="_blank">Ministry of Electronics &amp; Information Technology</a>, Government of India
                                </p>
                                <p>
                                    Last Updated:
                                    <strong>Jun 02, 2023</strong>
                                </p>
                            </div>
                            <div class="copyRightsLogos">
                                <a href="https://s3waas.gov.in/">
                                    <img src="images/s3waas.png" alt="Secure, Scalable and Sugamya Website as a Service"></a>
                                <a href="http://www.nic.in/">
                                    <img src="images/nicLogo.png" alt="National Informatics Centre"></a>
                                <a href="http://samajkalyan.up.gov.in/en">
                                    <img src="images/SWLogo (3).png" alt="समाज कल्याण विभाग लोगो"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script>
        jQuery(document).ready(function ($) {
            jQuery('body').find('a.flex-pause').attr('href', "javascript:void(0)");
            $('.flex-direction-nav a.flex-prev').attr({ 'title': 'Previous', 'aria-label': 'Previous' });
            $('.flex-pauseplay a.flex-pause').attr({ 'title': 'Play/Pause', 'aria-label': 'Play/Pause' });
            $('.flex-direction-nav a.flex-next').attr({ 'title': 'Next', 'aria-label': 'Next' });
        });
    </script>
    <link rel="stylesheet" id="flexslider-css" href="css/flexslider.min.css" media="all">
    <link rel="stylesheet" id="custom-flexslider-css" href="css/custom-flexslider.css" media="all">
    <link rel="stylesheet" id="news-ticker-style-css" href="css/news-ticker.css" media="all">
    <link rel="stylesheet" id="list-style-css" href="css/list-style.min.css" media="all">
    <link rel="stylesheet" id="component-helper-css" href="css/component-helper.css" media="all">
    <link rel="stylesheet" id="min-profile-css" href="css/profile-hm.css" media="all">
    <link rel="stylesheet" id="vc_tta_style-css" href="css/js_composer_tta.min.css" media="all">
    <link rel="stylesheet" id="card-style-css" href="css/card.css" media="all">
    <link rel="stylesheet" id="home-gallery-css" href="css/photo-gallery-home.css" media="all">
    <link rel="stylesheet" id="ad-banner-css-css" href="css/ad-banner.css" media="all">
    <link rel="stylesheet" id="footer-style-css" href="css/footer-logo-carousel.css" media="all">
    <%--<script type="text/javascript" id="jquery-common-js-js-extra">
        /* <![CDATA[ */
        var AwaasData = { "ajaxUrl": "https://s3f1981e4bd8a0d6d8462016d2fc6276b3.s3waas.gov.in/wp-admin/admin-ajax.php", "isUserLoggedIn": "" };
        /* ]]> */
    </script>--%>
    <script src="js/common.js" id="jquery-common-js-js"></script>
    <script src="js/core.min.js" id="jquery-ui-core-js"></script>
    <script src="js/datepicker.min.js" id="jquery-ui-datepicker-js"></script>
    <script id="jquery-ui-datepicker-js-after" type="text/javascript">
        jQuery(function (jQuery) { jQuery.datepicker.setDefaults({ "closeText": "Close", "currentText": "Today", "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesShort": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "nextText": "Next", "prevText": "Previous", "dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"], "dateFormat": "MM d, yy", "firstDay": 1, "isRTL": false }); });
    </script>
    <script src="js/jquery.flexslider.js" id="jquery-flexslider-js-js"></script>
    <script src="js/easyResponsiveTabs.js" id="jseasyResponsiveTabs-js"></script>
    <script src="js/jquery.fancybox.js" id="jqueryfancyboxjs-js"></script>
    <script src="js/style.switcher.js" id="styleswitcherjs-js"></script>
    <script src="js/menu.js" id="menujs-js"></script>
    <script src="js/table.min.js" id="tablejs-js"></script>
    <script src="js/custom.js" id="custom-js"></script>
    <script src="js/extra.js" id="extrajs-js"></script>
    <script src="js/js_composer_front.min.js" id="wpb_composer_front_js-js"></script>
    <script src="js/jquery.flexslider-min.js" id="flexslider-js"></script>
    <script src="js/vc-accordion.min.js" id="vc_accordion_script-js"></script>
    <script src="js/vc-tta-autoplay.min.js" id="vc_tta_autoplay_script-js"></script>
    <script src="js/vc-tabs.min.js" id="vc_tabs_script-js"></script>
    <%--<script>
        jQuery(document).ready(function ($) {
            $.post({
                url: ajaxurl,
                method: 'POST',
                dataType: 'JSON',
                data: {
                    time: new Date().getTime(),
                    lang: 'en',
                    action: 's3waas_pll_lang_cookie'
                },
                success: function (responseResults) { }
            })
        })
    </script>--%>
    <!--Department Instance-->
    <!--Department Instance-->

</body>
</html>