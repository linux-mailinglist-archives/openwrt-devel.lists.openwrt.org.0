Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFF91A9739
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 10:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=YO3P5xy3PAjO5m9Yk0U1F32cmHGTy59E++FCbm4Qp2M=; b=sepQvbzZnW+4A1
	6ceniEPcMChU3AaNWscPiUwCo/pRJAJ2C1K/LClz03af5o/kLiI9Z0egSy7RX/eN9Q/1IgnUAF5vy
	GZc6MEsGI3OoMKtB8aF5IwnXdAFs5O5wFNddYWuF+WlZy3AfrBR76msYZfzE147s5HjMrgyU0gwCD
	oHufgJnRYdah0jfoj3bA5wDnH9DX2/PwWbvJAiUr+mdyG6C52tDh6NemdR9ozKIPYBqJpg5+ROiVn
	BMp0a7KrdJrcGpbIJbF1MbPO2GuC1kUgh3XL423IpGpcPKstc1RHUGivxQgH7IjPIajcsBsEZR5D1
	hNf5ArxfaAbEO6e5neFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdfl-0002tj-0a; Wed, 15 Apr 2020 08:45:29 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdfY-0000Qx-NF
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 08:45:24 +0000
X-QQ-mid: bizesmtp17t1586940287t5gjjm63
Received: from PC-201803291515 (unknown [113.116.144.134])
 by esmtp6.qq.com (ESMTP) with 
 id ; Wed, 15 Apr 2020 16:44:47 +0800 (CST)
X-QQ-SSF: 0010000A002000H0CG70B00A0000000
X-QQ-FEAT: BX5bKYUa8MY1Y3yEeDy/icTj8moI6ZLuM5o5Mbk8meIx0C8g48hR9MUOyXwUB
 iMXv8xyvTFAXqBPxHwS/ERrFrctIjSKBBtRW8rTVulwWSCIvdPROjlmfOcmEIAYj4PSLcDS
 tOL/cMb/IrRfcWKAtX+TXop21tOglVDt9OnDZdJaBCETdRcxPdVU/p4xsWM/+YKHiiSDcdE
 9vteo4GT/eKOp+y6QXOyHjb84UKVsW01Iu8tZj8uZ4ofsVHRuocmWgfRHPRCO7KBon1O7kL
 Nx3iGiYYA8V2aS8kGdtobGhzYIZYfSSRS4NQLiTqkEsIDq3pGvVGzFMTXKBuNbv9UPMphF4
 Q/3LLAxp/wYhVr196aD7ELEdLUpRh2OFgi8an3qHWzFmccX8JE=
X-QQ-GoodBg: 0
Date: Wed, 15 Apr 2020 16:44:48 +0800
From: Li.zhang <li.zhang@gl-inet.com>
To: "Tomasz Maciej Nowak" <tomek_n@o2.pl>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1586773611-27431-1-git-send-email-li.zhang@gl-inet.com>, 
 <9433965b-4d40-9801-923a-29e64e8b7e47@o2.pl>, 
 <2020041412201325848550@gl-inet.com>, 
 <8463a316-49a3-02dd-b9d2-bc0c154d42e1@o2.pl>
