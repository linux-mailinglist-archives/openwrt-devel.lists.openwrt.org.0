Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F265CA59BA
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 16:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E/k35ksWg9QDEitzb+gwoJcIOxf/pEOBlMzpedB9Rn4=; b=c0vwdp3ILrSLiEl0XTz4nkU3w
	tirCKgBtiw2ibVKYyBeM7lonneeJq/+KNlTAyiJ7Rx4PTj1S9K515trUyEfBCxMpnh82/Grzvz0Xt
	u23/H+pkB1OzetBRiaoTrcAS6dDiO7kiKVB8lkCiTOh0B8MxbF0T9n23jaYEnB0LItdC9c8+qHzrr
	VOiPG0qcOR2Z2LT3Uoj+nyMdoh8mLW1gwlGiA4sMZlAwjAakXCjPR5wuVat57sewUE6MX7gOvXHAH
	aMDRpdoJfc+KtHPJYaAzq6rukwk3xqljFMwYXjL0jzlE9p0DfTf6vf8iie7q2hwzFoDc+bOMV+QM/
	bDEvk4fwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nf7-0001Wj-Mh; Mon, 02 Sep 2019 14:50:33 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nf0-0001WO-Kx
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 14:50:28 +0000
Received: by mail-ed1-x541.google.com with SMTP id s49so15913960edb.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 07:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :mime-version; bh=es/su6OQHdAaaVZSyroItirhNckLdgyBCY+h1MXbcgo=;
 b=C9N6dwzKxRLvy+rLAkd+Q7AF623UN+ItIf5EUTuMxyIbdfv/XS63xGB0luZppOuIHb
 q+k1epTEccmPH0EiJ+o0L2mdNxYip6Tido1VJ45wHWhLfJq0Cr8erw8uQsjl8ZHshpd2
 8+TlVARh/X8NN3scXEuHRhqLEbJlyYNTFFj87u2nKxz0+yhDRxOtBi5iLZq/GX0i+tMu
 F6Vb7tfEhpbVgnbf1Z+RbYa8JsjticQWQ3SIDxp0tKIp+CHFNL/bgO15TUoRSPJitEf8
 4kbJs/6GJ56+ua9zsJjf+rxW5zFndXj28VytkVMm5ySEEAUNs4xxqbDxw5efhrIlBkTU
 sQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
 :message-id:references:in-reply-to:accept-language:content-language
 :mime-version;
 bh=es/su6OQHdAaaVZSyroItirhNckLdgyBCY+h1MXbcgo=;
 b=KYxYyeRSGX1lKHKLmjaIg5R4QkN5Hqa6CB/A5gmAy4uX5qAFQm0JZQF99ux5kc2xvm
 S2kzv5KzpePlE+82qVvIdf7sT9rdIfgqEjVjTM4QRE7g0cvXXtXm+YKD+MdKUMAgo1Xk
 1tE2zPCnfwAMWcfBSU4AXsLTOgiOVw+ufpzx9qzmgXxv+FHKINpFQIhQ/b2G5IslPVUb
 DjGiiWWDFJ9JPIMsyLtayw/0GXMU/q3Lg3BMb6fgnd2LeAHAdwomqWPh36VA2zygO8/8
 G4nDXozuYCt7xBjKjIq05Hd7tgmqSt26db6eFv5xYCbXBir+xqRZ6AluV3aYvBOgY3FN
 8Djw==
X-Gm-Message-State: APjAAAVQuXB3pPp2eXiNEVzSPCpP1AjE9z1WPEswlf0ogyeHVIfuitvl
 LfF9NOm8SbXb4c+EsSQel5k=
X-Google-Smtp-Source: APXvYqxKgMMer/dnEieTXdd1dGjPjrZJMq62FCHERCgTtuFqENTlsGQ0hVmRk+9PiA3ro5GzxwFRCg==
X-Received: by 2002:aa7:da8b:: with SMTP id q11mr1783512eds.19.1567435823244; 
 Mon, 02 Sep 2019 07:50:23 -0700 (PDT)
