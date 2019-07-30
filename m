Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9937A733
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 13:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P6PYnpnzmYHLzwWLa9i+Dhui/56PUKt0jlLDTz0xe8c=; b=m3SROusAX4T7AOTAnZWesGVVr
	SDY9kHXLG5zeP2eYjuWs42ypewfrYnf+yyb8LlTXWz+32maAQ83U+FDujrkReb7IK/mKPI28S+efw
	kz6SFt2JwQDOEEMw9JwIw48IVNgRhRJJcNA6XO51lWE7+xOdxfzE8+EmhKWp9J3U+30vlBWSMoYGZ
	Pi9BcVvwb8JZjbASgntl7ZV+DIbw7HWdZd+zVFLdlIL6JddW4lojpKU8r6v0YQ2/nj2PbAUDMetPP
	Gh0rGQ+BOpoN4IFt1jWM/Oie6eAw5H7Tu51BUOyiDcDefNdMf3F0mFBnlUpAwt8OM5l7jcq8ZxVy/
	ZpXGBDSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQYT-0008Ar-5n; Tue, 30 Jul 2019 11:44:33 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQY6-0008AW-1p
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 11:44:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MD9Ox-1i1SxD3olF-0097HF; Tue, 30
 Jul 2019 13:43:58 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?B?J+S4lOWQrOmjjuWQnyc=?= <wurobinson@qq.com>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>	<00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
 <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>
In-Reply-To: <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>
Date: Tue, 30 Jul 2019 13:43:58 +0200
Message-ID: <00ac01d546cc$1359c2a0$3a0d47e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
thread-index: AQGmEYIKNlPSkHsokS68AJ07ljPyogHCxAqOArnD+iSnHY2Y0A==
Content-Language: de
X-Provags-ID: V03:K1:zemHIBZTTY85/KbVrO6Jp9hL7B72OZL3ppHiUsvy51IXV5FtLqy
 X1zpyJE74qy1fRLNw7FGrcnrCGvmlqx44jHCnwVHbAavxbn3XVAhpOJm3SXXovwLqPXUSt/
 VPGyxWvUWDSBeak/JN5MWC0+lg8LwTxIoP7AvRLDO8qZjgXtpoRTY8SaGrgJTdsQ/Ml7AlU
 fZE3uJO1MfXgSlsP2D09w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2bC60mqgpB8=:A0dHqbrGzvboremjKQgBuA
 NTHgxsoQwUXg/dmlrjwx2BJ0/V57wftNJprRrRsSY8LP3uGeBWV6oGOs2RfcgiFicsgOGlIFd
 eqNmqPF62sp1XnJ0rwsytZ0+Oq9YktgbokEWnOgsvJN3e+37eeMUE0tamvlvbWDn3vb7NoaZu
 6NSDEb1JvRbJ9szKkBamddh+3LY+A5EIYP86Byz/E9eYXI0kvZFKA3q4FxdYeg/0IWu5Cj2Du
 PJdc9Ut9L1fj4AScnjNTJc6/vRKvbWUSf4igeO9uU+n0SOBSnn7uoMVpLLL0szZ4GJgVudxYt
 QLkl2tKLOYMGTB3LZU0GF8VbScLJmxfguSJJzB9PoNOOdpSZ0OvDvSY170wQkAH+4D4sAbriI
 eA+Ht/7GeT1BeLqNIXKvVNLwK2v55Z1evnXkpoWkoWaip86vAHfwtWb1sdaOy4/uIqrpcMqP3
 sOb6YhJcL+C33TDC2R0Gwuj7Q+s60jaIV5+yGBngF4/yMbrjf57UVunQV9QTJZJoY7/ou/+F8
 FS3RU2Y+jmeEbcobm9J4Xoi8jqlO4L9UrS78sU8CdBLnvy+yPXBiAIjeOGn1yaRFTX9VMIR3l
 AUTKi9abMtu3LHeCe2Gw5h2otGusTTVOrFxiadcrFyy3rSnBcmTSzpk1HjHrqi1+LI6Xmelj5
 OngzUImu7Ks0LB4AEO8Y1roiX/xcGOWH0HcZyIlE7Nr4eJbMW+ZzZg4YV0U3yFYpRszY8viic
 7K2/Gy9IMJILo79+MX6GVMGAI9J4JmJ+kwT+oT9RBoNafR47s/QqzzuXH7c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_044410_396837_C960661B 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] 
	=?utf-8?b?UkXvvJpSRTogIFtQQVRDSF0gcmFtaXBzOiBh?=
	=?utf-8?q?dd_support_to_JS7628_development_board?=
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1333338398137601672=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1333338398137601672==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=LJSez0eM0VUfUk=-="

This is a multipart message in MIME format.

--=-=LJSez0eM0VUfUk=-=
Content-Type: multipart/alternative;
	boundary="=-=cWyymdwEPK3CXo=-="


--=-=cWyymdwEPK3CXo=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

I had a look at u7628-01-128m-16m .

=20