X-Priority: 3
X-GUID: F5C9A657-541D-440B-ACC3-CBD636920034
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.116[cn]
Mime-Version: 1.0
Message-ID: <202004151644483926346@gl-inet.com>+14BADBA7BBF81DAA
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_014517_411625_649C291D 
X-CRM114-Status: GOOD (  30.69  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.59.177.22 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.59.177.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000
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
Content-Type: multipart/mixed; boundary="===============3763405662946564307=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============3763405662946564307==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart851633377806_=----"

This is a multi-part message in MIME format.

------=_001_NextPart851633377806_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGkgVG9tYXN6LA0KQ3J1Y2lhbCBxdWVzdGlvbiBpcyBsZWZ0IHVuYW5zd2VyZWQ6IERvZXMgdGhl
IFUtQm9vdCBieSBkZWZhdWx0IGJvb3QgT3BlbldydCBmcm9tDQplTU1DIG9ubHkgb3IgZU1NQyBh
bmQgU0QgY2FyZD8gQW5kIGlmIGJvb3QgZnJvbSBib3RoLCB3aGljaCBpcyBib290ZWQgZmlyc3Q/
DQotLS0+IEJvb3Qgb3BlbndydCBmcm9tIEVNTUMgYnkgZGVmYXVsdC4gSWYgYm9vdCBmcm9tIGJv
dGgsRW1tYyBpcyBib290ZWQgZmlyc3QuDQoNClJlZ2FyZHMsTGkNCg0KDQpMaSBaaGFuZyB8IFNv
ZnR3YXJlIEVuZ2luZWVyDQpsaS56aGFuZ0BnbC1pbmV0LmNvbSANCkdMLmlOZXQgIFdpRmkgZm9y
IFRoaW5ncw0KV2Vic2l0ZTogd3d3LmdsLWluZXQuY29tICAgfCAgIExpbmtlZEluOiBnbC1pbmV0
LmNvbSAgIHwgICBUZWw6ICs4Ni03NTUtODY2MC02MTI2DQpSb29tIDMwNS0zMDYsIFNreXdvcnRo
IERpZ2l0YWwgQnVpbGRpbmcgLCBTaGl5YW4gU3RyZWV0LCBCYW9hbiBEaXN0cmljdCwgU2hlbnpo
ZW4sIENoaW5hDQpFbWFpbCBEaXNjbGFpbWVyOiBUaGUgY29udGVudCBvZiB0aGlzIGVtYWlsIGlz
IGNvbmZpZGVudGlhbCBhbmQgaW50ZW5kZWQgZm9yIHRoZSByZWNpcGllbnQgc3BlY2lmaWVkIGlu
IG1lc3NhZ2Ugb25seS4gSXQgaXMgc3RyaWN0bHkgZm9yYmlkZGVuIHRvIHNoYXJlIGFueSBwYXJ0
IG9mIHRoaXMgbWVzc2FnZSB3aXRoIGFueSB0aGlyZCBwYXJ0eSwgd2l0aG91dCBhIHdyaXR0ZW4g
Y29uc2VudCBvZiB0aGUgc2VuZGVyLiBJZiB5b3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJ5IG1p
c3Rha2UsIHBsZWFzZSByZXBseSB0byB0aGlzIG1lc3NhZ2UgYW5kIGZvbGxvdyB3aXRoIGl0cyBk
ZWxldGlvbiwgc28gdGhhdCB3ZSBjYW4gZW5zdXJlIHN1Y2ggYSBtaXN0YWtlIGRvZXMgbm90IG9j
Y3VyIGluIHRoZSBmdXR1cmUuDQogDQpGcm9tOiBUb21hc3ogTWFjaWVqIE5vd2FrDQpEYXRlOiAy
MDIwLTA0LTE1IDAyOjUzDQpUbzogTGkuemhhbmc7IG9wZW53cnQtZGV2ZWwNClN1YmplY3Q6IFJl
OiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSBtdmVidTogYWRkIHN1cHBvcnQgZm9yIEdMLmlOZXQg
R0wtTVYxMDAwDQpXIGRuaXUgMTQuMDQuMjAyMCBvIDA2OjIwLCBMaS56aGFuZyBwaXN6ZToNCj4g
SGkgVG9tYXN6LA0KPiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3UgY29ycmVjdGlvbi4NCj4g
DQo+PiArfTsNCj4+ICsNCj4+ICsmc3BpMCB7DQo+PiArICAgICAgICBzdGF0dXMgPSAib2theSI7
DQo+PiArDQo+PiArICAgICAgICBmbGFzaEAwIHsNCj4+ICsgICAgICAgICAgICAgICAgcmVnID0g
PDA+Ow0KPj4gKyAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImplZGVjLHNwaS1ub3IiOw0K
Pj4gKyAgICAgICAgICAgICAgICBzcGktbWF4LWZyZXF1ZW5jeSA9IDwxMDQwMDAwMDA+Ow0KPj4g
KyAgICAgICAgICAgICAgICBtMjVwLGZhc3QtcmVhZDsNCj4+ICsgICAgICAgICAgICAgICAgcGFy
dGl0aW9ucyB7DQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmaXhl
ZC1wYXJ0aXRpb25zIjsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsN
Cj4+ICsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBwYXJ0aXRpb25AMCB7DQo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJ1LWJvb3QiOw0KPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHhmMDAwMD47DQo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgfTsNCj4+ICsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBw
YXJ0aXRpb25AZjAwMDAgew0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFi
ZWwgPSAidS1ib290LWVudiI7DQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MFhmMDAwMCAweDgwMDA+Ow0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgIH07DQo+
PiArDQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgYXJ0OiBwYXJ0aXRpb25AZjgwMDAgew0K
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiYXJ0IjsNCj4gDQo+
IFRoZSBuYW1lIG9mIHRoaXMgcGFydGl0aW9uIGlzIHJhdGhlciBzdHJhbmdlLCBzaW5jZSB0aGUg
aGFyZHdhcmUNCj4gc3BlY2lmaWNhdGlvbiBkb2Vzbid0IG1lbnRpb24gYW55IFBDSWUgb3IgU0RJ
TyBjb25uZWN0ZWQgd2lyZWxlc3MNCj4gY2FyZHMgKGRvbid0IGtub3cgaWYgdGhlcmUncyBhbnkg
VVNCIGNhcmQgd2l0aG91dCBlZXByb20pLiBJcw0KPiB0aGVyZSBhbnkgY2FsaWJyYXRpb24gZGF0
YSBzdG9yZWQgb3Igb25seSBNQUMgYWRkcmVzcy9hZGRyZXNzZXM/DQo+IERvZXMgVS1Cb290IGFs
c28gcmVhZCBpbmZvcm1hdGlvbiBmcm9tIHRoaXMgcGFydGl0aW9uPyBBbnl3YXkNCj4gdGhhdCdz
IG5vdCBhIHJlbWFyayB0byBjaGFuZ2UgdGhhdCBuYW1lLCBJJ20ganVzdCBjdXJpb3VzLg0KPiAt
LS0+TUFDLFNOLERETlMgYW5kIHRoZXIgcHJpdmF0ZSBpbmZvcm1hdGlvbiBhcmUgc3RvcmVkIGlu
IHRoZSBhcnQuDQogDQpPaywgc3RpbGwgdGhhdCBuYW1lIGlzIHdlaXJkLCBidXQgdGhhdCdzIG1h
dHRlciBvZiB0YXN0ZS4NCiANCj4gDQo+IE9uIHByZXZpb3VzIHBhdGNoLCB0aGVyZSB3ZXJlIGFk
ZGl0aW9ubmFsIHBhcnRpdGlvbnMgaW4gZHRzDQo+IHdpdGhvdXQgLWVtbWMgc3VmZml4IDogZHRi
LCBmaXJtd2FyZS4gSWYgdGhhdCBzcGFjZSB3b3VsZCBiZQ0KPiB1bnVzZWQgaXQncyBiZXR0ZXIg
dG8gYWRkIHRoZW0gaGVyZSwgc28gbGF0ZXIgWW91IGNvdWxkDQo+IGludHJvZHVjZSBpbWFnZXMg
dGhhdCBjb3VsZCBiZSB3cml0dGVuIGluIFNQSSBmbGFzaC4NCj4gLS0tPlRoZXJlIGlzIGEgc2hv
cnQgYmFja3VwIGZpcm13YXJlIGluIGFkZGl0aW9ubmFsIHBhcnRpdGlvbnMgb2YgZmxhc2gsbm9y
bWFsbHkgaXQncyBub3QgdmlzaWJsZS5JbiBhZGRpdGlvbiBUaGUgb2ZmaWNhbCBmaXJtd2FyZSBp
cyBzdG9yZWQgaW4gRU1NQyxTbyB0aGUgcHJldmlvdXMgZmlsZShnbC1tdjEwMDAuZHRzKSB3YXMg
ZGVsZXRlZC4NCiANClRoZW4gaXQgd291bGQgYmUgYmV0dGVyIHRvIHNwZWNpZnkgdGhvc2UgcGFy
dGl0aW9ucywgYXMgc29tZSB1c2VycyBjb3VsZCBzaW1wbHkNCm92ZXJ3cml0ZSB0aGlzIHRoaW5r
aW5nIHRoYXQncyB1bm9jY3VwaWVkIHNwYWNlLg0KIA0KPiANCj4+ICtkZWZpbmUgRGV2aWNlL0Rl
ZmF1bHQtYXJtNjQtZW1tYw0KPiANCj4gUGxlYXNlIGRvbid0IGFkZCBnZW5lcmljIGRpZmluaXRp
b24gZm9yIHNpbmdsZSBkZXZpY2Ugd2hlcmUgb25seQ0KPiBpbWFnZSBuYW1lIGFuZCByZWNpcGUg
YXJlIHNsaWdodGx5IGNoYW5nZWQsIHBsZWFzZSByZW1vdmUgaXQuDQo+IA0KPj4gKyAgQk9PVF9T
Q1JJUFQgOj0gZ2VuZXJpYy1hcm02NC1lbW1jDQo+PiArICBERVZJQ0VfRFRTX0RJUiA6PSAkKERU
U19ESVIpL21hcnZlbGwNCj4+ICsgIElNQUdFUyA6PSBlbW1jLmltZw0KPj4gKyAgSU1BR0UvZW1t
Yy5pbWcgOj0gYm9vdC1zY3IgfCBib290LWltZy1leHQ0IHwgc2RjYXJkLWltZy1leHQ0IHwgYXBw
ZW5kLW1ldGFkYXRhDQo+PiArICBLRVJORUxfTkFNRSA6PSBJbWFnZQ0KPj4gKyAgS0VSTkVMIDo9
IGtlcm5lbC1iaW4NCj4+ICtlbmRlZg0KPj4gKw0KPj4gIGRlZmluZSBEZXZpY2UvTkFORC0xMjhL
DQo+PiAgICBCTE9DS1NJWkUgOj0gMTI4aw0KPj4gICAgUEFHRVNJWkUgOj0gMjA0OA0KPj4gZGlm
ZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXhhNTMubWsgYi90YXJnZXQv
bGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rDQo+PiBpbmRleCA3N2Y1Yzc5Li40ZGZkMGI0
IDEwMDY0NA0KPj4gLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5taw0K
Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5taw0KPj4gQEAgLTY5
LDMgKzY5LDEyIEBAIGRlZmluZSBEZXZpY2UvbWV0aG9kZV91ZHB1DQo+PiAgICBCT09UX1NDUklQ
VCA6PSB1ZHB1DQo+PiAgZW5kZWYNCj4+ICBUQVJHRVRfREVWSUNFUyArPSBtZXRob2RlX3VkcHUN
Cj4+ICsNCj4+ICtkZWZpbmUgRGV2aWNlL2dsaW5ldF9nbC1tdjEwMDAtZW1tYw0KPj4gKyAgJChj
YWxsIERldmljZS9EZWZhdWx0LWFybTY0LWVtbWMpDQo+IA0KPiBQbGVhc2UgY2FsbCAiRGVmYXVs
dC1hcm02NCIgaGVyZS4gWW91IGNhbiBvdmVycmlkZSBpbWFnZSByZWNpcGUNCj4gaGVyZSBhZGRp
bmcgKGRvbid0IGtub3cgaWYgdGhhdCdsbCBiZSBuZWNlc3NhcnkpOg0KPiAtLS0+MSxJdCBpcyB1
c2VkIHRvIGRpc3Rpbmd1aXNoIGJldHdlZW4gc2QgY2FyZCBhbmQgZW1tYy5TbyBJdCBjYW4gbGV0
IHVzZXJzIGJldHRlciByZWNvbmdpbnplIHRoYXQgaXQgY2FuIGJlIGFwcGxpZWQgdG8gRU1NQyBy
YXRoZXIgdGhhbiBqdXN0IHNkIGNhcmQuDQogDQpCdXQgd2l0aCB0aGlzIHBhdGNoLCB0aGUgaW1h
Z2UgaGFzIGluIG5hbWUgImVtbWMiIG9ubHksIGhvdyB3b3VsZCB1c2VycyBrbm93IHRoYXQNCnRo
ZXkgY2FuIHVzZSBpdCBmb3IgU0QgY2FyZD8gSWYgYm90aCBpbWFnZXMgYXJlIGludGVyY2hhbmdh
YmxlIFlvdSBoYXZlIHRvIGV4dGVuZA0KY29tbWl0IG1lc3NhZ2Ugd2l0aCBpbnN0dWN0aW9ucywg
dGhhdCBzaW5nbGUgaW1hZ2UgY2FuIGJlIHVzZWQgb24gYm90aCBtZWRpdW1zDQphbmQgaG93IHRv
IHVzZSB0aGVtICh0aGUgU0QgY2FyZCBpcyByYXRoZXIgb2J2aW91cywgYnV0IG1vcmUgZXhwbGFu
YXRpb24gaXMNCm5lZWRlZCBmb3IgdGhlIGVNTUMpLg0KQ3J1Y2lhbCBxdWVzdGlvbiBpcyBsZWZ0
IHVuYW5zd2VyZWQ6IERvZXMgdGhlIFUtQm9vdCBieSBkZWZhdWx0IGJvb3QgT3BlbldydCBmcm9t
DQplTU1DIG9ubHkgb3IgZU1NQyBhbmQgU0QgY2FyZD8gQW5kIGlmIGJvb3QgZnJvbSBib3RoLCB3
aGljaCBpcyBib290ZWQgZmlyc3Q/DQogDQo+IC0tLT4yLEN1cnJlbnRseSxUaGUgdWJvb3QgZG9l
cyBub3Qgc3VwcG9ydCAnZmlybXdhcmUtZ3ppcCcgdXBncmFkZXMgLlNvIGl0IGNhbiBub3QgcmVj
b3ZlciBzeXN0ZW0gdmlhIHVib290LCB3aGVuIHRoZSB1c2VyJ3MgRU1NQyBmaXJtd2FyZSBmYWls
cyB0byBib290Lg0KIA0KT2suDQogDQo+IC0tLT4zLENvdWxkIGkgY3JlYXRlIGFub3RoZXIgZmls
ZShnbC1tdjEwMDAubWspIHRvIGluY2x1ZGUgJ0RlZmF1bHQtYXJtNjQtZW1tYyc/DQogDQpObywg
cGxlYXNlIGRvbid0LiBZb3UgY2FuIGFsd2F5cyBvdmVycmlkZSBJTUFHRVMgdmFyaWFibGUgYW5k
IGFkZCBtdWx0aXBsZSBJTUFHRSByZWNpcGVzIGluIGRldmljZQ0KZGVmaW5pdGlvbiwgdGhlcmUg
aXMgbm8gcmVhc29uIHRvIGFkZCBhIGNvbW1vbiBzdHViIHVzZWQgT05MWSBieSBvbmUgZGV2aWNl
Lg0KIA0KPiANCj4gDQo+IFRoYW5rIHlvdSENCj4gDQo+IA0KPiBMaSBaaGFuZyB8IFNvZnR3YXJl
IEVuZ2luZWVyDQo+IGxpLnpoYW5nQGdsLWluZXQuY29tIA0KPiBHTC5pTmV0ICBXaUZpIGZvciBU
aGluZ3MNCj4gV2Vic2l0ZTogd3d3LmdsLWluZXQuY29tICAgfCAgIExpbmtlZEluOiBnbC1pbmV0
LmNvbSAgIHwgICBUZWw6ICs4Ni03NTUtODY2MC02MTI2DQo+IFJvb20gMzA1LTMwNiwgU2t5d29y
dGggRGlnaXRhbCBCdWlsZGluZyAsIFNoaXlhbiBTdHJlZXQsIEJhb2FuIERpc3RyaWN0LCBTaGVu
emhlbiwgQ2hpbmENCj4gRW1haWwgRGlzY2xhaW1lcjogVGhlIGNvbnRlbnQgb2YgdGhpcyBlbWFp
bCBpcyBjb25maWRlbnRpYWwgYW5kIGludGVuZGVkIGZvciB0aGUgcmVjaXBpZW50IHNwZWNpZmll
ZCBpbiBtZXNzYWdlIG9ubHkuIEl0IGlzIHN0cmljdGx5IGZvcmJpZGRlbiB0byBzaGFyZSBhbnkg
cGFydCBvZiB0aGlzIG1lc3NhZ2Ugd2l0aCBhbnkgdGhpcmQgcGFydHksIHdpdGhvdXQgYSB3cml0
dGVuIGNvbnNlbnQgb2YgdGhlIHNlbmRlci4gSWYgeW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBi
eSBtaXN0YWtlLCBwbGVhc2UgcmVwbHkgdG8gdGhpcyBtZXNzYWdlIGFuZCBmb2xsb3cgd2l0aCBp
dHMgZGVsZXRpb24sIHNvIHRoYXQgd2UgY2FuIGVuc3VyZSBzdWNoIGEgbWlzdGFrZSBkb2VzIG5v
dCBvY2N1ciBpbiB0aGUgZnV0dXJlLg0KPiAgDQo+IEZyb206IFRvbWFzeiBNYWNpZWogTm93YWsN
Cj4gRGF0ZTogMjAyMC0wNC0xNCAwNDoxNA0KPiBUbzogTGkgWmhhbmc7IG9wZW53cnQtZGV2ZWwN
Cj4gU3ViamVjdDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIG12ZWJ1OiBhZGQgc3VwcG9y
dCBmb3IgR0wuaU5ldCBHTC1NVjEwMDANCj4gSGkgTGkgWmhhbmcuDQo+ICANCj4gVGhpcyB2ZXJz
aW9uIGxvb2tzIG11Y2ggYmV0dGVyIHRoYW4gdGhlIGZpcnN0IG9uZSwNCj4gc29tZSBjb21tZW50
cyBpbmxpbmUuDQo+ICANCj4gVyBkbml1IDEzLjA0LjIwMjAgbyAxMjoyNiwgTGkgWmhhbmcgcGlz
emU6DQo+PiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydHMgZm9yIEdMLU1WMTAwMC4NCj4+DQo+PiBT
cGVjaWZpY2F0aW9uOg0KPj4gLSBTT0M6IE1hcnZlbGwgQXJtYWRhIDg4RjM3MjAgKDFHSHopDQo+
PiAtIEZsYXNoOiAxNk1CIChXMjVRMTI4RldTSUcpDQo+PiAtIFJBTTogMUdCIEREUjQNCj4+IC0g
RXRoZXJuZXQ6IDN4IEdFICgxIFdBTiArIDIgTEFOKQ0KPj4gLSBFTU1DOiA4R0IgRU1NQyAoS0xN
OEcxR0VURi1CMDQxKQ0KPj4gLSBNaWNyb1NEOiAxeCBtaWNyb1NEIHNsb3QNCj4+IC0gVVNCOiAx
eCBVU0IgMi4wIHBvcnQoVHlwZUEpLDF4IFVTQiAzLjAgcG9ydChUeXBlQykNCj4+IC0gQnV0dG9u
OiAxeCByZXNldCBidXR0b24sMXggc2xpZGUgc3dpdGNoDQo+PiAtIExFRDogM3ggZ3JlZWQgTEVE
DQo+PiAtIFVBUlQ6IDF4IFVBUlQgb24gUENCIChKUDE6IDMuM1YsIFJYLCBUWCwgR05EKQ0KPj4N
Cj4+IFNpZ25lZC1vZmYtYnk6IExpIFpoYW5nIDxsaS56aGFuZ0BnbC1pbmV0LmNvbT4NCj4+IC0t
LQ0KPj4gIHBhY2thZ2UvYm9vdC91Ym9vdC1lbnZ0b29scy9maWxlcy9tdmVidSAgICAgICAgICAg
IHwgIDMgKw0KPj4gIC4uLi9jb3J0ZXhhNTMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3
b3JrICAgIHwgIDMgKy0NCj4+ICAuLi4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtZ2wtbXYxMDAw
LWVtbWMuZHRzICAgICB8IDY4ICsrKysrKysrKysrKysrKysrKysrKysNCj4+ICB0YXJnZXQvbGlu
dXgvbXZlYnUvaW1hZ2UvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICA5ICsrKw0KPj4gIHRh
cmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXhhNTMubWsgICAgICAgICAgICAgIHwgIDkgKysr
DQo+PiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2dlbl9tdmVidV9zZGNhcmRfaW1nLnNoICAg
fCAgNiArKw0KPj4gIC4uLi9tdmVidS9pbWFnZS9nZW5lcmljLWFybTY0LWVtbWMuYm9vdHNjcmlw
dCAgICAgIHwgMTIgKysrKw0KPj4gIDcgZmlsZXMgY2hhbmdlZCwgMTA5IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1
L2ZpbGVzLTQuMTkvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAt
ZW1tYy5kdHMNCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdl
L2dlbmVyaWMtYXJtNjQtZW1tYy5ib290c2NyaXB0DQo+Pg0KPj4gZGlmZiAtLWdpdCBhL3BhY2th
Z2UvYm9vdC91Ym9vdC1lbnZ0b29scy9maWxlcy9tdmVidSBiL3BhY2thZ2UvYm9vdC91Ym9vdC1l
bnZ0b29scy9maWxlcy9tdmVidQ0KPj4gaW5kZXggNzkwMjM4NC4uOWQyM2M3NyAxMDA2NDQNCj4+
IC0tLSBhL3BhY2thZ2UvYm9vdC91Ym9vdC1lbnZ0b29scy9maWxlcy9tdmVidQ0KPj4gKysrIGIv
cGFja2FnZS9ib290L3Vib290LWVudnRvb2xzL2ZpbGVzL212ZWJ1DQo+PiBAQCAtMjQsNiArMjQs
OSBAQCBnbG9iYWxzY2FsZSxlc3ByZXNzb2Jpbi12Ny1lbW1jfFwNCj4+ICBtYXJ2ZWxsLGFybWFk
YTgwNDAtbWNiaW4pDQo+PiAgdWJvb3RlbnZfYWRkX3VjaV9jb25maWcgIi9kZXYvbXRkMCIgIjB4
M2YwMDAwIiAiMHgxMDAwMCIgIjB4MTAwMDAiICIxIg0KPj4gIDs7DQo+PiArZ2xpbmV0LGdsLW12
MTAwMC1lbW1jKQ0KPj4gKyB1Ym9vdGVudl9hZGRfdWNpX2NvbmZpZyAiL2Rldi9tdGQxIiAiMHgw
IiAiMHg4MDAwIiAiMHg4MDAwIiAiMSINCj4+ICsgOzsNCj4+ICBsaW5rc3lzLGNhaW1hbnxcDQo+
PiAgbGlua3N5cyxjb2JyYXxcDQo+PiAgbGlua3N5cyxzaGVsYnkpDQo+PiBkaWZmIC0tZ2l0IGEv
dGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE1My9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25l
dHdvcmsgYi90YXJnZXQvbGludXgvbXZlYnUvY29ydGV4YTUzL2Jhc2UtZmlsZXMvZXRjL2JvYXJk
LmQvMDJfbmV0d29yaw0KPj4gaW5kZXggYmE0YjkzMC4uZTVmZjY2NyAxMDA3NTUNCj4+IC0tLSBh
L3RhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhNTMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9u
ZXR3b3JrDQo+PiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvY29ydGV4YTUzL2Jhc2UtZmlsZXMv
ZXRjL2JvYXJkLmQvMDJfbmV0d29yaw0KPj4gQEAgLTE0LDcgKzE0LDggQEAgY2FzZSAiJGJvYXJk
IiBpbg0KPj4gIGdsb2JhbHNjYWxlLGVzcHJlc3NvYmlufFwNCj4+ICBnbG9iYWxzY2FsZSxlc3By
ZXNzb2Jpbi1lbW1jfFwNCj4+ICBnbG9iYWxzY2FsZSxlc3ByZXNzb2Jpbi12N3xcDQo+PiAtZ2xv
YmFsc2NhbGUsZXNwcmVzc29iaW4tdjctZW1tYykNCj4+ICtnbG9iYWxzY2FsZSxlc3ByZXNzb2Jp
bi12Ny1lbW1jfFwNCj4+ICtnbGluZXQsZ2wtbXYxMDAwLWVtbWMpDQo+PiAgdWNpZGVmX3NldF9p
bnRlcmZhY2VzX2xhbl93YW4gImxhbjAgbGFuMSIgIndhbiINCj4+ICA7Ow0KPj4gIG1hcnZlbGws
YXJtYWRhLTM3MjAtZGJ8XA0KPj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9maWxl
cy00LjE5L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtZ2wtbXYxMDAwLWVtbWMu
ZHRzIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTkvYXJjaC9hcm02NC9ib290L2R0cy9t
YXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMNCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+PiBpbmRleCAwMDAwMDAwLi5mZTAxZGZlDQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi90
YXJnZXQvbGludXgvbXZlYnUvZmlsZXMtNC4xOS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLWdsLW12MTAwMC1lbW1jLmR0cw0KPj4gQEAgLTAsMCArMSw2OCBAQA0KPiAgDQo+IFBs
ZWFzZSBhZGQgYSBsaWNlbnNlIGluIFNQRFggZm9ybWF0LCBhIGNvbW1vbiBvbmUgaXMgZHVhbCBN
SVQgYW5kDQo+IEdQTC0yLjArLg0KPiAgDQo+PiArLyoNCj4+ICsgKiBEZXZpY2UgVHJlZSBmaWxl
IGZvciBHTC5pTmV0IEdMLU1WMTAwMA0KPj4gKyAqLw0KPj4gKw0KPj4gKyNpbmNsdWRlICJhcm1h
ZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHMiDQo+ICANCj4gVGhpcyBpcyBkaWZmZXJlbnQgZGV2aWNl
IGZyb20gRVNQUkVTU09iaW4gYWx0b2dldGhlciwgcGxlYXNlIG1ha2UgaXQNCj4gc3RhbmQtYWxv
bmUgZHRzIChjb3B5IGVzcHJlc3NvYmluIGR0cywgYWRkIHJlcXVpcmVkIG5vZGVzIGFuZA0KPiBy
ZW1vdmUvZGlzYWJsZSBub2RlcyBmb3IgZGV2aWNlcyBub3QgcHJlc2VudCBvbiB0aGUgR0wtTVYx
MDAwKS4NCj4gV291bGQgYmUgZ29vZCB0byBhZGQgYWxsIExFRHMgYW5kIGJ1dHRvbnMgYXMgbm9k
ZXMsIHdoaWNoIHNlZW0gdG8gYmUNCj4gR1BJTyBjb250cm9sbGVkIGFzIGluIHRoaXMgcGljdHVy
ZToNCj4gaHR0cHM6Ly9zdGF0aWMuZ2wtaW5ldC5jb20vZG9jcy9lbi8zL2hhcmR3YXJlL212MTAw
MC9tdjEwMDAucG5nDQo+IGJ1dCB0aGF0J3Mgbm90IG1hbmRhdG9yeS4NCj4gIA0KPj4gKw0KPj4g
Ky8gew0KPj4gKyAgICAgICBtb2RlbCA9ICJHTC5pbmV0IEdMLU1WMTAwMCAoTWFydmVsbCkiOw0K
PiAgDQo+IEluc3RlYWQgb2YgTWFydmVsbCBtb3JlIGFwcm9wcmlhdGUgd291bGQgYmUgQnJ1bWUs
IHNpbmNlIHRoaXMgaXMgdXNlZA0KPiBvbiBZb3VyIHdlYnNpdGUuDQo+ICANCj4+ICsgICAgICAg
Y29tcGF0aWJsZSA9ICJnbGluZXQsZ2wtbXYxMDAwLWVtbWMiOw0KPiAgDQo+IEFkZCBoZXJlIHRv
IGNvbXBhdGlibGUgYXJyYXkgaW4gc2Vjb25kIHBsYWNlICJtYXJ2ZWxsLGFybWFkYTM3MjAiLg0K
PiBBcmUgdGhlcmUgYW55IGJvYXJkcyBpbiBjdXRvbWVycyBoYW5kcyB3aGljaCBkbyBub3QgaGF2
ZSBTRCBjYXJkIHNsb3QNCj4gb3IgZU1NQyBzb2xkZXJlZD8gVGhlcmUgaXMgbm8gcG9pbnQgaW4g
aW5kaWNhdGluZyB0aGUgZU1NQyBwcmVzZW5jZQ0KPiB3aGVuIGFsbCBzb2xkIGJvYXJkcyBhcmUg
dGhlIHNhbWUuIEluIGNhc2Ugb2YgRVNQUkVTU09iaW4gaXQncyB0aGVyZQ0KPiBiZWNhdXNlIHZh
cmlvdXMgaGFyZHdhcmUgdmVyc2lvbnMuIFNvIHBsZWFzZSByZW1vdmUgYWxsIC1lbW1jIHN1ZmZp
eGVzDQo+IGZyb20gZmlsZXMgYW5kIGZpbGUgbmFtZXMgYWNyb3NzIHRoaXMgcGF0Y2ggaWYgdGhh
dCdzIHRoZSBjYXNlLiBPbmUNCj4gZXhlcHRpb24gd291bGQgYmUgaWYgVS1Cb290IHNlYXJjaGVz
IGZvciBleGN0bHkgdGhpcyBuYW1lDQo+IChhcm1hZGEtZ2wtbXYxMDAwLWVtbWMuZHRzKSB3aGVu
IGJvb3RpbmcsIGJ1dCBsb29raW5nIGF0IHRoZSB1c2FnZSBvZg0KPiBib290LnNjciB0aGF0J3Mg
bm90IHRoZSBjYXNlLg0KPiAgDQo+PiArfTsNCj4+ICsNCj4+ICsmc3BpMCB7DQo+PiArICAgICAg
ICBzdGF0dXMgPSAib2theSI7DQo+PiArDQo+PiArICAgICAgICBmbGFzaEAwIHsNCj4+ICsgICAg
ICAgICAgICAgICAgcmVnID0gPDA+Ow0KPj4gKyAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0g
ImplZGVjLHNwaS1ub3IiOw0KPj4gKyAgICAgICAgICAgICAgICBzcGktbWF4LWZyZXF1ZW5jeSA9
IDwxMDQwMDAwMDA+Ow0KPj4gKyAgICAgICAgICAgICAgICBtMjVwLGZhc3QtcmVhZDsNCj4+ICsg
ICAgICAgICAgICAgICAgcGFydGl0aW9ucyB7DQo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsNCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAj
c2l6ZS1jZWxscyA9IDwxPjsNCj4+ICsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBwYXJ0
aXRpb25AMCB7DQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJ1
LWJvb3QiOw0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHhm
MDAwMD47DQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgfTsNCj4+ICsNCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICBwYXJ0aXRpb25AZjAwMDAgew0KPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgbGFiZWwgPSAidS1ib290LWVudiI7DQo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZWcgPSA8MFhmMDAwMCAweDgwMDA+Ow0KPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgIH07DQo+PiArDQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgYXJ0OiBw
YXJ0aXRpb25AZjgwMDAgew0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFi
ZWwgPSAiYXJ0IjsNCj4gIA0KPiBUaGUgbmFtZSBvZiB0aGlzIHBhcnRpdGlvbiBpcyByYXRoZXIg
c3RyYW5nZSwgc2luY2UgdGhlIGhhcmR3YXJlDQo+IHNwZWNpZmljYXRpb24gZG9lc24ndCBtZW50
aW9uIGFueSBQQ0llIG9yIFNESU8gY29ubmVjdGVkIHdpcmVsZXNzDQo+IGNhcmRzIChkb24ndCBr
bm93IGlmIHRoZXJlJ3MgYW55IFVTQiBjYXJkIHdpdGhvdXQgZWVwcm9tKS4gSXMNCj4gdGhlcmUg
YW55IGNhbGlicmF0aW9uIGRhdGEgc3RvcmVkIG9yIG9ubHkgTUFDIGFkZHJlc3MvYWRkcmVzc2Vz
Pw0KPiBEb2VzIFUtQm9vdCBhbHNvIHJlYWQgaW5mb3JtYXRpb24gZnJvbSB0aGlzIHBhcnRpdGlv
bj8gQW55d2F5DQo+IHRoYXQncyBub3QgYSByZW1hcmsgdG8gY2hhbmdlIHRoYXQgbmFtZSwgSSdt
IGp1c3QgY3VyaW91cy4NCj4gIA0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDB4ZjgwMDAgMHg4MDAwPjsNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICB9Ow0K
PiAgDQo+IE9uIHByZXZpb3VzIHBhdGNoLCB0aGVyZSB3ZXJlIGFkZGl0aW9ubmFsIHBhcnRpdGlv
bnMgaW4gZHRzDQo+IHdpdGhvdXQgLWVtbWMgc3VmZml4IDogZHRiLCBmaXJtd2FyZS4gSWYgdGhh
dCBzcGFjZSB3b3VsZCBiZQ0KPiB1bnVzZWQgaXQncyBiZXR0ZXIgdG8gYWRkIHRoZW0gaGVyZSwg
c28gbGF0ZXIgWW91IGNvdWxkDQo+IGludHJvZHVjZSBpbWFnZXMgdGhhdCBjb3VsZCBiZSB3cml0
dGVuIGluIFNQSSBmbGFzaC4NCj4gIA0KPj4gKw0KPj4gKyAgICAgICAgICAgICAgIH07DQo+PiAr
ICAgICAgICB9Ow0KPj4gK307DQo+PiArDQo+PiArJnNkaGNpMSB7DQo+PiArICAgICAgICB3cC1p
bnZlcnRlZDsNCj4+ICsgICAgICAgIGJ1cy13aWR0aCA9IDw0PjsNCj4+ICsgICAgICAgIGNkLWdw
aW9zID0gPCZncGlvbmIgMTcgR1BJT19BQ1RJVkVfTE9XPjsNCj4+ICsgICAgICAgIG1hcnZlbGws
cGFkLXR5cGUgPSAic2QiOw0KPj4gKyAgICAgICAgbm8tMS04LXY7DQo+PiArICAgICAgICB2cW1t
Yy1zdXBwbHkgPSA8JnZjY19zZF9yZWcxPjsNCj4+ICsgICAgICAgIHN0YXR1cyA9ICJva2F5IjsN
Cj4+ICt9Ow0KPj4gKw0KPj4gKw0KPj4gKyZzZGhjaTAgew0KPj4gKyAgICAgICAgYnVzLXdpZHRo
ID0gPDg+Ow0KPj4gKyAgICAgICAgbW1jLWRkci0xXzh2Ow0KPj4gKyAgICAgICAgbW1jLWhzNDAw
LTFfOHY7DQo+PiArICAgICAgICBub24tcmVtb3ZhYmxlOw0KPj4gKyAgICAgICAgbm8tc2Q7DQo+
PiArICAgICAgICBuby1zZGlvOw0KPj4gKyAgICAgICAgbWFydmVsbCxwYWQtdHlwZSA9ICJmaXhl
ZC0xLTh2IjsNCj4+ICsgICAgICAgIHN0YXR1cyA9ICJva2F5IjsNCj4+ICt9Ow0KPj4gKw0KPj4g
KyZldGgwIHsNCj4+ICsgbXRkLW1hYy1hZGRyZXNzID0gPCZhcnQgMHgwPjsNCj4+ICt9Ow0KPj4g
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZSBiL3RhcmdldC9s
aW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQ0KPj4gaW5kZXggZWY5Mjc0OC4uYjg0ODA0OSAxMDA2
NDQNCj4+IC0tLSBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmlsZQ0KPj4gKysrIGIv
dGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlDQo+PiBAQCAtMTA3LDYgKzEwNywxNSBA
QCBkZWZpbmUgRGV2aWNlL0RlZmF1bHQtYXJtNjQNCj4+ICAgIEtFUk5FTCA6PSBrZXJuZWwtYmlu
DQo+PiAgZW5kZWYNCj4+ICANCj4+ICtkZWZpbmUgRGV2aWNlL0RlZmF1bHQtYXJtNjQtZW1tYw0K
PiAgDQo+IFBsZWFzZSBkb24ndCBhZGQgZ2VuZXJpYyBkaWZpbml0aW9uIGZvciBzaW5nbGUgZGV2
aWNlIHdoZXJlIG9ubHkNCj4gaW1hZ2UgbmFtZSBhbmQgcmVjaXBlIGFyZSBzbGlnaHRseSBjaGFu
Z2VkLCBwbGVhc2UgcmVtb3ZlIGl0Lg0KPiAgDQo+PiArICBCT09UX1NDUklQVCA6PSBnZW5lcmlj
LWFybTY0LWVtbWMNCj4+ICsgIERFVklDRV9EVFNfRElSIDo9ICQoRFRTX0RJUikvbWFydmVsbA0K
Pj4gKyAgSU1BR0VTIDo9IGVtbWMuaW1nDQo+PiArICBJTUFHRS9lbW1jLmltZyA6PSBib290LXNj
ciB8IGJvb3QtaW1nLWV4dDQgfCBzZGNhcmQtaW1nLWV4dDQgfCBhcHBlbmQtbWV0YWRhdGENCj4+
ICsgIEtFUk5FTF9OQU1FIDo9IEltYWdlDQo+PiArICBLRVJORUwgOj0ga2VybmVsLWJpbg0KPj4g
K2VuZGVmDQo+PiArDQo+PiAgZGVmaW5lIERldmljZS9OQU5ELTEyOEsNCj4+ICAgIEJMT0NLU0la
RSA6PSAxMjhrDQo+PiAgICBQQUdFU0laRSA6PSAyMDQ4DQo+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5tayBiL3RhcmdldC9saW51eC9tdmVidS9pbWFn
ZS9jb3J0ZXhhNTMubWsNCj4+IGluZGV4IDc3ZjVjNzkuLjRkZmQwYjQgMTAwNjQ0DQo+PiAtLS0g
YS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rDQo+PiArKysgYi90YXJnZXQv
bGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rDQo+PiBAQCAtNjksMyArNjksMTIgQEAgZGVm
aW5lIERldmljZS9tZXRob2RlX3VkcHUNCj4+ICAgIEJPT1RfU0NSSVBUIDo9IHVkcHUNCj4+ICBl
bmRlZg0KPj4gIFRBUkdFVF9ERVZJQ0VTICs9IG1ldGhvZGVfdWRwdQ0KPj4gKw0KPj4gK2RlZmlu
ZSBEZXZpY2UvZ2xpbmV0X2dsLW12MTAwMC1lbW1jDQo+PiArICAkKGNhbGwgRGV2aWNlL0RlZmF1
bHQtYXJtNjQtZW1tYykNCj4gIA0KPiBQbGVhc2UgY2FsbCAiRGVmYXVsdC1hcm02NCIgaGVyZS4g
WW91IGNhbiBvdmVycmlkZSBpbWFnZSByZWNpcGUNCj4gaGVyZSBhZGRpbmcgKGRvbid0IGtub3cg
aWYgdGhhdCdsbCBiZSBuZWNlc3NhcnkpOg0KPiBCT09UX1NDUklQVCA6PSBnZW5lcmljLWFybTY0
LWVtbWMNCj4gSU1BR0VTIDo9IGVtbWMuaW1nDQo+IElNQUdFL2VtbWMuaW1nIDo9IGJvb3Qtc2Ny
IHwgYm9vdC1pbWctZXh0NCB8IHNkY2FyZC1pbWctZXh0NCB8IGFwcGVuZC1tZXRhZGF0YQ0KPiAg
DQo+PiArICBERVZJQ0VfVElUTEUgOj0gR0wuaU5ldCBHTC1NVjEwMDAgRU1NQw0KPj4gKyAgREVW
SUNFX0RUUyA6PSBhcm1hZGEtZ2wtbXYxMDAwLWVtbWMNCj4+ICsgIFNVUFBPUlRFRF9ERVZJQ0VT
IDo9IGdsaW5ldCxnbC1tdjEwMDAtZW1tYw0KPj4gK2VuZGVmDQo+PiArVEFSR0VUX0RFVklDRVMg
Kz0gZ2xpbmV0X2dsLW12MTAwMC1lbW1jDQo+PiArDQo+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L212ZWJ1L2ltYWdlL2dlbl9tdmVidV9zZGNhcmRfaW1nLnNoIGIvdGFyZ2V0L2xpbnV4L212
ZWJ1L2ltYWdlL2dlbl9tdmVidV9zZGNhcmRfaW1nLnNoDQo+PiBpbmRleCA4NDJlNTkxLi41MDAy
OGZlIDEwMDc1NQ0KPj4gLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2dlbl9tdmVidV9z
ZGNhcmRfaW1nLnNoDQo+PiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212ZWJ1
X3NkY2FyZF9pbWcuc2gNCj4+IEBAIC01MSw2ICs1MSwxMiBAQCB3aGlsZSBbICIkIyIgLWdlIDMg
XTsgZG8NCj4+ICBzaGlmdDsgc2hpZnQ7IHNoaWZ0DQo+PiAgZG9uZQ0KPj4gIA0KPj4gK21vZGVs
PScnDQo+PiArbW9kZWw9JChlY2hvICRPVVRGSUxFIHwgZ3JlcCAiZ2wtbXYxMDAwLWVtbWMiKQ0K
Pj4gK1sgIiRtb2RlbCIgIT0gIiIgXSAmJiB7DQo+PiArIHB0Z2VuX2FyZ3M9IiRwdGdlbl9hcmdz
IC10IDgzIC1wIDcwOTM1MDQiDQo+ICANCj4gUGxlYXNlIGRvbid0IGFkZCBkZXZpY2UgaGFja3Mg
aGVyZSBpdCdzIG1lbnQgdG8gYmUgYXMgZ2VuZXJpYw0KPiBhcyBwb3NpYmxlLiBJbnN0ZWFkLCBh
ZGQgcG9zc2liaWxpdHkgdG8gb3ZlcnJpZGUgQ09ORklHX1RBUkdFVF9ST09URlNfUEFSVFNJWkUN
Cj4gYXMgcGFyYW1ldGVyIHRvICJib290LWltZy1leHQ0IiBjb21tYW5kLg0KPiAgDQo+PiArfQ0K
Pj4gKw0KPj4gIGhlYWQ9MTYNCj4+ICBzZWN0PTYzDQo+PiAgDQo+PiBkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L212ZWJ1L2ltYWdlL2dlbmVyaWMtYXJtNjQtZW1tYy5ib290c2NyaXB0IGIvdGFy
Z2V0L2xpbnV4L212ZWJ1L2ltYWdlL2dlbmVyaWMtYXJtNjQtZW1tYy5ib290c2NyaXB0DQo+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMC4uNGRlNGQzOQ0KPj4gLS0tIC9k
ZXYvbnVsbA0KPj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2dlbmVyaWMtYXJtNjQt
ZW1tYy5ib290c2NyaXB0DQo+PiBAQCAtMCwwICsxLDEyIEBADQo+PiArc2V0ZW52IGJvb3Rhcmdz
ICJyb290PS9kZXYvbW1jYmxrMHAyIHJ3IHJvb3R3YWl0Ig0KPj4gKw0KPj4gK2lmIHRlc3QgLW4g
IiR7Y29uc29sZX0iOyB0aGVuDQo+PiArIHNldGVudiBib290YXJncyAiJHtib290YXJnc30gJHtj
b25zb2xlfSINCj4+ICtmaQ0KPj4gKw0KPj4gK3NldGVudiBtbWNkZXYgMA0KPiAgDQo+IERvZXMg
dGhlIFUtQm9vdCBvbmx5IGxvYWQgImJvb3Quc2NyIiBmcm9tIGZpcnN0IG1tY2Rldg0KPiAoSSBh
c3N1bWUgdGhhdCdzIGVNTUMpIG9yIGFsc28gc2VhcmNoZXMgZm9yIGl0IG9uIFNEIGNhcmQ/IElm
DQo+IHNlYXJjaGVkIG9uIGJvdGggZGV2aWNlcywgdGhlcmUncyBubyBuZWVkIHRvIGFkZCB0aGlz
IGZpbGUsIHVzZQ0KPiBnZW5lcmljLWFybTY0LmJvb3RzY3JpcHQuIFRoYXQgd2F5IGltYWdlIHdp
bGwgYmUgYXBwbGljYWJsZSB0bw0KPiBib3RoIHN0b3JhZ2UgbWVkaXVtcywganVzdCB3cml0ZSB0
aGlzIGluZm9ybWF0aW9uIGluIGNvbW1pdA0KPiBtZXNzYWdlIHRvIGluZm9ybSB1c2Vycy4gSWYg
VS1Cb290IHNlYXJjaGVzIGZvciAiYm9vdC5zY3IiIG9ubHkNCj4gb24gZU1NQywgdGhlbiByZW5h
bWUgdGhpcyBmaWxlIHRvIGdsLW12MTAwMC5ib290c2NyaXB0IGFuZCBzZXQNCj4gaXQgaW4gQk9P
VF9TQ1JJUFQgdmFyaWFibGUuDQo+PiArDQo+PiArbG9hZCBtbWMgJHttbWNkZXZ9OjEgJHtmZHRf
YWRkcn0gQERUQkAuZHRiDQo+PiArbG9hZCBtbWMgJHttbWNkZXZ9OjEgJHtrZXJuZWxfYWRkcn0g
SW1hZ2UNCj4+ICsNCj4+ICtib290aSAke2tlcm5lbF9hZGRyfSAtICR7ZmR0X2FkZHJ9DQo+Pg0K
PiAgDQo+IFJlZ2FyZHMsIFRvbWFzeg0KPiANCiANCiANCi0tIA0KVE1ODQogDQo=

------=_001_NextPart851633377806_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }p { margin-top: 0px; margin-botto=
m: 0px; }body { font-size: 10.5pt; font-family: =E5=BE=AE=E8=BD=AF=E9=9B=
=85=E9=BB=91; color: rgb(0, 0, 0); line-height: 1.5; }</style></head><body=
>=0A<div><span></span>Hi Tomasz,</div><div><div style=3D"font-family: =E5=
=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Tahoma; line-height: normal;">Crucial q=
uestion is left unanswered: Does the U-Boot by default boot OpenWrt from</=
div><div style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Tahom=
a; line-height: normal;">eMMC only or eMMC and SD card? And if boot from b=
oth, which is booted first?</div></div><div style=3D"font-family: =E5=BE=
=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Tahoma; line-height: normal;"><span style=
=3D"font-size: 15px;"><font color=3D"#ff0000">---&gt; Boot openwrt from EM=
MC by default. If boot from both,Emmc is booted first.</font></span></div>=
=0A<div><br></div><div>Regards,Li</div><hr style=3D"width: 210px; height: =
1px;" color=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><p class=
=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-fa=
mily: 'Times New Roman', serif; text-align: justify; line-height: 15.75pt;=
"><b><span style=3D"font-size: 11.5pt; font-family: 'Segoe UI', sans-serif=
;">Li Zhang&nbsp;</span></b><b><span style=3D"font-size: 8.5pt; font-famil=
y: 'Segoe UI', sans-serif; color: gray;">| Software Engineer</span></b><sp=
an style=3D"font-size: 11pt; font-family: =E7=AD=89=E7=BA=BF, serif;"><o:p=
></o:p></span></p><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt=
; font-size: 12pt; font-family: 'Times New Roman', serif; text-align: just=
ify; line-height: 15.75pt;"><b><u><span style=3D"font-size: 8.5pt; font-fa=
mily: 'Segoe UI', sans-serif; color: rgb(0, 0, 238);"><font color=3D"#8000=
80">li.zhang<a href=3D"mailto:luoweilong@gl-inet.com" style=3D"text-decora=
tion: none !important;">@gl-inet.com</a></font></span></u></b><b><span sty=
le=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-serif; color: gray;"=
>&nbsp;</span></b></p><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.00=
01pt; font-size: 12pt; font-family: 'Times New Roman', serif; text-align: =
justify; line-height: 15.75pt;"><b><span style=3D"font-size: 11.5pt; font-=
family: Arial, sans-serif; color: gray;">GL.iNet &nbsp;</span></b><i><span=
 style=3D"font-size: 8.5pt; font-family: Arial, sans-serif; color: gray;">=
