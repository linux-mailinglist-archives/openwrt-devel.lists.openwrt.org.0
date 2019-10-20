Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCDFDDE16
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 12:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=/p+TEmFHAIcoI4FHjhdEof/Bg62fsUcMwfmQqmWEWTo=; b=kaV6TWbKZ75oPq
	qS0rRfU1Xu6Lzzq0FN01FLWsyckuzC8C32XdqddVMGThvhr2udd0NKnynCr61h1ERASrg93vo/vF1
	BZ9UOMCbsBzt7LjEVTzJxinpJMcK7FdI5qF1yx6AzHOrYIvJUoY/I8bAse/fsAbHXXMXJNI1OneQS
	mD4cqFpYvqt64lIWBAKS8EZ+oaIvn2fxr39GNREG8rwdwLw0+vI35YuhseP76OtDGzpCEGsVaI/yi
	62SldIbGzXRM+vTz7npqAXvBgxnFuY6yanJGerhgk8MLkpwbWbm6DsZxk1e7aD3OCqPLhqWAyHCxB
	sCzN/siesCuaC8LsVKIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM8MZ-0008UL-GR; Sun, 20 Oct 2019 10:23:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM8MS-0008U8-HC
 for openwrt-devel@bombadil.infradead.org; Sun, 20 Oct 2019 10:22:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Message-ID:Mime-Version:
 References:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dO/9BJfWAODqNrY0TLr3xiizFSxta1ARylylcPXxoiE=; b=jfTKVO+yyrBe9LUzB5FOa/JI/X
 uFUo5/nEMN6QHCBm6wkHHUIK+pod1Qyt1Nml/UwdQ2fye/zZ7w3+PhI3jfs5fZh2Z8Ui2W99igfyf
 MOenIeXJvlNG2bYonMixUmAlee77RcgEtpAq/90FaPxU6DPzkRPDa5ZgBt/xG1rMPBOFbOsi4PfKL
 Aoni4/SwdoLMVcJxsf0FvpFgyKdhXnVjlpRNdD0JFt26I4DeTgBH825yvNQwjOlayVqHeQVM+ubPl
 09OrqkoxqoauGOSRxlCs0I6QCcf/7jWqRC2ATMRgxhPQBOwO1imR4Ti034ozlmcxI0qT2ddJGj6Hc
 OGRWrEdA==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM8MM-0004rm-0R
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 10:22:52 +0000
X-QQ-mid: bizesmtp20t1571566927tu2wi2j2
Received: from PC-daxiong (unknown [114.241.209.179])
 by esmtp6.qq.com (ESMTP) with 
 id ; Sun, 20 Oct 2019 18:22:07 +0800 (CST)
X-QQ-SSF: 00400000002000S0IH40B00A0000000
X-QQ-FEAT: 006+cXb/z3bPqgrY7lvl8xnmJkYPZHciCE+iTDKHStvOO4MvE5M8lsSt7tLTX
 q398vJp/JnaWlG6NmCk40Ylj94H9cN0d6x48VDwJY8GvmtPocHSlsciozBaUNnpVvFXZ9qL
 JbK0sIdenG/j3Qbd1ctidj9AoVfBwv511B+k4dy20fgcJQjZwmmT1OC+bsMsFudRspsaqBf
 /5rp1/c2/A6qQUS36m336S5zr0omXbjtBPPButl4DqS69xWdQiHZlWYI+Af/dTysG4qsn9s
 LHW4AIm3kMOvnHCqvRhbaa+ci21282UZQe2udU+XN9lBfYqztRHeOYRMupxdXwRzQAx2Sen
 +gqzFeR6K+S6SQfwFtWh9eGj6YO+Q==
X-QQ-GoodBg: 2
Date: Sun, 20 Oct 2019 18:22:06 +0800
From: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>
To: "Hauke Mehrtens" <hauke@hauke-m.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1571136743-95375-1-git-send-email-lxliu@ikuai8.com>, 
 <803c0ee5-a268-7738-7883-515d37939159@hauke-m.de>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.156[cn]
Mime-Version: 1.0
Message-ID: <2019102018220607483419@ikuai8.com>+1D2A7DB1B7641A21
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:ikuai8.com:qybgforeign:qybgforeign2
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] build: fix select uClibc
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
Content-Type: multipart/mixed; boundary="===============7186114188763982565=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============7186114188763982565==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart127835883523_=----"