You are right that this case is similar to your example, but I also think t=
hat it should be renamed, too.

=20

There are other examples in mt7628an using only flash size for name distinc=
tion, e.g.

mt7628an_widora_neo-16m

mt7628an_widora_neo-32m

=20

In mt7621, we recently added auto-detection and even did rename devices wit=
h different memory sizes there:

https://github.com/openwrt/openwrt/commit/087e14ab5994986802739b57e2de22776=
0102bf4

=20

So, one definition will be available for all (auto-detected) memory sizes.

=20

So, I would call your devices:

zhuotk,js7628-8m

zhuotk,js7628-16m

zhuotk,js7628-32m

=20

model =3D "ZhuoTK JS7628 (8M flash)"

etc.

=20

define Device/zhuotk_js7628-8m

etc.

=20

DEVICE_VARIANT :=3D 8M

etc.

=20

Despite, is there a reason why call common DTSI and compatible =E2=80=9Czhu=
otk,js76x8=E2=80=9D and not =E2=80=9Czhuotk,js7628=E2=80=9D?

=20

And I still do not see the reason for

SUPPORTED_DEVICES +=3D js7628-8m-64m js7688-8m-64m ztk7628p-8m-64m

or do you have OpenWrt-based firmware with those strings installed previous=
ly?

=20

Best

=20

Adrian Schmutzler

=20

=20

From: =E4=B8=94=E5=90=AC=E9=A3=8E=E5=90=9F [mailto:wurobinson@qq.com]=20
Sent: Dienstag, 30. Juli 2019 07:50
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Subject: RE=EF=BC=9ARE: [OpenWrt-Devel] [PATCH] ramips: add support to JS76=
28 development board

=20

Hi Adrian,

    Before I did this commit, I referred to "mt7628an_unielec_u7628-01-128m=
-16m.dts". Yes, I use the memory auto-detected function. Will you help me t=
o modiy information concerning RAM size? Or if you have more advices, you c=
an tell me, so I can modify them in the next commit.

=20

Best

Robinson wu

--=-=cWyymdwEPK3CXo=-=
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta name=3DGenerator content=3D"Microso=
ft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3D"#0563C1" v=
link=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-far=
east-language:EN-US'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-=
fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif=
;color:#1F497D;mso-fareast-language:EN-US'>I had a look at u7628-01-128m-16=
m .<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'f=
ont-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-=
language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#=
1F497D;mso-fareast-language:EN-US'>You are right that this case is similar =
to your example, but I also think that it should be renamed, too.<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0=
pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fa=
reast-language:EN-US'>There are other examples in mt7628an using only flash=
 size for name distinction, e.g.<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-ser=
if;color:#1F497D;mso-fareast-language:EN-US'>mt7628an_widora_neo-16m<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:1=
1.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:E=
N-US'>mt7628an_widora_neo-32m<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;=
color:#1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"C=
alibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'>In mt7621, we =
recently added auto-detection and even did rename devices with different me=
mory sizes there:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497=
D;mso-fareast-language:EN-US'><a href=3D"https://github.com/openwrt/openwrt=
/commit/087e14ab5994986802739b57e2de227760102bf4">https://github.com/openwr=
t/openwrt/commit/087e14ab5994986802739b57e2de227760102bf4</a></span><span l=
ang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-=
fareast-language:EN-US'><o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-f=
areast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;=
mso-fareast-language:EN-US'>So, one definition will be available for all (a=
uto-detected) memory sizes.<span style=3D'color:#1F497D'><o:p></o:p></span>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0p=
t;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-far=
east-language:EN-US'>So, I would call your devices:<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family=
:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'>zhuotk,js76=
28-8m<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareas=
t-language:EN-US'>zhuotk,js7628-16m<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-=
serif;color:#1F497D;mso-fareast-language:EN-US'>zhuotk,js7628-32m<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0=
pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-U=
S'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fa=
reast-language:EN-US'>model =3D &quot;ZhuoTK JS7628 (8M flash)&quot;<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:1=
1.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:E=
N-US'>etc.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-f=
areast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DIT style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;col=
or:#1F497D;mso-fareast-language:EN-US'>define Device/zhuotk_js7628-8m<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DIT style=3D'font-size:11.=
0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-=
US'>etc.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DIT style=3D=
'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareas=
t-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color=
:#1F497D;mso-fareast-language:EN-US'>DEVICE_VARIANT :=3D 8M<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;fon=
t-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'>etc=
.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fon=
t-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-la=
nguage:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#=
1F497D;mso-fareast-language:EN-US'>Despite, is there a reason why call comm=
on DTSI and compatible =E2=80=9Czhuotk,js76x8=E2=80=9D and not =E2=80=9Czhu=
otk,js7628=E2=80=9D?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#=
1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri"=
,sans-serif;color:#1F497D;mso-fareast-language:EN-US'>And I still do not se=
e the reason for<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D=
;mso-fareast-language:EN-US'>SUPPORTED_DEVICES +=3D js7628-8m-64m js7688-8m=
-64m ztk7628p-8m-64m<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#=
1F497D;mso-fareast-language:EN-US'>or do you have OpenWrt-based firmware wi=
th those strings installed previously?<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sa=
ns-serif;color:#1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-=
family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'>Best<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-=
size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-lang=
uage:EN-US'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F49=
7D;mso-fareast-language:EN-US'>Adrian Schmutzler<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"C=
alibri",sans-serif;color:#1F497D;mso-fareast-language:EN-US'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11=
.0pt;font-family:"Calibri",sans-serif;color:#1F497D;mso-fareast-language:EN=
-US'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:soli=
d blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;bord=
er-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal>=
<b><span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-=
serif;mso-fareast-language:ZH-CN'>From:</span></b><span lang=3DEN-US style=
=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-language:=
ZH-CN'> </span><span lang=3DZH-CN style=3D'font-size:11.0pt;font-family:Sim=
Sun;mso-fareast-language:ZH-CN'>=E4=B8=94=E5=90=AC=E9=A3=8E=E5=90=9F</span>=
<span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-ser=
if;mso-fareast-language:ZH-CN'> [mailto:wurobinson@qq.com] <br><b>Sent:</b>=
 Dienstag, 30. Juli 2019 07:50<br><b>To:</b> Adrian Schmutzler &lt;mail@adr=
