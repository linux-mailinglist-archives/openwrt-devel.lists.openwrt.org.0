Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4495F1A45A0
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 13:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:References:Message-ID:Date:Mime-Version:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L1r4eQAnFiRgDgKrfW+B4micwVRCnYdmFHAK2tTxY7Y=; b=jUCeeELqhtqV34nCFN5QMOr/6
	eIoOHet6HuCQdYaRq7pG/JNS5qXc4J9XtxHNvbsPNFR9CWftvoX4tNmjmV13UQ67/wKv8BwD1Ujq7
	Y4GHIeadCdfcdQC2gNvvp8/YvT9/ocWSdGr7qw1CbVmbvxbYYLM6N0rdaZI07MLffnKvHzhnrK4/+
	PTPvkRF3KCEe7WljWcpoBZmGdAW+r65X22XWAqsxiFZhtvAgXlg7DEx5O4idRZxaKvlhni+RY14hV
	Z/lw8JrUpNQ+WIiFIgw7pnOxpEz4+K663ZSlNzLqnG37BuOjVAyZWr6VaG3hRWtR4h9EyIQfldUIR
	a6fLWPbag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrnl-0003Ej-50; Fri, 10 Apr 2020 11:26:25 +0000
Received: from smtpbg565.qq.com ([183.3.255.186] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrnd-0003Dm-E6
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 11:26:19 +0000
X-QQ-GoodBg: 0
X-QQ-SSF: 00100000000000F0
X-QQ-FEAT: fVZeSYFzHq1MRZ5VfahL7hJJFaKfeYlmwFe+Y58wjavnl+MOLWH2tY/4XiNi4
 nBP+gGTyUvksPSE0s4Tl+69xeZF/tw9D/nxsmaP2gznYn4N4c6T/ZkFAB3jLDMrJUwSEETR
 zQjTEaRDeHe72eFe5rRKzoYQphYcYWJ0lWftKLAIU+NGoo+lcOv5+FnyK980d8GlLkB2z+O
 PnTGhnu5QWct2peFkS83pcIJ5odWEQt+COXFR9M9ee7C91ADHG0lP6NhlCJCnxWIiqcNkSh
 jusQ8SROOuQSv8XOgFsjTxrmukFFyp60k8zyXRYePj7qMw/9+HBeQagcBMGPyJXu0akqvb4
 Wzw3dPw
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 58.152.211.194
X-QQ-STYLE: 
X-QQ-mid: logic615t1586517824t8798297
From: "=?utf-8?B?Z3VpbGluLndhbmc=?=" <guilin.wang@gl-inet.com>
To: "=?utf-8?B?UGF1bCBGZXJ0c2Vy?=" <fercerpav@gmail.com>
Mime-Version: 1.0
Date: Fri, 10 Apr 2020 19:23:44 +0800
X-Priority: 3
Message-ID: <tencent_6BC0797643213F582FBE3256@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
 <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
 <tencent_180A37163F380F9E4F3D22A9@qq.com>
 <20200410111002.GC23797@home.paul.comp>
 <tencent_0151EEAE23D8D82C2EB37A96@qq.com>
In-Reply-To: <tencent_0151EEAE23D8D82C2EB37A96@qq.com>
X-QQ-ReplyHash: 2184339522
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Fri, 10 Apr 2020 19:23:45 +0800 (CST)
Feedback-ID: logic:gl-inet.com:qybgweb:qybgweb13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_042617_838855_2EB7E334 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [183.3.255.186 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_NONELEMENT_30_40  BODY: 30% to 40% of HTML elements are
 non-standard
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200
 (GL.iNet)
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
Cc: =?utf-8?B?TWFydGluIEJsdW1lbnN0aW5nbA==?=
 <martin.blumenstingl@googlemail.com>,
 =?utf-8?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2116853513391920403=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============2116853513391920403==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5E905740_1165A738_3B7E9A71"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5E905740_1165A738_3B7E9A71
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

SGkgLCBQYXVsDQombmJzcDsgJm5ic3A7Jm5ic3A7U29ycnksIEkgbWlzcmVhZCB0aGUgbWFp
bCBjb250YWN0Lg0KJm5ic3A7T3VyIHdhdGNoZG9nIHVzZXMgdHdvIEdQSU8gdG8gY29udHJv
bCwgb25lIGlzIHRvIHVzZSBwdWxzZSB0byBzd2l0Y2ggdGhlIHdhdGNoZG9nLCBvbmUgR1BJ
TyBpcyB1c2VkIHRvIGZlZWQgdGhlIGRvZywgc3BlY2lmaWNhbGx5IHRoZSBleHRlcm5hbCBz
aW5nbGUtY2hpcCB0byBmZWVkIHRoZSBkb2csIG5vdyB0aGUgZXh0ZXJuYWwgc2luZ2xlLWNo
aXAgY2Fubm90IGRldGVjdCB0aGUgbGV2ZWwgY2hhbmdlIG9mIEdQSU8gSSBub3cgc3VzcGVj
dCB0aGF0IHRoZSB3ZHQtZ3BpbyBkZWxheSBpcyB0b28gc2hvcnQsIGFuZCB0aGUgbWljcm9j
b250cm9sbGVyIHBhcnQgaGFzIG5vdCBkZXRlY3RlZCBhIGZhbGxpbmcgZWRnZSBjaGFuZ2Uu
IEkgdHJpZWQgYm90aCB0b2dnbGUgYW5kIGxldmVsLCBidXQgdW5mb3J0dW5hdGVseSBib3Ro
IGZhaWxlZCwgYW5kIEkgd2lsbCBjb250aW51ZSB0byB0ZXN0Lg0KJm5ic3A7DQotLS0tLS0t
LS0tLS0tLS0tLS0mbmJzcDtPcmlnaW5hbCZuYnNwOy0tLS0tLS0tLS0tLS0tLS0tLQ0KRnJv
bTogJm5ic3A7Imd1aWxpbi53YW5nIjxndWlsaW4ud2FuZ0BnbC1pbmV0LmNvbSZndDs7DQpE
YXRlOiAmbmJzcDtGcmksIEFwciAxMCwgMjAyMCAwNzoyMiBQTQ0KVG86ICZuYnNwOyJQYXVs
IEZlcnRzZXIiPGZlcmNlcnBhdkBnbWFpbC5jb20mZ3Q7OyANCkNjOiAmbmJzcDsiTWFydGlu
IEJsdW1lbnN0aW5nbCI8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbSZndDs7
ICJvcGVud3J0LWRldmVsIjxvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnJmd0Ozsg
DQpTdWJqZWN0OiAmbmJzcDtSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gb20td2F0Y2hk
b2c6IEFkZCBzdXBwb3J0IGZvciBHTC1YMTIwMCAoR0wuaU5ldCkNCg0KJm5ic3A7DQoNCkhp
ICwgTWFydGluT3VyIA0KJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IFdh
dGNoZG9nIHVzZXMgdHdvIEdQSU8gdG8gY29udHJvbCwgb25lIGlzIHRvIHVzZSBwdWxzZSB0
byBzd2l0Y2ggdGhlIHdhdGNoZG9nLCBvbmUgR1BJTyBpcyB1c2VkIHRvIGZlZWQgdGhlIGRv
Zywgc3BlY2lmaWNhbGx5IHRoZSBleHRlcm5hbCBzaW5nbGUtY2hpcCB0byBmZWVkIHRoZSBk
b2csIG5vdyB0aGUgZXh0ZXJuYWwgc2luZ2xlLWNoaXAgY2Fubm90IGRldGVjdCB0aGUgbGV2
ZWwgY2hhbmdlIG9mIEdQSU8gSSBub3cgc3VzcGVjdCB0aGF0IHRoZSB3ZHQtZ3BpbyBkZWxh
eSBpcyB0b28gc2hvcnQsIGFuZCB0aGUgbWljcm9jb250cm9sbGVyIHBhcnQgaGFzIG5vdCBk
ZXRlY3RlZCBhIGZhbGxpbmcgZWRnZSBjaGFuZ2UuIEkgdHJpZWQgYm90aCB0b2dnbGUgYW5k
IGxldmVsLCBidXQgdW5mb3J0dW5hdGVseSBib3RoIGZhaWxlZCwgYW5kIEkgd2lsbCBjb250
aW51ZSB0byB0ZXN0Lg0KDQombmJzcDsgLS0tLS0tLS0tLS0tLS0tLS0tIE9yaWdpbmFsIC0t
LS0tLS0tLS0tLS0tLS0tLUZyb206Jm5ic3A7ICJQYXVsIEZlcnRzZXIiPGZlcmNlcnBhdkBn
bWFpbC5jb20mZ3Q7O0RhdGU6Jm5ic3A7IEZyaSwgQXByIDEwLCAyMDIwIDA3OjEwIFBNVG86
Jm5ic3A7ICJndWlsaW4ud2FuZyI8Z3VpbGluLndhbmdAZ2wtaW5ldC5jb20mZ3Q7OyBDYzom
bmJzcDsgIk1hcnRpbiBCbHVtZW5zdGluZ2wiPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xl
bWFpbC5jb20mZ3Q7OyAib3BlbndydC1kZXZlbCI8b3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZyZndDs7IFN1YmplY3Q6Jm5ic3A7IFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENI
XSBvbS13YXRjaGRvZzogQWRkIHN1cHBvcnQgZm9yIEdMLVgxMjAwIChHTC5pTmV0KSBIaSwN
Cg0KT24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMDY6NTU6NTlQTSArMDgwMCwgZ3VpbGluLndh
bmcgd3JvdGU6DQomZ3Q7IGJ1dCBmb3VuZCB0aGF0IHRoZSBkb2cgY291bGQgbm90IGJlIGZl
ZCBzdWNjZXNzZnVsbHkuDQoNCldoeSBleGFjdGx5Pw0KDQomZ3Q7IE91ciBleHRlcm5hbCBt
aWNyb2NvbnRyb2xsZXIgZmVlZHMgdGhlIGRvZy4gVGhlIGNwdSBqdXN0IGdpdmVzIHRoZQ0K
Jmd0OyBtaWNyb2NvbnRyb2xsZXIgYSB0cmlnZ2VyIHNpZ25hbCwgYnV0IEkgdGVzdGVkIHRo
YXQgdGhlDQomZ3Q7IG1pY3JvY29udHJvbGxlciBjYW5ub3QgZGV0ZWN0IHRoZSBsZXZlbCBj
aGFuZ2UgdXNpbmcgdGhpcyBtZXRob2QNCg0KSG93IGlzIGl0IGFibGUgdG8gZGV0ZWN0IHRo
ZSBsZXZlbCBjaGFuZ2UgdXNpbmcgYW5vdGhlciBtZXRob2QgdGhlbiwNCndoYXQgZXhhY3Rs
eSBtYWtlcyB0aGVtIGRpZmZlcmVudD8NCg0KLS0gDQpCZSBmcmVlLCB1c2UgZnJlZSAoaHR0
cDovL3d3dy5nbnUub3JnL3BoaWxvc29waHkvZnJlZS1zdy5odG1sKSBzb2Z0d2FyZSENCm1h
aWx0bzpmZXJjZXJwYXZAZ21haWwuY29tDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdA0Kb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZw0KaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWw=

------=_NextPart_5E905740_1165A738_3B7E9A71
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PGRpdj48Zm9udD5IaSAsIFBhdWw8L2ZvbnQ+PC9kaXY+PGRpdj48Zm9udD4mbmJzcDsgJm5i
c3A7Jm5ic3A7U29ycnksIEkgbWlzcmVhZCB0aGUgbWFpbCBjb250YWN0LjwvZm9udD48L2Rp
dj48ZGl2PjxpbmNsdWRldGFpbD48ZGl2PiZuYnNwO091ciB3YXRjaGRvZyB1c2VzIHR3byBH
UElPIHRvIGNvbnRyb2wsIG9uZSBpcyB0byB1c2UgcHVsc2UgdG8gc3dpdGNoIHRoZSB3YXRj
aGRvZywgb25lIEdQSU8gaXMgdXNlZCB0byBmZWVkIHRoZSBkb2csIHNwZWNpZmljYWxseSB0
aGUgZXh0ZXJuYWwgc2luZ2xlLWNoaXAgdG8gZmVlZCB0aGUgZG9nLCBub3cgdGhlIGV4dGVy
bmFsIHNpbmdsZS1jaGlwIGNhbm5vdCBkZXRlY3QgdGhlIGxldmVsIGNoYW5nZSBvZiBHUElP
IEkgbm93IHN1c3BlY3QgdGhhdCB0aGUgd2R0LWdwaW8gZGVsYXkgaXMgdG9vIHNob3J0LCBh
bmQgdGhlIG1pY3JvY29udHJvbGxlciBwYXJ0IGhhcyBub3QgZGV0ZWN0ZWQgYSBmYWxsaW5n
IGVkZ2UgY2hhbmdlLiBJIHRyaWVkIGJvdGggdG9nZ2xlIGFuZCBsZXZlbCwgYnV0IHVuZm9y
dHVuYXRlbHkgYm90aCBmYWlsZWQsIGFuZCBJIHdpbGwgY29udGludWUgdG8gdGVzdC48L2Rp
dj48ZGl2PiZuYnNwOzwvZGl2PjxkaXYgc3R5bGU9ImZvbnQ6VmVyZGFuYSBub3JtYWwgMTRw
eDtjb2xvcjojMDAwOyI+PGRpdiBzdHlsZT0iRk9OVC1TSVpFOiAxMnB4O0ZPTlQtRkFNSUxZ
OiBBcmlhbCBOYXJyb3c7cGFkZGluZzoycHggMCAycHggMDsiPi0tLS0tLS0tLS0tLS0tLS0t
LSZuYnNwO09yaWdpbmFsJm5ic3A7LS0tLS0tLS0tLS0tLS0tLS0tPC9kaXY+PGRpdiBzdHls
ZT0iRk9OVC1TSVpFOiAxMnB4O2JhY2tncm91bmQ6I2VmZWZlZjtwYWRkaW5nOjhweDsiPjxk
aXYgaWQ9Im1lbnVfc2VuZGVyIj48Yj5Gcm9tOiA8L2I+Jm5ic3A7Imd1aWxpbi53YW5nIiZs
dDtndWlsaW4ud2FuZ0BnbC1pbmV0LmNvbSZndDs7PC9kaXY+PGRpdj48Yj5EYXRlOiA8L2I+
Jm5ic3A7RnJpLCBBcHIgMTAsIDIwMjAgMDc6MjIgUE08L2Rpdj48ZGl2PjxiPlRvOiA8L2I+
Jm5ic3A7IlBhdWwgRmVydHNlciImbHQ7ZmVyY2VycGF2QGdtYWlsLmNvbSZndDs7IDx3YnI+
PC9kaXY+PGRpdj48Yj5DYzogPC9iPiZuYnNwOyJNYXJ0aW4gQmx1bWVuc3RpbmdsIiZsdDtt
YXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tJmd0OzsgIm9wZW53cnQtZGV2ZWwi
Jmx0O29wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcmZ3Q7OyA8d2JyPjwvZGl2Pjxk
aXY+PGI+U3ViamVjdDogPC9iPiZuYnNwO1JlOiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSBv
bS13YXRjaGRvZzogQWRkIHN1cHBvcnQgZm9yIEdMLVgxMjAwIChHTC5pTmV0KTwvZGl2Pjwv
ZGl2PjxkaXY+Jm5ic3A7PC9kaXY+PGRpdiBzdHlsZT0icG9zaXRpb246cmVsYXRpdmU7Ij48
ZGl2IGlkPSJ0bXBjb250ZW50X3JlcyI+PC9kaXY+SGkgLCBNYXJ0aW5PdXIgPGJyPiZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBXYXRjaGRvZyB1c2VzIHR3byBHUElP
IHRvIGNvbnRyb2wsIG9uZSBpcyB0byB1c2UgcHVsc2UgdG8gc3dpdGNoIHRoZSB3YXRjaGRv
Zywgb25lIEdQSU8gaXMgdXNlZCB0byBmZWVkIHRoZSBkb2csIHNwZWNpZmljYWxseSB0aGUg
ZXh0ZXJuYWwgc2luZ2xlLWNoaXAgdG8gZmVlZCB0aGUgZG9nLCBub3cgdGhlIGV4dGVybmFs
IHNpbmdsZS1jaGlwIGNhbm5vdCBkZXRlY3QgdGhlIGxldmVsIGNoYW5nZSBvZiBHUElPIEkg
bm93IHN1c3BlY3QgdGhhdCB0aGUgd2R0LWdwaW8gZGVsYXkgaXMgdG9vIHNob3J0LCBhbmQg
dGhlIG1pY3JvY29udHJvbGxlciBwYXJ0IGhhcyBub3QgZGV0ZWN0ZWQgYSBmYWxsaW5nIGVk
Z2UgY2hhbmdlLiBJIHRyaWVkIGJvdGggdG9nZ2xlIGFuZCBsZXZlbCwgYnV0IHVuZm9ydHVu
YXRlbHkgYm90aCBmYWlsZWQsIGFuZCBJIHdpbGwgY29udGludWUgdG8gdGVzdC48YnI+PGJy
PiZuYnNwOyAtLS0tLS0tLS0tLS0tLS0tLS0gT3JpZ2luYWwgLS0tLS0tLS0tLS0tLS0tLS0t
RnJvbTombmJzcDsgIlBhdWwgRmVydHNlciImbHQ7ZmVyY2VycGF2QGdtYWlsLmNvbSZndDs7
RGF0ZTombmJzcDsgRnJpLCBBcHIgMTAsIDIwMjAgMDc6MTAgUE1UbzombmJzcDsgImd1aWxp
bi53YW5nIiZsdDtndWlsaW4ud2FuZ0BnbC1pbmV0LmNvbSZndDs7IENjOiZuYnNwOyAiTWFy
dGluIEJsdW1lbnN0aW5nbCImbHQ7bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNv
bSZndDs7ICJvcGVud3J0LWRldmVsIiZsdDtvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnJmd0OzsgU3ViamVjdDombmJzcDsgUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIG9t
LXdhdGNoZG9nOiBBZGQgc3VwcG9ydCBmb3IgR0wtWDEyMDAgKEdMLmlOZXQpIEhpLDxicj48
YnI+T24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMDY6NTU6NTlQTSArMDgwMCwgZ3VpbGluLndh
bmcgd3JvdGU6PGJyPiZndDsgYnV0IGZvdW5kIHRoYXQgdGhlIGRvZyBjb3VsZCBub3QgYmUg
ZmVkIHN1Y2Nlc3NmdWxseS48YnI+PGJyPldoeSBleGFjdGx5Pzxicj48YnI+Jmd0OyBPdXIg
ZXh0ZXJuYWwgbWljcm9jb250cm9sbGVyIGZlZWRzIHRoZSBkb2cuIFRoZSBjcHUganVzdCBn
aXZlcyB0aGU8YnI+Jmd0OyBtaWNyb2NvbnRyb2xsZXIgYSB0cmlnZ2VyIHNpZ25hbCwgYnV0
IEkgdGVzdGVkIHRoYXQgdGhlPGJyPiZndDsgbWljcm9jb250cm9sbGVyIGNhbm5vdCBkZXRl
Y3QgdGhlIGxldmVsIGNoYW5nZSB1c2luZyB0aGlzIG1ldGhvZDxicj48YnI+SG93IGlzIGl0
IGFibGUgdG8gZGV0ZWN0IHRoZSBsZXZlbCBjaGFuZ2UgdXNpbmcgYW5vdGhlciBtZXRob2Qg
dGhlbiw8YnI+d2hhdCBleGFjdGx5IG1ha2VzIHRoZW0gZGlmZmVyZW50Pzxicj48YnI+LS0g
PGJyPkJlIGZyZWUsIHVzZSBmcmVlIChodHRwOi8vd3d3LmdudS5vcmcvcGhpbG9zb3BoeS9m
cmVlLXN3Lmh0bWwpIHNvZnR3YXJlITxicj5tYWlsdG86ZmVyY2VycGF2QGdtYWlsLmNvbTxi
cj48YnI+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188
YnI+b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3Q8YnI+b3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZzxicj5odHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbDwvZGl2PjwvZGl2PjwhLS08IVtlbmRpZl0tLT48L2luY2x1ZGV0
YWlsPjwvZGl2Pg==

------=_NextPart_5E905740_1165A738_3B7E9A71--



--===============2116853513391920403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2116853513391920403==--


