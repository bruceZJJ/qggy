<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!--[if IE 8]>
    <style>.ie8 .alert-circle, .ie8 .alert-footer {
        display: none
    }

    .ie8 .alert-box {
        padding-top: 75px
    }

    .ie8 .alert-sec-text {
        top: 45px
    }</style><![endif]-->
    <title>正在跳转</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #E6EAEB;
            font-family: Arial, '微软雅黑', '宋体', sans-serif
        }

        .alert-box {
            display: none;
            position: relative;
            margin: 296px auto 0;
            padding: 180px 85px 22px;
            border-radius: 10px 10px 0 0;
            background: #FFF;
            box-shadow: 5px 9px 17px rgba(102, 102, 102, 0.75);
            width: 286px;
            color: #FFF;
            text-align: center
        }

        .alert-box p {
            margin: 0
        }

        .alert-circle {
            position: absolute;
            top: 10px;
            left: 111px;
        }

        .alert-sec-circle {
            stroke-dashoffset: 0;
            stroke-dasharray: 735;
            transition: stroke-dashoffset 1s linear
        }

        .alert-sec-text {
            position: absolute;
            top: 71px;
            left: 190px;
            width: 76px;
            color: #000;
            font-size: 68px
        }

        .alert-sec-unit {
            font-size: 34px
        }

        .alert-body {
            margin: 135px 0
        }

        .alert-head {
            color: #242424;
            font-size: 28px
        }

        .alert-concent {
            margin: 25px 0 14px;
            color: #7B7B7B;
            font-size: 18px
        }

        .alert-concent p {
            line-height: 27px
        }

        .alert-btn {
            display: block;
            border-radius: 10px;
            background-color: #4AB0F7;
            height: 55px;
            line-height: 55px;
            width: 286px;
            color: #FFF;
            font-size: 20px;
            text-decoration: none;
            letter-spacing: 2px
        }

        .alert-btn:hover {
            background-color: #6BC2FF
        }

        .alert-footer {
            margin: 0 auto;
            height: 42px;
            width: 120px
        }

        .alert-footer-icon {
            float: left
        }

        .alert-footer-text {
            float: left;
            border-left: 2px solid #EEE;
            padding: 3px 0 0 5px;
            height: 40px;
            color: #0B85CC;
            font-size: 12px;
            text-align: left
        }

        .alert-footer-text p {
            color: #7A7A7A;
            font-size: 22px;
            line-height: 18px
        }
    </style>
</head>
<body class="ie8">

<div id="js-alert-box" class="alert-box">
    <svg class="alert-circle" width="234" height="234">
        <circle cx="117" cy="117" r="108" fill="#FFF" stroke="#43AEFA"
                stroke-width="17"></circle>
        <circle id="js-sec-circle" class="alert-sec-circle" cx="117" cy="117"
                r="108" fill="transparent" stroke="#F4F1F1" stroke-width="18"
                transform="rotate(-90 117 117)"></circle>
        <text class="alert-sec-unit" x="82" y="172" fill="#BDBDBD">秒</text>
    </svg>
    <div id="js-sec-text" class="alert-sec-text"></div>
    <div class="alert-body">
        <div id="js-alert-head" class="alert-head"></div>
        <div class="alert-concent">
            <p>花个3分钟创建属于您的个人帐号</p>
            <p>您将在我们的网站享受更多</p>
        </div>
        <%--<a id="js-alert-btn" class="alert-btn"--%>
           <%--href="${pageContext.request.contextPath}/phone/user/basicinfo/student/tocreate.action?id=${id}">立即前往注册</a>--%>
        <a id="js-alert-btn" class="alert-btn"
           href="/qggy/phone/user/basicinfo/student/userRegister.action?id=${userOpenid}">立即前往注册</a>
    </div>
    <div class="alert-footer clearfix">
        <svg width="46px" height="42px" class="alert-footer-icon">
            <circle fill-rule="evenodd" clip-rule="evenodd" fill="#7B7B7B"
                    stroke="#DEDFE0" stroke-width="2" stroke-miterlimit="10"
                    cx="21.917" cy="21.25" r="17"/>
            <path fill="#FFF"
                  d="M22.907,27.83h-1.98l0.3-2.92c-0.37-0.22-0.61-0.63-0.61-1.1c0-0.71,0.58-1.29,1.3-1.29s1.3,0.58,1.3,1.29 c0,0.47-0.24,0.88-0.61,1.1L22.907,27.83z M18.327,17.51c0-1.98,1.61-3.59,3.59-3.59s3.59,1.61,3.59,3.59v2.59h-7.18V17.51z M27.687,20.1v-2.59c0-3.18-2.59-5.76-5.77-5.76s-5.76,2.58-5.76,5.76v2.59h-1.24v10.65h14V20.1H27.687z"/>
            <circle fill-rule="evenodd" clip-rule="evenodd" fill="#FEFEFE"
                    cx="35.417" cy="10.75" r="6.5"/>
            <polygon fill="#7B7B7B" stroke="#7B7B7B" stroke-linecap="round"
                     stroke-linejoin="round" stroke-miterlimit="10"
                     points="35.417,12.16 32.797,9.03 31.917,10.07 35.417,14.25 42.917,5.29 42.037,4.25 "/>
        </svg>
        <div class="alert-footer-text">
            <p>secure</p>
            安全加密
        </div>
    </div>
</div>


<script type="text/javascript">
    function alertSet(e) {
        document.getElementById("js-alert-box").style.display = "block",
            document.getElementById("js-alert-head").innerHTML = e;
        var t = 10, n = document.getElementById("js-sec-circle");
        document.getElementById("js-sec-text").innerHTML = t,
            setInterval(
                function () {
                    if (0 == t) {
                        window.location.href = "${pageContext.request.contextPath}/phone/user/basicinfo/student/userRegister.action?id=${userOpenid}";
                        <%--window.location.href = "${pageContext.request.contextPath}/basicinfo/promotecourse/tutorinformation.action?id=${userOpenid}";--%>
                    } else {
                        t -= 1,
                            document
                                .getElementById("js-sec-text").innerHTML = t;
                        var e = Math.round(t / 10 * 735);
                        n.style.strokeDashoffset = e - 735
                    }
                }, 970);
    }

</script>

<script>
    alertSet('前往会员注册');
</script>

</body>
</html>