ianschmutzler.de&gt;<br><b>Cc:</b> openwrt-devel &lt;openwrt-devel@lists.op=
enwrt.org&gt;<br><b>Subject:</b> RE</span><span lang=3DZH-CN style=3D'font-=
size:11.0pt;font-family:SimSun;mso-fareast-language:ZH-CN'>=EF=BC=9A</span>=
<span lang=3DEN-US style=3D'font-size:11.0pt;font-family:"Calibri",sans-ser=
if;mso-fareast-language:ZH-CN'>RE: [OpenWrt-Devel] [PATCH] ramips: add supp=
ort to JS7628 development board<o:p></o:p></span></p></div></div><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Hi&nbsp;<span s=
tyle=3D'font-family:"Verdana",sans-serif'>Adrian,</span><o:p></o:p></p></di=
v><div><p class=3DMsoNormal><span style=3D'font-family:"Verdana",sans-serif=
'>&nbsp; &nbsp;&nbsp;Before I did this commit, I referred to &quot;mt7628an=
_unielec_u7628-01-128m-16m.dts&quot;.&nbsp;Yes, I use the&nbsp;memory&nbsp;=
auto-detected function. Will you help me to modiy&nbsp;information&nbsp;con=
cerning&nbsp;RAM&nbsp;size? Or if you have more advices, you can tell me, s=
o I can modify them in the next commit.</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal><spa=
n style=3D'font-family:"Verdana",sans-serif'>Best</span><o:p></o:p></p></di=
v><div><p class=3DMsoNormal><span style=3D'font-family:"Verdana",sans-serif=
'>Robinson wu</span><o:p></o:p></p></div></div></div></body></html>

--=-=cWyymdwEPK3CXo=-=--

--=-=LJSez0eM0VUfUk=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1ALXoACgkQoNyKO7qx
AnBy6xAAwtI8CfyVvubotLd8rl72HOnrjoQmk4PAUN+l6wyOSl5e0Llox8lqJimx
vv18AJfhse60sN8zgCOAw1wCt8t+K7LztyYBWm2SKnJzAihpqJSHC7Umci57eGkt
sgjRe2J/YXCxqScTgYlkD99cVHELnVWms0aF/DiB8MrjoHo2IYsjd5dsgiTQuGGW
3bOyddkezW1ngMzVeugmr2rMHBEEf/dv6C0V3GAuP/U9QRWDJm2+/lk/AVNeUZJr
svRmluJi3M6/lh08DJhS1OAiC67wNXjBGzCxU1TG48KEkBWIGRj+Z4UWW1FAHJRL
RZCNIpHQEinnfj0Wu0c9o1zwjrK3AB1Yy1cFenqB5bkOER5JNPhXC35yaP0I2zY3
HUM36WXPVZuerc0WhHc5bOA8U1ZTFUUxZ+vxwrXn5yCqAAeGEvkpb0WLBAu0vm1y
j+xKmqtm+AU+HRtLr/k3yCPpXC6b1OzTGE2JnFMajFWSLhI0T6PnVRSZ8DJHt17a
EPLmL94U/LNmsbbAkAIAb6pKWP9/9qh3VXZ3N42U0JLb4ezLu51pMKsBvlaFNKAE
0t8lCJTgOFOUZ09jNxnO8TLbdapbZDOi68basGGs6/bJlBb7IpZblYtytZzZq4KR
6mvydQk0iZk9mxL2Vsill2LNjWY3BdAy6vitGCdwCrdL1I1v67s=
=oeAN
-----END PGP SIGNATURE-----


--=-=LJSez0eM0VUfUk=-=--



--===============1333338398137601672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1333338398137601672==--


