Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD641B4C13
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 12:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HGKOfT4BV7p8kKKVixjqHKenMZSSBOynsf1X6B9MCSk=; b=U58
	gDtZDjorbQWsiN4mQe6bYv7L3rHFrUM+//hWr/Zbfr9GyObBQGUAQfAUvH0Qz5V/dZMDbu7qxwcGi
	kJ8202pZQ+g2w/aPoGvvIfSHfGWUWCL7GGT8C5LF6+oh+1s3wMkY2KT9g8rjrO8rh3u8fQ+aVFks3
	Famzzz7D9Z3Wnw4NJsVENa4/fo7xoXPtI7MMOaZR/GlocGRs66Wju1tnS69fPk6R7OCGsdeM3jB1n
	Lw5TTlKBP05RcZH+Firc7Pw77+uvVUxQoQkG8AmB635HhlUAEjhlrY5d6G0MSBzJGyHgW3B62qtxV
	eMR7NPlu98/FUdKo0S+LB59zYPJmaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAsF-0005Xd-Uw; Tue, 17 Sep 2019 10:38:20 +0000
Received: from server25.navernew.site ([165.227.43.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAs5-0005XJ-Iw
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 10:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=seocompanysg.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 bh=z66sA79rbm+jI1PaUhi0JsjSOAY=;
 b=iz5YEcvjjWxkeWP/ds7N3ssKHh7avkKl10CGVeuCFSFrt6TOUHH0ybPpB1LL+xWFxqfe1e7xyAMr
 MFspqj/mDKDAvOvriYlLaOngPbnE8CfIT2DL+pBs8UbiMMVTN1GOysVK6jHGP6GkTN3G4uljLKeE
 xFBtegnAy6GlRrCEutk=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=asdzxcv;
 d=marketingcompanylondon.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=michael@marketingcompanylondon.com; 
 bh=z66sA79rbm+jI1PaUhi0JsjSOAY=;
 b=Jleso9CW6h0sYQmUDVzu5uecAsOmUWZ4uIhFtnm3LXN7VXLY7sd8Qn0ps+pm339JC2aAyxJNcs+e
 c3rab7YKhR7EVQX+n57mH9BI7UZ/ltqaDwvUboQUAIuUhEVDQKs8gW3lu0TzlHhkfsLHJscUUNYO
 YR3nDg4NS9HlUsUsNxM=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=asdzxcv;
 d=marketingcompanylondon.com; 
 b=Zwqz8GQZi5x7RvUgv3W2VPjQCtRZCH+5+InXLb/7yEWmZDKOqEiInA3fGmcywenEMkCGSmYdbiDT
 +PE4SYyqhYWyLY3vvbOsauZM3iQGrkKHFHoffV18wR71qIKFMOPRQFrEg9AfxG/bdBMfwDMB4Fzb
 hQjIFOfGF2SkmpRKwug=;
From: "Michael Wilson" <michael@marketingcompanylondon.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 17 Sep 2019 15:52:12 +0530
Message-ID: <9f2f01d56d42$993d05c0$cbb71140$@marketingcompanylondon.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdVtNk7Kk++XPZCgRMqq0uZD3Mg4VA==
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_033809_691873_CC2A9532 
X-CRM114-Status: UNSURE (  -3.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: seocompanysg.com]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?165.227.43.210>]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.4 DOS_OUTLOOK_TO_MX      Delivered direct to MX with Outlook headers
Subject: [OpenWrt-Devel] SEO Campaign
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
Content-Type: multipart/mixed; boundary="===============2132999375387352031=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2132999375387352031==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_9F30_01D56D70.B2F65330"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_9F30_01D56D70.B2F65330
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

Michael Wilson

Business Development Manager

Contact No:- +65-315  816 72

 

PS: I have studied your website, prepared seo audit report and believe I can
help with your business promotion. If you still want us to not contact you,
ask to remove and I will not contact again.

 

 


------=_NextPart_000_9F30_01D56D70.B2F65330
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
class=3DMsoNormal>Thanks &amp; Regards,</p><p class=3DMsoNormal>Michael =
Wilson</p><p class=3DMsoNormal>Business Development Manager</p><p =
class=3DMsoNormal>Contact No:- <span lang=3DEN-IN =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>+65-315&nbsp;=
 816 72<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>PS: I have =
studied your website, prepared seo audit report and believe I can help =
with your business promotion. If you still want us to not contact you, =
ask to remove and I will not contact again.</p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_9F30_01D56D70.B2F65330--



--===============2132999375387352031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2132999375387352031==--


