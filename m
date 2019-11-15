Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EF9FE227
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 Nov 2019 17:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaicuysMI9mhthk9iwMNBLcyJmbb9od92Up/ITKKvy4=; b=CVR4EcjrcxYqVxwS1frPPnqZk
	A+wW0nObhDOB6Z5a6oRgZhAK9T1hoh82u2hGhFUn8vLH+n/VHxDKWEoyTs0hf5ZsUgu82RiqyErvP
	2S8fkKxka1PJn6tLR5H0sefzDJjZl+M1YbwmeBPhkSOJ+QYiK2kpsEAOHoGBnCWQfXUju2o+fWAQI
	0ezYtMTjE2BN1uTFNZj9FdSptzmfXJHOjSU/bkOjklyP19IWX+W7DsHPjZeHUiZ72+30DHCZPw+zF
	c3aWME5JIgERXpLiHvYmNdmwOJ19AMtiSfFvpHNaUk7ywX5mwppvpw2e13WAOL8t0qsMCjPjodyH/
	WMEop6wbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVe1B-0004K5-HK; Fri, 15 Nov 2019 16:00:17 +0000
Received: from gerbil.apple.relay.mailchannels.net ([23.83.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVe0z-0002sr-Ij
 for openwrt-devel@lists.openwrt.org; Fri, 15 Nov 2019 16:00:07 +0000
X-Sender-Id: a2hosting|x-authuser|expolink4@expolink.a2hosted.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 57F32580AAE
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 Nov 2019 15:59:21 +0000 (UTC)
Received: from az1-ss26.a2hosting.com
 (100-96-85-194.trex.outbound.svc.cluster.local [100.96.85.194])
 (Authenticated sender: a2hosting)
 by relay.mailchannels.net (Postfix) with ESMTPA id 95968580D64
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 Nov 2019 15:59:20 +0000 (UTC)
X-Sender-Id: a2hosting|x-authuser|expolink4@expolink.a2hosted.com
Received: from az1-ss26.a2hosting.com ([TEMPUNAVAIL]. [68.66.224.53])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:2500 (trex/5.18.5); Fri, 15 Nov 2019 15:59:21 +0000
X-MC-Relay: Good
X-MailChannels-SenderId: a2hosting|x-authuser|expolink4@expolink.a2hosted.com
X-MailChannels-Auth-Id: a2hosting
X-Lettuce-Troubled: 6210552472e2628c_1573833561103_1854327808
X-MC-Loop-Signature: 1573833561103:217520716
X-MC-Ingress-Time: 1573833561103
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=expolink.a2hosted.com; s=default; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1bZrwlL3Wb9vHZ7VTi/CUKs9PQCRAQZ4+yaYSrnDYlE=; b=LMPISuGWuiGJfGar+R13fUY/I
 LHGHgnswNvtQad28FMQwE7BpCyZMUyvGe6JGcna3NDGwlGMINTdMxwYoE1FVZ9/0l2i1hn4P6mXJY
 O1bidav4OFbizP63egH+wWcAyHibQeNx6O1CBe7FOPpgjmHAEXdy6ZB935jXpNrUx73mjcLkWm1H9
 6HbqjU0mfpp1vDYBI9QKICKjsMFIucY7n7yvhxus8803TWJ16Eyz2IB5T9s/SAE/FRSGUUohU5Z+T
 m47yhqZuLq6ZSdO5fxHuSYDsUqwcGnuaivW3dQ+l+cn9Nz7iL+P+2yxnrR6V4sFSuyM+e0Ny8Gt3X
 vMIA1nLrA==;
Received: from [106.51.18.36] (port=16560 helo=AdminPC)
 by az1-ss26.a2hosting.com with esmtpa (Exim 4.92)
 (envelope-from <expolink4@expolink.a2hosted.com>) id 1iVe0A-0004aM-3m
 for openwrt-devel@lists.openwrt.org; Fri, 15 Nov 2019 10:59:14 -0500
From: "Susan Dauber" <expolink4@expolink.a2hosted.com>
To: <openwrt-devel@lists.openwrt.org>
References: 
In-Reply-To: 
Date: Fri, 15 Nov 2019 10:59:03 -0500
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAPiIP93zG8BBlTFOvP/krcfCgAAAEAAAADMRj9f/akdNhEyU2/3dXmkBAAAAAA==@expolink.a2hosted.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdWaDbUNO8ES7NfxQnuALnbhTSqHsgBv+QsQ
Content-Language: en-us
X-AuthUser: expolink4@expolink.a2hosted.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_080005_945781_21EC0042 
X-CRM114-Status: UNSURE (  -2.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.208.67 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] International Broadcast Conference 2019
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
Content-Type: multipart/mixed; boundary="===============8808042395508843205=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8808042395508843205==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_2339_01D59BA3.B3933040"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_2339_01D59BA3.B3933040
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

Hi,

 

I am just doing a follow up with my previous email to check whether you are
interested in our Contact Lists.

 

Please pick the number which describes you.

 

1.Yes I am interested send me counts and pricing.

2.Leave out

 

Thank you and I Look forward to hearing from you.

 

Regards,

Susan

 

From: Susan Dauber [mailto:expolink4@expolink.a2hosted.com] 
Sent: Wednesday, November 13, 2019 5:33 AM
To: 'openwrt-devel@lists.openwrt.org'
Subject: International Broadcast Conference 2019 

 

Dear Exhibitor, 

 

Thanks for being a part of our International Broadcast Conference 2019.

 

IBC 2019 updated delegates contacts is Now Available. You can make use of
the contact list by Appointment Setting, Networking and other campaigns too.

 

This is the best time to follow up on those leads to Boost your sales team's
productivity by contacting them through email or call with no restriction on
usage.

 

Shall I get back with counts and pricing available quickly? 

 

Regards,

Susan Dauber - Event Attendees Specialist

International Broadcast Conference 2019

13 - 17 September 2019| RAI Amsterdam

 


------=_NextPart_000_2339_01D59BA3.B3933040
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoFootnoteText, li.MsoFootnoteText, div.MsoFootnoteText
	{mso-style-priority:99;
	mso-style-link:"Footnote Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
span.MsoFootnoteReference
	{mso-style-priority:99;
	vertical-align:super;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.FootnoteTextChar
	{mso-style-name:"Footnote Text Char";
	mso-style-priority:99;
	mso-style-link:"Footnote Text";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle26
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB style=3D'color:black'>I am just =
doing a follow up with my previous email to check whether you are =
interested in our Contact Lists.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB style=3D'color:black'>Please pick =
the number which describes you.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-GB style=3D'color:black'>1.Yes I am =
interested send me counts and pricing.<o:p></o:p></span></b></p><p =
class=3DMsoNormal><b><span lang=3DEN-GB style=3D'color:black'>2.Leave =
out<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-GB =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><span lang=3DEN-GB style=3D'color:black'>Thank you and =
I Look forward to hearing from you.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB =
style=3D'color:black'>Susan</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Susan Dauber [mailto:expolink4@expolink.a2hosted.com] <br><b>Sent:</b> =
Wednesday, November 13, 2019 5:33 AM<br><b>To:</b> =
'openwrt-devel@lists.openwrt.org'<br><b>Subject:</b> International =
Broadcast Conference 2019 <o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Dear =
Exhibitor, <o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Thanks for being a part of our <b>International =
Broadcast Conference 2019.</b><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>IBC =
2019</b> updated delegates contacts is <b>Now Available</b>. You can =
make use of the contact list by Appointment Setting, Networking and =
other campaigns too.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>This is the =
best time to follow up on those leads to Boost your sales team&#8217;s =
productivity by contacting them through email or call with <b>no =
restriction on usage.<o:p></o:p></b></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Shall I get =
back with <b>counts</b> and <b>pricing </b>available quickly? =
<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p class=3DMsoNormal><b>Susan =
Dauber</b> - Event Attendees Specialist<o:p></o:p></p><p =
class=3DMsoNormal>International Broadcast Conference =
2019<o:p></o:p></p><p class=3DMsoNormal>13 - 17 September 2019| RAI =
Amsterdam<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_2339_01D59BA3.B3933040--



--===============8808042395508843205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8808042395508843205==--