This is a multi-part message in MIME format.

------=_001_NextPart127835883523_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGkgaGF1a2XvvIwNCiAgICB1Q2xpYmMtbmcgIHN1cHBvcnRlZCBmdW5jdGlvbjogZ2V0Y29udGV4
dCwgbWFrZWNvbnRleHQsIHN3YXBjb250ZXh077yMDQogICAgVGhlcmUgYXJlIHRpbWVzIHdoZW4g
d2UgbmVlZCB0byB1c2UgaXQgdG8gZGVhbCB3aXRoIHRoZSBiYWNrdHJhY2UuDQogICAgSSB0aGlu
ayBpdCBzaG91bGQgYmUgZnJlZSB0byBzZWxlY3QuDQoNCg0KDQrniLHnlJ/mtLvvvIzlv6vov57m
jqUNCueIseW/q+a1geaOp+i3r+eUse+8jOWVhuS4muWcuuaZr+e9kee7nOS4k+Wutg0K5YiY56S8
6ZuEICDot6/nlLHnoJTlj5ENCuWumOe9ke+8mnd3dy5pa3VhaTguY29tDQrlvq7kv6HvvJpCZWlK
aVhpb25nMDA4DQrnlLXor53vvJoxNTExMDAyOTE5NA0KUSBR77yaMTcyNDk3ODY2NQ0KIA0KRnJv
bTogSGF1a2UgTWVocnRlbnMNCkRhdGU6IDIwMTktMTAtMTkgMTc6NDMNClRvOiBkYXhpb25nOyBv
cGVud3J0LWRldmVsDQpTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSCAxLzFdIGJ1
aWxkOiBmaXggc2VsZWN0IHVDbGliYw0KT24gMTAvMTUvMTkgMTI6NTIgUE0sIGRheGlvbmcgd3Jv
dGU6DQo+IFNpZ25lZC1vZmYtYnk6IGRheGlvbmcgPGx4bGl1QGlrdWFpOC5jb20+DQo+IC0tLQ0K
PiAgdG9vbGNoYWluL0NvbmZpZy5pbiB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xjaGFpbi9Db25m
aWcuaW4gYi90b29sY2hhaW4vQ29uZmlnLmluDQo+IGluZGV4IDk1MDg3YjcuLjBkMjg4YWEgMTAw
NjQ0DQo+IC0tLSBhL3Rvb2xjaGFpbi9Db25maWcuaW4NCj4gKysrIGIvdG9vbGNoYWluL0NvbmZp
Zy5pbg0KPiBAQCAtMjUyLDcgKzI1Miw3IEBAIGNob2ljZQ0KPiAgc2VsZWN0IFVTRV9VQ0xJQkMN
Cj4gIGJvb2wgIlVzZSB1Q2xpYmMiDQo+ICBkZXBlbmRzIG9uICEoYWFyY2g2NCB8fCBhYXJjaDY0
X2JlIHx8IHBvd2VycGM2NCkNCj4gLSBkZXBlbmRzIG9uIEJST0tFTiB8fCAhKGFybSB8fCBhcm1l
YiB8fCBpMzg2IHx8IHg4Nl82NCB8fCBtaXBzIHx8IG1pcHNlbCB8fCBtaXBzNjQgfHwgbWlwczY0
ZWwgfHwgcG93ZXJwYykNCj4gKyBkZXBlbmRzIG9uIEJST0tFTiB8fCAoYXJtIHx8IGFybWViIHx8
IGkzODYgfHwgeDg2XzY0IHx8IG1pcHMgfHwgbWlwc2VsIHx8IG1pcHM2NCB8fCBtaXBzNjRlbCB8
fCBwb3dlcnBjKQ0KPiAgDQo+ICBjb25maWcgTElCQ19VU0VfTVVTTA0KPiAgc2VsZWN0IFVTRV9N
VVNMDQo+IA0KIA0KSSB0aGluayB0aGlzIGlzIGludGVudGlvbmFsLiB1Q2xpYmMgc2hvdWxkIG9u
bHkgYmUgYXZhaWxhYmxlIG9uIHRhcmdldHMNCndoaWNoIGFyZSBub3Qgc3VwcG9ydGVkIGJ5IG11
c2wgbGliYywgd2hpY2ggaXMgY3VycmVudGx5IG9ubHkgYXJjLg0KIA0KSGF1a2UNCiANCg==

