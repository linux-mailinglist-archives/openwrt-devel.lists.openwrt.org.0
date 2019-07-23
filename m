Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A9271835
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 14:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+3fO1PcxGu7M/NKOPLSoypONGf2mX4Q1k7L6BJ397g4=; b=NOO
	b7lCq+DO2+ufzA0xgTck/zjnM/EgTzENLBBuKjxghtMunwVVkQRVqoe3/r5k0mGpgJOd7de9n+1lf
	V2fvF508GthWwi/LN+QBWIGaO3zdpyFK/SgJmQIJAU2euZhiMTVkKs2zIHMP0Z/XdSQ9u9T+yCeJd
	y0fkXy/XxI3zQJRCZdRkXvbTL8cDwI9FsEscw3F0noHkfy8cCYxJOdLinJ7FlLKbZlz/fdnT8gDhx
	V0y1z60WahtQt7xs4n+AghZ4nxj0mmqEGsaB8QOC7vh+4IzoxMlfsxbkwnLpnr+auvWMMO2S2uvSO
	HITYpoTycyDWsHGWaILS/WMvtOvAfmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptsI-0006Ul-2n; Tue, 23 Jul 2019 12:26:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptrj-0006Hg-Lj
 for openwrt-devel@bombadil.infradead.org; Tue, 23 Jul 2019 12:25:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=oww0X2g5YCI9+SByCGMNjPHZcu+I0LU+8zWIOuxd/YM=; b=i/uCBc8judJI
 TzgJvt59138YJc7MCa5/s5CDY/vDuB9MaLOODw143XiTFEIjlgkOUu2qxxNRGDOL69lbSAP4U2ZgH
 gh7PnpCnfu5Pj6oeBr5ioHGA7UfgjFDVaBzga5+ePJxd5MAgbAksrH0hvuEmMYcBLlrLoua0wJrFK
 9kxn15t5e6/Uy8sPoMuzvtcNY2/6iZUn1fTwrypM6syQfNRY52vNWdOYG4STKISxdRl3XhOZ7/1u/
 p4Ndo0iuHpKUFN/aooFK17e0WvhxzKyKSs9AmsfK7yKUDI9PcdiV/NymHOJoxEQIpgBkNbYLBlVj9
 Yb8wvTAo2Qe7d/HnJd8s3A==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptrk-00016I-RS
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 12:26:05 +0000
X-QQ-GoodBg: 2
X-QQ-SSF: 00400000000000F0
X-QQ-FEAT: Iq/dLtkgM2Kdp8Cs3/uOUaeSN6YfZtKIUEIHDLRNWRN7w4PGTWtzpWXcPZhDX
 mukq3uaLtYcJw52eUI9aq+JzQOZd/V1FFINS1C4tFXoHBoGrLlbSkhRvSPcsYlH6x3OyChK
 2su2CIC4C239S7/B2ewJMOmlgGwLEIA2rHxNtDZebrunQ56+ljv9mPBs/KbyMVruO2AUVxl
 9PQGNuQFbf7NtwXFkwbsnXKVx0H1V88oCw/i5U7hbEPNXM2jHLLkFAv4qJGCvy0SFx/alzt
 6d5J+N42onRo5yNz1NLKB1u0lnkyLTFhkq6oYtqaR5ZA4ar70GC76W3qE=
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 119.123.255.59
X-QQ-STYLE: 
X-QQ-mid: bizmailvip7t1563884710t495024
From: "=?utf-8?B?Q2hvbmdqdW4uTHVv?=" <luochongjun@gl-inet.com>
To: "=?utf-8?B?YWRyaWFuIHNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>,
 "=?utf-8?B?b3BlbndydC1kZXZlbA==?=" <openwrt-devel@lists.openwrt.org>
Mime-Version: 1.0
Date: Tue, 23 Jul 2019 20:25:10 +0800
X-Priority: 3
Message-ID: <tencent_03373B18396A26BC3DF93C43@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 23 Jul 2019 20:25:11 +0800 (CST)
Feedback-ID: bizmailvip:gl-inet.com:qybgforeign:qybgforeign4
X-QQ-Bgrelay: 1
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_132601_647303_DBC98957 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Content-Type: multipart/mixed; boundary="===============5252660907018216133=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============5252660907018216133==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D36FCA6_09D89E78_637B06C8"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D36FCA6_09D89E78_637B06C8
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

