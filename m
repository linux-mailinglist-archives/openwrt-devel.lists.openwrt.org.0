Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9A1F239
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 10:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Hx+VwZcIA0FXgWbgkuO/+O5t5LdNafp79Dnk1oUdI88=; b=RSI
	BEq7KAQUJpA+PU2tqrOIosrhWrfGsNb3WJUiKXxlNKJPSqQqFpugKCykxoAxhIwI4XfxgIf6J6iF2
	dLw5bbhkp5ZI5bIrALCNDQCgbc6xMMm4wmHQM0WcquW15sFrCsv+BFBaskWYklnmLUKSbuTv05HAx
	BjaltJka1FauZP/nIKqgy075WPCV/ZHzdRnAm1Z3LPg1yjmlh8t/gNi2g3Q3bPgsKrq7+hLDAEM++
	sozalinMGbBPVPkPvxfMSSZL5bkbHQsZ6k4jI7wK+uyP3oUhLVAuLBjdOX5wKefg91s1nSHh1W4Kb
	wiiLFTIdqoGYgFz8tBWPTEgFuTYtrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLOPk-0008QQ-MC; Tue, 30 Apr 2019 08:47:00 +0000
Received: from server1.alphav.site ([134.209.89.213])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLOPe-0008Pv-76
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 08:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=seocompanysg.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=janey@seocompanysg.com; bh=czrTLF1If36QGQf8F2X94kGuuBM=;
 b=liRO3YvV4XnDCeZ79yNwON4+BQeWSwbBEwjiS+snU8XjUVG1aJDkVwgdfpN8WVsjV43ZbvEQPhwQ
 1w6uFOH8mH/27dHZTmLpivgIls00EEqiGiiTO3wMwgfx9Vpi+8179sY2odiye/9oMSLi8HAas/KV
 9qjguSM3l2GUE7MCOE8=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=seocompanysg.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=janey@seocompanysg.com; bh=czrTLF1If36QGQf8F2X94kGuuBM=;
 b=liRO3YvV4XnDCeZ79yNwON4+BQeWSwbBEwjiS+snU8XjUVG1aJDkVwgdfpN8WVsjV43ZbvEQPhwQ
 1w6uFOH8mH/27dHZTmLpivgIls00EEqiGiiTO3wMwgfx9Vpi+8179sY2odiye/9oMSLi8HAas/KV
 9qjguSM3l2GUE7MCOE8=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=asdzxcv; d=seocompanysg.com;
 b=LQInD26E6MExho88yLmbJh22B0ic1KF0LDAF+zdWbAcxN78a8gJowRRHk6R1ihku2PuDjOc6uxe0
 JTL/MhNRTtv+zzD+TlTsnmW1VusLQD5feipER5q4Gx9gX84Nc4281ZwjHF9NDm0RHYrtSj4jR15K
 AKlrtWw/KGl483oVXQY=;
