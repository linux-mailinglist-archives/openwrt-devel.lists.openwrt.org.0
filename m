Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDBF142455
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 08:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pvs93YdUBASYCKlHs+de5Sq8lZJQ5DaLcDVzohVesJM=; b=F7h
	ACgQF4Tg8qU6axCPVZETdaI91xpemAS0smoYpTx/RGq5Am+9O7c52ZPnlw5D+CDJay4P10nof0AJa
	LwYnPewptbcGvoe2nJAy7mkw+qthfSKvL8Las3RY72gpJ8ry8PoKRMOPbCUIUQ7GrE5vZbpeqBetA
	V+wk2xU6cK2TbazzsfdquaOe+/jwCQ5UpUyUjIY4mgSYexCErHQ5HHPQT5lUArDYq3Y7X6I39xwja
	+0SvQaJdNl+nCAw1ot8lpLG8FocuHDo4u0isiIh1CYyMszU7lYFH32OQaD72p+bxQkaYYhWS/ZfET
	8rMopwFVakoZstjniubXYfgFjbhwy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRiv-0001zT-M5; Mon, 20 Jan 2020 07:43:49 +0000
Received: from server2.themount.xyz ([23.254.211.76])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRim-0001yz-GH
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 07:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv; d=themount.xyz; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 bh=8OvrUnkFd7MT2mASX+m+CgsFv+Y=;
 b=Nd9zKCJYd03sB0Eq2Ol+31lvFVo3cOo2h/4N7dfEpEKpy/RXaVThgkApTfRIuc5CqGMKRJBf3pqg
 7BH2SMc5IzNt4bLfANLKJSe2qG2Ic8EuwH60Itu/b7XBiCXVwThfP6C3maqHNG1+iVS68Y06PYv1
 a5sZ66KXBr0MZPuq530=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=seoagencysingapore.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=tony@seoagencysingapore.com; 
 bh=8OvrUnkFd7MT2mASX+m+CgsFv+Y=;
 b=e4P4sWj7JC1TReHP0BYVzjw+dT9N857s/YB8vdZTvCh1lXWgeR8TrRw1Sj53Q4uSsJkV5Emwod//
 KslValNT3t3TeyjTr2NbPmvGIz+8SrcLV0Own9sO39HkdQXG1qVBAA1J7mfg4wURGoDE7FSe0vAn
 Bg44rHg85CcG4/pLlxQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=asdzxcv;
 d=seoagencysingapore.com; 
 b=MAPQJsugyDm5uSr6w9OyTH3FKsszOTRFG9l2fA10k33NmlVRU9Ejufo0H7fU4SRp6Ob0uQw5sswH
 2rJRAtacmrSV4UT7HQEcpuXc3BTU+MqDehnR34nW3ZGKs4EwFuwUKgGYmq56JJWh2p2CzW1jFEAt
 eghuF1i6rhl75XJwQoQ=;
From: "Tony Hillis" <tony@seoagencysingapore.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 20 Jan 2020 12:57:52 +0530
Message-ID: <5dfc01d5cf63$ec1fda00$c45f8e00$@seoagencysingapore.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdXPVMcSuYFkClDPRM696ihz44Y5Lw==
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_234341_069803_37AC777A 
X-CRM114-Status: UNSURE (  -3.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.8 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: themount.xyz (xyz)]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.4 DOS_OUTLOOK_TO_MX      Delivered direct to MX with Outlook headers
Subject: [OpenWrt-Devel] Audit Report
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
Content-Type: multipart/mixed; boundary="===============5311560188886929626=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5311560188886929626==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_5DFD_01D5CF92.05D90060"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_5DFD_01D5CF92.05D90060
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi there,

Your website is great in terms of design and content. However, it doesn't
follow Search Engine Guidelines. So, it has a very low visibility in search
results. 

We'd like to inform you a very important issue regarding your website which
is the reason why you are losing lots of traffic. 

We've done a thorough Website audit of your website, and found that it has a
big potential to generate more revenue than what it might be earning at the
present. And yes, we have generated a report for the same as well. And also
we found best keyword suiting your business.

We'd be glad to share the Website audit report and your keywords with you so
that you can check it yourself and find out what should be done to make it
SEO friendly.

If you are interested in audit and keywords recommendation report, please
reply to this email and one of our consultants will share the report.

I'm waiting for your prompt reply.

Thanks & Regards,

Tony Hillis

Business Development Manager

Contact No: - +65-315 816 72

 

PS: I am not spamming. I have studied your website, prepared website audit
report and believe I can help with your business promotion. If you still
want us to not contact you, you can ignore this email or ask to remove and I
will not contact again.

 

 

 


------=_NextPart_000_5DFD_01D5CF92.05D90060
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US><div =
class=3DWordSection1><p class=3DMsoNormal =
style=3D'line-height:105%'><span style=3D'color:black'>Hi =
there,<o:p></o:p></span></p><p class=3DMsoNormal>Your website is great =
in terms of design and content. However, it doesn&#8217;t follow Search =
Engine Guidelines. So, it has a very low visibility in search results. =
</p><p class=3DMsoNormal style=3D'line-height:105%'><span =
style=3D'color:black'>We&#8217;d like to inform you a very important =
issue regarding your website which is the reason why you are losing lots =
of traffic. </span></p><p class=3DMsoNormal =
style=3D'line-height:105%'><span style=3D'color:black'>We&#8217;ve done =
a thorough Website audit of your website, and found that it has a big =
potential to generate more revenue than what it might be earning at the =
present. And yes, we have generated a report for the same as well. And =
also we found best keyword suiting your business.</span></p><p =
class=3DMsoNormal style=3D'line-height:105%'><span =
style=3D'color:black'>We&#8217;d be glad to share the Website audit =
report and your keywords with you so that you can check it yourself and =
find out what should be done to make it SEO friendly.</span></p><p =
class=3DMsoNormal style=3D'line-height:105%'><b><span =
style=3D'color:black'>If you are interested in audit and keywords =
recommendation report, please reply to this email and one of our =
consultants will share the report.</span><o:p></o:p></b></p><p =
class=3DMsoNormal style=3D'line-height:105%'><span =
style=3D'color:black'>I'm waiting for your prompt reply.</span></p><p =
class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:105%'><span style=3D'color:black'>Thanks &amp; =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:105%'><span style=3D'color:black'>Tony =
Hillis<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:105%'><span style=3D'color:black'>Business Development =
Manager<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify'><spa=
n style=3D'color:black'>Contact No: - </span><span =
style=3D'color:black'>+65-315 816 72</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin=
-left:.5in;margin-bottom:.0001pt'><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal style=3D'line-height:105%'><span =
style=3D'color:black'>PS: I am not spamming. I have studied your =
website, prepared website audit report and believe I can help with your =
business promotion. If you still want us to not contact you, you can =
ignore this email or ask to remove and I will not contact =
again.</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_5DFD_01D5CF92.05D90060--



--===============5311560188886929626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5311560188886929626==--