WiFi for Things</span></i><span style=3D"font-size: 11pt; font-family: =E7=
=AD=89=E7=BA=BF, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" styl=
e=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Ro=
man', serif; text-align: justify; line-height: 15.75pt;"><span style=3D"fo=
nt-size: 8.5pt; font-family: 'Segoe UI', sans-serif; color: gray;">Website=
:&nbsp;</span><span style=3D"font-size: 8.5pt; font-family: 'Segoe UI Semi=
light', sans-serif; color: gray;"><a href=3D"https://gl-inet.com/" style=
=3D"text-decoration: none !important; color: purple;"><span style=3D"font-=
family: 'Segoe UI', sans-serif;">www.gl-inet.com</span></a></span><span st=
yle=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-serif; color: rgb(5=
1, 51, 51);">&nbsp;</span><span style=3D"font-size: 8.5pt; font-family: 'S=
egoe UI', sans-serif; color: gray;">&nbsp; | &nbsp;&nbsp;LinkedIn:&nbsp;</=
span><u><span style=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-ser=
if; color: rgb(0, 0, 238);"><a href=3D"https://www.linkedin.com/company/gl=
-inet.com/" style=3D"text-decoration: none !important; color: purple;">gl-=
inet.com</a></span></u><span style=3D"font-size: 8.5pt; font-family: 'Sego=
e UI', sans-serif; color: gray;">&nbsp;&nbsp;&nbsp;| &nbsp; Tel: +86-755-8=
660-6126</span><span style=3D"font-size: 11pt; font-family: =E7=AD=89=E7=
=BA=BF, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"marg=
in: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', ser=
if; text-align: justify; line-height: 15.75pt;"><span style=3D"font-size: =
8.5pt; font-family: 'Segoe UI', sans-serif; color: gray;">Room&nbsp;305-30=
6, Skyworth Digital Building , Shiyan Street, Baoan District, Shenzhen, Ch=
ina</span><span style=3D"font-size: 11pt; font-family: =E7=AD=89=E7=BA=BF,=
 serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin: 0in=
 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif; tex=
