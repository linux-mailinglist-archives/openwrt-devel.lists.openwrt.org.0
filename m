Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8206C71724
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 13:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wNaJ/MMgteFuO4pYYLvvF2+CJvgp8K2W+INta+HwDNw=; b=pR4y3umFwjBNr8
	XNkq2nSDv7oO1mNebKRmYTOGnjvGSxC7VZk9cGIN2jR7inOQX+R1FFbFuK1JsPnqJ8/bkCDnJLgSY
	h+tqGNIgHHMZ0oUL+RmSCMil28KNDcCwVMUlpv0vNHg5rOQH6T59aFoLF3ynMtAfxDzhcmATZifPU
	P2SssjCMf5MatsE/tsPwKzF8yb/9rPRO41h0RwRBvYzu/2zEpKJBwbQ9ieTBq5dcSweX3zLyP3LHK
	rabjLhxbsXLGuaxrwGEzsbHpUMV6girkkA5Xkaoi5XQwoZGxb5JZCCkm1i1b7SV62OH3ZVWah8ZW5
	nC+LSdLdQXtKtjOowEPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpt1B-0005Au-A3; Tue, 23 Jul 2019 11:31:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpszV-0002di-Ib
 for openwrt-devel@bombadil.infradead.org; Tue, 23 Jul 2019 11:29:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Message-ID:Mime-Version:
 References:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QkAF/v1WLvka3drUFzE+3qL18SUsnyEtxV4822Fs7fM=; b=XNzOIEPYwQ/8aEdgi+byEQzqGP
 P7WWsnsEtXd0vVXLYgGEOWctlj4aSSv6yLU2IAhLoV01EsapMKAUFKziqgOX7y6HV+06xR1UvCHKa
 jsyE19nQxRt4FGpkZxx00vVi5po2oO0PHUbIEBY/dABw8/Tx9xWaKj51X59ajm3ah1gIed7RRE0Sq
 RWkVphPyYuVovdPjEDPus5KxnzCki2mRqGH2RAR+ZNyRq7gVbOm9kmnSLOzjUhG9zrSotlpZvLIf0
 TK9kntmkWAg9S5ljpY22UIOsZYdKicNptRHqqxNWFbqY8vwqDJReDaGVW6Y6xr8SxjucQD0M7zseq
 ZAlY4yAQ==;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpszI-00075v-Ly
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 11:29:46 +0000
X-QQ-mid: bizesmtp17t1563881338t99j1pzu
Received: from luo-PC (unknown [113.116.58.99])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Tue, 23 Jul 2019 19:28:57 +0800 (CST)
X-QQ-SSF: 01400000000000L0ZG50000A0000000
X-QQ-FEAT: 19H10UpB2i6Uu4HcutMVqJFn4FsK0suVqcXDe0ixf9KD1DlKI9wZcWkijUyll
 IH/oBUHPdIZRCp8o9Q1R1sNkIp+QprNJZcirTv7kJhwqaImbjhyQ91tg5XNXXZPw/kj/Ymm
 g23+TKdrJUfJLqRNkpRhNkCEYfJTqpYfEmwqL6uB+DeOUJjTmHYc+RcfAfnu0W0P909Jr0I
 RdeeRIa6EECeGdrz4ZIdNktnAnsdWJaPLwTFGLPHu+OGOzJaFmaCkLyHFobCg0Uynl0GTYF
 iLI30K9K+WRUK0r7Pn60wG5s0tlbCG0h0dVDKc6GSQYopR8PfYSBDey7YG+T3P9WK5aWJoQ
 G4JSwki2rbGcJs05eX5eDPids2raQ==
X-QQ-GoodBg: 2
Date: Tue, 23 Jul 2019 19:29:00 +0800
From: Chongjun.Luo <luochongjun@gl-inet.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <mailman.10755.1563880404.19300.openwrt-devel@lists.openwrt.org>
X-Priority: 3
X-GUID: 9894460D-2464-44E5-A1CB-311F16C842DA
X-Has-Attach: no
X-Mailer: Foxmail 7, 2, 7, 174[cn]
Mime-Version: 1.0
Message-ID: <20190723192859684178108@gl-inet.com>+EC3D004ECA831710
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign2
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
 0.0 T_MIME_MALF            Malformed MIME: headers in body
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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
Content-Type: multipart/mixed; boundary="===============8531743488594935562=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============8531743488594935562==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart823441066574_=----"

