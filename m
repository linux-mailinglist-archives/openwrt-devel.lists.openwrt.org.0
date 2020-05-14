Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B54B1D2C3E
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 12:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=2ULNTx4H/ov8dinXM5ZRSPm9olcLHABXy67/1yDStoU=; b=r69LDuiz3BFn6X
	a4COBvtcyuZO/ujEEn730UNxrYutHg4O0ot6jm8GFsu7xYKokJfuqUIV6G2LUK9PkrPGm68L/Z0Ij
	e0xRMfIc2KQZGuLvvUI3LqZsLxxcyjYZKoJwb0nkIb72VEFeRky7PqmddvQ6stzdNAJx65MT4jeuu
	uLgJLuJXNtkrKEu/wvhc6M2xwux8572FRd69wDw+9SOiXVPwhM4L0th8fka48DPMNU9MH1g67S1vT
	vyBKQ+EOB7F7WaI7GfUN7XwcLo79qIp+/7scG02mvFNWsP9WgZJ1qT4kAx5sxNtM+RPnpsIyn0GCr
	GpeDxu+SW5OV8ja01r/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZAr9-0005A9-3b; Thu, 14 May 2020 10:12:47 +0000
Received: from smtpbg704.qq.com ([203.205.195.105] helo=smtpproxy21.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZAqz-00058W-2N
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 10:12:40 +0000
X-QQ-mid: bizesmtp5t1589451128t301bawke
Received: from DESKTOP-RK9IBA5 (unknown [113.116.58.229])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 14 May 2020 18:12:08 +0800 (CST)
X-QQ-SSF: 01100000001000Z0ZL20B00A0000000
X-QQ-FEAT: RwqN8Aw32fJ0VltfM4/iRuP+jDF5izzy7Wq0f0SfSTfXpG5tBP8bBtPygnjb9
 xPRxw3MiWnlqoxzzoG9qXn3uf2v8LrKBFjer9Z4KgG1zniFdcNqscN/jahx5XfZVUvr0nYS
 qOJZag8mI0e601ct3aAEIfNd3oh7qwo60u38SfPxjlnqofJmc5khqEbDPzBVNkivlifhUQG
 JRV6FkBhC6Opbr0WLoTRZZ24D8VBRoBce4YH7HO9u3YQeRNdPm3aJwht8r2EL1hM+1ZQsFn
 EsSJLhfLUhK0SsVLzbRt5rXE6bTnPJQZCymOkgmyGQOpG7d1FjwNqar/F5ml2Z8Di0ZodaO
 JcMtzsBRKXQFzeTKykyaYrqT+czsXIsw5TGlqgFXnNbzv0soV3nv//oJUvEjg==
X-QQ-GoodBg: 0
Date: Thu, 14 May 2020 18:12:06 +0800
From: "luochongjun@gl-inet.com" <luochongjun@gl-inet.com>
To: "adrian schmutzler" <mail@adrianschmutzler.de>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>, 
 <009701d629d6$18b45560$4a1d0020$@adrianschmutzler.de>
X-Priority: 3
X-GUID: 461B3B01-97F8-46DA-9AD6-BE85C931B532
X-Has-Attach: no
X-Mailer: Foxmail 7.2.15.80[cn]
Mime-Version: 1.0
Message-ID: <2020051418120647133255@gl-inet.com>+057423090DB61335
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_031237_162027_C182A1FC 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.195.105 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.205.195.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Content-Type: multipart/mixed; boundary="===============7501434311765142082=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============7501434311765142082==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart253201372843_=----"

This is a multi-part message in MIME format.

------=_001_NextPart253201372843_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

DQpIaSxhZHJpYW4NCg0KSSBhZGRlZCBhIHJlcGx5IGJlbG93IHlvdXIgcXVlc3Rpb24uDQogDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0
bzpvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddDQo+IE9uIEJlaGFsZiBP
ZiBMdW9jaG9uZ2p1bg0KPiBTZW50OiBEb25uZXJzdGFnLCA3LiBNYWkgMjAyMCAxMzo0Nw0KPiBU
bzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZw0KPiBDYzogTHVvY2hvbmdqdW4gPGx1
b2Nob25nanVuQGdsLWluZXQuY29tPg0KPiBTdWJqZWN0OiBbT3BlbldydC1EZXZlbF0gW1BBVENI
XSBhdGg3OTogYWRkIHN1cHBvcnQgZm9yIGdsLWU3NTANCj4gDQo+IFRoZSBnbC1lNzUwIGlzIGEg
cG9ydGFibGUgdHJhdmVsIHJvdXRlciB0aGF0IGdpdmVzIHlvdSBzYWZlIGFjY2VzcyB0byB0aGUN
Cj4gaW50ZXJuZXQgd2hpbGUgdHJhdmVsaW5nLg0KPiANCj4gU3BlY2lmaWNhdGlvbnM6DQo+IC0g
U29DOiBRdWFsY29tbSBBdGhlcm9zIEFSOTUzMSAoNjUwTUh6KQ0KPiAtIFJBTTogMTI4IE1CIERE
UjINCj4gLSBGbGFzaDogMTYgTUIgU1BJIE5PUiAoVzI1UTEyOEZWU0cpICsgMTI4IE1CIFNQSSBO
QU5EDQo+IChHRDVGMUdRNFVGWUlHKQ0KPiAtIEV0aGVybmV0OiAxMC8xMDA6IDF4TEFODQo+IC0g
V2lyZWxlc3M6IFFDQTk1MzEgMi40R0h6IChiZ24pICsgUUNBOTg4NyA1R0h6IChhYykNCj4gLSBV
U0I6IDF4IFVTQiAyLjAgcG9ydA0KPiAtIFN3aXRjaDogMXggc3dpdGNoDQo+IC0gQnV0dG9uOiAx
eCByZXNldCBidXR0b24NCj4gLSBPTEVEIFNjcmVlbjogMTI4KjY0IHB4DQogDQpObyBMRURzPw0K
LS0tPlllcywgTm8gTEVEcw0KIA0KU29tZSBvdGhlciBjb21tZW50cyBiZWxvdy4NCiANCj4gDQo+
IEZsYXNoIGluc3RydWN0aW9uOg0KPiBTdXBwb3J0IGZvciBzeXN1cGdyYWRlIGRpcmVjdGl2ZSB1
cGdyYWRlcywgYXMgd2VsbCBhcyBsdWNpIHVwZ3JhZGVzLg0KPiANCj4gT0xFRCBzY3JlZW4gY29u
dHJvbDoNCj4gT0xFRCBjb250cm9sbGVyIGlzIGNvbm5lY3RlZCB0byBRQ0E5NTMxIHRocm91Z2gg
c2VyaWFsIHBvcnQsIGFuZCBjYW4gc2VuZA0KPiBpbnN0cnVjdGlvbnMgdG8gT0xFRCBjb250cm9s
bGVyIGRpcmVjdGx5IHRocm91Z2ggc2VyaWFsIHBvcnQuDQo+IFJlZmVyIHRvIHRoZSBsaW5rcyBi
ZWxvdyBmb3IgYSBsaXN0IG9mIHN1cHBvcnRlZCBpbnN0cnVjdGlvbnM6DQo+IGh0dHBzOi8vZ2l0
aHViLmNvbS9nbC1pbmV0L0dMLUU3NTAtTUNVLWluc3RydWN0aW9uDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBMdW9jaG9uZ2p1biA8bHVvY2hvbmdqdW5AZ2wtaW5ldC5jb20+DQo+IC0tLQ0KPiAgdGFy
Z2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTMxX2dsaW5ldF9nbC1lNzUwLmR0cyAgfCAxNDENCj4g
KysrKysrKysrKysrKysrKysrKysrDQo+ICAuLi4vZ2VuZXJpYy9iYXNlLWZpbGVzL2V0Yy9ib2Fy
ZC5kLzAyX25ldHdvcmsgICAgICB8ICAgMSArDQo+ICB0YXJnZXQvbGludXgvYXRoNzkvaW1hZ2Uv
bmFuZC5tayAgICAgICAgICAgICAgICAgICB8ICAxNSArKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwg
MTU3IGluc2VydGlvbnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXRo
NzkvZHRzL3FjYTk1MzFfZ2xpbmV0X2dsLWU3NTAuZHRzDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTMxX2dsaW5ldF9nbC1lNzUwLmR0cw0KPiBiL3Rhcmdl
dC9saW51eC9hdGg3OS9kdHMvcWNhOTUzMV9nbGluZXRfZ2wtZTc1MC5kdHMNCj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMC4uNjQ1YzY5YQ0KPiAtLS0gL2Rldi9udWxsDQo+
ICsrKyBiL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTUzMV9nbGluZXRfZ2wtZTc1MC5kdHMN
Cj4gQEAgLTAsMCArMSwxNDEgQEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wLW9yLWxhdGVyIE9SIE1JVCAvZHRzLXYxLzsNCj4gKw0KPiArI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2dwaW8vZ3Bpby5oPg0KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+
DQo+ICsNCj4gKyNpbmNsdWRlICJxY2E5NTN4LmR0c2kiDQo+ICsNCj4gKy8gew0KPiArIGNvbXBh
dGlibGUgPSAiZ2xpbmV0LGdsLWU3NTAiLCAicWNhLHFjYTk1MzEiOw0KPiArIG1vZGVsID0gIkdM
LmlOZXQgR0wtRTc1MCI7DQo+ICsNCj4gKyBrZXlzIHsNCj4gKyBjb21wYXRpYmxlID0gImdwaW8t
a2V5cyI7DQo+ICsNCj4gKyBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiArIHBpbmN0cmwt
MCA9IDwmanRhZ19kaXNhYmxlX3BpbnM+Ow0KPiArDQo+ICsgcmVzZXQgew0KPiArIGxhYmVsID0g
InJlc2V0IjsNCj4gKyBsaW51eCxjb2RlID0gPEtFWV9SRVNUQVJUPjsNCj4gKyBncGlvcyA9IDwm
Z3BpbyAzIEdQSU9fQUNUSVZFX0xPVz47DQo+ICsgfTsNCj4gKw0KPiArIHN3aXRjaCB7DQo+ICsg
bGFiZWwgPSAic3dpdGNoIjsNCj4gKyBsaW51eCxjb2RlID0gPEJUTl8wPjsNCj4gKyBncGlvcyA9
IDwmZ3BpbyAxIEdQSU9fQUNUSVZFX0xPVz47DQo+ICsgfTsNCj4gKyB9Ow0KPiArDQo+ICsgICAg
ICAgIGdwaW8tZXhwb3J0IHsNCj4gKyAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8t
ZXhwb3J0IjsNCj4gKyAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsNCj4gKw0KPiAr
ICAgICAgICAgICAgICAgIGdwaW9fbHRlX3Bvd2VyIHsNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIGdwaW8tZXhwb3J0LG5hbWUgPSAibHRlIjsNCiANCkknZCBjb25zaWRlciBsdGUtcG93ZXIg
b3IgbHRlX3Bvd2VyIGFzIG5hbWUgaGVyZS4NCi0tLT5JIGFncmVlLiBJdCdzIGVhc2llciB0byB1
bmRlcnN0YW5kDQogDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICBncGlvLWV4cG9ydCxvdXRw
dXQgPSA8MT47DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbyAwIEdQ
SU9fQUNUSVZFX0hJR0g+Ow0KPiArICAgICAgICAgICAgICAgIH07DQo+ICsgICAgICAgIH07DQo+
ICsNCj4gK307DQo+ICsNCj4gKyZwY2llMCB7DQo+ICsgc3RhdHVzID0gIm9rYXkiOw0KPiArfTsN
Cj4gKw0KPiArJnVhcnQgew0KPiArIHN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+ICsNCj4gKyZ1
c2IwIHsNCj4gKyAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gKyAjc2l6ZS1jZWxscyA9IDwwPjsN
Cj4gKyBzdGF0dXMgPSAib2theSI7DQo+ICsNCj4gKyBodWJfcG9ydDogcG9ydEAxIHsNCj4gKyBy
ZWcgPSA8MT47DQo+ICsgI3RyaWdnZXItc291cmNlLWNlbGxzID0gPDA+Ow0KPiArIH07DQo+ICt9
Ow0KPiArDQo+ICsmdXNiX3BoeSB7DQo+ICsgc3RhdHVzID0gIm9rYXkiOw0KPiArfTsNCj4gKw0K
PiArJnNwaSB7DQo+ICsgc3RhdHVzID0gIm9rYXkiOw0KPiArIG51bS1jcyA9IDwyPjsNCj4gKw0K
PiArIGZsYXNoQDAgew0KPiArIGNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7DQo+ICsgcmVn
ID0gPDA+Ow0KPiArIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDI1MDAwMDAwPjsNCj4gKw0KPiArIHBh
cnRpdGlvbnMgew0KPiArIGNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7DQo+ICsgI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsgI3NpemUtY2VsbHMgPSA8MT47DQo+ICsNCj4gKyBwYXJ0
aXRpb25AMCB7DQo+ICsgbGFiZWwgPSAidS1ib290IjsNCj4gKyByZWcgPSA8MHgwIDB4NDAwMDA+
Ow0KPiArIHJlYWQtb25seTsNCj4gKyB9Ow0KPiArDQo+ICsgcGFydGl0aW9uQDQwMDAwIHsNCj4g
KyBsYWJlbCA9ICJ1LWJvb3QtZW52IjsNCj4gKyByZWcgPSA8MHg0MDAwMCAweDEwMDAwPjsNCj4g
KyB9Ow0KPiArDQo+ICsgYXJ0OiBwYXJ0aXRpb25ANTAwMDAgew0KPiArIGxhYmVsID0gImFydCI7
DQo+ICsgcmVnID0gPDB4NTAwMDAgMHgxMDAwMD47DQo+ICsgcmVhZC1vbmx5Ow0KPiArIH07DQo+
ICsNCj4gKyBwYXJ0aXRpb25ANjAwMDAgew0KPiArIGxhYmVsID0gImtlcm5lbCI7DQo+ICsgcmVn
ID0gPDB4NjAwMDAgMHg0MDAwMDA+Ow0KPiArIH07DQo+ICsNCj4gKyBwYXJ0aXRpb25ANDYwMDAw
IHsNCj4gKyBsYWJlbCA9ICJyZXNlcnZlZCI7DQo+ICsgcmVnID0gPDB4NDYwMDAwIDB4YmEwMDAw
PjsNCj4gKyB9Ow0KPiArDQo+ICsgfTsNCj4gKyB9Ow0KPiArDQo+ICsgZmxhc2hAMSB7DQo+ICsg
Y29tcGF0aWJsZSA9ICJzcGktbmFuZCI7DQo+ICsgcmVnID0gPDE+Ow0KPiArIHNwaS1tYXgtZnJl
cXVlbmN5ID0gPDI1MDAwMDAwPjsNCj4gKw0KPiArIHBhcnRpdGlvbnMgew0KPiArIGNvbXBhdGli
bGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7DQo+ICsgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsg
I3NpemUtY2VsbHMgPSA8MT47DQo+ICsNCj4gKyBwYXJ0aXRpb25AMCB7DQo+ICsgbGFiZWwgPSAi
dWJpIjsNCj4gKyByZWcgPSA8MHgwIDB4ODAwMDAwMD47DQo+ICsgfTsNCj4gKyB9Ow0KPiArIH07
DQo+ICt9Ow0KPiArDQo+ICsmZXRoMCB7DQo+ICsgc3RhdHVzID0gIm9rYXkiOw0KPiArDQo+ICsg
bXRkLW1hYy1hZGRyZXNzID0gPCZhcnQgMHgwPjsNCj4gKyBwaHktaGFuZGxlID0gPCZzd3BoeTQ+
Ow0KPiArfTsNCj4gKw0KPiArJndtYWMgew0KPiArIHN0YXR1cyA9ICJva2F5IjsNCj4gKyBtdGQt
Y2FsLWRhdGEgPSA8JmFydCAweDEwMDA+Ow0KPiArIG10ZC1tYWMtYWRkcmVzcyA9IDwmYXJ0IDB4
MTAwMj47DQogDQptdGQtbWFjLWFkZHJlc3MgY2FuIGJlIGRyb3BwZWQgaGVyZSwgYXMgaXQgd2ls
bCBiZSByZWFkIGZyb20gdGhpcyBvZmZzZXQgYnkgbXRkLWNhbC1kYXRhIGF1dG9tYXRpY2FsbHku
DQotLS0+IFdpbGwgdGhlIG9mZnNldCBvZiAweDIgYmUgYXV0b21hdGljYWxseSBhZGRlZD8NCiAN
Cj4gK307DQo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYXRoNzkvZ2VuZXJpYy9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsNCj4gYi90YXJnZXQvbGludXgvYXRoNzkvZ2VuZXJp
Yy9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsNCj4gaW5kZXggZDdmN2VlZC4uYTUw
ZGZlYyAxMDA3NTUNCj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2dlbmVyaWMvYmFzZS1maWxl
cy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrDQo+ICsrKyBiL3RhcmdldC9saW51eC9hdGg3OS9nZW5l
cmljL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yaw0KPiBAQCAtMjMsNiArMjMsNyBA
QCBhdGg3OV9zZXR1cF9pbnRlcmZhY2VzKCkNCj4gIGRsaW5rLGRpci01MDV8XA0KPiAgZW5nZW5p
dXMsZWNiMTc1MHxcDQo+ICBnbGluZXQsZ2wtYXIzMDBtLWxpdGV8XA0KPiArIGdsaW5ldCxnbC1l
NzUwfFwNCj4gIG5ldGdlYXIsZXg2NDAwfFwNCj4gIG5ldGdlYXIsZXg3MzAwfFwNCj4gIG9jZWRv
LGtvYWxhfFwNCj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9uYW5kLm1r
DQo+IGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQubWsNCj4gaW5kZXggM2NjZDE5OS4u
ZTY3NDNlNCAxMDA2NDQNCj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQubWsN
Cj4gKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL25hbmQubWsNCj4gQEAgLTEzMCw2ICsx
MzAsMjEgQEAgZGVmaW5lIERldmljZS9nbGluZXRfZ2wtYXI3NTBzLW5vciAgZW5kZWYNCj4gVEFS
R0VUX0RFVklDRVMgKz0gZ2xpbmV0X2dsLWFyNzUwcy1ub3INCj4gDQo+ICtkZWZpbmUgRGV2aWNl
L2dsaW5ldF9nbC1lNzUwDQo+ICsgIFNPQyA6PSBxY2E5NTMxDQo+ICsgIERFVklDRV9WRU5ET1Ig
Oj0gR0wuaU5ldA0KPiArICBERVZJQ0VfTU9ERUwgOj0gR0wtRTc1MA0KPiArICBERVZJQ0VfUEFD
S0FHRVMgOj0ga21vZC1hdGgxMGstY3QgYXRoMTBrLWZpcm13YXJlLXFjYTk4ODctY3Qga21vZC0N
Cj4gdXNiMiBcDQo+ICsga21vZC11c2Itc3RvcmFnZSBibG9jay1tb3VudA0KPiArICBLRVJORUxf
U0laRSA6PSA0MDk2aw0KPiArICBJTUFHRV9TSVpFIDo9IDEzMTA3MmsNCj4gKyAgUEFHRVNJWkUg
Oj0gMjA0OA0KPiArICBWSURfSERSX09GRlNFVCA6PSAyMDQ4DQo+ICsgIEJMT0NLU0laRSA6PSAx
MjhrDQo+ICsgIElNQUdFUyArPSBmYWN0b3J5LmltZw0KIA0KVHlwaWNhbGx5LCBHTC5pbmV0IGRl
dmljZXMgY2FuIGJlIGluc3RhbGxlZCB3aXRoIHN5c3VwZ3JhZGUsIHNvIGEgZmFjdG9yeSBpbWFn
ZSBpcyBub3QgbmVjZXNzYXJ5PyAoQW5kIGl0J3Mgbm90IHNldCB1cCBhbnl3YXkpDQpJIHRoaW5r
IHRoaXMgY2FuIGJlIGRyb3BwZWQuDQotLS0+TWFueSBHTCB1c2VycyBsaWtlIHRvIHVzZSB1Ym9v
dCB0byB1cGdyYWRlIHRoZWlyIGZpcm13YXJlLCBzbyBJIHRoaW5rIGl0IGlzIG5lY2Vzc2FyeSB0
byBnZW5lcmF0ZSBhIGZhY3RvcnkgaW1hZ2UuDQogDQpJZiB5b3Ugc2VuZCBhIG5ld2VyIHBhdGNo
LCBwbGVhc2UgbWFrZSBzdXJlIHRvIGFkZCBhIHYyIC4uLg0KLS0tPlRoYW5rIHlvdS4gSSB3aWxs
IHN1Ym1pdCBpdCBhcyByZXF1aXJlZA0KIA0KQmVzdA0KIA0KQWRyaWFuDQogDQo+ICtlbmRlZg0K
PiArVEFSR0VUX0RFVklDRVMgKz0gZ2xpbmV0X2dsLWU3NTANCj4gKw0KPiAgIyBmYWtlIHJvb3Rm
cyBpcyBtYW5kYXRvcnksIHBhZC1vZmZzZXQgMTI5IGVxdWFscyAoMiAqIHVpbWFnZV9oZWFkZXIg
Kw0KPiAweGZmKSAgZGVmaW5lIERldmljZS9uZXRnZWFyX2F0aDc5X25hbmQNCj4gICAgREVWSUNF
X1ZFTkRPUiA6PSBORVRHRUFSDQo+IC0tDQo+IDIuNy40DQo+IA0KPiANCj4gDQo+IA0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdA0KPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnDQo+IGh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsIA0K
DQpCZXN0IHJlZ2FyZHMsDQpMdW9jaG9uZ2puDQo=

------=_001_NextPart253201372843_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 10.5pt; font-fa=
mily: 'Microsoft YaHei UI'; color: rgb(0, 0, 0); line-height: 1.5; }</styl=
e></head><body>=0A<div><span></span><br></div><blockquote style=3D"margin-=
Top: 0px; margin-Bottom: 0px; margin-Left: 0.5em"><div><div>Hi,adrian</div=
><div><br></div><div>I added a reply below your question.</div>=0A<div>&nb=
sp;</div>=0A<div>&gt; -----Original Message-----</div>=0A<div>&gt; From: o=
penwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]</div>=0A<div=
>&gt; On Behalf Of Luochongjun</div>=0A<div>&gt; Sent: Donnerstag, 7. Mai =
2020 13:47</div>=0A<div>&gt; To: openwrt-devel@lists.openwrt.org</div>=0A<=
div>&gt; Cc: Luochongjun &lt;luochongjun@gl-inet.com&gt;</div>=0A<div>&gt;=
 Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750</div>=0A<=
