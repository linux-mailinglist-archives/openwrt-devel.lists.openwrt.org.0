Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC859753B
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 10:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mkJjb2Ux3yUY+QfbfkBU0CMzVvvkLAPvwzDEWbTUB60=; b=guR
	j+WLs+bogxLiAT/SK8PUDl83KnHy8a5mDoMFKmgov7eLUr4oaSgbJy3EBLm6K2Zl6d9pnGvA43i6w
	Nu1Ai4VFz1Ct/Oy3s54V7MXYvoHyxYgq/GZYYsPD4ozHPexMr2raz/ioHIfTCwiNDwgp3Ny6mzOoC
	zIJcmi/c4+vWLIaE/Oyqmuhm4HPn/3WxmBsfm43RxJ6PqK0SP0xm8dxTJV+6hfuO3DgD1gbfhNjS7
	OJpFR4R3M1noFN98Gb6WplUj4/nn7fptCF8FeqcLKATWyTmc0AJqX+AtVRZ5v8c8MZzYRBdtLp6ah
	WVNzRRb/poAyIAsxm1abxCl1vc7JtMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MDW-00043A-2a; Wed, 21 Aug 2019 08:43:42 +0000
Received: from server.marketingcompanylondon.com ([209.97.137.72])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MDA-00041E-Rq
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 08:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=marketingcompanylondon.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 bh=GCAuRRKCa0wWqKF8xNiVlHULo+Q=;
 b=bYND7jD7R6qYn2IqvyRlQlE+jTeEOYmiR1Zo8M7LNPE59NsabI8vwI4SlXjPov6GViZAjTZfROuQ
 4AEkiDvRFNQTlKqIONbIoaQZeLjyRweYa0SXwcRsmCAk1EiwQxUR0LCA8vVJrWR1MfcaSOPhvBFd
 d30tyHevJQQVjiymH1k=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=marketingcompanylondon.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=darren.byrne@marketingcompanylondon.com; 
 bh=GCAuRRKCa0wWqKF8xNiVlHULo+Q=;
 b=F0dw+9hsNBEbsRj9z8BpeEV/96fPWBWCCqgmzxhvsi8eBhW0M8pbickz+Ere9EIzkMJt8je7FuIv
 3+DbBjwy2W/EsnnDUc5q06O10QqJgthuamjcIIUiNyTOFmlWrUyBIciIRnWiLHpgdoZMHcG1Z9Qe
 owSgzsvaEKa8jdQirI0=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=asdzxcv;
 d=marketingcompanylondon.com; 
 b=TUBHvbbwxOxTx65IAdXDs2FI5heVY78oUuBUQ1Omqshu6NnuFDyceA0IJkb3IcHvk5yTEfqJ6EiA
 MD0Z6p35A/32AlE0TRmCVeqEWmGmeMlzIxfK6XH88nlZ0UOJrlDJHJQ8BwjMIEfh/VhnuJ9yGw+b
 4FND56ChA8+jz/kSIs4=;
From: "Darren Byrne" <darren.byrne@marketingcompanylondon.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 21 Aug 2019 13:56:41 +0530
Message-ID: <1a2201d557fb$191c71c0$4b555540$@marketingcompanylondon.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdVX9xOyP5BNxy65ThCJlWWtIBSWmA==
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_014321_039160_811E2846 
X-CRM114-Status: UNSURE (  -2.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.4 DOS_OUTLOOK_TO_MX      Delivered direct to MX with Outlook headers
Subject: [OpenWrt-Devel] SEO Audit Report
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
Content-Type: multipart/mixed; boundary="===============2875214993252031869=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2875214993252031869==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1A23_01D55829.32D59820"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_1A23_01D55829.32D59820
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

Hope you are fine,

 

We'd like to inform you a very important issue regarding your website which
is the reason why you are losing lots of traffic.

 

Your website is great in terms of design and content. However, it doesn't
follow Search Engine Guidelines. So, it has a very low visibility in search
results.

 

We've done a thorough SEO audit of your website, and found that it has a big
potential to generate more revenue than what it might be earning at the
present. And yes, we have generated a report for the same as well.

 

We'd be glad to share the SEO audit report with you so that you can check it
yourself and find out what should be done to make it SEO friendly.

 

Let me know if you are interested, I will send you a free of cost and no
obligations audit and keywords recommendation report for your website?

 

I'd be happy to share our past work and client testimonials and Client
testimonials.

 

Thanks & Regards,

Darren Byrne

Business Development Manager

Contact No:- +44-2035146905

 

PS: I have studied your website, prepared seo audit report and believe I can
help with your business promotion. If you still want us to not contact you,
ask to remove and I will not contact again.

 

 


------=_NextPart_000_1A23_01D55829.32D59820
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
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
/* List Definitions */
@list l0
	{mso-list-id:2050718847;
	mso-list-type:hybrid;
	mso-list-template-ids:509895926 67698689 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US><div =
class=3DWordSection1><p class=3DMsoNormal =
style=3D'line-height:13.8pt;background:white'><span =
style=3D'color:black'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:13.8pt;background:white'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:13.8pt;background:white'><span =
style=3D'color:black'>Hope you are fine</span><b><span =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>,=
<o:p></o:p></span></b></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>We&#8217;d like to inform you a very important issue =
regarding your website which is the reason why you are losing lots of =
traffic.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Your website is great in terms of design and content. =
However, it doesn&#8217;t follow Search Engine Guidelines. So, it has a =
very low visibility in search results.</p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>We&#8217;ve =
done a thorough SEO audit of your website, and found that it has a big =
potential to generate more revenue than what it might be earning at the =
present. And yes, we have generated a report for the same as well.</p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>We&#8217;d =
be glad to share the SEO audit report with you so that you can check it =
yourself and find out what should be done to make it SEO friendly.</p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>Let me =
know if you are interested, I will send you a free of cost and no =
obligations audit and keywords recommendation report for your =
website?<o:p></o:p></b></p><p =
class=3DMsoNormal><b><o:p>&nbsp;</o:p></b></p><p class=3DMsoNormal>I'd =
be happy to share our past work and client testimonials and Client =
testimonials.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks &amp; Regards,</p><p class=3DMsoNormal>Darren =
Byrne</p><p class=3DMsoNormal>Business Development Manager</p><p =
class=3DMsoNormal>Contact No:- <span lang=3DEN-IN =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>+44-203514690=
5</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>PS: I have studied your website, prepared seo audit =
report and believe I can help with your business promotion. If you still =
want us to not contact you, ask to remove and I will not contact =
again.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_1A23_01D55829.32D59820--



--===============2875214993252031869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2875214993252031869==--