This is a multi-part message in MIME format.

------=_001_NextPart823441066574_=----
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

TXkgbG9jYWwgb3BlbndydCB0cmVlIGhhcyBub3QgYmVlbiB1cGRhdGVkIHRvIHRoZSBsYXRlc3Qs
IHNvIERFVklDRV9WRU5ET1IgYW5kIERFVklDRV9NT0RFTCBhcmUgbm90IHlldCB1c2VkDQoNCkRh
dGU6IFR1ZSwgMjMgSnVsIDIwMTkgMTI6Mjc6MDMgKzAyMDANCkZyb206IE1vcml0eiBXYXJuaW5n
IDxtb3JpdHp3YXJuaW5nQHdlYi5kZT4NClRvOiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnDQpTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gYXRoNzk6IGFkZCBzdXBw
b3J0IGZvciBnbC1hcjc1MA0KTWVzc2FnZS1JRDogPDQ3YWI4MWM4LWJkMmItYTRmMC1mOTRjLTBh
YTY4YTdjNTcyNEB3ZWIuZGU+DQpDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9dXRm
LTgNCiANCkl0IHdvdWxkIGJlIGEgZ29vZCBpZGVhIHRvIHJld3JpdGUNCiANCkRFVklDRV9USVRM
RSA6PSBHTC5pTmV0IEdMLUFSNzUwDQogDQp0bw0KIA0KREVWSUNFX1ZFTkRPUiA6PSBHTC5pTmV0
DQpERVZJQ0VfTU9ERUwgOj0gR0wtQVI3NTANCiANClNlZSBodHRwczovL2dpdGh1Yi5jb20vb3Bl
bndydC9vcGVud3J0L3B1bGwvMjEyNA0KIA0K

------=_001_NextPart823441066574_=----
Content-Type: text/html;
	charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DISO-8859-1"><style>body { line-height: 1.5; }blockquote { margin-top: =
0px; margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; fo=
nt-family: ????; color: rgb(0, 0, 0); line-height: 1.5; }</style></head><b=
ody>=0A<div><span></span><span style=3D"color: rgb(0, 0, 0); background-co=
lor: rgba(0, 0, 0, 0);">My&nbsp;local&nbsp;openwrt&nbsp;tree&nbsp;has&nbsp=
;not&nbsp;been&nbsp;updated&nbsp;to&nbsp;the&nbsp;latest,&nbsp;so&nbsp;DEV=
ICE_VENDOR&nbsp;and&nbsp;DEVICE_MODEL&nbsp;are&nbsp;not&nbsp;yet&nbsp;used=
</span></div><div><br></div><blockquote style=3D"margin-top: 0px; margin-b=
ottom: 0px; margin-left: 0.5em;">=0A<div>Date: Tue, 23 Jul 2019 12:27:03 +=
0200</div>=0A<div>From: Moritz Warning &lt;moritzwarning@web.de&gt;</div>=
=0A<div>To: openwrt-devel@lists.openwrt.org</div>=0A<div>Subject: Re: [Ope=
nWrt-Devel] [PATCH] ath79: add support for gl-ar750</div>=0A<div>Message-I=
D: &lt;47ab81c8-bd2b-a4f0-f94c-0aa68a7c5724@web.de&gt;</div>=0A<div>Conten=
t-Type: text/plain; charset=3Dutf-8</div>=0A<div>&nbsp;</div>=0A<div>It wo=
uld be a good idea to rewrite</div>=0A<div>&nbsp;</div>=0A<div>DEVICE_TITL=
E :=3D GL.iNet GL-AR750</div>=0A<div>&nbsp;</div>=0A<div>to</div>=0A<div>&=
nbsp;</div>=0A<div>DEVICE_VENDOR :=3D GL.iNet</div>=0A<div>DEVICE_MODEL :=
=3D GL-AR750</div>=0A<div>&nbsp;</div>=0A<div>See https://github.com/openw=
rt/openwrt/pull/2124</div>=0A<div>&nbsp;</div>=0A</blockquote>=0A</body></=
html>
------=_001_NextPart823441066574_=------





--===============8531743488594935562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8531743488594935562==--