div>&gt; </div>=0A<div>&gt; The gl-e750 is a portable travel router that g=
ives you safe access to the</div>=0A<div>&gt; internet while traveling.</d=
iv>=0A<div>&gt; </div>=0A<div>&gt; Specifications:</div>=0A<div>&gt; - SoC=
: Qualcomm Atheros AR9531 (650MHz)</div>=0A<div>&gt; - RAM: 128 MB DDR2</d=
iv>=0A<div>&gt; - Flash: 16 MB SPI NOR (W25Q128FVSG) + 128 MB SPI NAND</di=
v>=0A<div>&gt; (GD5F1GQ4UFYIG)</div>=0A<div>&gt; - Ethernet: 10/100: 1xLAN=
</div>=0A<div>&gt; - Wireless: QCA9531 2.4GHz (bgn) + QCA9887 5GHz (ac)</d=
iv>=0A<div>&gt; - USB: 1x USB 2.0 port</div>=0A<div>&gt; - Switch: 1x swit=
ch</div>=0A<div>&gt; - Button: 1x reset button</div>=0A<div>&gt; - OLED Sc=
reen: 128*64 px</div>=0A<div>&nbsp;</div>=0A<div>No LEDs?</div><div>---&gt=
;Yes, No LEDs</div>=0A<div>&nbsp;</div>=0A<div>Some other comments below.<=
/div>=0A<div>&nbsp;</div>=0A<div>&gt; </div>=0A<div>&gt; Flash instruction=
:</div>=0A<div>&gt; Support for sysupgrade directive upgrades, as well as =
luci upgrades.</div>=0A<div>&gt; </div>=0A<div>&gt; OLED screen control:</=
div>=0A<div>&gt; OLED controller is connected to QCA9531 through serial po=
rt, and can send</div>=0A<div>&gt; instructions to OLED controller directl=
y through serial port.</div>=0A<div>&gt; Refer to the links below for a li=
st of supported instructions:</div>=0A<div>&gt; https://github.com/gl-inet=
/GL-E750-MCU-instruction</div>=0A<div>&gt; </div>=0A<div>&gt; Signed-off-b=
y: Luochongjun &lt;luochongjun@gl-inet.com&gt;</div>=0A<div>&gt; ---</div>=
=0A<div>&gt;&nbsp; target/linux/ath79/dts/qca9531_glinet_gl-e750.dts&nbsp;=
 | 141</div>=0A<div>&gt; +++++++++++++++++++++</div>=0A<div>&gt;&nbsp; ...=
