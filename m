Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294B0136A3C
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Jan 2020 10:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ww8ZY/qTBWi2lqbu45Q6YUOjCYIR4JaItklXpN/OC+Q=; b=eFM
	+FwRw8wxk1Akj9ZqkuThqyMvDhhvtQeHe1cEnhazYC4rH2/SYKsv2f19Fht3p4LQuU54+/Jguyilk
	GZIH1EAtSm9bzfqtHqevkWprYnY7zr0fTBVCVM2x3mOofHVjqjiCy5WzVT4f1K+X2lASFfaGbZIUe
	OifAG9gqIBRw5VGUVAahdUTI+TwuXAwFweh5XyHPwytAQSbxlfwqCtFsGmqoyhNjvmLmyPYSy07gR
	3hiy5njPKa90V3d0oSHvsDuHvAaBLvGDu8KktlbKFEuuwVU1Bpfr4n362GFQcURLLTu/XR6lubKWn
	6uxkwnew0xFPV3ueVSv2Qbn+AJp41iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqvl-0004o1-Pe; Fri, 10 Jan 2020 09:50:13 +0000
Received: from mgw1.skoda-auto.cz ([193.108.106.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqvW-0004iw-J2
 for openwrt-devel@lists.openwrt.org; Fri, 10 Jan 2020 09:50:00 +0000
X-AuditID: 0ad97bd3-133ff7000000715e-27-5e1848bb44b4
From: "Pumr, Ondrej (EEK)" <Ondrej.Pumr@skoda-auto.cz>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Question:  Migration from ar71xx to ath79
Thread-Index: AdXHmhrVZoS8W2UhQBKDEKt+t/Yniw==
Date: Fri, 10 Jan 2020 09:49:46 +0000
Message-ID: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
Accept-Language: cs-CZ, en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.217.137.187]
MIME-Version: 1.0
X-OriginalArrivalTime: 10 Jan 2020 09:49:46.0885 (UTC)
 FILETIME=[4AF6E350:01D5C79B]
X-EEG-SA-PASSED: outgoing
X-EEG-SA-LOOP-COUNT: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsXCdbNSVHe3h0ScwewJ/BaXjj9ndmD02Hz2
 B3MAYxS3TVJiSVlwZnqevl0Cd0bDtqMsBWsNK940hzUwztTpYuTkEBJQk5h6roe5i5GDQ0LA
 ROLOdbAwm4CZRNuE08wgtoiAu8TbvSfZQGxhASOJldv3MUHEzSUmfe5ghLD1JB79OM4KYrMI
 qEosuXAIzOYV8JM48nsiWD2jgKzEns7PYPXMAuIS755/AYtLCAhILNlznhnCFpV4+fgfK4St
 JNG6v4cNoj5f4nnDGSaImYISJ2c+YYGoCZZY9e8IVK+kxM01s9khbDGJh9N+sU9gFJ6FZN0s
 JKNmIRkFEdeTeHZqFpStLbFs4WtmCFtX4tLDdazI4gsY2VcxihTnJuWmlxvqpZXrFWfnpyTq
 lZWnb2IER0n15R2M7xYZHGIU4GBU4uHtU5GIE2JNLCuuzD3EKMHBrCTCe/SGWJwQb0piZVVq
 UX58UWlOavEhRmkOFiVxXid9kTghgfTEktTs1NSC1CKYLBMHJ0g3l5RIcWpeSmpRYmlJRjwo
 guOLgTEs1cD4jmFfhWa2zJru5UL2vscffmTf1BSzo4c9yuS1oyCH/E5xe6lm88Ite+L0NLJu
 XJm8u/ixuJXHLcZs35PLz0yt+vplYq6h+BvuJxrd+9VXzpibX1Aj/5bJxiTd4VOgzTv25F/a
 Mh+O2exbm3mxM2HitOMqb+JKivji2jI4jv25fkD+yJ0YlXlKLMUZiYZazEXFiQCLgrK7qQIA
 AA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_014958_782027_54A918F4 
X-CRM114-Status: UNSURE (   0.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.108.106.128 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] Question:  Migration from ar71xx to ath79
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
Content-Type: multipart/mixed; boundary="===============5283244958310084691=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5283244958310084691==
Content-Language: cs-CZ
Content-Type: multipart/alternative;
	boundary="_000_C02EF912F243ED4F9D4C4104F769FA4869CC52A2SKDAMBXM02mbsko_"

--_000_C02EF912F243ED4F9D4C4104F769FA4869CC52A2SKDAMBXM02mbsko_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hello,



I have TP-LINK TL-WR842N-V3 running OpenWrt 18.06 with ar71xx and I want to=
 migrate to  OpenWrt 19.07 with ath79.



In the list of known issues it is written, that "Sysupgrade from ar71xx to =
ath79 and vice versa is not officially supported, a full manual reinstall i=
s recommended...".



I don't understand the meaning of "full manual reinstall", but I thing, tha=
t instead of upgrading the firmware via web interface with image "openwrt-1=
9.07.0-ath79-generic-tplink_tl-wr842n-v3-squashfs-sysupgrade.bin" (size abo=
ut 4 MB), it is recommended the upgrading via bootloader + TFTP with image =
"openwrt-19.07.0-ath79-generic-tplink_tl-wr842n-v3-squashfs-factory.bin" (s=
ize about 16 MB).



I am right or does the "full manual reinstall" means another special proced=
ure?



Thank you



Best regards



Ond=F8ej Pumr


--_000_C02EF912F243ED4F9D4C4104F769FA4869CC52A2SKDAMBXM02mbsko_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Verdana",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:black;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:black;
	text-decoration:underline;}
span.StylE-mailovZprvy17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Verdana",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"CS" link=3D"black" vlink=3D"black">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I have TP-LINK TL-WR842N-V3 running Op=
enWrt
<span style=3D"color:blue">18.06</span> with <span style=3D"color:blue">ar7=
1xx</span> and I want to migrate to &nbsp;OpenWrt
<span style=3D"color:blue">19.07</span> with <span style=3D"color:blue">ath=
79</span>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">In the list of known issues it is writ=
ten, that &#8220;Sysupgrade from ar71xx to ath79 and vice versa is not offi=
cially supported, a full manual reinstall is recommended&#8230;&#8221;.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I don&#8217;t understand the meaning o=
f &#8221;full manual reinstall&#8221;, but I thing, that instead of upgradi=
ng the firmware via web interface with image &#8220;openwrt-19.07.0-ath79-g=
eneric-tplink_tl-wr842n-v3-squashfs-<span style=3D"color:blue">sysupgrade</=
span>.bin&#8221;
 (size about <span style=3D"color:blue">4 MB</span>), it is recommended the=
 upgrading via bootloader &#43; TFTP with image &#8220;openwrt-19.07.0-ath7=
9-generic-tplink_tl-wr842n-v3-squashfs-<span style=3D"color:blue">factory</=
span>.bin&#8221; (size about
<span style=3D"color:blue">16 MB</span>).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I am right or does the &#8220;full man=
ual reinstall&#8221; means another special procedure?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Best regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Ond=F8ej Pumr</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_C02EF912F243ED4F9D4C4104F769FA4869CC52A2SKDAMBXM02mbsko_--


--===============5283244958310084691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5283244958310084691==--