Received: from AM0P193MB0450.EURP193.PROD.OUTLOOK.COM ([2603:1026:207:61::5])
 by smtp.gmail.com with ESMTPSA id
 f22sm2963167edr.15.2019.09.02.07.50.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 07:50:22 -0700 (PDT)
From: =?windows-1250?Q?=C1lvaro_Fern=E1ndez_Rojas?= <noltari@gmail.com>
To: =?windows-1250?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>, OpenWrt
 Development List <openwrt-devel@lists.openwrt.org>
Thread-Topic: RPi Zero W: broken serial since 4.19 switch
Thread-Index: AUFoRDNXdxN4NH51BtdUwK7mUSGUzqfysm2w
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Mon, 2 Sep 2019 14:50:22 +0000
Message-ID: <AM0P193MB045069422B657BB10D556627F5BE0@AM0P193MB0450.EURP193.PROD.OUTLOOK.COM>
References: <CACna6rwS8WB1mmuxbod3OhZzdgSkCDEBLOULDo3hraOOedhknA@mail.gmail.com>
In-Reply-To: <CACna6rwS8WB1mmuxbod3OhZzdgSkCDEBLOULDo3hraOOedhknA@mail.gmail.com>
Accept-Language: es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_075026_720336_DF4B8FD9 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (noltari[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] RPi Zero W: broken serial since 4.19 switch
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6374797138762555505=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6374797138762555505==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0P193MB045069422B657BB10D556627F5BE0AM0P193MB0450EURP_"

--_000_AM0P193MB045069422B657BB10D556627F5BE0AM0P193MB0450EURP_
Content-Type: text/plain; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks, I will check it.

Did you try adding =93enable_uart=3D1=94 to config.txt?
I removed it from config.txt because according to https://www.raspberrypi.o=
rg/documentation/configuration/uart.md it affects the core frequency slowin=
g down some models.

~=C1lvaro.
________________________________
De: Rafa=B3 Mi=B3ecki <zajec5@gmail.com>
Enviado: lunes, septiembre 2, 2019 4:08 p. m.
Para: =C1lvaro Fern=E1ndez Rojas; OpenWrt Development List
Asunto: RPi Zero W: broken serial since 4.19 switch

Starting with the commit 42954857190b ("brcm2708: add linux 4.19
support") I don't get any output over my Raspberry Pi Zero W serial
console. OpenWrt still boots fine (I can see full bootlog on a screen).

I tried debugging that but it doesn't seem to be anything obvious.
Comparing kernel configs (4.14 vs. 4.19) and decompiled .dtb files
doesn't ring any bell for me.

Any idea what may be a reason for that? How to debug that?

I'm attaching 4 files.
good-*: files from 4.14 kernel from 42954857190b~1
bad-*: files from 4.19 kernel from 42954857190b

--
Rafa=B3

--_000_AM0P193MB045069422B657BB10D556627F5BE0AM0P193MB0450EURP_
Content-Type: text/html; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
250">
<style id=3D"ms-outlook-ios-style" type=3D"text/css">html {
background-color: transparent !important;
}

body {
background-color: transparent !important;
color: #333;
line-height: 150%;
font-family: "-apple-system", "HelveticaNeue";
margin: 0;
}

.ms-outlook-ios-reference-expand {
display: block;
color: #999;
padding: 20px 0px;
text-decoration: none;
}

.ms-outlook-ios-availability-container {
max-width: 500px;
margin: auto;
padding: 12px 15px 15px 15px;
border: 1px solid #C7E0F4;
border-radius: 4px;
}

.ms-outlook-ios-availability-container > .ms-outlook-ios-availability-delet=
e-button {
width: 25px;
height: 25px;
right: -12px;
top: -12px;
background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAA=
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3D");
background-size: 25px 25px;
background-position: center;
}

#ms-outlook-ios-main-container {
margin: 0 0 0 0;
margin-top: 120;
padding: 8;
}

#ms-outlook-ios-content-container {
padding: 0;
padding-top: 12;
padding-bottom: 20;
}

