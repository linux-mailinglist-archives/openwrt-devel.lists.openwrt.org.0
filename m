Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECA8158DF6
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 13:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q8Ra7oCp9rG2u/fVJIEVy3T1KyIwURCLXSPCbyxT7P4=; b=QzZm4k+FBKaRcprW0WWfEgVrB
	8UDRcpDhtClFD/7liz/FfnA6mJ+w1ttSYItwseqzdC5MqdbXW90/gex+d99H83KiEiiP57jwjUEJZ
	M2EZdvxjB6g5nO23RlpNMS3RsqYfLnQ1ZNxmLA/ftRhPKWPeTuAxCtJANTeV229Z5QlzuBBPINNH9
	GsaVF+x9/WfWq14/a/1JLLWAfIdF71f9IdLViKTJmVaDZSfMmye1uyv4kH52e+PbaGUdudYutzQHZ
	FxKeI4iNSLcSM8O52d1fM/blIwwzY440+5yPbVc65QtncwwfYq/KOW+lqwJj9RQuQ8m4EvGiIhgTB
	tBJ48sZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UO8-0004tf-FK; Tue, 11 Feb 2020 12:11:36 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UO1-0004tC-IC
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 12:11:31 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N62mG-1jYQT749ay-016OE1; Tue, 11
 Feb 2020 13:11:26 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?iso-8859-1?Q?'=C1lvaro_Fern=E1ndez_Rojas'?= <noltari@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20200209191104.6205-1-freifunk@adrianschmutzler.de>
 <DB7PR03MB4604363F6D0582F6C509ECD2F5190@DB7PR03MB4604.eurprd03.prod.outlook.com>,
 <008001d5e00e$7cf124c0$76d36e40$@adrianschmutzler.de>
 <DB7PR03MB460437BB23DF3134F762CE67F5190@DB7PR03MB4604.eurprd03.prod.outlook.com>
In-Reply-To: <DB7PR03MB460437BB23DF3134F762CE67F5190@DB7PR03MB4604.eurprd03.prod.outlook.com>
Date: Tue, 11 Feb 2020 13:11:25 +0100
Message-ID: <005901d5e0d4$62048690$260d93b0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGouRrgUPj8TAJaMV0wqMGiCnShgwIFrzjoAk/RIasAyKfqK6hHRIVw
X-Provags-ID: V03:K1:P89QEod30XfcKYangFvOBzt/vDFEitabPbCG3z4Rv8HtFjRKjJq
 4RTZ0dLQyYsH0HNvEdoKbasdjLd0m+RIzIFQgaveyekggLayg6uxAtxZ8mACdVN8BENbJD7
 /gwoIWjN67BURj6J2RVQLiK4Jlle2nsEqVYTwYOJ8zD9xSWfHxgmPWIKMbRSWkNLqpBckh8
 DdItnFpOO7EbfIKmrp9KA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I0TJZfChgz0=:zsz9QpFbtfl3VD80jVOVxN
 5MmPoieFOtbGnKIMU69S2rXW6gX1UOa9E/Nrk1zDNusXU++/UN7wUg5u1krtyNGu6M32jrdjk
 sK6dvZQrOevinyMI48xguesRte5ZZVY+7vRRpcJoSq+DtqxS1KLKrjxtq20I8FAXXwW2oAEe6
 b2aqaEQn0ELdw7v/dW5BK0/Ue8q5xKmSR+JXMWPIw7xeyqX7jqGAEdylx7u/UAcFVjOtEh0Vh
 4LF/b7JujIFBhpfg6AO2PIq8dIOLoG952WvBPntnzVikKLHRpzjDOuSAOWmOEWGcVOZUowIo0
 8TxCJ1lwpB5BwNEGpygpCXjY/iKH81GadJ7F8GrCNn+Ufpt0NhubG2028JQckUuBziQSBHx1W
 GzxbsfjiQXYQralFA72CYXLco5phKvHWar2Nr05VwFdcyX08jpfPt/qadDQpZWqTa9+5EG/wi
 yERNwRT4VQ8B3/3OH48Rr8eW0gPhIpLVgmC3SoRQb5+HNzcwV8fEN8KtWN1p41WzkJZxQYbjy
 0VAGI2VyPPoYqIbndSojZN4y8p+AT45iMZQG2gc/HUMJJ0sz5Wl1WoYDMVzKz2Rs+t7vGIvEY
 8o8/xj0xvjfemn1ChON37tfDTkKVpIBcRqcdMpJHqy3Yw2JYUaUMwDu61597LbtMa3G3RLd+h
 xf+lRLHTUOiCZC0rjg/DteEQHs2H5Xox4vz0nrDzEzkOGYV8xP80zfUEy925CloIt0Cu9YPC2
 kX+GkgvUBjwG0k8wtM5LD5p0IMO58JyJ8T3+14GrHcxYoWT3GwlYBMErPvHuvxVVYimmp8/0x
 HmvuBc5mKUAUninUyW0XOKeR+KFtPgy9Dj3Kr6RhbaQzTulBbCzXiGAFUuRGRqHQmon3kKf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_041129_895963_96099A1D 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] brcm2708: rename target to bcm27xx
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
Content-Type: multipart/mixed; boundary="===============7264275364117617815=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7264275364117617815==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_005A_01D5E0DC.C3CA0000"
Content-Language: de

This is a multipart message in MIME format.

------=_NextPart_000_005A_01D5E0DC.C3CA0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I=92ve adjusted the package names.