t-align: justify; line-height: 15.75pt;"><b><span style=3D"font-size: 7.5p=
t; font-family: 'Segoe UI', sans-serif; color: gray;">Email Disclaimer:</s=
pan></b><span style=3D"font-size: 7.5pt; font-family: 'Segoe UI', sans-ser=
if; color: gray;">&nbsp;The content of this email is confidential and inte=
nded for the recipient specified in message only. It is strictly forbidden=
 to share any part of this message with any third party, without a written=
 consent of the sender. If you received this message by mistake, please re=
ply to this message and follow with its deletion, so that we can ensure su=
ch a mistake does not occur in the future.</span></p></span></div>=0A<bloc=
kquote style=3D"margin-Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><=
div>&nbsp;</div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;p=
adding:3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: =
8px; FONT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef=
; PADDING-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D=
"mailto:tomek_n@o2.pl">Tomasz Maciej Nowak</a></div><div><b>Date:</b>&nbsp=
;2020-04-15&nbsp;02:53</div><div><b>To:</b>&nbsp;<a href=3D"mailto:li.zhan=
g@gl-inet.com">Li.zhang</a>; <a href=3D"mailto:openwrt-devel@lists.openwrt=
.org">openwrt-devel</a></div><div><b>Subject:</b>&nbsp;Re: [OpenWrt-Devel]=
 [PATCH] mvebu: add support for GL.iNet GL-MV1000</div></div></div><div><d=
