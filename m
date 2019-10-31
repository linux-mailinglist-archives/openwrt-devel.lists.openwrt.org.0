Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638E1EACCC
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 10:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=2VYGM+b2hxEgSBDHnjmtnWa4jrpgwjaae+QaJEzdD7g=; b=NbcYQ9jvshfDhR
	/dPjg7oNuITpJJ7VQFK9vFKVkc7dE0m6N6SOeX/39cLq8PM483HaNujDzfpQKYex5oPcBuJmKLYFM
	Qj3qaRaHREuZruAF3I+kbj5jhZNBEgU58FSyYbix3l3yGD+ETajo9veZHv6HxnQo2q7iluSu9eont
	c+OXnCOKs7Ud08CL2RUvgL+SgzJFycbVsBJeK8h/VlHRt2f+MzG8JfgO0P6eHkxMEmV+vHqgX+3XF
	StOhWeMQCcqCkjMt/MZhOv10uQZVQAnz/Z8ryyBNbyDGbTuMbCoo6akvjskVJE6HWIAcVNleN1rgW
	o/iz7ieViBh5/63AKX8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ71j-0002nl-3x; Thu, 31 Oct 2019 09:45:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ71a-0002n8-FI
 for openwrt-devel@bombadil.infradead.org; Thu, 31 Oct 2019 09:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Message-ID:Mime-Version:
 References:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gtmKy471GbBrXYgsxpJhrV09gMILBtF2T4xKz5e9pI0=; b=fa7x+lnNXZvENQoxQQV2t+segD
 +lsELkotdIcfXq4uCpQZOHRWJh0SYQbqDp19gLThqzyQWhyEa9fIf9AZ2fNZjj/aUlBmkF44Z5D1b
 AS21ks4mQ184QQ9qDHqpZvfch9Ox3P8Ldji83VGiWK/rgeRym3CQDFfnrWDMahXZ56rY7HG6N/Lw8
 +OJ/zMcex7/XD92Ub5tX3Kc1HrC666nVce5WLLto4QjOrS5GxaTl3mku3z3J5d/ICnUE8dbHdXGzb
 uc8TmYrCyv+bVbaDguM1dxq+0i45SOvJm///+QrwE9ZGVl+WNOL1U1mlbo9BTWSXj1auATW/K3kon
 KeaGXOxw==;
Received: from smtpbgsg3.qq.com ([54.179.177.220])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ71S-0002jq-Bq
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 09:45:48 +0000
X-QQ-mid: bizesmtp26t1572515000tdsje0qw
Received: from PC-daxiong (unknown [114.241.221.120])
 by esmtp10.qq.com (ESMTP) with 
 id ; Thu, 31 Oct 2019 17:43:19 +0800 (CST)
X-QQ-SSF: 00400000002000S0II50B00B0000000
X-QQ-FEAT: 006+cXb/z3a6S0D8nuMiqWJ8YoX59rJNWRfww9EN6MlfB/JRdcxclm6oPkIsb
 vQMOrJiDEwSZpynZlQAHaPX8DZGFsId3KKmhRHA1gxXzVElb6ew2bDBjj1M+WOiYHZII7/O
 +J5L7WonkqAA6jtmzxuctKEEd/ynvMkif+bKmVr4rFWJN36gNEfnHf71tqfx0PMqB97FCkn
 6JUhQ2SbScd6+jCkTNaUVFahNGBdMvC38HPSv38vqLK7CQteJ3r9I2aoShdS39lKPRweluc
 gHVFNHK8ZH9gUozc1Jpuv/e8gYU7cnSIQZWFW1+4JdkmyVkcDBNWsbKJORuI8wMIn/vOgOO
 7vw9vg0ieTzfC5RZS2fZ+78JHDPZw==
X-QQ-GoodBg: 2
Date: Thu, 31 Oct 2019 17:43:15 +0800
From: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>
To: nbd <nbd@nbd.name>, "Hauke Mehrtens" <hauke@hauke-m.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1572430479-8691-1-git-send-email-lxliu@ikuai8.com>, 
 <b41d9076-a20e-8ca3-e4b4-f5f2c39d0485@hauke-m.de>, 
 <2019103109465717351619@ikuai8.com>, 
 <d5ad2cb7-4542-f4a4-4024-bd6ffb93c1be@nbd.name>, 
 <2019103116195306162923@ikuai8.com>, 
 <2c32daa0-397d-60a2-ddd4-ce7337981031@nbd.name>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <2019103117431505877930@ikuai8.com>+425FB7275BAC4B4E
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.179.177.220 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.179.177.220 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============5351643136661774921=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============5351643136661774921==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart628241108163_=----"

This is a multi-part message in MIME format.

