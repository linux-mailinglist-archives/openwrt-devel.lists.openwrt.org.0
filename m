Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B828B1F6
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 10:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Pq8UVSLd9jOQiFbLhZMav9WycDfr9tda1Jpy64n9yYg=; b=Zge
	vuwLoON0IqTeBtozFBYrZIGlAv3q4GxGgmsoWv/zSlO8UQabdr6gsfNqpH0Ov0zEZcat9/AHd+vOu
	kEwmEQ08hAsRjbHzj7c7hnU20B6Npd2vnkbcT2sKIh+AdNyXHwSC1BjSxrFgOzKX2dGcOfX1Q7jr2
	uc7pniGohbvaOKa9MQI19GHBnUqKiPzS1tWLW2/s+tVS4L4CuPzpbkj1tR8SYle+pCOgoOo3dif1d
	+kmctYharYUffPyKnkbdXU6MxbGWd5yRyBjARfZb6m8glP6ap/rNZKZU5G/zFCzP9yzyN6BOQYTg6
	muhawuCviOQh7VbEuW+zWLwDjg1KsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRn7-0003E5-As; Tue, 13 Aug 2019 08:04:25 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRmv-0003Db-5G
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 08:04:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565683448;
 bh=RNusggWsVwxGR3G3oCajaB16mnn808HUqe3SGNs43ZY=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=X9Oo6ReJ8KIn07DCsAiYUhPsqTtNvvj1KDi+InD40cvHRtpPzAOwyfnZ9AoGrw32m
 koPMpxgK/xGoFmGt5L8/uLlPE4xPLhhL1ZSnCdzx2hJeZLRO+CdU4LZFHbkn08thcZ
 +qn3YKOk6rBzTy1MRta+IGtoMafaMIjgdZbHogrI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([46.92.157.150]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LguAU-1ibhwU1ymk-00oGqM for
 <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 10:04:08 +0200
From: <tmo26@gmx.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 13 Aug 2019 10:04:07 +0200
Message-ID: <001601d551ad$af152bd0$0d3f8370$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdVRrWBAA8IuFXeOTVKgobBctuItGQ==
Content-Language: de
X-Provags-ID: V03:K1:ySIwdHISThc47ZMbPVeXbSVsiMjPLZ9qT8vcnor7Zcfq7kNrSKZ
 ZEXnJEjhDvguIWP+FiOxfDvJh5DjmzpIP0pmMIp146J1WByPbGhHQZ12yNFA6xgz3HB5Zhx
 jAQ4NQLzP9ZdEolsqpb+qSxemyJW4cpqT3nILFiIERoyKKHVOMf4KtPCtJEQkIDKV46bpgt
 gpNIphIU0ZyjIXtYnv/PA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dm03ebraOeA=:NlwU2yRQUP7Pj4K06cc+1F
 482g3EUWb9p2yQ8Xp2kXFvQ2CSdBgBuw9oi5vbhzVEL0lhi/6CuFXKfHqAQBa3j70A/vu7m1Q
 UBaeT4OAE2q7RwClJYluvVj++HzKgPowoSNxNxPpbG+Gtsl1C78ZyYmJZa3+X8IRQHU8tp63M
 DSjr8RaKQQXaeqUvtNan41Iy2skadJUFIoILKqhXtpUGYDpHAuCJHOiZHgx4W8aAITBDmjmo5
 llMqe14GP1QyBb4AAO5w6/Xn6hfdgwW0+N+p02YP5jrNtoPo6opqOBS4SKfkoWfrh8NA9P+gO
 9P12iD9td7KdwXfpr9BlRYhfV0XLp/D7vPfB6nggVOdLqBi2rifXBSQWN0KZ6mykj2OKUOsMB
 Plig5NTXEU5dapwXCsMqlhGInZVYKV4jU/7fON+PpFblhff7oPRzP9vXtako8WcNy7RPocnMJ
 gCKE8mIYXoGr3OI5NgbaTnIN49IagQ96PMgc7QOfkhgM8xCUBpzMuVpFoa8/nFyxlH9JmK2aO
 8LkbggT9vMP1bC2PLe6rt1e8gybu8R70xbnEsCKmD6Oh0iSAIdKjgjokLI5rj2LYWXnOrEH87
 1WwPIFQME4aclSAjeYF7jh9exZ47bdbmT4FgKNcSKt/B1Chadot2lGRdSxn8OzVFYmKmDTtw+
 0ozdHJ9ytAxRYJ7w9RQmDYRIRZF0bS17bIv/ClVkyVI2JlQ9nZRUDS9LnfHG1lIdfCGl51OFs
 4Q5IQVcpL/8jJXXpTuaCLd8U42meAnRtGtMWmTfDKfqXoYem5+ET1Yy649LEYva0zf/WimBCk
 rT2S3JeX3Cy2DaxyKE6MHcujaGWK1VQCVKtjOpe9U0vv7edG2mLOV4+9Nd/bio1kZbd7++tos
 LdWHyxQglEv5JgHwaU4JnEwpqTsvrRntDkUtSWAdlHMPaZTw0FCI+pr+I4LCBA/ZnY36u4Avc
 lXyHGMoXLG4kf8hlxHORULlwOsbliMHcBLevSdWiVWjaof6TOFxhzdJ+Xx1Q0KqAuyMU2p5FJ
 9ZAOXEYKKbj7L6/18bIJXlNbmjZkMcNlzqmiu5lkVkTsoOO9q0kOXYDLkk6e2YoR9HbhZTmXM
 Bld7WqAv834LYGIaON+7caKibDBqxueqhgyqJF2I9HkgnaXDNQ1Oe7nb37F0xXfw2MeEzZkKe
 FoHp8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_010413_534689_503A093B 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Commas in imagenames
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
Content-Type: multipart/mixed; boundary="===============1966333364479059307=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1966333364479059307==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0017_01D551BE.72A045C0"
Content-Language: de

This is a multipart message in MIME format.

------=_NextPart_000_0017_01D551BE.72A045C0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I just stumbled over 2 imagenames with commas in them and was wondering if
this is correct or an error during the build process:



http://downloads.openwrt.org/snapshots/targets/mediatek/32/openwrt-mediate=
k-
32-bananapi,bpi-r2-sysupgrade.tar

http://downloads.openwrt.org/snapshots/targets/mediatek/32/openwrt-mediate=
k-
32-mediatek,mt7623a-rfb-emmc-sysupgrade.tar








------=_NextPart_000_0017_01D551BE.72A045C0
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>I just stumbled over 2 imagenames with commas in them and =
was wondering if this is correct or an error during the build =
process:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><a =
href=3D"http://downloads.openwrt.org/snapshots/targets/mediatek/32/openwr=
t-mediatek-32-bananapi,bpi-r2-sysupgrade.tar">http://downloads.openwrt.or=
g/snapshots/targets/mediatek/32/openwrt-mediatek-32-bananapi,bpi-r2-sysup=
grade.tar</a><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><a =
href=3D"http://downloads.openwrt.org/snapshots/targets/mediatek/32/openwr=
t-mediatek-32-mediatek,mt7623a-rfb-emmc-sysupgrade.tar">http://downloads.=
openwrt.org/snapshots/targets/mediatek/32/openwrt-mediatek-32-mediatek,mt=
7623a-rfb-emmc-sysupgrade.tar</a><o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>
------=_NextPart_000_0017_01D551BE.72A045C0--



--===============1966333364479059307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1966333364479059307==--