iv>W dniu 14.04.2020 o&nbsp;06:20, Li.zhang pisze:</div>=0A<div>&gt; Hi To=
masz,</div>=0A<div>&gt; Thank you very much for you correction.</div>=0A<d=
iv>&gt; </div>=0A<div>&gt;&gt; +};</div>=0A<div>&gt;&gt; +</div>=0A<div>&g=
t;&gt; +&amp;spi0 {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; status =3D "okay";</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&g=
t; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flash@0 {</div>=0A<div>&gt;=
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; compatible =3D "jedec,spi-nor";</div>=0A<div>&gt;&gt; +&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; spi-max-frequency =3D &lt;104000000&gt;;</div>=0A<div>&gt;&gt; +&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; m25p,fast-read;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; parti=
tions {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; compatible =3D "fixed-partitions";</div>=0A<div>&gt;=
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #ad=
dress-cells =3D &lt;1&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #size-cells =3D &lt;1&gt;;</div>=
=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partition@0 {</div>=0A<div>&gt;&gt; +&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot";</div>=0A<div>&gt;&g=
t; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0 0xf0000&gt;;</div=
>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; };</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partition@f0000 {</div>=
=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot=
-env";</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =
=3D &lt;0Xf0000 0x8000&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt; +</div>=
=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; art: partition@f8000 {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; label =3D "art";</div>=0A<div>&gt; </div>=0A<div>&gt; =
The name of this partition is rather strange, since the hardware</div>=0A<=
div>&gt; specification doesn't mention any PCIe or SDIO connected wireless=
</div>=0A<div>&gt; cards (don't know if there's any USB card without eepro=
m). Is</div>=0A<div>&gt; there any calibration data stored or only MAC add=
ress/addresses?</div>=0A<div>&gt; Does U-Boot also read information from t=
his partition? Anyway</div>=0A<div>&gt; that's not a remark to change that=
 name, I'm just curious.</div>=0A<div>&gt; ---&gt;MAC,SN,DDNS and ther pri=
vate information are stored in the art.</div>=0A<div>&nbsp;</div>=0A<div>O=
k, still that name is weird, but that's matter of taste.</div>=0A<div>&nbs=
p;</div>=0A<div>&gt; </div>=0A<div>&gt; On previous patch, there were addi=
tionnal partitions in dts</div>=0A<div>&gt; without -emmc suffix : dtb, fi=
rmware. If that space would be</div>=0A<div>&gt; unused it's better to add=
 them here, so later You could</div>=0A<div>&gt; introduce images that cou=
ld be written in SPI flash.</div>=0A<div>&gt; ---&gt;There is a short back=
up firmware in additionnal partitions of flash,normally it's not visible.I=
n addition The offical firmware is stored in EMMC,So the previous file(gl-=
mv1000.dts) was deleted.</div>=0A<div>&nbsp;</div>=0A<div>Then it would be=
 better to specify those partitions, as some users could simply</div>=0A<d=
iv>overwrite this thinking that's unoccupied space.</div>=0A<div>&nbsp;</d=
iv>=0A<div>&gt; </div>=0A<div>&gt;&gt; +define Device/Default-arm64-emmc</=
div>=0A<div>&gt; </div>=0A<div>&gt; Please don't add generic difinition fo=
r single device where only</div>=0A<div>&gt; image name and recipe are sli=
ghtly changed, please remove it.</div>=0A<div>&gt; </div>=0A<div>&gt;&gt; =
+&nbsp; BOOT_SCRIPT :=3D generic-arm64-emmc</div>=0A<div>&gt;&gt; +&nbsp; =
DEVICE_DTS_DIR :=3D $(DTS_DIR)/marvell</div>=0A<div>&gt;&gt; +&nbsp; IMAGE=
S :=3D emmc.img</div>=0A<div>&gt;&gt; +&nbsp; IMAGE/emmc.img :=3D boot-scr=
 | boot-img-ext4 | sdcard-img-ext4 | append-metadata</div>=0A<div>&gt;&gt;=
 +&nbsp; KERNEL_NAME :=3D Image</div>=0A<div>&gt;&gt; +&nbsp; KERNEL :=3D =
kernel-bin</div>=0A<div>&gt;&gt; +endef</div>=0A<div>&gt;&gt; +</div>=0A<d=
iv>&gt;&gt;&nbsp; define Device/NAND-128K</div>=0A<div>&gt;&gt;&nbsp;&nbsp=
;&nbsp; BLOCKSIZE :=3D 128k</div>=0A<div>&gt;&gt;&nbsp;&nbsp;&nbsp; PAGESI=
ZE :=3D 2048</div>=0A<div>&gt;&gt; diff --git a/target/linux/mvebu/image/c=
ortexa53.mk b/target/linux/mvebu/image/cortexa53.mk</div>=0A<div>&gt;&gt; =
index 77f5c79..4dfd0b4 100644</div>=0A<div>&gt;&gt; --- a/target/linux/mve=
bu/image/cortexa53.mk</div>=0A<div>&gt;&gt; +++ b/target/linux/mvebu/image=
/cortexa53.mk</div>=0A<div>&gt;&gt; @@ -69,3 +69,12 @@ define Device/metho=
de_udpu</div>=0A<div>&gt;&gt;&nbsp;&nbsp;&nbsp; BOOT_SCRIPT :=3D udpu</div=
>=0A<div>&gt;&gt;&nbsp; endef</div>=0A<div>&gt;&gt;&nbsp; TARGET_DEVICES +=
=3D methode_udpu</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +define Dev=
ice/glinet_gl-mv1000-emmc</div>=0A<div>&gt;&gt; +&nbsp; $(call Device/Defa=
ult-arm64-emmc)</div>=0A<div>&gt; </div>=0A<div>&gt; Please call "Default-=
arm64" here. You can override image recipe</div>=0A<div>&gt; here adding (=
don't know if that'll be necessary):</div>=0A<div>&gt; ---&gt;1,It is used=
 to distinguish between sd card and emmc.So It can let users better recong=
inze that it can be applied to EMMC rather than just sd card.</div>=0A<div=
>&nbsp;</div>=0A<div>But with this patch, the image has in name "emmc" onl=
y, how would users know that</div>=0A<div>they can use it for SD card? If =
both images are interchangable You have to extend</div>=0A<div>commit mess=
age with instuctions, that single image can be used on both mediums</div>=
=0A<div>and how to use them (the SD card is rather obvious, but more expla=
nation is</div>=0A<div>needed for the eMMC).</div>=0A<div>Crucial question=
 is left unanswered: Does the U-Boot by default boot OpenWrt from</div>=0A=
<div>eMMC only or eMMC and SD card? And if boot from both, which is booted=
 first?</div>=0A<div>&nbsp;</div>=0A<div>&gt; ---&gt;2,Currently,The uboot=
 does not support 'firmware-gzip' upgrades .So it can not recover system v=
ia uboot, when the user's EMMC firmware fails to boot.</div>=0A<div>&nbsp;=
</div>=0A<div>Ok.</div>=0A<div>&nbsp;</div>=0A<div>&gt; ---&gt;3,Could i c=
reate another file(gl-mv1000.mk) to include 'Default-arm64-emmc'?</div>=0A=
<div>&nbsp;</div>=0A<div>No, please don't. You can always override IMAGES =
variable and add multiple IMAGE recipes in device</div>=0A<div>definition,=
 there is no reason to add a common stub used ONLY by one device.</div>=0A=
<div>&nbsp;</div>=0A<div>&gt; </div>=0A<div>&gt; </div>=0A<div>&gt; Thank =
you!</div>=0A<div>&gt; </div>=0A<div>&gt; </div>=0A<div>&gt; Li Zhang | So=
ftware Engineer</div>=0A<div>&gt; li.zhang@gl-inet.com </div>=0A<div>&gt; =
GL.iNet&nbsp; WiFi for Things</div>=0A<div>&gt; Website: www.gl-inet.com&n=
bsp;&nbsp; |&nbsp;&nbsp; LinkedIn: gl-inet.com&nbsp;&nbsp; |&nbsp;&nbsp; T=
el: +86-755-8660-6126</div>=0A<div>&gt; Room 305-306, Skyworth Digital Bui=
lding , Shiyan Street, Baoan District, Shenzhen, China</div>=0A<div>&gt; E=
mail Disclaimer: The content of this email is confidential and intended fo=
r the recipient specified in message only. It is strictly forbidden to sha=
re any part of this message with any third party, without a written consen=
t of the sender. If you received this message by mistake, please reply to =
this message and follow with its deletion, so that we can ensure such a mi=
stake does not occur in the future.</div>=0A<div>&gt;&nbsp; </div>=0A<div>=
&gt; From: Tomasz Maciej Nowak</div>=0A<div>&gt; Date: 2020-04-14 04:14</d=
iv>=0A<div>&gt; To: Li Zhang; openwrt-devel</div>=0A<div>&gt; Subject: Re:=
 [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000</div>=0A=
<div>&gt; Hi Li Zhang.</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; This ver=
sion looks much better than the first one,</div>=0A<div>&gt; some comments=
 inline.</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; W dniu 13.04.2020 o 12=
:26, Li Zhang pisze:</div>=0A<div>&gt;&gt; This patch adds supports for GL=
-MV1000.</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt; Specification:</div>=
=0A<div>&gt;&gt; - SOC: Marvell Armada 88F3720 (1GHz)</div>=0A<div>&gt;&gt=
; - Flash: 16MB (W25Q128FWSIG)</div>=0A<div>&gt;&gt; - RAM: 1GB DDR4</div>=
=0A<div>&gt;&gt; - Ethernet: 3x GE (1 WAN + 2 LAN)</div>=0A<div>&gt;&gt; -=
 EMMC: 8GB EMMC (KLM8G1GETF-B041)</div>=0A<div>&gt;&gt; - MicroSD: 1x micr=
oSD slot</div>=0A<div>&gt;&gt; - USB: 1x USB 2.0 port(TypeA),1x USB 3.0 po=
rt(TypeC)</div>=0A<div>&gt;&gt; - Button: 1x reset button,1x slide switch<=
/div>=0A<div>&gt;&gt; - LED: 3x greed LED</div>=0A<div>&gt;&gt; - UART: 1x=
 UART on PCB (JP1: 3.3V, RX, TX, GND)</div>=0A<div>&gt;&gt;</div>=0A<div>&=
gt;&gt; Signed-off-by: Li Zhang &lt;li.zhang@gl-inet.com&gt;</div>=0A<div>=
&gt;&gt; ---</div>=0A<div>&gt;&gt;&nbsp; package/boot/uboot-envtools/files=
/mvebu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |=
&nbsp; 3 +</div>=0A<div>&gt;&gt;&nbsp; .../cortexa53/base-files/etc/board.=
d/02_network&nbsp;&nbsp;&nbsp; |&nbsp; 3 +-</div>=0A<div>&gt;&gt;&nbsp; ..=
./boot/dts/marvell/armada-gl-mv1000-emmc.dts&nbsp;&nbsp;&nbsp;&nbsp; | 68 =
++++++++++++++++++++++</div>=0A<div>&gt;&gt;&nbsp; target/linux/mvebu/imag=
e/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 9 +++</div>=0A<div>&gt;&gt;=
&nbsp; target/linux/mvebu/image/cortexa53.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 9 +++</div>=0A<di=
v>&gt;&gt;&nbsp; target/linux/mvebu/image/gen_mvebu_sdcard_img.sh&nbsp;&nb=
sp; |&nbsp; 6 ++</div>=0A<div>&gt;&gt;&nbsp; .../mvebu/image/generic-arm64=
-emmc.bootscript&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 12 ++++</div>=0A<div>&gt;=
&gt;&nbsp; 7 files changed, 109 insertions(+), 1 deletion(-)</div>=0A<div>=
&gt;&gt;&nbsp; create mode 100644 target/linux/mvebu/files-4.19/arch/arm64=
/boot/dts/marvell/armada-gl-mv1000-emmc.dts</div>=0A<div>&gt;&gt;&nbsp; cr=
eate mode 100644 target/linux/mvebu/image/generic-arm64-emmc.bootscript</d=
iv>=0A<div>&gt;&gt;</div>=0A<div>&gt;&gt; diff --git a/package/boot/uboot-=
envtools/files/mvebu b/package/boot/uboot-envtools/files/mvebu</div>=0A<di=
v>&gt;&gt; index 7902384..9d23c77 100644</div>=0A<div>&gt;&gt; --- a/packa=
ge/boot/uboot-envtools/files/mvebu</div>=0A<div>&gt;&gt; +++ b/package/boo=
t/uboot-envtools/files/mvebu</div>=0A<div>&gt;&gt; @@ -24,6 +24,9 @@ globa=
lscale,espressobin-v7-emmc|\</div>=0A<div>&gt;&gt;&nbsp; marvell,armada804=
0-mcbin)</div>=0A<div>&gt;&gt;&nbsp; ubootenv_add_uci_config "/dev/mtd0" "=
0x3f0000" "0x10000" "0x10000" "1"</div>=0A<div>&gt;&gt;&nbsp; ;;</div>=0A<=
div>&gt;&gt; +glinet,gl-mv1000-emmc)</div>=0A<div>&gt;&gt; + ubootenv_add_=
uci_config "/dev/mtd1" "0x0" "0x8000" "0x8000" "1"</div>=0A<div>&gt;&gt; +=
 ;;</div>=0A<div>&gt;&gt;&nbsp; linksys,caiman|\</div>=0A<div>&gt;&gt;&nbs=
p; linksys,cobra|\</div>=0A<div>&gt;&gt;&nbsp; linksys,shelby)</div>=0A<di=
v>&gt;&gt; diff --git a/target/linux/mvebu/cortexa53/base-files/etc/board.=
d/02_network b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_netw=
ork</div>=0A<div>&gt;&gt; index ba4b930..e5ff667 100755</div>=0A<div>&gt;&=
gt; --- a/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network</=
div>=0A<div>&gt;&gt; +++ b/target/linux/mvebu/cortexa53/base-files/etc/boa=
rd.d/02_network</div>=0A<div>&gt;&gt; @@ -14,7 +14,8 @@ case "$board" in</=
div>=0A<div>&gt;&gt;&nbsp; globalscale,espressobin|\</div>=0A<div>&gt;&gt;=
&nbsp; globalscale,espressobin-emmc|\</div>=0A<div>&gt;&gt;&nbsp; globalsc=
ale,espressobin-v7|\</div>=0A<div>&gt;&gt; -globalscale,espressobin-v7-emm=
c)</div>=0A<div>&gt;&gt; +globalscale,espressobin-v7-emmc|\</div>=0A<div>&=
gt;&gt; +glinet,gl-mv1000-emmc)</div>=0A<div>&gt;&gt;&nbsp; ucidef_set_int=
erfaces_lan_wan "lan0 lan1" "wan"</div>=0A<div>&gt;&gt;&nbsp; ;;</div>=0A<=
div>&gt;&gt;&nbsp; marvell,armada-3720-db|\</div>=0A<div>&gt;&gt; diff --g=
it a/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-m=
v1000-emmc.dts b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell=
/armada-gl-mv1000-emmc.dts</div>=0A<div>&gt;&gt; new file mode 100644</div=
>=0A<div>&gt;&gt; index 0000000..fe01dfe</div>=0A<div>&gt;&gt; --- /dev/nu=
ll</div>=0A<div>&gt;&gt; +++ b/target/linux/mvebu/files-4.19/arch/arm64/bo=
ot/dts/marvell/armada-gl-mv1000-emmc.dts</div>=0A<div>&gt;&gt; @@ -0,0 +1,=
68 @@</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; Please add a license in S=
PDX format, a common one is dual MIT and</div>=0A<div>&gt; GPL-2.0+.</div>=
=0A<div>&gt;&nbsp; </div>=0A<div>&gt;&gt; +/*</div>=0A<div>&gt;&gt; + * De=
vice Tree file for GL.iNet GL-MV1000</div>=0A<div>&gt;&gt; + */</div>=0A<d=
iv>&gt;&gt; +</div>=0A<div>&gt;&gt; +#include "armada-3720-espressobin.dts=
"</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; This is different device from=
 ESPRESSObin altogether, please make it</div>=0A<div>&gt; stand-alone dts =