.ms-outlook-ios-mention {
color: #333;
background-color: #f1f1f1;
border-radius: 4px;
padding: 0 2px 0 2px;
pointer-events: none;
text-decoration: none;
}

.ms-outlook-ios-mention-external {
color: #ba8f0d;
background-color: #fdf7e7;
}

.ms-outlook-ios-mention-external-clear-design {
color: #ba8f0d;
background-color: #f1f1f1;
}</style><style id=3D"ms-outlook-ios-dark-mode-style" type=3D"text/css">.ms=
-outlook-ios-dark-mode {
color: #E1E1E1 !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-reference-expand {
color: #777777 !important;
}

.ms-outlook-ios-dark-mode a:not([class]) {
color: #0086F0;
}

.ms-outlook-ios-dark-mode font[color=3D"#000000"] {
color: #E1E1E1 !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-availability-container {
border-color: #303030 !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-availability-container > table > =
tbody > tr > td:nth-child(1) > table:nth-child(1) > tbody > tr:nth-child(1)=
 > td:nth-child(2) {
color: #0086F0;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-availability-container .ms-outloo=
k-ios-availability-timeslot-container {
background-color: #0086F0 !important;
color: #000000 !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-availability-container .ms-outloo=
k-ios-availability-border {
border-top: 1px solid #0086F0 !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-availability-container > .ms-outl=
ook-ios-availability-delete-button {
background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAA=
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
AAABJRU5ErkJggg=3D=3D") !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-availability-container > table > =
tbody > tr > td:nth-child(1) > table:nth-child(4) > tbody > tr:nth-child(2)=
 > td > a {
color: #0086F0 !important;
}

.ms-outlook-ios-dark-mode .ms-outlook-ios-mention {
color: #ACACAC !important;
background-color: #292929 !important;
}</style>
<meta name=3D"viewport" content=3D"width=3Ddevice-width, user-scalable=3Dno=
, initial-scale=3D1.0, minimum-scale=3D1.0, maximum-scale=3D1.0">
</head>
<body style=3D"-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
<div style=3D"direction: ltr;">
<div style=3D"direction: ltr;">Hi,</div>
<div><br>
</div>
<div style=3D"direction: ltr;">Thanks, I will check it.</div>
<div><br>
</div>
<div style=3D"direction: ltr;">Did you try adding =93enable_uart=3D1=94 to =
config.txt?</div>
<div style=3D"direction: ltr;">I removed it from config.txt because accordi=
ng to https://www.raspberrypi.org/documentation/configuration/uart.md it af=
fects the core frequency slowing down some models.</div>
<div><br>
</div>
<div style=3D"direction: ltr;">~=C1lvaro.</div>
</div>
<div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"dir=3D&quot;ltr&quot;"><font face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>De:</b> Rafa=
=B3 Mi=B3ecki &lt;zajec5@gmail.com&gt;<br>
<b>Enviado:</b> lunes, septiembre 2, 2019 4:08 p. m.<br>
<b>Para:</b> =C1lvaro Fern=E1ndez Rojas; OpenWrt Development List<br>
<b>Asunto:</b> RPi Zero W: broken serial since 4.19 switch
<div>&nbsp;</div>
</font></div>
Starting with the commit 42954857190b (&quot;brcm2708: add linux 4.19<br>
support&quot;) I don't get any output over my Raspberry Pi Zero W serial<br=
>
console. OpenWrt still boots fine (I can see full bootlog on a screen).<br>
<br>
I tried debugging that but it doesn't seem to be anything obvious.<br>
Comparing kernel configs (4.14 vs. 4.19) and decompiled .dtb files<br>
doesn't ring any bell for me.<br>
<br>
Any idea what may be a reason for that? How to debug that?<br>
<br>
I'm attaching 4 files.<br>
good-*: files from 4.14 kernel from 42954857190b~1<br>
bad-*: files from 4.19 kernel from 42954857190b<br>
<br>
-- <br>
Rafa=B3<br>
</div>
</body>
</html>

--_000_AM0P193MB045069422B657BB10D556627F5BE0AM0P193MB0450EURP_--


--===============6374797138762555505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6374797138762555505==--