=20

My plan is to merge all the b(r)cm renames (bcm47xx, bcm63xx, bcm27xx) =
together
on Friday or Saturday, to give enough room for feedback, unless there is =
too
much negative feedback or a veto from the other maintainers.

=20

Best

=20

Adrian

=20

From: =C1lvaro Fern=E1ndez Rojas [mailto:noltari@gmail.com]=20
Sent: Montag, 10. Februar 2020 18:03
To: Adrian Schmutzler <mail@adrianschmutzler.de>;
openwrt-devel@lists.openwrt.org
Subject: Re: [PATCH] brcm2708: rename target to bcm27xx

=20

Hi Adrian,

=20

You can rename them to bcm27xx, since those packages also refer to =
BCM2709,
BCM2710 and BCM2711.

=20

As I said I won=92t have access to a computer until 18/02, so feel free =
to merge
this when you want.

=20

Best regards,

=C1lvaro.

=20

  _____ =20

De: Adrian Schmutzler <mail@adrianschmutzler.de
<mailto:mail@adrianschmutzler.de> >
Enviado: lunes, febrero 10, 2020 7:34 a. m.
Para: '=C1lvaro Fern=E1ndez Rojas'; openwrt-devel@lists.openwrt.org
<mailto:openwrt-devel@lists.openwrt.org>=20
Asunto: RE: [PATCH] brcm2708: rename target to bcm27xx=20

=20

Hi =C1lvaro,

=20

thanks for your fast response.

=20

So far, I=92ve changed the target name to bcm27xx, but kept the packages =
as
bcm2708-userland and bcm2708-gpu-fw (so, without the =93r=94, but also =
without
introducing the =93xx=94, as I=92m not sure what=92s more appropriate =
there.

=20

Do you think I should also change them to bcm27xx-userland and =
bcm27xx-gpu-fw,
or keep them as they are in the current patch (bcm2708-userland and
bcm2708-gpu-fw)?

=20

Best

=20

Adrian

=20


------=_NextPart_000_005A_01D5E0DC.C3CA0000
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Microsoft Word =
15 (filtered medium)"><!--[if !mso]><style>v\:* =
{behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
p.msochpdefault, li.msochpdefault, div.msochpdefault
	{mso-style-name:msochpdefault;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:10.0pt;
	font-family:"Times New Roman",serif;}
span.emailstyle17
	{mso-style-name:emailstyle17;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I&#8217;ve adjusted the package =
names.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>My plan is to merge all the b(r)cm renames =
(bcm47xx, bcm63xx, bcm27xx) together on Friday or Saturday, to give =
enough room for feedback, unless there is too much negative feedback or =
a veto from the other maintainers.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Best<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Adrian<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'><div><div style=3D'border:none;border-top:solid #E1E1E1 =
1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span =
lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =C1lvaro =
Fern=E1ndez Rojas [mailto:noltari@gmail.com] <br><b>Sent:</b> Montag, =
10. Februar 2020 18:03<br><b>To:</b> Adrian Schmutzler =
&lt;mail@adrianschmutzler.de&gt;; =
openwrt-devel@lists.openwrt.org<br><b>Subject:</b> Re: [PATCH] brcm2708: =
rename target to bcm27xx<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><p =
class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:black'>Hi Adrian,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:black'>You can rename them to bcm27xx, since those =
packages also refer to&nbsp;BCM2709, BCM2710 and =
BCM2711.<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:black'>As I said I won&#8217;t have access to a computer =
until 18/02, so feel free to merge this when you =
want.<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:black'>Best regards,<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal style=3D'background:white'><span =
style=3D'color:black'>=C1lvaro.<o:p></o:p></span></p></div></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><hr size=3D2 width=3D"98%" =
align=3Dcenter></div><div id=3DdivRplyFwdMsg><p =
class=3DMsoNormal><b><span =
style=3D'font-family:"Calibri",sans-serif'>De:</span></b><span =
style=3D'font-family:"Calibri",sans-serif'> Adrian Schmutzler &lt;<a =
href=3D"mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a>&gt;=
<br><b>Enviado:</b> lunes, febrero 10, 2020 7:34 =
a.&nbsp;m.<br><b>Para:</b> '=C1lvaro Fern=E1ndez Rojas'; <a =
href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openw=
rt.org</a><br><b>Asunto:</b> RE: [PATCH] brcm2708: rename target to =
bcm27xx <o:p></o:p></span></p><div><p class=3DMsoNormal><span =
style=3D'font-family:"Calibri",sans-serif'>&nbsp;<o:p></o:p></span></p></=
div></div><div><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Hi =C1lvaro,</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>thanks for your fast response.</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>So far, I&#8217;ve changed the target name to bcm27xx, but kept the =
packages as bcm2708-userland and bcm2708-gpu-fw (so, without the =
&#8220;r&#8221;, but also without introducing the &#8220;xx&#8221;, as =
I&#8217;m not sure what&#8217;s more appropriate =
there.</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Do you think I should also change them to bcm27xx-userland and =
bcm27xx-gpu-fw, or keep them as they are in the current patch =
(bcm2708-userland and bcm2708-gpu-fw)?</span><o:p></o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Best</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Adrian</span><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p></o:p></=
span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p></div></div></div></div></body></html>
------=_NextPart_000_005A_01D5E0DC.C3CA0000--



--===============7264275364117617815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7264275364117617815==--