(copy espressobin dts, add required nodes and</div>=0A<div>&gt; remove/dis=
able nodes for devices not present on the GL-MV1000).</div>=0A<div>&gt; Wo=
uld be good to add all LEDs and buttons as nodes, which seem to be</div>=
=0A<div>&gt; GPIO controlled as in this picture:</div>=0A<div>&gt; https:/=
/static.gl-inet.com/docs/en/3/hardware/mv1000/mv1000.png</div>=0A<div>&gt;=
 but that's not mandatory.</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt;&gt; =
+</div>=0A<div>&gt;&gt; +/ {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; model =3D "GL.inet GL-MV1000 (Marvell)";</div>=0A<div>&gt;&=
nbsp; </div>=0A<div>&gt; Instead of Marvell more apropriate would be Brume=
, since this is used</div>=0A<div>&gt; on Your website.</div>=0A<div>&gt;&=
nbsp; </div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compati=
ble =3D "glinet,gl-mv1000-emmc";</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt=
; Add here to compatible array in second place "marvell,armada3720".</div>=
=0A<div>&gt; Are there any boards in cutomers hands which do not have SD c=
ard slot</div>=0A<div>&gt; or eMMC soldered? There is no point in indicati=
ng the eMMC presence</div>=0A<div>&gt; when all sold boards are the same. =
In case of ESPRESSObin it's there</div>=0A<div>&gt; because various hardwa=
re versions. So please remove all -emmc suffixes</div>=0A<div>&gt; from fi=
les and file names across this patch if that's the case. One</div>=0A<div>=
&gt; exeption would be if U-Boot searches for exctly this name</div>=0A<di=
v>&gt; (armada-gl-mv1000-emmc.dts) when booting, but looking at the usage =
of</div>=0A<div>&gt; boot.scr that's not the case.</div>=0A<div>&gt;&nbsp;=
 </div>=0A<div>&gt;&gt; +};</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; =