------=_001_NextPart127835883523_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, 0); line-heig=
ht: 1.5; }</style></head><body>=0A<div><span></span>Hi hauke=EF=BC=8C</div=
><div><span style=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, =
0);">&nbsp; &nbsp; uClibc-ng&nbsp;</span><span style=3D"color: rgb(0, 0, 0=
); font-size: 10.5pt; line-height: 1.5; background-color: rgba(0, 0, 0, 0)=
;">&nbsp;supported function:&nbsp;</span><span style=3D"font-size: 10.5pt;=
 line-height: 1.5; background-color: transparent;">getcontext, makecontext=
, swapcontext=EF=BC=8C</span></div><div><span style=3D"color: rgb(0, 0, 0)=
; font-size: 10.5pt; line-height: 1.5; background-color: rgba(0, 0, 0, 0);=
">&nbsp; &nbsp;&nbsp;</span>There are times when we need to use it to deal=
 with the backtrace.</div><div>&nbsp; &nbsp; I think it should be free to =
select.</div>=0A<div><br></div><hr style=3D"width: 210px; height: 1px;" co=
lor=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><div style=3D"MARG=
IN-TOP: 10px; MARGIN-LEFT: 10px; MARGIN-RIGHT: 10px">=0A<div><span style=
=3D"FONT-FAMILY: =E5=AE=8B=E4=BD=93; COLOR: #000000; FONT-SIZE: 10.5pt">=
=0A<div style=3D"WIDOWS: 1; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(25=
5,255,255); TEXT-INDENT: 0px; FONT: 14px/21px Verdana; WHITE-SPACE: normal=
; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -webkit-te=
xt-stroke-width: 0px">=0A<div style=3D"LINE-HEIGHT: 1.5">=0A<div style=3D"=
LINE-HEIGHT: 1.5"><span style=3D"FONT-FAMILY: =E5=AE=8B=E4=BD=93; COLOR: r=
gb(0,0,0); FONT-SIZE: 10.5pt">=0A<div style=3D"TEXT-TRANSFORM: none; BACKG=
ROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; FONT: 12px/18px 'lucida G=
rande', Verdana; WHITE-SPACE: normal; LETTER-SPACING: normal; COLOR: rgb(0=
,0,0); WORD-SPACING: 0px; -webkit-text-stroke-width: 0px; font-stretch: no=
rmal">=E7=88=B1=E7=94=9F=E6=B4=BB=EF=BC=8C=E5=BF=AB=E8=BF=9E=E6=8E=A5</div=
>=0A<div style=3D"TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255)=
; TEXT-INDENT: 0px; FONT: 12px/18px 'lucida Grande', Verdana; WHITE-SPACE:=
 normal; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -we=
