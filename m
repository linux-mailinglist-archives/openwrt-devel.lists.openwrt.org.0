Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566F4EAD07
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 11:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=6rLSMTq34lhiaIgYs9X1mKWmOR/I988eJvljRUZvy84=; b=cd9SCvBF8sTI4F
	ptY6jbWh9HsacvazPztlyqsYEC0IIU0z6MiKnOokhy9QmbSVmtC23DRWvIHkpx6PqSZULyVCuLvAy
	kilOW0wkurm/v538DL71sFTWi8S5AyHZ8OBQ8IIFKdbKrTOP3IgpU/Zek611FoFoWaOOeFCuX4b79
	TKl3gu9MVI73mfRMa6guOXthzLDM5crgcTFd0U49URFHN8eRAZQ0KxfzqBbfVr+s+z3tFcQ+UkF8A
	dWpWujGdj+WCPHLReVicpvc6EX8QcJiGeUVHQBOSO0AXZB9b4B16hNKWHCt04cYMCrIEatNF6N13l
	MnVlUKTjodWdK7HIXtcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7IE-0000kk-Kw; Thu, 31 Oct 2019 10:03:02 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7HR-0008Ns-5s
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 10:02:16 +0000
X-QQ-mid: bizesmtp17t1572516056ti63hn9a
Received: from PC-daxiong (unknown [114.241.221.120])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 31 Oct 2019 18:00:55 +0800 (CST)
X-QQ-SSF: 00400000002000S0II50B00B0000000
X-QQ-FEAT: i/xzikqTSPaQNYS2+8YoIFa5w1Vj78/F7fAJUcMpa+hhq5K+4R6ybkHbO07Xe
 g570XqGfT8IIBvsd/qI/8NmoY8GwYjlSfH/ixWFRRWt3ClDAQW/3L1FvM+JzdOmHG4JQZJV
 eSfuuRzsPNpt9cY8To2kQhJNEJtPKDljOyF2/0fEoo7QS0Cf0Y7ztpLPXGzyR7HBxeHrAJ9
 28JCLhcl85iMz8Mn5imiJbBdFq2joXmQyoPIlz0IZHmd50faDvjMM5anMqtN4ymqwe0O+yy
 LdlrUnM/QBaqKQXbEJubwMuIrlTd3dvEhOVGeXSA98JUiFkcZzedMhKytwZWTRpKqrfi9wf
 xpIr/PSpV/U6ffMnuNhsY4O3uKDfA==
X-QQ-GoodBg: 2
Date: Thu, 31 Oct 2019 18:00:51 +0800
From: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>
To: nbd <nbd@nbd.name>, "Hauke Mehrtens" <hauke@hauke-m.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>, 
 <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>, 
 <2019103109465717351619@ikuai8.com>, 
 <d5ad2cb7-4542-f4a4-4024-bd6ffb93c1be@nbd.name>, 
 <2019103116195306162923@ikuai8.com>, 
 <2c32daa0-397d-60a2-ddd4-ce7337981031@nbd.name>, 
 <2019103117431505877930@ikuai8.com>, 
 <369364a9-bd86-fd13-6d80-173c807448c4@nbd.name>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <2019103118005043716842@ikuai8.com>+49C5E8B70C9F5CC4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_030213_375624_67D19C55 
X-CRM114-Status: UNSURE (   3.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.243.244.52 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module strip invalid
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
Content-Type: multipart/mixed; boundary="===============2379770685534418826=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============2379770685534418826==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart736888257848_=----"

This is a multi-part message in MIME format.

------=_001_NextPart736888257848_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGksDQogICAgSSB0aGluayB3aGF0ICB5b3Ugc2FpZCBpcyByaWdodC4NCiAgICBCdXQsIGxvZ2lj
IGlzIG5vdCB0aGUgc2FtZSB3aXRoICBvcGVud3J0IDE1LjA1DQoNCiANCkZyb206IEZlbGl4IEZp
ZXRrYXUNCkRhdGU6IDIwMTktMTAtMzEgMTc6NTANClRvOiDlpKfpm4Q7IEhhdWtlIE1laHJ0ZW5z
OyBvcGVud3J0LWRldmVsDQpTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSC0xOS4w
N10gYnVpbGQ6IGZpeCBtb2R1bGUgc3RyaXAgaW52YWxpZA0KT24gMjAxOS0xMC0zMSAxMDo0Mywg
5aSn6ZuEIHdyb3RlOg0KPiBIaSwNCj4gICAgIA0KPiAgICAgQnV0IHNvbWV0aW1lcywgIC5rbyBu
b3QgaW4gbWVudWNvbmZpZyBvcHRpb24uDQo+ICAgICBJdCdzIGluIHRoZSBrZXJuZWxfbWVudWNv
bmZpZyBvcHRpb24uDQo+ICAgICBTbyBpcyBubyB0aHJvdWdoIGlwayBwcm9jZXNzaW5nLg0KSW4g
dGhhdCBjYXNlIHRoZSBzb2x1dGlvbiBpcyB0byBhZGQgYSBwYWNrYWdlIGZvciBpdC4NCiANCi0g
RmVsaXgNCg==

------=_001_NextPart736888257848_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span></span>Hi,</div><div><span st=
yle=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">&nbsp; &n=
bsp; I think what &nbsp;you said is right.</span></div><div><span style=3D=
"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp; B=
ut, logic is not the same with&nbsp;</span><span style=3D"color: rgb(0, 0,=
 0); font-size: 10.5pt; line-height: 1.5; background-color: rgba(0, 0, 0, =
0);">&nbsp;openwrt 15.05</span></div>=0A<div><br></div>=0A<blockquote styl=
e=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><div>&nbsp;<=
/div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0p=
t 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FONT-S=
IZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDING-B=
OTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto:nbd=
@nbd.name">Felix Fietkau</a></div><div><b>Date:</b>&nbsp;2019-10-31&nbsp;1=
7:50</div><div><b>To:</b>&nbsp;<a href=3D"mailto:lxliu@ikuai8.com">=E5=A4=
=A7=E9=9B=84</a>; <a href=3D"mailto:hauke@hauke-m.de">Hauke Mehrtens</a>; =
<a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel</a></div>=
<div><b>Subject:</b>&nbsp;Re: [OpenWrt-Devel] [PATCH-19.07] build: fix mod=
ule strip invalid</div></div></div><div><div>On 2019-10-31 10:43, =E5=A4=
=A7=E9=9B=84 wrote:</div>=0A<div>&gt; Hi,</div>=0A<div>&gt; &nbsp; &nbsp;&=
nbsp;</div>=0A<div>&gt; &nbsp; &nbsp; But sometimes, &nbsp;.ko not in menu=
config option.</div>=0A<div>&gt; &nbsp; &nbsp; It's in the kernel_menuconf=
ig option.</div>=0A<div>&gt; &nbsp; &nbsp; So is no through ipk processing=
.</div>=0A<div>In that case the solution is to add a package for it.</div>=
=0A<div>&nbsp;</div>=0A<div>- Felix</div>=0A</div></blockquote>=0A</body><=
/html>
------=_001_NextPart736888257848_=------







--===============2379770685534418826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2379770685534418826==--