+&amp;spi0 {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; status =3D "okay";</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flash@0 {</div>=0A<div>&gt;&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; reg =3D &lt;0&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 compatible =3D "jedec,spi-nor";</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s=
pi-max-frequency =3D &lt;104000000&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; m25p,fast-read;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partitions {=
</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compatible =3D "fixed-partitions";</div>=0A<div>&gt;&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #address-c=
ells =3D &lt;1&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #size-cells =3D &lt;1&gt;;</div>=0A<div>=
&gt;&gt; +</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; partition@0 {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot";</div>=0A<div>&gt;&gt; +&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0 0xf0000&gt;;</div>=0A<div=
>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; };</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partition@f0000 {</div>=0A<div>=
&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot-env";</=
div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
Xf0000 0x8000&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt; +</div>=0A<div>&=
gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
art: partition@f8000 {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; label =3D "art";</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; The=
 name of this partition is rather strange, since the hardware</div>=0A<div=
>&gt; specification doesn't mention any PCIe or SDIO connected wireless</d=
iv>=0A<div>&gt; cards (don't know if there's any USB card without eeprom).=
 Is</div>=0A<div>&gt; there any calibration data stored or only MAC addres=
s/addresses?</div>=0A<div>&gt; Does U-Boot also read information from this=
 partition? Anyway</div>=0A<div>&gt; that's not a remark to change that na=
me, I'm just curious.</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt;&gt; +&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0xf8000 0x8000&gt;;</div>=
=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; };</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; On previous patch, =
there were additionnal partitions in dts</div>=0A<div>&gt; without -emmc s=
uffix : dtb, firmware. If that space would be</div>=0A<div>&gt; unused it'=
s better to add them here, so later You could</div>=0A<div>&gt; introduce =
images that could be written in SPI flash.</div>=0A<div>&gt;&nbsp; </div>=
=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&=
gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt; +=
};</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&amp;sdhci1 {</div>=0A<d=
iv>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wp-inverted;</div>=
=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bus-width =3D=
 &lt;4&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; cd-gpios =3D &lt;&amp;gpionb 17 GPIO_ACTIVE_LOW&gt;;</div>=0A<div>&gt;=
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; marvell,pad-type =3D "sd"=
;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no-1-8=
-v;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vqmm=
c-supply =3D &lt;&amp;vcc_sd_reg1&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "okay";</div>=0A<div>&gt;&gt; +}=
;</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +&=
amp;sdhci0 {</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; bus-width =3D &lt;8&gt;;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; mmc-ddr-1_8v;</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; mmc-hs400-1_8v;</div>=0A<div>&gt;&gt; +&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; non-removable;</div>=0A<div>&gt;&gt; +=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no-sd;</div>=0A<div>&gt;&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no-sdio;</div>=0A<div>&gt;&gt; +=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; marvell,pad-type =3D "fixed-1-8=
v";</div>=0A<div>&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stat=
us =3D "okay";</div>=0A<div>&gt;&gt; +};</div>=0A<div>&gt;&gt; +</div>=0A<=
div>&gt;&gt; +&amp;eth0 {</div>=0A<div>&gt;&gt; + mtd-mac-address =3D &lt;=
&amp;art 0x0&gt;;</div>=0A<div>&gt;&gt; +};</div>=0A<div>&gt;&gt; diff --g=
it a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile=
</div>=0A<div>&gt;&gt; index ef92748..b848049 100644</div>=0A<div>&gt;&gt;=
 --- a/target/linux/mvebu/image/Makefile</div>=0A<div>&gt;&gt; +++ b/targe=
t/linux/mvebu/image/Makefile</div>=0A<div>&gt;&gt; @@ -107,6 +107,15 @@ de=
fine Device/Default-arm64</div>=0A<div>&gt;&gt;&nbsp;&nbsp;&nbsp; KERNEL :=
=3D kernel-bin</div>=0A<div>&gt;&gt;&nbsp; endef</div>=0A<div>&gt;&gt;&nbs=
p; </div>=0A<div>&gt;&gt; +define Device/Default-arm64-emmc</div>=0A<div>&=
gt;&nbsp; </div>=0A<div>&gt; Please don't add generic difinition for singl=
e device where only</div>=0A<div>&gt; image name and recipe are slightly c=
hanged, please remove it.</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt;&gt; +=
&nbsp; BOOT_SCRIPT :=3D generic-arm64-emmc</div>=0A<div>&gt;&gt; +&nbsp; D=
EVICE_DTS_DIR :=3D $(DTS_DIR)/marvell</div>=0A<div>&gt;&gt; +&nbsp; IMAGES=
 :=3D emmc.img</div>=0A<div>&gt;&gt; +&nbsp; IMAGE/emmc.img :=3D boot-scr =
| boot-img-ext4 | sdcard-img-ext4 | append-metadata</div>=0A<div>&gt;&gt; =
+&nbsp; KERNEL_NAME :=3D Image</div>=0A<div>&gt;&gt; +&nbsp; KERNEL :=3D k=
ernel-bin</div>=0A<div>&gt;&gt; +endef</div>=0A<div>&gt;&gt; +</div>=0A<di=
v>&gt;&gt;&nbsp; define Device/NAND-128K</div>=0A<div>&gt;&gt;&nbsp;&nbsp;=
&nbsp; BLOCKSIZE :=3D 128k</div>=0A<div>&gt;&gt;&nbsp;&nbsp;&nbsp; PAGESIZ=
E :=3D 2048</div>=0A<div>&gt;&gt; diff --git a/target/linux/mvebu/image/co=
rtexa53.mk b/target/linux/mvebu/image/cortexa53.mk</div>=0A<div>&gt;&gt; i=
ndex 77f5c79..4dfd0b4 100644</div>=0A<div>&gt;&gt; --- a/target/linux/mveb=
u/image/cortexa53.mk</div>=0A<div>&gt;&gt; +++ b/target/linux/mvebu/image/=
cortexa53.mk</div>=0A<div>&gt;&gt; @@ -69,3 +69,12 @@ define Device/method=
e_udpu</div>=0A<div>&gt;&gt;&nbsp;&nbsp;&nbsp; BOOT_SCRIPT :=3D udpu</div>=
=0A<div>&gt;&gt;&nbsp; endef</div>=0A<div>&gt;&gt;&nbsp; TARGET_DEVICES +=
=3D methode_udpu</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +define Dev=
ice/glinet_gl-mv1000-emmc</div>=0A<div>&gt;&gt; +&nbsp; $(call Device/Defa=
ult-arm64-emmc)</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; Please call "De=
fault-arm64" here. You can override image recipe</div>=0A<div>&gt; here ad=
ding (don't know if that'll be necessary):</div>=0A<div>&gt; BOOT_SCRIPT :=
=3D generic-arm64-emmc</div>=0A<div>&gt; IMAGES :=3D emmc.img</div>=0A<div=
>&gt; IMAGE/emmc.img :=3D boot-scr | boot-img-ext4 | sdcard-img-ext4 | app=
end-metadata</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt;&gt; +&nbsp; DEVICE=
_TITLE :=3D GL.iNet GL-MV1000 EMMC</div>=0A<div>&gt;&gt; +&nbsp; DEVICE_DT=
S :=3D armada-gl-mv1000-emmc</div>=0A<div>&gt;&gt; +&nbsp; SUPPORTED_DEVIC=
ES :=3D glinet,gl-mv1000-emmc</div>=0A<div>&gt;&gt; +endef</div>=0A<div>&g=
t;&gt; +TARGET_DEVICES +=3D glinet_gl-mv1000-emmc</div>=0A<div>&gt;&gt; +<=
/div>=0A<div>&gt;&gt; diff --git a/target/linux/mvebu/image/gen_mvebu_sdca=
rd_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh</div>=0A<div>=
&gt;&gt; index 842e591..50028fe 100755</div>=0A<div>&gt;&gt; --- a/target/=
linux/mvebu/image/gen_mvebu_sdcard_img.sh</div>=0A<div>&gt;&gt; +++ b/targ=
et/linux/mvebu/image/gen_mvebu_sdcard_img.sh</div>=0A<div>&gt;&gt; @@ -51,=
6 +51,12 @@ while [ "$#" -ge 3 ]; do</div>=0A<div>&gt;&gt;&nbsp; shift; sh=
ift; shift</div>=0A<div>&gt;&gt;&nbsp; done</div>=0A<div>&gt;&gt;&nbsp; </=
div>=0A<div>&gt;&gt; +model=3D''</div>=0A<div>&gt;&gt; +model=3D$(echo $OU=
TFILE | grep "gl-mv1000-emmc")</div>=0A<div>&gt;&gt; +[ "$model" !=3D "" ]=
 &amp;&amp; {</div>=0A<div>&gt;&gt; + ptgen_args=3D"$ptgen_args -t 83 -p 7=
093504"</div>=0A<div>&gt;&nbsp; </div>=0A<div>&gt; Please don't add device=
 hacks here it's ment to be as generic</div>=0A<div>&gt; as posible. Inste=
ad, add possibility to override CONFIG_TARGET_ROOTFS_PARTSIZE</div>=0A<div=
>&gt; as parameter to "boot-img-ext4" command.</div>=0A<div>&gt;&nbsp; </d=
iv>=0A<div>&gt;&gt; +}</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt;&nbsp;=
 head=3D16</div>=0A<div>&gt;&gt;&nbsp; sect=3D63</div>=0A<div>&gt;&gt;&nbs=
p; </div>=0A<div>&gt;&gt; diff --git a/target/linux/mvebu/image/generic-ar=
m64-emmc.bootscript b/target/linux/mvebu/image/generic-arm64-emmc.bootscri=
pt</div>=0A<div>&gt;&gt; new file mode 100644</div>=0A<div>&gt;&gt; index =
0000000..4de4d39</div>=0A<div>&gt;&gt; --- /dev/null</div>=0A<div>&gt;&gt;=
 +++ b/target/linux/mvebu/image/generic-arm64-emmc.bootscript</div>=0A<div=
>&gt;&gt; @@ -0,0 +1,12 @@</div>=0A<div>&gt;&gt; +setenv bootargs "root=3D=
/dev/mmcblk0p2 rw rootwait"</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; =
+if test -n "${console}"; then</div>=0A<div>&gt;&gt; + setenv bootargs "${=
bootargs} ${console}"</div>=0A<div>&gt;&gt; +fi</div>=0A<div>&gt;&gt; +</d=
iv>=0A<div>&gt;&gt; +setenv mmcdev 0</div>=0A<div>&gt;&nbsp; </div>=0A<div=
>&gt; Does the U-Boot only load "boot.scr" from first mmcdev</div>=0A<div>=
&gt; (I assume that's eMMC) or also searches for it on SD card? If</div>=
=0A<div>&gt; searched on both devices, there's no need to add this file, u=
se</div>=0A<div>&gt; generic-arm64.bootscript. That way image will be appl=
icable to</div>=0A<div>&gt; both storage mediums, just write this informat=
ion in commit</div>=0A<div>&gt; message to inform users. If U-Boot searche=
s for "boot.scr" only</div>=0A<div>&gt; on eMMC, then rename this file to =
gl-mv1000.bootscript and set</div>=0A<div>&gt; it in BOOT_SCRIPT variable.=
</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +load mmc ${mmcdev}:1 ${fdt=
_addr} @DTB@.dtb</div>=0A<div>&gt;&gt; +load mmc ${mmcdev}:1 ${kernel_addr=
} Image</div>=0A<div>&gt;&gt; +</div>=0A<div>&gt;&gt; +booti ${kernel_addr=
} - ${fdt_addr}</div>=0A<div>&gt;&gt;</div>=0A<div>&gt;&nbsp; </div>=0A<di=
v>&gt; Regards, Tomasz</div>=0A<div>&gt; </div>=0A<div>&nbsp;</div>=0A<div=
>&nbsp;</div>=0A<div>-- </div>=0A<div>TMN</div>=0A<div>&nbsp;</div>=0A</di=
v></blockquote>=0A</body></html>
------=_001_NextPart851633377806_=------







--===============3763405662946564307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3763405662946564307==--