/generic/base-files/etc/board.d/02_network&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |=
&nbsp;&nbsp; 1 +</div>=0A<div>&gt;&nbsp; target/linux/ath79/image/nand.mk&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 15 +++</div>=0A<div>&gt;&nbsp; 3=
 files changed, 157 insertions(+)</div>=0A<div>&gt;&nbsp; create mode 1006=
44 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts</div>=0A<div>&gt; </d=
iv>=0A<div>&gt; diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-e750=
.dts</div>=0A<div>&gt; b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts=
</div>=0A<div>&gt; new file mode 100644</div>=0A<div>&gt; index 0000000..6=
45c69a</div>=0A<div>&gt; --- /dev/null</div>=0A<div>&gt; +++ b/target/linu=
x/ath79/dts/qca9531_glinet_gl-e750.dts</div>=0A<div>&gt; @@ -0,0 +1,141 @@=
</div>=0A<div>&gt; +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /d=
ts-v1/;</div>=0A<div>&gt; +</div>=0A<div>&gt; +#include &lt;dt-bindings/gp=
io/gpio.h&gt;</div>=0A<div>&gt; +#include &lt;dt-bindings/input/input.h&gt=
;</div>=0A<div>&gt; +</div>=0A<div>&gt; +#include "qca953x.dtsi"</div>=0A<=
div>&gt; +</div>=0A<div>&gt; +/ {</div>=0A<div>&gt; +	compatible =3D "glin=
et,gl-e750", "qca,qca9531";</div>=0A<div>&gt; +	model =3D "GL.iNet GL-E750=
";</div>=0A<div>&gt; +</div>=0A<div>&gt; +	keys {</div>=0A<div>&gt; +		com=
patible =3D "gpio-keys";</div>=0A<div>&gt; +</div>=0A<div>&gt; +		pinctrl-=
names =3D "default";</div>=0A<div>&gt; +		pinctrl-0 =3D &lt;&amp;jtag_disa=
ble_pins&gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +		reset {</div>=0A<di=
v>&gt; +			label =3D "reset";</div>=0A<div>&gt; +			linux,code =3D &lt;KEY=
_RESTART&gt;;</div>=0A<div>&gt; +			gpios =3D &lt;&amp;gpio 3 GPIO_ACTIVE_=
LOW&gt;;</div>=0A<div>&gt; +		};</div>=0A<div>&gt; +</div>=0A<div>&gt; +		=
switch {</div>=0A<div>&gt; +			label =3D "switch";</div>=0A<div>&gt; +			l=
inux,code =3D &lt;BTN_0&gt;;</div>=0A<div>&gt; +			gpios =3D &lt;&amp;gpio=
 1 GPIO_ACTIVE_LOW&gt;;</div>=0A<div>&gt; +		};</div>=0A<div>&gt; +	};</di=