------=_001_NextPart628241108163_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGksDQogICAgDQogICAgQnV0IHNvbWV0aW1lcywgIC5rbyBub3QgaW4gbWVudWNvbmZpZyBvcHRp
b24uDQogICAgSXQncyBpbiB0aGUga2VybmVsX21lbnVjb25maWcgb3B0aW9uLg0KICAgIFNvIGlz
IG5vIHRocm91Z2ggaXBrIHByb2Nlc3NpbmcuDQogICANCiAgICBUaGVyZSBpcyBubyBzdWNoIHBy
b2JsZW0gaW4gT3BlbldSVCAxNS4wNQ0KDQpGcm9tOiBGZWxpeCBGaWV0a2F1DQpEYXRlOiAyMDE5
LTEwLTMxIDE3OjI0DQpUbzog5aSn6ZuEOyBIYXVrZSBNZWhydGVuczsgb3BlbndydC1kZXZlbA0K
U3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0gtMTkuMDddIGJ1aWxkOiBmaXggbW9k
dWxlIHN0cmlwIGludmFsaWQNCk9uIDIwMTktMTAtMzEgMDk6MTksIOWkp+mbhCB3cm90ZToNCj4g
SGksDQo+IA0KPiAgICAgSSBjb21waWxlIHRoZSBrZXJuZWwgb3B0aW9ucywgd2l0aG91dCBhbnkg
c3BlY2lhbCBvcGVuIHRoZSBERUJVRw0KPiBvcHRpb25zLg0KPiAgICAgQnV0IHRoZSBjb21waWxl
ZCBLTyBtb2R1bGUgc2l6ZSBpcyB2ZXJ5IGJpZy4NCmRlYnVnIHN5bWJvbHMgYXJlIGVuYWJsZWQg
YnkgZGVmYXVsdC4gVGhlIC5rbyBpbiB0aGUga2VybmVsIHRyZWUgaXMNCnF1aXRlIGJpZywgYnV0
IHRoZSBvbmUgdGhhdCBlbmRzIHVwIGluIHRoZSAuaXBrIG9yIG9uIHRoZSByb290DQpmaWxlc3lz
dGVtIHNob3VsZCBiZSBzbWFsbC4NCiANCi0gRmVsaXgNCg==

------=_001_NextPart628241108163_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span></span>Hi,</div><div><span st=
yle=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">&nbsp; &n=
bsp;&nbsp;</span></div>=0A<div><span style=3D"color: rgb(0, 0, 0); backgro=
und-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp; But sometimes, &nbsp;.ko not i=
n menuconfig option.</span></div><div><span style=3D"color: rgb(0, 0, 0); =
background-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp; It's in the kernel_menu=
config option.</span></div><div><span style=3D"color: rgb(0, 0, 0); backgr=
ound-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp; So is no through ipk processi=
ng.</span></div><div><span style=3D"color: rgb(0, 0, 0); background-color:=
 rgba(0, 0, 0, 0);">&nbsp; &nbsp;</span></div><div><span style=3D"color: r=
gb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp; There is n=
o such problem in OpenWRT 15.05</span></div><div><span style=3D"color: rgb=
(0, 0, 0); background-color: rgba(0, 0, 0, 0);"><br></span></div><blockquo=
te style=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><div =
style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm =
0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;=
FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px=
; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto:nbd@nbd.name"=
>Felix Fietkau</a></div><div><b>Date:</b>&nbsp;2019-10-31&nbsp;17:24</div>=
<div><b>To:</b>&nbsp;<a href=3D"mailto:lxliu@ikuai8.com">=E5=A4=A7=E9=9B=
=84</a>; <a href=3D"mailto:hauke@hauke-m.de">Hauke Mehrtens</a>; <a href=
=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel</a></div><div><b=
>Subject:</b>&nbsp;Re: [OpenWrt-Devel] [PATCH-19.07] build: fix module str=
ip invalid</div></div></div><div><div>On 2019-10-31 09:19, =E5=A4=A7=E9=9B=
=84 wrote:</div>=0A<div>&gt; Hi,</div>=0A<div>&gt; </div>=0A<div>&gt; &nbs=
p; &nbsp; I compile the kernel options, without any special open the DEBUG=
</div>=0A<div>&gt; options.</div>=0A<div>&gt; &nbsp; &nbsp; But the compil=
ed KO module size is very big.</div>=0A<div>debug symbols are enabled by d=
efault. The .ko in the kernel tree is</div>=0A<div>quite big, but the one =
that ends up in the .ipk or on the root</div>=0A<div>filesystem should be =
small.</div>=0A<div>&nbsp;</div>=0A<div>- Felix</div>=0A</div></blockquote=
>=0A</body></html>
------=_001_NextPart628241108163_=------







--===============5351643136661774921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5351643136661774921==--