SGnvvIxBZHJpYW4NCg0KDQpUaGUgTUFDIGFkZHJlc3MgaXMgdGhlIE1BQyBhZGRyZXNzIG9u
IHRoZSBsYWJlbA0KDQoNCkJlc3QgcmVnYXJkcw0KTHVvY2hvbmdqdW4NCg0KLS0tLS0tLS0t
LS0tLS3ljp/lp4vpgq7ku7YtLS0tLS0tLS0tLS0tLQ0K5Y+R5Lu25Lq677yaIkFkcmlhbiBT
Y2htdXR6bGVyICI8bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlPjsNCuWPkemAgeaXtumXtO+8
mjIwMTnlubQ35pyIMjPml6Uo5pif5pyf5LqMKSDmmZrkuIo3OjQxDQrmlLbku7bkurrvvJoi
J0x1b2Nob25nanVuJyIgPGx1b2Nob25nanVuQGdsLWluZXQuY29tPjsib3BlbndydC1kZXZl
bCIgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Ow0K5Li76aKY77yaUkU6IFtP
cGVuV3J0LURldmVsXSBbUEFUQ0hdIGF0aDc5OiBhZGQgc3VwcG9ydCBmb3IgZ2wtYXI3NTAN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCiBIaSwNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBvcGVud3J0LWRldmVsIFttYWlsdG86
b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSBPbg0KPiBCZWhhbGYg
T2YgTHVvY2hvbmdqdW4NCj4gU2VudDogRGllbnN0YWcsIDIzLiBKdWxpIDIwMTkgMDk6NDUN
Cj4gVG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcNCj4gQ2M6IEx1b2Nob25n
anVuIDxsdW9jaG9uZ2p1bkBnbC1pbmV0LmNvbT4NCj4gU3ViamVjdDogW09wZW5XcnQtRGV2
ZWxdIFtQQVRDSF0gYXRoNzk6IGFkZCBzdXBwb3J0IGZvciBnbC1hcjc1MA0KPiANCj4gVGhp
cyBwYXRjaCBzdXBwb3J0cyBnbC1hcjc1MCwgd2hpY2ggd2FzIHByZXZpb3VzbHkgc3VwcG9y
dGVkIGJ5IGFyNzF4eC4NCj4gDQoNCi4uLg0KDQo+ICsmZXRoMCB7DQo+ICsJc3RhdHVzID0g
Im9rYXkiOw0KPiArCW10ZC1tYWMtYWRkcmVzcyA9IDwmYXJ0IDB4MD47DQoNCklzIHRoaXMg
dGhlIE1BQyBhZGRyZXNzIG9uIHRoZSBkZXZpY2UncyBsYWJlbC9jYXNlL2JveD8NCg0KQmVz
dA0KDQpBZHJpYW4=

------=_NextPart_5D36FCA6_09D89E78_637B06C8
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PGRpdj5Iae+8jEFkcmlhbjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhlIE1BQyBhZGRy
ZXNzIGlzIHRoZSBNQUMgYWRkcmVzcyBvbiB0aGUgbGFiZWw8L2Rpdj48ZGl2Pjxicj48L2Rp
dj48ZGl2PkJlc3QgcmVnYXJkczwvZGl2PjxkaXY+THVvY2hvbmdqdW48YnI+PGJyPi0tLS0t
LS0tLS0tLS0t5Y6f5aeL6YKu5Lu2LS0tLS0tLS0tLS0tLS08YnI+5Y+R5Lu25Lq677yaIkFk
cmlhbiBTY2htdXR6bGVyICImbHQ7bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlJmd0Ozs8YnI+
5Y+R6YCB5pe26Ze077yaMjAxOeW5tDfmnIgyM+aXpSjmmJ/mnJ/kuowpIOaZmuS4ijc6NDE8
YnI+5pS25Lu25Lq677yaIidMdW9jaG9uZ2p1biciICZsdDtsdW9jaG9uZ2p1bkBnbC1pbmV0
LmNvbSZndDs7Im9wZW53cnQtZGV2ZWwiICZsdDtvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnJmd0Ozs8YnI+5Li76aKY77yaUkU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIGF0
aDc5OiBhZGQgc3VwcG9ydCBmb3IgZ2wtYXI3NTA8YnI+LS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS08YnI+PC9kaXY+IDxkaXYgY2xhc3M9Im1haWxfY29udGVudCI+PGRp
dj5IaSw8YnI+PGJyPiZndDsgLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS08YnI+Jmd0OyBG
cm9tOiBvcGVud3J0LWRldmVsIFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3Rz
Lm9wZW53cnQub3JnXSBPbjxicj4mZ3Q7IEJlaGFsZiBPZiBMdW9jaG9uZ2p1bjxicj4mZ3Q7
IFNlbnQ6IERpZW5zdGFnLCAyMy4gSnVsaSAyMDE5IDA5OjQ1PGJyPiZndDsgVG86IG9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc8YnI+Jmd0OyBDYzogTHVvY2hvbmdqdW4gJmx0
O2x1b2Nob25nanVuQGdsLWluZXQuY29tJmd0Ozxicj4mZ3Q7IFN1YmplY3Q6IFtPcGVuV3J0
LURldmVsXSBbUEFUQ0hdIGF0aDc5OiBhZGQgc3VwcG9ydCBmb3IgZ2wtYXI3NTA8YnI+Jmd0
OyA8YnI+Jmd0OyBUaGlzIHBhdGNoIHN1cHBvcnRzIGdsLWFyNzUwLCB3aGljaCB3YXMgcHJl
dmlvdXNseSBzdXBwb3J0ZWQgYnkgYXI3MXh4Ljxicj4mZ3Q7IDxicj48YnI+Li4uPGJyPjxi
cj4mZ3Q7ICsmYW1wO2V0aDAgezxicj4mZ3Q7ICsJc3RhdHVzID0gIm9rYXkiOzxicj4mZ3Q7
ICsJbXRkLW1hYy1hZGRyZXNzID0gJmx0OyZhbXA7YXJ0IDB4MCZndDs7PGJyPjxicj5JcyB0
aGlzIHRoZSBNQUMgYWRkcmVzcyBvbiB0aGUgZGV2aWNlJ3MgbGFiZWwvY2FzZS9ib3g/PGJy
Pjxicj5CZXN0PGJyPjxicj5BZHJpYW48YnI+PGJyPjwvZGl2PjwvZGl2Pg==

------=_NextPart_5D36FCA6_09D89E78_637B06C8--





--===============5252660907018216133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5252660907018216133==--