v>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; gpio-export {</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "gpi=
o-export";</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #size-cells =3D &lt;0&gt;;<=
/div>=0A<div>&gt; +</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gpio_lte_power {</=
div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; gpio-export,name =3D "lte";</div>=0A<div>&nbsp;</div>=0A<div>I'd =
consider lte-power or lte_power as name here.</div><div>---&gt;I agree. It=
's easier to understand</div>=0A<div>&nbsp;</div>=0A<div>&gt; +&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gpio-export,output =
=3D &lt;1&gt;;</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; gpios =3D &lt;&amp;gpio 0 GPIO_ACTIVE_HIGH&gt;;</=
div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt; +</div>=0A<div>&gt; +};</di=
v>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;pcie0 {</div>=0A<div>&gt; +	statu=
s =3D "okay";</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=0A<div>&gt; =
+&amp;uart {</div>=0A<div>&gt; +	status =3D "okay";</div>=0A<div>&gt; +};<=
/div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;usb0 {</div>=0A<div>&gt; +	#ad=
dress-cells =3D &lt;1&gt;;</div>=0A<div>&gt; +	#size-cells =3D &lt;0&gt;;<=
/div>=0A<div>&gt; +	status =3D "okay";</div>=0A<div>&gt; +</div>=0A<div>&g=
t; +	hub_port: port@1 {</div>=0A<div>&gt; +		reg =3D &lt;1&gt;;</div>=0A<d=
iv>&gt; +		#trigger-source-cells =3D &lt;0&gt;;</div>=0A<div>&gt; +	};</di=
v>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;usb_phy {</=
div>=0A<div>&gt; +	status =3D "okay";</div>=0A<div>&gt; +};</div>=0A<div>&=
gt; +</div>=0A<div>&gt; +&amp;spi {</div>=0A<div>&gt; +	status =3D "okay";=
</div>=0A<div>&gt; +	num-cs =3D &lt;2&gt;;</div>=0A<div>&gt; +</div>=0A<di=
v>&gt; +	flash@0 {</div>=0A<div>&gt; +		compatible =3D "jedec,spi-nor";</d=
iv>=0A<div>&gt; +		reg =3D &lt;0&gt;;</div>=0A<div>&gt; +		spi-max-frequen=
cy =3D &lt;25000000&gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +		partitio=
ns {</div>=0A<div>&gt; +			compatible =3D "fixed-partitions";</div>=0A<div=
>&gt; +			#address-cells =3D &lt;1&gt;;</div>=0A<div>&gt; +			#size-cells =
=3D &lt;1&gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +			partition@0 {</di=
v>=0A<div>&gt; +				label =3D "u-boot";</div>=0A<div>&gt; +				reg =3D &lt=
;0x0 0x40000&gt;;</div>=0A<div>&gt; +				read-only;</div>=0A<div>&gt; +			=
};</div>=0A<div>&gt; +</div>=0A<div>&gt; +			partition@40000 {</div>=0A<di=
v>&gt; +				label =3D "u-boot-env";</div>=0A<div>&gt; +				reg =3D &lt;0x4=
0000 0x10000&gt;;</div>=0A<div>&gt; +			};</div>=0A<div>&gt; +</div>=0A<di=
v>&gt; +			art: partition@50000 {</div>=0A<div>&gt; +				label =3D "art";<=
/div>=0A<div>&gt; +				reg =3D &lt;0x50000 0x10000&gt;;</div>=0A<div>&gt; =
+				read-only;</div>=0A<div>&gt; +			};</div>=0A<div>&gt; +</div>=0A<div>=
&gt; +			partition@60000 {</div>=0A<div>&gt; +				label =3D "kernel";</div=
>=0A<div>&gt; +				reg =3D &lt;0x60000 0x400000&gt;;</div>=0A<div>&gt; +		=
	};</div>=0A<div>&gt; +</div>=0A<div>&gt; +			partition@460000 {</div>=0A<=
div>&gt; +				label =3D "reserved";</div>=0A<div>&gt; +				reg =3D &lt;0x4=
60000 0xba0000&gt;;</div>=0A<div>&gt; +			};</div>=0A<div>&gt; +</div>=0A<=
div>&gt; +		};</div>=0A<div>&gt; +	};</div>=0A<div>&gt; +</div>=0A<div>&gt=
; +	flash@1 {</div>=0A<div>&gt; +		compatible =3D "spi-nand";</div>=0A<div=
>&gt; +		reg =3D &lt;1&gt;;</div>=0A<div>&gt; +		spi-max-frequency =3D &lt=
;25000000&gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +		partitions {</div>=
=0A<div>&gt; +			compatible =3D "fixed-partitions";</div>=0A<div>&gt; +			=
#address-cells =3D &lt;1&gt;;</div>=0A<div>&gt; +			#size-cells =3D &lt;1&=
gt;;</div>=0A<div>&gt; +</div>=0A<div>&gt; +			partition@0 {</div>=0A<div>=
&gt; +				label =3D "ubi";</div>=0A<div>&gt; +				reg =3D &lt;0x0 0x800000=
0&gt;;</div>=0A<div>&gt; +			};</div>=0A<div>&gt; +		};</div>=0A<div>&gt; =
+	};</div>=0A<div>&gt; +};</div>=0A<div>&gt; +</div>=0A<div>&gt; +&amp;eth=
0 {</div>=0A<div>&gt; +	status =3D "okay";</div>=0A<div>&gt; +</div>=0A<di=
v>&gt; +	mtd-mac-address =3D &lt;&amp;art 0x0&gt;;</div>=0A<div>&gt; +	phy=
-handle =3D &lt;&amp;swphy4&gt;;</div>=0A<div>&gt; +};</div>=0A<div>&gt; +=
</div>=0A<div>&gt; +&amp;wmac {</div>=0A<div>&gt; +	status =3D "okay";</di=
v>=0A<div>&gt; +	mtd-cal-data =3D &lt;&amp;art 0x1000&gt;;</div>=0A<div>&g=
t; +	mtd-mac-address =3D &lt;&amp;art 0x1002&gt;;</div>=0A<div>&nbsp;</div=
>=0A<div>mtd-mac-address can be dropped here, as it will be read from this=
 offset by mtd-cal-data automatically.</div><div>---&gt;&nbsp;Will the off=
set of 0x2 be automatically added?</div>=0A<div>&nbsp;</div>=0A<div>&gt; +=
};</div>=0A<div>&gt; diff --git a/target/linux/ath79/generic/base-files/et=
c/board.d/02_network</div>=0A<div>&gt; b/target/linux/ath79/generic/base-f=
iles/etc/board.d/02_network</div>=0A<div>&gt; index d7f7eed..a50dfec 10075=
5</div>=0A<div>&gt; --- a/target/linux/ath79/generic/base-files/etc/board.=
d/02_network</div>=0A<div>&gt; +++ b/target/linux/ath79/generic/base-files=
/etc/board.d/02_network</div>=0A<div>&gt; @@ -23,6 +23,7 @@ ath79_setup_in=
terfaces()</div>=0A<div>&gt;&nbsp; 	dlink,dir-505|\</div>=0A<div>&gt;&nbsp=
; 	engenius,ecb1750|\</div>=0A<div>&gt;&nbsp; 	glinet,gl-ar300m-lite|\</di=
v>=0A<div>&gt; +	glinet,gl-e750|\</div>=0A<div>&gt;&nbsp; 	netgear,ex6400|=
\</div>=0A<div>&gt;&nbsp; 	netgear,ex7300|\</div>=0A<div>&gt;&nbsp; 	ocedo=
,koala|\</div>=0A<div>&gt; diff --git a/target/linux/ath79/image/nand.mk</=
div>=0A<div>&gt; b/target/linux/ath79/image/nand.mk</div>=0A<div>&gt; inde=
x 3ccd199..e6743e4 100644</div>=0A<div>&gt; --- a/target/linux/ath79/image=
/nand.mk</div>=0A<div>&gt; +++ b/target/linux/ath79/image/nand.mk</div>=0A=
<div>&gt; @@ -130,6 +130,21 @@ define Device/glinet_gl-ar750s-nor&nbsp; en=
def</div>=0A<div>&gt; TARGET_DEVICES +=3D glinet_gl-ar750s-nor</div>=0A<di=
v>&gt; </div>=0A<div>&gt; +define Device/glinet_gl-e750</div>=0A<div>&gt; =
+&nbsp; SOC :=3D qca9531</div>=0A<div>&gt; +&nbsp; DEVICE_VENDOR :=3D GL.i=
Net</div>=0A<div>&gt; +&nbsp; DEVICE_MODEL :=3D GL-E750</div>=0A<div>&gt; =
+&nbsp; DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca9887-ct kmo=
d-</div>=0A<div>&gt; usb2 \</div>=0A<div>&gt; +	kmod-usb-storage block-mou=
nt</div>=0A<div>&gt; +&nbsp; KERNEL_SIZE :=3D 4096k</div>=0A<div>&gt; +&nb=
sp; IMAGE_SIZE :=3D 131072k</div>=0A<div>&gt; +&nbsp; PAGESIZE :=3D 2048</=
div>=0A<div>&gt; +&nbsp; VID_HDR_OFFSET :=3D 2048</div>=0A<div>&gt; +&nbsp=
; BLOCKSIZE :=3D 128k</div>=0A<div>&gt; +&nbsp; IMAGES +=3D factory.img</d=
iv>=0A<div>&nbsp;</div>=0A<div>Typically, GL.inet devices can be installed=
 with sysupgrade, so a factory image is not necessary? (And it's not set u=
p anyway)</div>=0A<div>I think this can be dropped.</div><div>---&gt;Many =
GL users like to use uboot to upgrade their firmware, so I think it is nec=
essary to generate a factory image.</div>=0A<div>&nbsp;</div>=0A<div>If yo=
u send a newer patch, please make sure to add a v2 ...</div><div>---&gt;Th=
ank you. I will submit it as required</div>=0A<div>&nbsp;</div>=0A<div>Bes=
t</div>=0A<div>&nbsp;</div>=0A<div>Adrian</div>=0A<div>&nbsp;</div>=0A<div=
>&gt; +endef</div>=0A<div>&gt; +TARGET_DEVICES +=3D glinet_gl-e750</div>=
=0A<div>&gt; +</div>=0A<div>&gt;&nbsp; # fake rootfs is mandatory, pad-off=
set 129 equals (2 * uimage_header +</div>=0A<div>&gt; 0xff)&nbsp; define D=
evice/netgear_ath79_nand</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp; DEVICE_VENDOR=
 :=3D NETGEAR</div>=0A<div>&gt; --</div>=0A<div>&gt; 2.7.4</div>=0A<div>&g=
t; </div>=0A<div>&gt; </div>=0A<div>&gt; </div>=0A<div>&gt; </div>=0A<div>=
&gt; _______________________________________________</div>=0A<div>&gt; ope=
nwrt-devel mailing list</div>=0A<div>&gt; openwrt-devel@lists.openwrt.org<=
/div>=0A<div><span microsoft=3D"" yahei=3D"" ui';=3D"" font-size:=3D"" 14p=
x;=3D"" color:=3D"" rgb(0,=3D"" 0,=3D"" 0);=3D"" background-color:=3D"" rg=
ba(0,=3D"" font-weight:=3D"" normal;=3D"" font-style:=3D"" normal;text-dec=
oration:=3D"" none;'=3D"" style=3D"font-size: 10.5pt; line-height: 1.5; ba=
ckground-color: transparent;">&gt;</span><span style=3D"font-size: 10.5pt;=
 line-height: 1.5; background-color: transparent;"> </span><a href=3D"http=
s://lists.openwrt.org/mailman/listinfo/openwrt-devel" microsoft=3D"" yahei=
=3D"" ui';=3D"" font-size:=3D"" 14px;=3D"" font-weight:=3D"" normal;=3D"" =
font-style:=3D"" normal;'=3D"" style=3D"font-size: 10.5pt; line-height: 1.=
5; background-color: transparent;">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><span microsoft=3D"" yahei=3D"" ui';=3D"" font-size:=
=3D"" 14px;=3D"" color:=3D"" rgb(0,=3D"" 0,=3D"" 0);=3D"" background-color=
:=3D"" rgba(0,=3D"" font-weight:=3D"" normal;=3D"" font-style:=3D"" normal=
;text-decoration:=3D"" none;'=3D"" style=3D"font-size: 10.5pt; line-height=
: 1.5; background-color: transparent;">&nbsp;</span></div><div><span micro=
soft=3D"" yahei=3D"" ui';=3D"" font-size:=3D"" 14px;=3D"" color:=3D"" rgb(=
0,=3D"" 0,=3D"" 0);=3D"" background-color:=3D"" rgba(0,=3D"" font-weight:=
=3D"" normal;=3D"" font-style:=3D"" normal;text-decoration:=3D"" none;'=3D=
"" style=3D"font-size: 10.5pt; line-height: 1.5; background-color: transpa=
rent;"><br></span></div><div><span microsoft=3D"" yahei=3D"" ui';=3D"" fon=
t-size:=3D"" 14px;=3D"" color:=3D"" rgb(0,=3D"" 0,=3D"" 0);=3D"" backgroun=
d-color:=3D"" rgba(0,=3D"" font-weight:=3D"" normal;=3D"" font-style:=3D""=
 normal;text-decoration:=3D"" none;'=3D"" style=3D"font-size: 10.5pt; line=
-height: 1.5; background-color: transparent;">Best regards,</span></div><d=
iv><span microsoft=3D"" yahei=3D"" ui';=3D"" font-size:=3D"" 14px;=3D"" co=
lor:=3D"" rgb(0,=3D"" 0,=3D"" 0);=3D"" background-color:=3D"" rgba(0,=3D""=
 font-weight:=3D"" normal;=3D"" font-style:=3D"" normal;text-decoration:=
=3D"" none;'=3D"" style=3D"font-size: 10.5pt; line-height: 1.5; background=
-color: transparent;">Luochongjn</span></div>=0A</div></blockquote>=0A</bo=
dy></html>
------=_001_NextPart253201372843_=------







--===============7501434311765142082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7501434311765142082==--