bkit-text-stroke-width: 0px; font-stretch: normal">=E7=88=B1=E5=BF=AB=E6=
=B5=81=E6=8E=A7=E8=B7=AF=E7=94=B1=EF=BC=8C=E5=95=86=E4=B8=9A=E5=9C=BA=E6=
=99=AF=E7=BD=91=E7=BB=9C=E4=B8=93=E5=AE=B6</div>=0A<div style=3D"TEXT-TRAN=
SFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; FONT: 1=
2px/18px 'lucida Grande', Verdana; WHITE-SPACE: normal; LETTER-SPACING: no=
rmal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -webkit-text-stroke-width: 0px=
; font-stretch: normal"><span style=3D"LINE-HEIGHT: 1.5">=E5=88=98=E7=A4=
=BC=E9=9B=84&nbsp; =E8=B7=AF=E7=94=B1=E7=A0=94=E5=8F=91</span></div>=0A<di=
v style=3D"TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-=
INDENT: 0px; FONT: 12px/18px 'lucida Grande', Verdana; WHITE-SPACE: normal=
; LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -webkit-te=
xt-stroke-width: 0px; font-stretch: normal"><span style=3D"LINE-HEIGHT: 1.=
5">=E5=AE=98=E7=BD=91=EF=BC=9A<a href=3D"http://www.ikuai8.com/">www.ikuai=
8.com</a></span></div>=0A<div style=3D"TEXT-TRANSFORM: none; BACKGROUND-CO=
LOR: rgb(255,255,255); TEXT-INDENT: 0px; FONT: 12px/18px 'lucida Grande', =
Verdana; WHITE-SPACE: normal; LETTER-SPACING: normal; COLOR: rgb(0,0,0); W=
ORD-SPACING: 0px; -webkit-text-stroke-width: 0px; font-stretch: normal">=
=E5=BE=AE=E4=BF=A1=EF=BC=9ABeiJiXiong008</div>=0A<div style=3D"TEXT-TRANSF=
ORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; FONT: 12p=
x/18px 'lucida Grande', Verdana; WHITE-SPACE: normal; LETTER-SPACING: norm=
al; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -webkit-text-stroke-width: 0px; =
font-stretch: normal">=E7=94=B5=E8=AF=9D=EF=BC=9A15110029194</div>=0A<div =
style=3D"TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-IN=
DENT: 0px; FONT: 12px/18px 'lucida Grande', Verdana; WHITE-SPACE: normal; =
LETTER-SPACING: normal; COLOR: rgb(0,0,0); WORD-SPACING: 0px; -webkit-text=
-stroke-width: 0px; font-stretch: normal">Q =0AQ=EF=BC=9A1724978665</div><=
/span></div></div></div></span></div></div></span></div>=0A<blockquote sty=
le=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><div>&nbsp;=
</div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0=
pt 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FONT-=
SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDING-=
BOTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto:ha=
uke@hauke-m.de">Hauke Mehrtens</a></div><div><b>Date:</b>&nbsp;2019-10-19&=
nbsp;17:43</div><div><b>To:</b>&nbsp;<a href=3D"mailto:lxliu@ikuai8.com">d=
axiong</a>; <a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-dev=
el</a></div><div><b>Subject:</b>&nbsp;Re: [OpenWrt-Devel] [PATCH 1/1] buil=
d: fix select uClibc</div></div></div><div><div>On 10/15/19 12:52 PM, daxi=
ong wrote:</div>=0A<div>&gt; Signed-off-by: daxiong &lt;lxliu@ikuai8.com&g=
t;</div>=0A<div>&gt; ---</div>=0A<div>&gt;&nbsp; toolchain/Config.in | 2 +=
-</div>=0A<div>&gt;&nbsp; 1 file changed, 1 insertion(+), 1 deletion(-)</d=
iv>=0A<div>&gt; </div>=0A<div>&gt; diff --git a/toolchain/Config.in b/tool=
chain/Config.in</div>=0A<div>&gt; index 95087b7..0d288aa 100644</div>=0A<d=
iv>&gt; --- a/toolchain/Config.in</div>=0A<div>&gt; +++ b/toolchain/Config=
.in</div>=0A<div>&gt; @@ -252,7 +252,7 @@ choice</div>=0A<div>&gt;&nbsp; 	=
	select USE_UCLIBC</div>=0A<div>&gt;&nbsp; 		bool "Use uClibc"</div>=0A<di=
v>&gt;&nbsp; 		depends on !(aarch64 || aarch64_be || powerpc64)</div>=0A<d=
iv>&gt; -		depends on BROKEN || !(arm || armeb || i386 || x86_64 || mips |=
| mipsel || mips64 || mips64el || powerpc)</div>=0A<div>&gt; +		depends on=
 BROKEN || (arm || armeb || i386 || x86_64 || mips || mipsel || mips64 || =
mips64el || powerpc)</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt;&nbsp; 	con=
fig LIBC_USE_MUSL</div>=0A<div>&gt;&nbsp; 		select USE_MUSL</div>=0A<div>&=
gt; </div>=0A<div>&nbsp;</div>=0A<div>I think this is intentional. uClibc =
should only be available on targets</div>=0A<div>which are not supported b=
y musl libc, which is currently only arc.</div>=0A<div>&nbsp;</div>=0A<div=
>Hauke</div>=0A<div>&nbsp;</div>=0A</div></blockquote>=0A</body></html>
------=_001_NextPart127835883523_=------







--===============7186114188763982565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7186114188763982565==--