From: "Janey Chang" <janey@seocompanysg.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 30 Apr 2019 14:02:57 +0530
Message-ID: <46f301d4ff2f$d9a8a140$8cf9e3c0$@seocompanysg.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdT/Lx491hg63fZmTnuUOfchZxcmMw==
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_014654_403064_3BF218C7 
X-CRM114-Status: UNSURE (  -3.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: seocompanysg.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.4 DOS_OUTLOOK_TO_MX      Delivered direct to MX with Outlook headers
Subject: [OpenWrt-Devel] Improve local business
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7158853966521068798=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7158853966521068798==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_46F4_01D4FF5D.F3645FB0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_46F4_01D4FF5D.F3645FB0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

Hope you are doing well.

 

Are you looking to get SEO done on your website?

 

Want to see your website on Top of the 1st page of Google or other major
search engine?

 

Over 85% of online searchers focus on the 1st page of any search engine
result. If your website does not make it to the first page, you can lose
potential traffic on your webpage and consequently major chunk of your
business revenue.

 

Your website needs immediate improvement for some major issues with your
website.

-Low online presence for many competitive keyword phrases

-Unorganized social media accounts

-Not compatible with all mobile devices

-Many bad back links to your website

 

If you are interested, please reply me on this email with the list of
keywords and domain (s) which you want to target. We will analysis your
website and send full free Analysis report along with suitable plan.

 

I'd be happy to share our past work and client testimonials and Client
testimonials.

 

I'm waiting for your prompt reply.

Thanks & Regards,

Janey Chang

Business Development Manager

Contact No:- +65 3158 0551

 

Note: - Though this is not an automated email, (i.e., to ensure that we do
not contact you again for this matter), please send a blank mail to it with
NO as Subject.

 


------=_NextPart_000_46F4_01D4FF5D.F3645FB0
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
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	line-height:107%;
	page-break-after:avoid;
	font-size:16.0pt;
	font-family:"Calibri Light","sans-serif";
	color:#2E74B5;
	font-weight:normal;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	margin-top:2.0pt;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:0in;
	margin-bottom:.0001pt;
	line-height:107%;
	page-break-after:avoid;
	font-size:13.0pt;
	font-family:"Calibri Light","sans-serif";
	color:#2E74B5;
	font-weight:normal;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Calibri Light","sans-serif";
	color:#2E74B5;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Calibri Light","sans-serif";
	color:#2E74B5;}
span.m2648879249209206673il
	{mso-style-name:m_2648879249209206673il;}
p.m1882900596882432219xmsonormal, li.m1882900596882432219xmsonormal, =
div.m1882900596882432219xmsonormal
	{mso-style-name:m1882900596882432219xmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span style=3D'color:#222222'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span =
style=3D'color:#222222'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span style=3D'color:#222222'>Hope you are doing =
well.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span =
style=3D'color:#222222'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span style=3D'color:#222222'>Are you looking to get SEO =
done on your website?<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span =
style=3D'color:#222222'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span style=3D'color:#222222'>Want to see your website on =
Top of the 1st page of Google or other major search =
engine?<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><b><span =
style=3D'color:#222222'>&nbsp;</span></b><span =
style=3D'color:#222222'><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><b><span =
style=3D'color:#222222'>Over&nbsp;85% of online searchers focus on the =
1<sup>st</sup>&nbsp;page of any search engine =
result.&nbsp;</span></b><span style=3D'color:#222222'>If your website =
does not make it to the first page, you can lose potential traffic on =
your webpage and consequently major chunk of your business =
revenue.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span =
style=3D'color:#222222'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span style=3D'color:#222222'>Your =
website needs immediate improvement for some major issues with your =
website.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span style=3D'color:#222222'>-Low =
online presence for many competitive keyword =
phrases<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span =
style=3D'color:#222222'>-Unorganized social media =
accounts<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span style=3D'color:#222222'>-Not =
compatible with all mobile devices<o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span style=3D'color:#222222'>-Many bad =
back links to your website<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span =
style=3D'color:#222222'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-align:justify;line-=
height:normal;background:white'><span style=3D'color:#222222'>If you are =
interested, please reply me on this email with the list =
of&nbsp;<b>keywords and domain (s)</b>&nbsp;which you want to target. We =
will analysis your website and send full free Analysis report along with =
suitable plan.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span =
style=3D'color:#222222'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span style=3D'color:#222222'>I'd be happy&nbsp;<span =
style=3D'background:white'>to share =
our&nbsp;past&nbsp;work&nbsp;and&nbsp;client&nbsp;testimonials&nbsp;</spa=
n>and Client testimonials.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span =
style=3D'color:#222222'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>I'm waiting for your prompt =
reply.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span lang=3DEN-IN style=3D'color:black'>Thanks &amp; =
Regards,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span lang=3DEN-IN style=3D'color:black'>Janey =
Chang<o:p></o:p></span></p><p class=3Dm1882900596882432219xmsonormal =
style=3D'margin:0in;margin-bottom:.0001pt;background:white'><span =
lang=3DEN-IN =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:black'=
>Business Development Manager</span><span =
lang=3DVI><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span lang=3DEN-IN>Contact No:- </span><span lang=3DEN-IN =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>+65 3158 =
0551<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;backg=
round:white'><span lang=3DVI><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>Note: -<b> </b>Though this is not =
an automated email, (i.e., to ensure that we do not contact you again =
for this matter), please send a blank mail to it with NO as =
Subject.</span></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></body></html>
------=_NextPart_000_46F4_01D4FF5D.F3645FB0--



--===============7158853966521068798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7158853966521068798==--


