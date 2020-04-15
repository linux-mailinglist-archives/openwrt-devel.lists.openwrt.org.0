Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA561A9989
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 11:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Mime-Version:References:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dt3R8jCQ/rA7GVlUXMzULP/BzgKCSlfK0LJklRj5Eoo=; b=bfnRIU/0usnFvu
	yuiY2d7/w1KBCU8zI/Hf24ZFRKjU4WGcgCvSfO2SL32Q2exvgduRRnxqQbZ9vDUCya1yzm5I7BvKc
	JF7HC7wgvP04tnk9kAeASXywsicFyCR6ua20otpPNVABNmCkMNRnbBHdUPiq50a7T4SRHmWdeaU8/
	Vlk8TLaXciWVRP2hd/FCQ6kqbU/ZLkvgMUEQWNRPiEm9Hzud2G+O6MKGRlCNJ+vxX0Kq4VQuyHmPI
	29rZsqPmG01W3F8CEVaR3X4sqdhWkYFS4rv2hnc7qlPmhTiBY2R4n4uP6HXtKCIil/dQnvlSQKG4h
	VN6qGyhu1yZJ+DwyO1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeiX-0003f8-TK; Wed, 15 Apr 2020 09:52:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOei9-0003Xn-SP
 for openwrt-devel@bombadil.infradead.org; Wed, 15 Apr 2020 09:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Message-ID:Mime-Version:
 References:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=HbkxT35SscFwY9bUShLb68Lzvg8JAs3tKkk+YxEamEg=; b=vsU6wib9yXOhPB8EvvyS6YbXXA
 fWRy2BbJDG4tYKdYxy5/2H2oVWHd8Fx05rizWtuf1qPGnRyaNqqjWGtgt7UkPvvFQqvzAZ+vfP7vq
 T53a4bIS7KeMmGyRYNi9bUKsIsObsQ9kvBkM8MhC7A5Pf78E/0Y9Jr+W01DbeDBQ/5BNZ515idS1i
 If4ze3PqS7eWbiN6sCIp5sm0T1XCufc1YUq3eDYgm3c5TGBQIFN/JIbB+HxRO0dVsbYFGK+2ZBl/J
 7jgUc9lM9KaSuXV/196ZPALFDfVWLnnB9SH+iE7icy01ydB4MosVSMApDdbBCCwiGr+COAgJmFTJ7
 oO6WNaTQ==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOei3-0006ZO-83
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 09:52:00 +0000
X-QQ-mid: bizesmtp4t1586944292tdsy862kp
Received: from PC-201803291515 (unknown [113.116.144.124])
 by esmtp6.qq.com (ESMTP) with 
 id ; Wed, 15 Apr 2020 17:51:32 +0800 (CST)
X-QQ-SSF: 0010000A002000H0DG70B00A0000000
X-QQ-FEAT: FhO9pPWy87NSGY0lXaNB1MVlSX0gdu5HcUqQS7LcPlFpm96w2mzMtQOpKFBfg
 GQzhkzoXA8EZWh3cuYnLEiKwDYl3IvaNB0CNWEYtlo5U2d1BOdiUkBrlOdwcaRa92m8gF2p
 bW7foCFzCG2Tsxluv/W1A+e4jKUgcH0rfEV0ldCGcnYTgVSqjMQXAnI9ojaGlov/G+YIwti
 tft5ECAxLjoK9psFGFpossdlWeOE954wmuuUgyc3abTgDfeUnUdqExhHjOOJ9xt70Eb3S1x
 KSjdTs0u3ykE6Fwsxm/MMqPiB2waYhQxzQ0Ww0W5RYwfma6JcSzPH2DcbtuPXPB6l0ohGVn
 RKv6HLTjj908hbIioaahdE5M7Ssp6izv6Wj4Iw9rV7ETLQbeJvSddjw8Hd/WQ==
X-QQ-GoodBg: 0
Date: Wed, 15 Apr 2020 17:51:33 +0800
From: Li.zhang <li.zhang@gl-inet.com>
To: "Piotr Dymacz" <pepe2k@gmail.com>, "Tomasz Maciej Nowak" <tomek_n@o2.pl>, 
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1586773611-27431-1-git-send-email-li.zhang@gl-inet.com>, 
 <9433965b-4d40-9801-923a-29e64e8b7e47@o2.pl>, 
 <2020041412201325848550@gl-inet.com>, 
 <8463a316-49a3-02dd-b9d2-bc0c154d42e1@o2.pl>, 
 <77568332-f637-4e9f-68d9-4bf31606b621@gmail.com>
X-Priority: 3
X-GUID: F206A674-DBEB-4497-83E0-DD0EC85E439E
X-Has-Attach: no
X-Mailer: Foxmail 7.2.9.116[cn]
Mime-Version: 1.0
Message-ID: <2020041517513347393912@gl-inet.com>+1EF7067ADD4849FF
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============7041281457711291725=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============7041281457711291725==
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart164524647618_=----"

This is a multi-part message in MIME format.

------=_001_NextPart164524647618_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

SGkgUGlvdHIsVG9tYXN6Og0KDQpBUlQgaGFzIGEgc3BlY2lmaWMgbWVhbmluZyAoQXRoZXJvcyBS
YWRpbyBUZXN0KSBhbmQgaXQgbG9va3MganVzdCB3cm9uZw0KaGVyZSwgbm90IGp1c3Qgd2VpcmQu
DQogDQpXaHkgbm90IGNoYW5nZSBpdCB0byBzb21ldGhpbmcgbGVzcyBtaXNsZWFkaW5nPw0KTWF5
YmUgJ2ZhY3RvcnknIG9yICd2ZW5kb3InPw0KDQpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3Vy
IGFkdmlzZS5OZXh0IHRpbWUsSSdsbCBjaGFuZ2UgaXQuDQoNCg0KTGkgWmhhbmcgfCBTb2Z0d2Fy
ZSBFbmdpbmVlcg0KbGkuemhhbmdAZ2wtaW5ldC5jb20gDQpHTC5pTmV0ICBXaUZpIGZvciBUaGlu
Z3MNCldlYnNpdGU6IHd3dy5nbC1pbmV0LmNvbSAgIHwgICBMaW5rZWRJbjogZ2wtaW5ldC5jb20g
ICB8ICAgVGVsOiArODYtNzU1LTg2NjAtNjEyNg0KUm9vbSAzMDUtMzA2LCBTa3l3b3J0aCBEaWdp
dGFsIEJ1aWxkaW5nICwgU2hpeWFuIFN0cmVldCwgQmFvYW4gRGlzdHJpY3QsIFNoZW56aGVuLCBD
aGluYQ0KRW1haWwgRGlzY2xhaW1lcjogVGhlIGNvbnRlbnQgb2YgdGhpcyBlbWFpbCBpcyBjb25m
aWRlbnRpYWwgYW5kIGludGVuZGVkIGZvciB0aGUgcmVjaXBpZW50IHNwZWNpZmllZCBpbiBtZXNz
YWdlIG9ubHkuIEl0IGlzIHN0cmljdGx5IGZvcmJpZGRlbiB0byBzaGFyZSBhbnkgcGFydCBvZiB0
aGlzIG1lc3NhZ2Ugd2l0aCBhbnkgdGhpcmQgcGFydHksIHdpdGhvdXQgYSB3cml0dGVuIGNvbnNl
bnQgb2YgdGhlIHNlbmRlci4gSWYgeW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBieSBtaXN0YWtl
LCBwbGVhc2UgcmVwbHkgdG8gdGhpcyBtZXNzYWdlIGFuZCBmb2xsb3cgd2l0aCBpdHMgZGVsZXRp
b24sIHNvIHRoYXQgd2UgY2FuIGVuc3VyZSBzdWNoIGEgbWlzdGFrZSBkb2VzIG5vdCBvY2N1ciBp
biB0aGUgZnV0dXJlLg0KIA0KRnJvbTogUGlvdHIgRHltYWN6DQpEYXRlOiAyMDIwLTA0LTE1IDE3
OjM2DQpUbzogVG9tYXN6IE1hY2llaiBOb3dhazsgTGkuemhhbmc7IG9wZW53cnQtZGV2ZWwNClN1
YmplY3Q6IFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSBtdmVidTogYWRkIHN1cHBvcnQgZm9y
IEdMLmlOZXQgR0wtTVYxMDAwDQpIaSBUb21hc3osIExpLA0KIA0KT24gMTQuMDQuMjAyMCAyMDo1
MywgVG9tYXN6IE1hY2llaiBOb3dhayB3cm90ZToNCj4gVyBkbml1IDE0LjA0LjIwMjAgbyAwNjoy
MCwgTGkuemhhbmcgcGlzemU6DQo+PiBIaSBUb21hc3osDQo+PiBUaGFuayB5b3UgdmVyeSBtdWNo
IGZvciB5b3UgY29ycmVjdGlvbi4NCj4+IA0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArJnNwaTAgew0K
Pj4+ICsgICAgICAgIHN0YXR1cyA9ICJva2F5IjsNCj4+PiArDQo+Pj4gKyAgICAgICAgZmxhc2hA
MCB7DQo+Pj4gKyAgICAgICAgICAgICAgICByZWcgPSA8MD47DQo+Pj4gKyAgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gImplZGVjLHNwaS1ub3IiOw0KPj4+ICsgICAgICAgICAgICAgICAgc3Bp
LW1heC1mcmVxdWVuY3kgPSA8MTA0MDAwMDAwPjsNCj4+PiArICAgICAgICAgICAgICAgIG0yNXAs
ZmFzdC1yZWFkOw0KPj4+ICsgICAgICAgICAgICAgICAgcGFydGl0aW9ucyB7DQo+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7DQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsNCj4+PiArDQo+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgIHBhcnRpdGlvbkAwIHsNCj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBsYWJlbCA9ICJ1LWJvb3QiOw0KPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlZyA9IDwwIDB4ZjAwMDA+Ow0KPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICB9Ow0KPj4+ICsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgcGFydGl0aW9uQGYw
MDAwIHsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJ1LWJv
b3QtZW52IjsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MFhm
MDAwMCAweDgwMDA+Ow0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICB9Ow0KPj4+ICsNCj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgYXJ0OiBwYXJ0aXRpb25AZjgwMDAgew0KPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gImFydCI7DQo+PiANCj4+IFRo
ZSBuYW1lIG9mIHRoaXMgcGFydGl0aW9uIGlzIHJhdGhlciBzdHJhbmdlLCBzaW5jZSB0aGUgaGFy
ZHdhcmUNCj4+IHNwZWNpZmljYXRpb24gZG9lc24ndCBtZW50aW9uIGFueSBQQ0llIG9yIFNESU8g
Y29ubmVjdGVkIHdpcmVsZXNzDQo+PiBjYXJkcyAoZG9uJ3Qga25vdyBpZiB0aGVyZSdzIGFueSBV
U0IgY2FyZCB3aXRob3V0IGVlcHJvbSkuIElzDQo+PiB0aGVyZSBhbnkgY2FsaWJyYXRpb24gZGF0
YSBzdG9yZWQgb3Igb25seSBNQUMgYWRkcmVzcy9hZGRyZXNzZXM/DQo+PiBEb2VzIFUtQm9vdCBh
bHNvIHJlYWQgaW5mb3JtYXRpb24gZnJvbSB0aGlzIHBhcnRpdGlvbj8gQW55d2F5DQo+PiB0aGF0
J3Mgbm90IGEgcmVtYXJrIHRvIGNoYW5nZSB0aGF0IG5hbWUsIEknbSBqdXN0IGN1cmlvdXMuDQo+
PiAtLS0+TUFDLFNOLERETlMgYW5kIHRoZXIgcHJpdmF0ZSBpbmZvcm1hdGlvbiBhcmUgc3RvcmVk
IGluIHRoZSBhcnQuDQo+IA0KPiBPaywgc3RpbGwgdGhhdCBuYW1lIGlzIHdlaXJkLCBidXQgdGhh
dCdzIG1hdHRlciBvZiB0YXN0ZS4NCiANCkFSVCBoYXMgYSBzcGVjaWZpYyBtZWFuaW5nIChBdGhl
cm9zIFJhZGlvIFRlc3QpIGFuZCBpdCBsb29rcyBqdXN0IHdyb25nIA0KaGVyZSwgbm90IGp1c3Qg
d2VpcmQuDQogDQpXaHkgbm90IGNoYW5nZSBpdCB0byBzb21ldGhpbmcgbGVzcyBtaXNsZWFkaW5n
Pw0KTWF5YmUgJ2ZhY3RvcnknIG9yICd2ZW5kb3InPw0KIA0KLS0gDQpDaGVlcnMsDQpQaW90cg0K
IA0KPiANCj4+IA0KPj4gT24gcHJldmlvdXMgcGF0Y2gsIHRoZXJlIHdlcmUgYWRkaXRpb25uYWwg
cGFydGl0aW9ucyBpbiBkdHMNCj4+IHdpdGhvdXQgLWVtbWMgc3VmZml4IDogZHRiLCBmaXJtd2Fy
ZS4gSWYgdGhhdCBzcGFjZSB3b3VsZCBiZQ0KPj4gdW51c2VkIGl0J3MgYmV0dGVyIHRvIGFkZCB0
aGVtIGhlcmUsIHNvIGxhdGVyIFlvdSBjb3VsZA0KPj4gaW50cm9kdWNlIGltYWdlcyB0aGF0IGNv
dWxkIGJlIHdyaXR0ZW4gaW4gU1BJIGZsYXNoLg0KPj4gLS0tPlRoZXJlIGlzIGEgc2hvcnQgYmFj
a3VwIGZpcm13YXJlIGluIGFkZGl0aW9ubmFsIHBhcnRpdGlvbnMgb2YgZmxhc2gsbm9ybWFsbHkg
aXQncyBub3QgdmlzaWJsZS5JbiBhZGRpdGlvbiBUaGUgb2ZmaWNhbCBmaXJtd2FyZSBpcyBzdG9y
ZWQgaW4gRU1NQyxTbyB0aGUgcHJldmlvdXMgZmlsZShnbC1tdjEwMDAuZHRzKSB3YXMgZGVsZXRl
ZC4NCj4gDQo+IFRoZW4gaXQgd291bGQgYmUgYmV0dGVyIHRvIHNwZWNpZnkgdGhvc2UgcGFydGl0
aW9ucywgYXMgc29tZSB1c2VycyBjb3VsZCBzaW1wbHkNCj4gb3ZlcndyaXRlIHRoaXMgdGhpbmtp
bmcgdGhhdCdzIHVub2NjdXBpZWQgc3BhY2UuDQo+IA0KPj4gDQo+Pj4gK2RlZmluZSBEZXZpY2Uv
RGVmYXVsdC1hcm02NC1lbW1jDQo+PiANCj4+IFBsZWFzZSBkb24ndCBhZGQgZ2VuZXJpYyBkaWZp
bml0aW9uIGZvciBzaW5nbGUgZGV2aWNlIHdoZXJlIG9ubHkNCj4+IGltYWdlIG5hbWUgYW5kIHJl
Y2lwZSBhcmUgc2xpZ2h0bHkgY2hhbmdlZCwgcGxlYXNlIHJlbW92ZSBpdC4NCj4+IA0KPj4+ICsg
IEJPT1RfU0NSSVBUIDo9IGdlbmVyaWMtYXJtNjQtZW1tYw0KPj4+ICsgIERFVklDRV9EVFNfRElS
IDo9ICQoRFRTX0RJUikvbWFydmVsbA0KPj4+ICsgIElNQUdFUyA6PSBlbW1jLmltZw0KPj4+ICsg
IElNQUdFL2VtbWMuaW1nIDo9IGJvb3Qtc2NyIHwgYm9vdC1pbWctZXh0NCB8IHNkY2FyZC1pbWct
ZXh0NCB8IGFwcGVuZC1tZXRhZGF0YQ0KPj4+ICsgIEtFUk5FTF9OQU1FIDo9IEltYWdlDQo+Pj4g
KyAgS0VSTkVMIDo9IGtlcm5lbC1iaW4NCj4+PiArZW5kZWYNCj4+PiArDQo+Pj4gIGRlZmluZSBE
ZXZpY2UvTkFORC0xMjhLDQo+Pj4gICAgQkxPQ0tTSVpFIDo9IDEyOGsNCj4+PiAgICBQQUdFU0la
RSA6PSAyMDQ4DQo+Pj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0
ZXhhNTMubWsgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rDQo+Pj4gaW5k
ZXggNzdmNWM3OS4uNGRmZDBiNCAxMDA2NDQNCj4+PiAtLS0gYS90YXJnZXQvbGludXgvbXZlYnUv
aW1hZ2UvY29ydGV4YTUzLm1rDQo+Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2Nv
cnRleGE1My5taw0KPj4+IEBAIC02OSwzICs2OSwxMiBAQCBkZWZpbmUgRGV2aWNlL21ldGhvZGVf
dWRwdQ0KPj4+ICAgIEJPT1RfU0NSSVBUIDo9IHVkcHUNCj4+PiAgZW5kZWYNCj4+PiAgVEFSR0VU
X0RFVklDRVMgKz0gbWV0aG9kZV91ZHB1DQo+Pj4gKw0KPj4+ICtkZWZpbmUgRGV2aWNlL2dsaW5l
dF9nbC1tdjEwMDAtZW1tYw0KPj4+ICsgICQoY2FsbCBEZXZpY2UvRGVmYXVsdC1hcm02NC1lbW1j
KQ0KPj4gDQo+PiBQbGVhc2UgY2FsbCAiRGVmYXVsdC1hcm02NCIgaGVyZS4gWW91IGNhbiBvdmVy
cmlkZSBpbWFnZSByZWNpcGUNCj4+IGhlcmUgYWRkaW5nIChkb24ndCBrbm93IGlmIHRoYXQnbGwg
YmUgbmVjZXNzYXJ5KToNCj4+IC0tLT4xLEl0IGlzIHVzZWQgdG8gZGlzdGluZ3Vpc2ggYmV0d2Vl
biBzZCBjYXJkIGFuZCBlbW1jLlNvIEl0IGNhbiBsZXQgdXNlcnMgYmV0dGVyIHJlY29uZ2luemUg
dGhhdCBpdCBjYW4gYmUgYXBwbGllZCB0byBFTU1DIHJhdGhlciB0aGFuIGp1c3Qgc2QgY2FyZC4N
Cj4gDQo+IEJ1dCB3aXRoIHRoaXMgcGF0Y2gsIHRoZSBpbWFnZSBoYXMgaW4gbmFtZSAiZW1tYyIg
b25seSwgaG93IHdvdWxkIHVzZXJzIGtub3cgdGhhdA0KPiB0aGV5IGNhbiB1c2UgaXQgZm9yIFNE
IGNhcmQ/IElmIGJvdGggaW1hZ2VzIGFyZSBpbnRlcmNoYW5nYWJsZSBZb3UgaGF2ZSB0byBleHRl
bmQNCj4gY29tbWl0IG1lc3NhZ2Ugd2l0aCBpbnN0dWN0aW9ucywgdGhhdCBzaW5nbGUgaW1hZ2Ug
Y2FuIGJlIHVzZWQgb24gYm90aCBtZWRpdW1zDQo+IGFuZCBob3cgdG8gdXNlIHRoZW0gKHRoZSBT
RCBjYXJkIGlzIHJhdGhlciBvYnZpb3VzLCBidXQgbW9yZSBleHBsYW5hdGlvbiBpcw0KPiBuZWVk
ZWQgZm9yIHRoZSBlTU1DKS4NCj4gQ3J1Y2lhbCBxdWVzdGlvbiBpcyBsZWZ0IHVuYW5zd2VyZWQ6
IERvZXMgdGhlIFUtQm9vdCBieSBkZWZhdWx0IGJvb3QgT3BlbldydCBmcm9tDQo+IGVNTUMgb25s
eSBvciBlTU1DIGFuZCBTRCBjYXJkPyBBbmQgaWYgYm9vdCBmcm9tIGJvdGgsIHdoaWNoIGlzIGJv
b3RlZCBmaXJzdD8NCj4gDQo+PiAtLS0+MixDdXJyZW50bHksVGhlIHVib290IGRvZXMgbm90IHN1
cHBvcnQgJ2Zpcm13YXJlLWd6aXAnIHVwZ3JhZGVzIC5TbyBpdCBjYW4gbm90IHJlY292ZXIgc3lz
dGVtIHZpYSB1Ym9vdCwgd2hlbiB0aGUgdXNlcidzIEVNTUMgZmlybXdhcmUgZmFpbHMgdG8gYm9v
dC4NCj4gDQo+IE9rLg0KPiANCj4+IC0tLT4zLENvdWxkIGkgY3JlYXRlIGFub3RoZXIgZmlsZShn
bC1tdjEwMDAubWspIHRvIGluY2x1ZGUgJ0RlZmF1bHQtYXJtNjQtZW1tYyc/DQo+IA0KPiBObywg
cGxlYXNlIGRvbid0LiBZb3UgY2FuIGFsd2F5cyBvdmVycmlkZSBJTUFHRVMgdmFyaWFibGUgYW5k
IGFkZCBtdWx0aXBsZSBJTUFHRSByZWNpcGVzIGluIGRldmljZQ0KPiBkZWZpbml0aW9uLCB0aGVy
ZSBpcyBubyByZWFzb24gdG8gYWRkIGEgY29tbW9uIHN0dWIgdXNlZCBPTkxZIGJ5IG9uZSBkZXZp
Y2UuDQo+IA0KPj4gDQo+PiANCj4+IFRoYW5rIHlvdSENCj4+IA0KPj4gDQo+PiBMaSBaaGFuZyB8
IFNvZnR3YXJlIEVuZ2luZWVyDQo+PiBsaS56aGFuZ0BnbC1pbmV0LmNvbSANCj4+IEdMLmlOZXQg
IFdpRmkgZm9yIFRoaW5ncw0KPj4gV2Vic2l0ZTogd3d3LmdsLWluZXQuY29tICAgfCAgIExpbmtl
ZEluOiBnbC1pbmV0LmNvbSAgIHwgICBUZWw6ICs4Ni03NTUtODY2MC02MTI2DQo+PiBSb29tIDMw
NS0zMDYsIFNreXdvcnRoIERpZ2l0YWwgQnVpbGRpbmcgLCBTaGl5YW4gU3RyZWV0LCBCYW9hbiBE
aXN0cmljdCwgU2hlbnpoZW4sIENoaW5hDQo+PiBFbWFpbCBEaXNjbGFpbWVyOiBUaGUgY29udGVu
dCBvZiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQgaW50ZW5kZWQgZm9yIHRoZSByZWNp
cGllbnQgc3BlY2lmaWVkIGluIG1lc3NhZ2Ugb25seS4gSXQgaXMgc3RyaWN0bHkgZm9yYmlkZGVu
IHRvIHNoYXJlIGFueSBwYXJ0IG9mIHRoaXMgbWVzc2FnZSB3aXRoIGFueSB0aGlyZCBwYXJ0eSwg
d2l0aG91dCBhIHdyaXR0ZW4gY29uc2VudCBvZiB0aGUgc2VuZGVyLiBJZiB5b3UgcmVjZWl2ZWQg
dGhpcyBtZXNzYWdlIGJ5IG1pc3Rha2UsIHBsZWFzZSByZXBseSB0byB0aGlzIG1lc3NhZ2UgYW5k
IGZvbGxvdyB3aXRoIGl0cyBkZWxldGlvbiwgc28gdGhhdCB3ZSBjYW4gZW5zdXJlIHN1Y2ggYSBt
aXN0YWtlIGRvZXMgbm90IG9jY3VyIGluIHRoZSBmdXR1cmUuDQo+PiAgDQo+PiBGcm9tOiBUb21h
c3ogTWFjaWVqIE5vd2FrDQo+PiBEYXRlOiAyMDIwLTA0LTE0IDA0OjE0DQo+PiBUbzogTGkgWmhh
bmc7IG9wZW53cnQtZGV2ZWwNCj4+IFN1YmplY3Q6IFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENI
XSBtdmVidTogYWRkIHN1cHBvcnQgZm9yIEdMLmlOZXQgR0wtTVYxMDAwDQo+PiBIaSBMaSBaaGFu
Zy4NCj4+ICANCj4+IFRoaXMgdmVyc2lvbiBsb29rcyBtdWNoIGJldHRlciB0aGFuIHRoZSBmaXJz
dCBvbmUsDQo+PiBzb21lIGNvbW1lbnRzIGlubGluZS4NCj4+ICANCj4+IFcgZG5pdSAxMy4wNC4y
MDIwIG8gMTI6MjYsIExpIFpoYW5nIHBpc3plOg0KPj4+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0
cyBmb3IgR0wtTVYxMDAwLg0KPj4+DQo+Pj4gU3BlY2lmaWNhdGlvbjoNCj4+PiAtIFNPQzogTWFy
dmVsbCBBcm1hZGEgODhGMzcyMCAoMUdIeikNCj4+PiAtIEZsYXNoOiAxNk1CIChXMjVRMTI4RldT
SUcpDQo+Pj4gLSBSQU06IDFHQiBERFI0DQo+Pj4gLSBFdGhlcm5ldDogM3ggR0UgKDEgV0FOICsg
MiBMQU4pDQo+Pj4gLSBFTU1DOiA4R0IgRU1NQyAoS0xNOEcxR0VURi1CMDQxKQ0KPj4+IC0gTWlj
cm9TRDogMXggbWljcm9TRCBzbG90DQo+Pj4gLSBVU0I6IDF4IFVTQiAyLjAgcG9ydChUeXBlQSks
MXggVVNCIDMuMCBwb3J0KFR5cGVDKQ0KPj4+IC0gQnV0dG9uOiAxeCByZXNldCBidXR0b24sMXgg
c2xpZGUgc3dpdGNoDQo+Pj4gLSBMRUQ6IDN4IGdyZWVkIExFRA0KPj4+IC0gVUFSVDogMXggVUFS
VCBvbiBQQ0IgKEpQMTogMy4zViwgUlgsIFRYLCBHTkQpDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5
OiBMaSBaaGFuZyA8bGkuemhhbmdAZ2wtaW5ldC5jb20+DQo+Pj4gLS0tDQo+Pj4gIHBhY2thZ2Uv
Ym9vdC91Ym9vdC1lbnZ0b29scy9maWxlcy9tdmVidSAgICAgICAgICAgIHwgIDMgKw0KPj4+ICAu
Li4vY29ydGV4YTUzL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayAgICB8ICAzICst
DQo+Pj4gIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMgICAg
IHwgNjggKysrKysrKysrKysrKysrKysrKysrKw0KPj4+ICB0YXJnZXQvbGludXgvbXZlYnUvaW1h
Z2UvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICA5ICsrKw0KPj4+ICB0YXJnZXQvbGludXgv
bXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rICAgICAgICAgICAgICB8ICA5ICsrKw0KPj4+ICB0YXJn
ZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212ZWJ1X3NkY2FyZF9pbWcuc2ggICB8ICA2ICsrDQo+
Pj4gIC4uLi9tdmVidS9pbWFnZS9nZW5lcmljLWFybTY0LWVtbWMuYm9vdHNjcmlwdCAgICAgIHwg
MTIgKysrKw0KPj4+ICA3IGZpbGVzIGNoYW5nZWQsIDEwOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvZmlsZXMt
NC4xOS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWdsLW12MTAwMC1lbW1jLmR0
cw0KPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2dlbmVy
aWMtYXJtNjQtZW1tYy5ib290c2NyaXB0DQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9i
b290L3Vib290LWVudnRvb2xzL2ZpbGVzL212ZWJ1IGIvcGFja2FnZS9ib290L3Vib290LWVudnRv
b2xzL2ZpbGVzL212ZWJ1DQo+Pj4gaW5kZXggNzkwMjM4NC4uOWQyM2M3NyAxMDA2NDQNCj4+PiAt
LS0gYS9wYWNrYWdlL2Jvb3QvdWJvb3QtZW52dG9vbHMvZmlsZXMvbXZlYnUNCj4+PiArKysgYi9w
YWNrYWdlL2Jvb3QvdWJvb3QtZW52dG9vbHMvZmlsZXMvbXZlYnUNCj4+PiBAQCAtMjQsNiArMjQs
OSBAQCBnbG9iYWxzY2FsZSxlc3ByZXNzb2Jpbi12Ny1lbW1jfFwNCj4+PiAgbWFydmVsbCxhcm1h
ZGE4MDQwLW1jYmluKQ0KPj4+ICB1Ym9vdGVudl9hZGRfdWNpX2NvbmZpZyAiL2Rldi9tdGQwIiAi
MHgzZjAwMDAiICIweDEwMDAwIiAiMHgxMDAwMCIgIjEiDQo+Pj4gIDs7DQo+Pj4gK2dsaW5ldCxn
bC1tdjEwMDAtZW1tYykNCj4+PiArIHVib290ZW52X2FkZF91Y2lfY29uZmlnICIvZGV2L210ZDEi
ICIweDAiICIweDgwMDAiICIweDgwMDAiICIxIg0KPj4+ICsgOzsNCj4+PiAgbGlua3N5cyxjYWlt
YW58XA0KPj4+ICBsaW5rc3lzLGNvYnJhfFwNCj4+PiAgbGlua3N5cyxzaGVsYnkpDQo+Pj4gZGlm
ZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhNTMvYmFzZS1maWxlcy9ldGMvYm9h
cmQuZC8wMl9uZXR3b3JrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE1My9iYXNlLWZpbGVz
L2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsNCj4+PiBpbmRleCBiYTRiOTMwLi5lNWZmNjY3IDEwMDc1
NQ0KPj4+IC0tLSBhL3RhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhNTMvYmFzZS1maWxlcy9ldGMv
Ym9hcmQuZC8wMl9uZXR3b3JrDQo+Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE1
My9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsNCj4+PiBAQCAtMTQsNyArMTQsOCBA
QCBjYXNlICIkYm9hcmQiIGluDQo+Pj4gIGdsb2JhbHNjYWxlLGVzcHJlc3NvYmlufFwNCj4+PiAg
Z2xvYmFsc2NhbGUsZXNwcmVzc29iaW4tZW1tY3xcDQo+Pj4gIGdsb2JhbHNjYWxlLGVzcHJlc3Nv
YmluLXY3fFwNCj4+PiAtZ2xvYmFsc2NhbGUsZXNwcmVzc29iaW4tdjctZW1tYykNCj4+PiArZ2xv
YmFsc2NhbGUsZXNwcmVzc29iaW4tdjctZW1tY3xcDQo+Pj4gK2dsaW5ldCxnbC1tdjEwMDAtZW1t
YykNCj4+PiAgdWNpZGVmX3NldF9pbnRlcmZhY2VzX2xhbl93YW4gImxhbjAgbGFuMSIgIndhbiIN
Cj4+PiAgOzsNCj4+PiAgbWFydmVsbCxhcm1hZGEtMzcyMC1kYnxcDQo+Pj4gZGlmZiAtLWdpdCBh
L3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE5L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtZ2wtbXYxMDAwLWVtbWMuZHRzIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQu
MTkvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMN
Cj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4+IGluZGV4IDAwMDAwMDAuLmZlMDFkZmUNCj4+
PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTkv
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMNCj4+
PiBAQCAtMCwwICsxLDY4IEBADQo+PiAgDQo+PiBQbGVhc2UgYWRkIGEgbGljZW5zZSBpbiBTUERY
IGZvcm1hdCwgYSBjb21tb24gb25lIGlzIGR1YWwgTUlUIGFuZA0KPj4gR1BMLTIuMCsuDQo+PiAg
DQo+Pj4gKy8qDQo+Pj4gKyAqIERldmljZSBUcmVlIGZpbGUgZm9yIEdMLmlOZXQgR0wtTVYxMDAw
DQo+Pj4gKyAqLw0KPj4+ICsNCj4+PiArI2luY2x1ZGUgImFybWFkYS0zNzIwLWVzcHJlc3NvYmlu
LmR0cyINCj4+ICANCj4+IFRoaXMgaXMgZGlmZmVyZW50IGRldmljZSBmcm9tIEVTUFJFU1NPYmlu
IGFsdG9nZXRoZXIsIHBsZWFzZSBtYWtlIGl0DQo+PiBzdGFuZC1hbG9uZSBkdHMgKGNvcHkgZXNw
cmVzc29iaW4gZHRzLCBhZGQgcmVxdWlyZWQgbm9kZXMgYW5kDQo+PiByZW1vdmUvZGlzYWJsZSBu
b2RlcyBmb3IgZGV2aWNlcyBub3QgcHJlc2VudCBvbiB0aGUgR0wtTVYxMDAwKS4NCj4+IFdvdWxk
IGJlIGdvb2QgdG8gYWRkIGFsbCBMRURzIGFuZCBidXR0b25zIGFzIG5vZGVzLCB3aGljaCBzZWVt
IHRvIGJlDQo+PiBHUElPIGNvbnRyb2xsZWQgYXMgaW4gdGhpcyBwaWN0dXJlOg0KPj4gaHR0cHM6
Ly9zdGF0aWMuZ2wtaW5ldC5jb20vZG9jcy9lbi8zL2hhcmR3YXJlL212MTAwMC9tdjEwMDAucG5n
DQo+PiBidXQgdGhhdCdzIG5vdCBtYW5kYXRvcnkuDQo+PiAgDQo+Pj4gKw0KPj4+ICsvIHsNCj4+
PiArICAgICAgIG1vZGVsID0gIkdMLmluZXQgR0wtTVYxMDAwIChNYXJ2ZWxsKSI7DQo+PiAgDQo+
PiBJbnN0ZWFkIG9mIE1hcnZlbGwgbW9yZSBhcHJvcHJpYXRlIHdvdWxkIGJlIEJydW1lLCBzaW5j
ZSB0aGlzIGlzIHVzZWQNCj4+IG9uIFlvdXIgd2Vic2l0ZS4NCj4+ICANCj4+PiArICAgICAgIGNv
bXBhdGlibGUgPSAiZ2xpbmV0LGdsLW12MTAwMC1lbW1jIjsNCj4+ICANCj4+IEFkZCBoZXJlIHRv
IGNvbXBhdGlibGUgYXJyYXkgaW4gc2Vjb25kIHBsYWNlICJtYXJ2ZWxsLGFybWFkYTM3MjAiLg0K
Pj4gQXJlIHRoZXJlIGFueSBib2FyZHMgaW4gY3V0b21lcnMgaGFuZHMgd2hpY2ggZG8gbm90IGhh
dmUgU0QgY2FyZCBzbG90DQo+PiBvciBlTU1DIHNvbGRlcmVkPyBUaGVyZSBpcyBubyBwb2ludCBp
biBpbmRpY2F0aW5nIHRoZSBlTU1DIHByZXNlbmNlDQo+PiB3aGVuIGFsbCBzb2xkIGJvYXJkcyBh
cmUgdGhlIHNhbWUuIEluIGNhc2Ugb2YgRVNQUkVTU09iaW4gaXQncyB0aGVyZQ0KPj4gYmVjYXVz
ZSB2YXJpb3VzIGhhcmR3YXJlIHZlcnNpb25zLiBTbyBwbGVhc2UgcmVtb3ZlIGFsbCAtZW1tYyBz
dWZmaXhlcw0KPj4gZnJvbSBmaWxlcyBhbmQgZmlsZSBuYW1lcyBhY3Jvc3MgdGhpcyBwYXRjaCBp
ZiB0aGF0J3MgdGhlIGNhc2UuIE9uZQ0KPj4gZXhlcHRpb24gd291bGQgYmUgaWYgVS1Cb290IHNl
YXJjaGVzIGZvciBleGN0bHkgdGhpcyBuYW1lDQo+PiAoYXJtYWRhLWdsLW12MTAwMC1lbW1jLmR0
cykgd2hlbiBib290aW5nLCBidXQgbG9va2luZyBhdCB0aGUgdXNhZ2Ugb2YNCj4+IGJvb3Quc2Ny
IHRoYXQncyBub3QgdGhlIGNhc2UuDQo+PiAgDQo+Pj4gK307DQo+Pj4gKw0KPj4+ICsmc3BpMCB7
DQo+Pj4gKyAgICAgICAgc3RhdHVzID0gIm9rYXkiOw0KPj4+ICsNCj4+PiArICAgICAgICBmbGFz
aEAwIHsNCj4+PiArICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsNCj4+PiArICAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7DQo+Pj4gKyAgICAgICAgICAgICAgICBz
cGktbWF4LWZyZXF1ZW5jeSA9IDwxMDQwMDAwMDA+Ow0KPj4+ICsgICAgICAgICAgICAgICAgbTI1
cCxmYXN0LXJlYWQ7DQo+Pj4gKyAgICAgICAgICAgICAgICBwYXJ0aXRpb25zIHsNCj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsNCj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDE+Ow0KPj4+ICsNCj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgcGFydGl0aW9uQDAgew0KPj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGxhYmVsID0gInUtYm9vdCI7DQo+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVnID0gPDAgMHhmMDAwMD47DQo+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgIH07DQo+Pj4gKw0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBwYXJ0aXRpb25A
ZjAwMDAgew0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gInUt
Ym9vdC1lbnYiOw0KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDww
WGYwMDAwIDB4ODAwMD47DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIH07DQo+Pj4gKw0K
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBhcnQ6IHBhcnRpdGlvbkBmODAwMCB7DQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiYXJ0IjsNCj4+ICANCj4+
IFRoZSBuYW1lIG9mIHRoaXMgcGFydGl0aW9uIGlzIHJhdGhlciBzdHJhbmdlLCBzaW5jZSB0aGUg
aGFyZHdhcmUNCj4+IHNwZWNpZmljYXRpb24gZG9lc24ndCBtZW50aW9uIGFueSBQQ0llIG9yIFNE
SU8gY29ubmVjdGVkIHdpcmVsZXNzDQo+PiBjYXJkcyAoZG9uJ3Qga25vdyBpZiB0aGVyZSdzIGFu
eSBVU0IgY2FyZCB3aXRob3V0IGVlcHJvbSkuIElzDQo+PiB0aGVyZSBhbnkgY2FsaWJyYXRpb24g
ZGF0YSBzdG9yZWQgb3Igb25seSBNQUMgYWRkcmVzcy9hZGRyZXNzZXM/DQo+PiBEb2VzIFUtQm9v
dCBhbHNvIHJlYWQgaW5mb3JtYXRpb24gZnJvbSB0aGlzIHBhcnRpdGlvbj8gQW55d2F5DQo+PiB0
aGF0J3Mgbm90IGEgcmVtYXJrIHRvIGNoYW5nZSB0aGF0IG5hbWUsIEknbSBqdXN0IGN1cmlvdXMu
DQo+PiAgDQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4Zjgw
MDAgMHg4MDAwPjsNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgfTsNCj4+ICANCj4+IE9u
IHByZXZpb3VzIHBhdGNoLCB0aGVyZSB3ZXJlIGFkZGl0aW9ubmFsIHBhcnRpdGlvbnMgaW4gZHRz
DQo+PiB3aXRob3V0IC1lbW1jIHN1ZmZpeCA6IGR0YiwgZmlybXdhcmUuIElmIHRoYXQgc3BhY2Ug
d291bGQgYmUNCj4+IHVudXNlZCBpdCdzIGJldHRlciB0byBhZGQgdGhlbSBoZXJlLCBzbyBsYXRl
ciBZb3UgY291bGQNCj4+IGludHJvZHVjZSBpbWFnZXMgdGhhdCBjb3VsZCBiZSB3cml0dGVuIGlu
IFNQSSBmbGFzaC4NCj4+ICANCj4+PiArDQo+Pj4gKyAgICAgICAgICAgICAgIH07DQo+Pj4gKyAg
ICAgICAgfTsNCj4+PiArfTsNCj4+PiArDQo+Pj4gKyZzZGhjaTEgew0KPj4+ICsgICAgICAgIHdw
LWludmVydGVkOw0KPj4+ICsgICAgICAgIGJ1cy13aWR0aCA9IDw0PjsNCj4+PiArICAgICAgICBj
ZC1ncGlvcyA9IDwmZ3Bpb25iIDE3IEdQSU9fQUNUSVZFX0xPVz47DQo+Pj4gKyAgICAgICAgbWFy
dmVsbCxwYWQtdHlwZSA9ICJzZCI7DQo+Pj4gKyAgICAgICAgbm8tMS04LXY7DQo+Pj4gKyAgICAg
ICAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2RfcmVnMT47DQo+Pj4gKyAgICAgICAgc3RhdHVzID0g
Im9rYXkiOw0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArDQo+Pj4gKyZzZGhjaTAgew0KPj4+ICsgICAg
ICAgIGJ1cy13aWR0aCA9IDw4PjsNCj4+PiArICAgICAgICBtbWMtZGRyLTFfOHY7DQo+Pj4gKyAg
ICAgICAgbW1jLWhzNDAwLTFfOHY7DQo+Pj4gKyAgICAgICAgbm9uLXJlbW92YWJsZTsNCj4+PiAr
ICAgICAgICBuby1zZDsNCj4+PiArICAgICAgICBuby1zZGlvOw0KPj4+ICsgICAgICAgIG1hcnZl
bGwscGFkLXR5cGUgPSAiZml4ZWQtMS04diI7DQo+Pj4gKyAgICAgICAgc3RhdHVzID0gIm9rYXki
Ow0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArJmV0aDAgew0KPj4+ICsgbXRkLW1hYy1hZGRyZXNzID0g
PCZhcnQgMHgwPjsNCj4+PiArfTsNCj4+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1
L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlDQo+Pj4g
aW5kZXggZWY5Mjc0OC4uYjg0ODA0OSAxMDA2NDQNCj4+PiAtLS0gYS90YXJnZXQvbGludXgvbXZl
YnUvaW1hZ2UvTWFrZWZpbGUNCj4+PiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvTWFr
ZWZpbGUNCj4+PiBAQCAtMTA3LDYgKzEwNywxNSBAQCBkZWZpbmUgRGV2aWNlL0RlZmF1bHQtYXJt
NjQNCj4+PiAgICBLRVJORUwgOj0ga2VybmVsLWJpbg0KPj4+ICBlbmRlZg0KPj4+ICANCj4+PiAr
ZGVmaW5lIERldmljZS9EZWZhdWx0LWFybTY0LWVtbWMNCj4+ICANCj4+IFBsZWFzZSBkb24ndCBh
ZGQgZ2VuZXJpYyBkaWZpbml0aW9uIGZvciBzaW5nbGUgZGV2aWNlIHdoZXJlIG9ubHkNCj4+IGlt
YWdlIG5hbWUgYW5kIHJlY2lwZSBhcmUgc2xpZ2h0bHkgY2hhbmdlZCwgcGxlYXNlIHJlbW92ZSBp
dC4NCj4+ICANCj4+PiArICBCT09UX1NDUklQVCA6PSBnZW5lcmljLWFybTY0LWVtbWMNCj4+PiAr
ICBERVZJQ0VfRFRTX0RJUiA6PSAkKERUU19ESVIpL21hcnZlbGwNCj4+PiArICBJTUFHRVMgOj0g
ZW1tYy5pbWcNCj4+PiArICBJTUFHRS9lbW1jLmltZyA6PSBib290LXNjciB8IGJvb3QtaW1nLWV4
dDQgfCBzZGNhcmQtaW1nLWV4dDQgfCBhcHBlbmQtbWV0YWRhdGENCj4+PiArICBLRVJORUxfTkFN
RSA6PSBJbWFnZQ0KPj4+ICsgIEtFUk5FTCA6PSBrZXJuZWwtYmluDQo+Pj4gK2VuZGVmDQo+Pj4g
Kw0KPj4+ICBkZWZpbmUgRGV2aWNlL05BTkQtMTI4Sw0KPj4+ICAgIEJMT0NLU0laRSA6PSAxMjhr
DQo+Pj4gICAgUEFHRVNJWkUgOj0gMjA0OA0KPj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
bXZlYnUvaW1hZ2UvY29ydGV4YTUzLm1rIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRl
eGE1My5taw0KPj4+IGluZGV4IDc3ZjVjNzkuLjRkZmQwYjQgMTAwNjQ0DQo+Pj4gLS0tIGEvdGFy
Z2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5taw0KPj4+ICsrKyBiL3RhcmdldC9saW51
eC9tdmVidS9pbWFnZS9jb3J0ZXhhNTMubWsNCj4+PiBAQCAtNjksMyArNjksMTIgQEAgZGVmaW5l
IERldmljZS9tZXRob2RlX3VkcHUNCj4+PiAgICBCT09UX1NDUklQVCA6PSB1ZHB1DQo+Pj4gIGVu
ZGVmDQo+Pj4gIFRBUkdFVF9ERVZJQ0VTICs9IG1ldGhvZGVfdWRwdQ0KPj4+ICsNCj4+PiArZGVm
aW5lIERldmljZS9nbGluZXRfZ2wtbXYxMDAwLWVtbWMNCj4+PiArICAkKGNhbGwgRGV2aWNlL0Rl
ZmF1bHQtYXJtNjQtZW1tYykNCj4+ICANCj4+IFBsZWFzZSBjYWxsICJEZWZhdWx0LWFybTY0IiBo
ZXJlLiBZb3UgY2FuIG92ZXJyaWRlIGltYWdlIHJlY2lwZQ0KPj4gaGVyZSBhZGRpbmcgKGRvbid0
IGtub3cgaWYgdGhhdCdsbCBiZSBuZWNlc3NhcnkpOg0KPj4gQk9PVF9TQ1JJUFQgOj0gZ2VuZXJp
Yy1hcm02NC1lbW1jDQo+PiBJTUFHRVMgOj0gZW1tYy5pbWcNCj4+IElNQUdFL2VtbWMuaW1nIDo9
IGJvb3Qtc2NyIHwgYm9vdC1pbWctZXh0NCB8IHNkY2FyZC1pbWctZXh0NCB8IGFwcGVuZC1tZXRh
ZGF0YQ0KPj4gIA0KPj4+ICsgIERFVklDRV9USVRMRSA6PSBHTC5pTmV0IEdMLU1WMTAwMCBFTU1D
DQo+Pj4gKyAgREVWSUNFX0RUUyA6PSBhcm1hZGEtZ2wtbXYxMDAwLWVtbWMNCj4+PiArICBTVVBQ
T1JURURfREVWSUNFUyA6PSBnbGluZXQsZ2wtbXYxMDAwLWVtbWMNCj4+PiArZW5kZWYNCj4+PiAr
VEFSR0VUX0RFVklDRVMgKz0gZ2xpbmV0X2dsLW12MTAwMC1lbW1jDQo+Pj4gKw0KPj4+IGRpZmYg
LS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212ZWJ1X3NkY2FyZF9pbWcuc2gg
Yi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212ZWJ1X3NkY2FyZF9pbWcuc2gNCj4+PiBp
bmRleCA4NDJlNTkxLi41MDAyOGZlIDEwMDc1NQ0KPj4+IC0tLSBhL3RhcmdldC9saW51eC9tdmVi
dS9pbWFnZS9nZW5fbXZlYnVfc2RjYXJkX2ltZy5zaA0KPj4+ICsrKyBiL3RhcmdldC9saW51eC9t
dmVidS9pbWFnZS9nZW5fbXZlYnVfc2RjYXJkX2ltZy5zaA0KPj4+IEBAIC01MSw2ICs1MSwxMiBA
QCB3aGlsZSBbICIkIyIgLWdlIDMgXTsgZG8NCj4+PiAgc2hpZnQ7IHNoaWZ0OyBzaGlmdA0KPj4+
ICBkb25lDQo+Pj4gIA0KPj4+ICttb2RlbD0nJw0KPj4+ICttb2RlbD0kKGVjaG8gJE9VVEZJTEUg
fCBncmVwICJnbC1tdjEwMDAtZW1tYyIpDQo+Pj4gK1sgIiRtb2RlbCIgIT0gIiIgXSAmJiB7DQo+
Pj4gKyBwdGdlbl9hcmdzPSIkcHRnZW5fYXJncyAtdCA4MyAtcCA3MDkzNTA0Ig0KPj4gIA0KPj4g
UGxlYXNlIGRvbid0IGFkZCBkZXZpY2UgaGFja3MgaGVyZSBpdCdzIG1lbnQgdG8gYmUgYXMgZ2Vu
ZXJpYw0KPj4gYXMgcG9zaWJsZS4gSW5zdGVhZCwgYWRkIHBvc3NpYmlsaXR5IHRvIG92ZXJyaWRl
IENPTkZJR19UQVJHRVRfUk9PVEZTX1BBUlRTSVpFDQo+PiBhcyBwYXJhbWV0ZXIgdG8gImJvb3Qt
aW1nLWV4dDQiIGNvbW1hbmQuDQo+PiAgDQo+Pj4gK30NCj4+PiArDQo+Pj4gIGhlYWQ9MTYNCj4+
PiAgc2VjdD02Mw0KPj4+ICANCj4+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2lt
YWdlL2dlbmVyaWMtYXJtNjQtZW1tYy5ib290c2NyaXB0IGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2lt
YWdlL2dlbmVyaWMtYXJtNjQtZW1tYy5ib290c2NyaXB0DQo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQNCj4+PiBpbmRleCAwMDAwMDAwLi40ZGU0ZDM5DQo+Pj4gLS0tIC9kZXYvbnVsbA0KPj4+ICsr
KyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9nZW5lcmljLWFybTY0LWVtbWMuYm9vdHNjcmlw
dA0KPj4+IEBAIC0wLDAgKzEsMTIgQEANCj4+PiArc2V0ZW52IGJvb3RhcmdzICJyb290PS9kZXYv
bW1jYmxrMHAyIHJ3IHJvb3R3YWl0Ig0KPj4+ICsNCj4+PiAraWYgdGVzdCAtbiAiJHtjb25zb2xl
fSI7IHRoZW4NCj4+PiArIHNldGVudiBib290YXJncyAiJHtib290YXJnc30gJHtjb25zb2xlfSIN
Cj4+PiArZmkNCj4+PiArDQo+Pj4gK3NldGVudiBtbWNkZXYgMA0KPj4gIA0KPj4gRG9lcyB0aGUg
VS1Cb290IG9ubHkgbG9hZCAiYm9vdC5zY3IiIGZyb20gZmlyc3QgbW1jZGV2DQo+PiAoSSBhc3N1
bWUgdGhhdCdzIGVNTUMpIG9yIGFsc28gc2VhcmNoZXMgZm9yIGl0IG9uIFNEIGNhcmQ/IElmDQo+
PiBzZWFyY2hlZCBvbiBib3RoIGRldmljZXMsIHRoZXJlJ3Mgbm8gbmVlZCB0byBhZGQgdGhpcyBm
aWxlLCB1c2UNCj4+IGdlbmVyaWMtYXJtNjQuYm9vdHNjcmlwdC4gVGhhdCB3YXkgaW1hZ2Ugd2ls
bCBiZSBhcHBsaWNhYmxlIHRvDQo+PiBib3RoIHN0b3JhZ2UgbWVkaXVtcywganVzdCB3cml0ZSB0
aGlzIGluZm9ybWF0aW9uIGluIGNvbW1pdA0KPj4gbWVzc2FnZSB0byBpbmZvcm0gdXNlcnMuIElm
IFUtQm9vdCBzZWFyY2hlcyBmb3IgImJvb3Quc2NyIiBvbmx5DQo+PiBvbiBlTU1DLCB0aGVuIHJl
bmFtZSB0aGlzIGZpbGUgdG8gZ2wtbXYxMDAwLmJvb3RzY3JpcHQgYW5kIHNldA0KPj4gaXQgaW4g
Qk9PVF9TQ1JJUFQgdmFyaWFibGUuDQo+Pj4gKw0KPj4+ICtsb2FkIG1tYyAke21tY2Rldn06MSAk
e2ZkdF9hZGRyfSBARFRCQC5kdGINCj4+PiArbG9hZCBtbWMgJHttbWNkZXZ9OjEgJHtrZXJuZWxf
YWRkcn0gSW1hZ2UNCj4+PiArDQo+Pj4gK2Jvb3RpICR7a2VybmVsX2FkZHJ9IC0gJHtmZHRfYWRk
cn0NCj4+Pg0KPj4gIA0KPj4gUmVnYXJkcywgVG9tYXN6DQo+PiANCj4gDQo+IA0KIA0KIA0K

------=_001_NextPart164524647618_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }p { margin-top: 0px; margin-botto=
m: 0px; }body { font-size: 10.5pt; font-family: =E5=BE=AE=E8=BD=AF=E9=9B=
=85=E9=BB=91; color: rgb(0, 0, 0); line-height: 1.5; }</style></head><body=
>=0A<div><span></span>Hi Piotr,Tomasz:</div><div><br></div><div><div>ART h=
as a specific meaning (Atheros Radio Test) and it looks just wrong</div><d=
iv>here, not just weird.</div><div>&nbsp;</div><div>Why not change it to s=
omething less misleading?</div><div>Maybe 'factory' or 'vendor'?</div></di=
v><div><br></div><div>Thank you very much for your advise.Next time,I'll c=
hange it.</div><hr style=3D"width: 210px; height: 1px;" color=3D"#b5c4df" =
size=3D"1" align=3D"left">=0A<div><span><p class=3D"MsoNormal" style=3D"ma=
rgin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', s=
erif; text-align: justify; line-height: 15.75pt;"><b><span style=3D"font-s=
ize: 11.5pt; font-family: 'Segoe UI', sans-serif;">Li Zhang&nbsp;</span></=
b><b><span style=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-serif;=
 color: gray;">| Software Engineer</span></b><span style=3D"font-size: 11p=
t; font-family: =E7=AD=89=E7=BA=BF, serif;"><o:p></o:p></span></p><p class=
=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-fa=
mily: 'Times New Roman', serif; text-align: justify; line-height: 15.75pt;=
"><b><u><span style=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-ser=
if; color: rgb(0, 0, 238);"><font color=3D"#800080">li.zhang<a href=3D"mai=
lto:luoweilong@gl-inet.com" style=3D"text-decoration: none !important;">@g=
l-inet.com</a></font></span></u></b><b><span style=3D"font-size: 8.5pt; fo=
nt-family: 'Segoe UI', sans-serif; color: gray;">&nbsp;</span></b></p><p c=
lass=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; fon=
t-family: 'Times New Roman', serif; text-align: justify; line-height: 15.7=
5pt;"><b><span style=3D"font-size: 11.5pt; font-family: Arial, sans-serif;=
 color: gray;">GL.iNet &nbsp;</span></b><i><span style=3D"font-size: 8.5pt=
; font-family: Arial, sans-serif; color: gray;">WiFi for Things</span></i>=
<span style=3D"font-size: 11pt; font-family: =E7=AD=89=E7=BA=BF, serif;"><=
o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.000=
1pt; font-size: 12pt; font-family: 'Times New Roman', serif; text-align: j=
ustify; line-height: 15.75pt;"><span style=3D"font-size: 8.5pt; font-famil=
y: 'Segoe UI', sans-serif; color: gray;">Website:&nbsp;</span><span style=
=3D"font-size: 8.5pt; font-family: 'Segoe UI Semilight', sans-serif; color=
: gray;"><a href=3D"https://gl-inet.com/" style=3D"text-decoration: none !=
important; color: purple;"><span style=3D"font-family: 'Segoe UI', sans-se=
rif;">www.gl-inet.com</span></a></span><span style=3D"font-size: 8.5pt; fo=
nt-family: 'Segoe UI', sans-serif; color: rgb(51, 51, 51);">&nbsp;</span><=
span style=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-serif; color=
: gray;">&nbsp; | &nbsp;&nbsp;LinkedIn:&nbsp;</span><u><span style=3D"font=
-size: 8.5pt; font-family: 'Segoe UI', sans-serif; color: rgb(0, 0, 238);"=
><a href=3D"https://www.linkedin.com/company/gl-inet.com/" style=3D"text-d=
ecoration: none !important; color: purple;">gl-inet.com</a></span></u><spa=
n style=3D"font-size: 8.5pt; font-family: 'Segoe UI', sans-serif; color: g=
ray;">&nbsp;&nbsp;&nbsp;| &nbsp; Tel: +86-755-8660-6126</span><span style=
=3D"font-size: 11pt; font-family: =E7=AD=89=E7=BA=BF, serif;"><o:p></o:p><=
/span></p><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-s=
ize: 12pt; font-family: 'Times New Roman', serif; text-align: justify; lin=
e-height: 15.75pt;"><span style=3D"font-size: 8.5pt; font-family: 'Segoe U=
I', sans-serif; color: gray;">Room&nbsp;305-306, Skyworth Digital Building=
 , Shiyan Street, Baoan District, Shenzhen, China</span><span style=3D"fon=
t-size: 11pt; font-family: =E7=AD=89=E7=BA=BF, serif;"><o:p></o:p></span><=
/p><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12=
pt; font-family: 'Times New Roman', serif; text-align: justify; line-heigh=
t: 15.75pt;"><b><span style=3D"font-size: 7.5pt; font-family: 'Segoe UI', =
sans-serif; color: gray;">Email Disclaimer:</span></b><span style=3D"font-=
size: 7.5pt; font-family: 'Segoe UI', sans-serif; color: gray;">&nbsp;The =
content of this email is confidential and intended for the recipient speci=
fied in message only. It is strictly forbidden to share any part of this m=
essage with any third party, without a written consent of the sender. If y=
ou received this message by mistake, please reply to this message and foll=
ow with its deletion, so that we can ensure such a mistake does not occur =
in the future.</span></p></span></div>=0A<blockquote style=3D"margin-Top: =
0px; margin-Bottom: 0px; margin-Left: 0.5em"><div>&nbsp;</div><div style=
=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm">=
<div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FONT-SIZE: 12px;FONT-=
FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDING-BOTTOM: 8px; PAD=
DING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto:pepe2k@gmail.com">=
Piotr Dymacz</a></div><div><b>Date:</b>&nbsp;2020-04-15&nbsp;17:36</div><d=
iv><b>To:</b>&nbsp;<a href=3D"mailto:tomek_n@o2.pl">Tomasz Maciej Nowak</a=
>; <a href=3D"mailto:li.zhang@gl-inet.com">Li.zhang</a>; <a href=3D"mailto=
:openwrt-devel@lists.openwrt.org">openwrt-devel</a></div><div><b>Subject:<=
/b>&nbsp;Re: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1=
000</div></div></div><div><div>Hi Tomasz, Li,</div>=0A<div>&nbsp;</div>=0A=
<div>On 14.04.2020 20:53, Tomasz Maciej Nowak wrote:</div>=0A<div>&gt; W d=
niu 14.04.2020 o&nbsp;06:20, Li.zhang pisze:</div>=0A<div>&gt;&gt; Hi Toma=
sz,</div>=0A<div>&gt;&gt; Thank you very much for you correction.</div>=0A=
<div>&gt;&gt; </div>=0A<div>&gt;&gt;&gt; +};</div>=0A<div>&gt;&gt;&gt; +</=
div>=0A<div>&gt;&gt;&gt; +&amp;spi0 {</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "okay";</div>=0A<div>&gt;&gt;=
&gt; +</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; flash@0 {</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0&gt;=
;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "jedec,spi-no=
r";</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spi-max-frequency =3D &lt;=
104000000&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m25p,fast-read;=
</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partitions {</div>=0A<div>&gt=
;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; compatible =3D "fixed-partitions";</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #address-cells =3D =
&lt;1&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; #size-cells =3D &lt;1&gt;;</div>=0A<div>&gt;&=
gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; partition@0 {</div>=0A<div>&gt;&gt;&gt; +&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot";</div>=0A<div>&gt;&gt=
;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0 0xf0000&gt;;</=
div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; =
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partitio=
n@f0000 {</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; label =3D "u-boot-env";</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; reg =3D &lt;0Xf0000 0x8000&gt;;</div>=0A<div>&gt;&gt;&gt=
; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</di=
v>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; art: partition@f8000 {</div>=0A=
<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "art";=
</div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; The name of this partition i=
s rather strange, since the hardware</div>=0A<div>&gt;&gt; specification d=
oesn't mention any PCIe or SDIO connected wireless</div>=0A<div>&gt;&gt; c=
ards (don't know if there's any USB card without eeprom). Is</div>=0A<div>=
&gt;&gt; there any calibration data stored or only MAC address/addresses?<=
/div>=0A<div>&gt;&gt; Does U-Boot also read information from this partitio=
n? Anyway</div>=0A<div>&gt;&gt; that's not a remark to change that name, I=
'm just curious.</div>=0A<div>&gt;&gt; ---&gt;MAC,SN,DDNS and ther private=
 information are stored in the art.</div>=0A<div>&gt; </div>=0A<div>&gt; O=
k, still that name is weird, but that's matter of taste.</div>=0A<div>&nbs=
p;</div>=0A<div>ART has a specific meaning (Atheros Radio Test) and it loo=
ks just wrong </div>=0A<div>here, not just weird.</div>=0A<div>&nbsp;</div=
>=0A<div>Why not change it to something less misleading?</div>=0A<div>Mayb=
e 'factory' or 'vendor'?</div>=0A<div>&nbsp;</div>=0A<div>-- </div>=0A<div=
>Cheers,</div>=0A<div>Piotr</div>=0A<div>&nbsp;</div>=0A<div>&gt; </div>=
=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; On previous patch, there were addi=
tionnal partitions in dts</div>=0A<div>&gt;&gt; without -emmc suffix : dtb=
, firmware. If that space would be</div>=0A<div>&gt;&gt; unused it's bette=
r to add them here, so later You could</div>=0A<div>&gt;&gt; introduce ima=
ges that could be written in SPI flash.</div>=0A<div>&gt;&gt; ---&gt;There=
 is a short backup firmware in additionnal partitions of flash,normally it=
's not visible.In addition The offical firmware is stored in EMMC,So the p=
revious file(gl-mv1000.dts) was deleted.</div>=0A<div>&gt; </div>=0A<div>&=
gt; Then it would be better to specify those partitions, as some users cou=
ld simply</div>=0A<div>&gt; overwrite this thinking that's unoccupied spac=
e.</div>=0A<div>&gt; </div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt;&gt; +de=
fine Device/Default-arm64-emmc</div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt=
; Please don't add generic difinition for single device where only</div>=
=0A<div>&gt;&gt; image name and recipe are slightly changed, please remove=
 it.</div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt;&gt; +&nbsp; BOOT_SCRIPT =
:=3D generic-arm64-emmc</div>=0A<div>&gt;&gt;&gt; +&nbsp; DEVICE_DTS_DIR :=
=3D $(DTS_DIR)/marvell</div>=0A<div>&gt;&gt;&gt; +&nbsp; IMAGES :=3D emmc.=
img</div>=0A<div>&gt;&gt;&gt; +&nbsp; IMAGE/emmc.img :=3D boot-scr | boot-=
img-ext4 | sdcard-img-ext4 | append-metadata</div>=0A<div>&gt;&gt;&gt; +&n=
bsp; KERNEL_NAME :=3D Image</div>=0A<div>&gt;&gt;&gt; +&nbsp; KERNEL :=3D =
kernel-bin</div>=0A<div>&gt;&gt;&gt; +endef</div>=0A<div>&gt;&gt;&gt; +</d=
iv>=0A<div>&gt;&gt;&gt;&nbsp; define Device/NAND-128K</div>=0A<div>&gt;&gt=
;&gt;&nbsp;&nbsp;&nbsp; BLOCKSIZE :=3D 128k</div>=0A<div>&gt;&gt;&gt;&nbsp=
;&nbsp;&nbsp; PAGESIZE :=3D 2048</div>=0A<div>&gt;&gt;&gt; diff --git a/ta=
rget/linux/mvebu/image/cortexa53.mk b/target/linux/mvebu/image/cortexa53.m=
k</div>=0A<div>&gt;&gt;&gt; index 77f5c79..4dfd0b4 100644</div>=0A<div>&gt=
;&gt;&gt; --- a/target/linux/mvebu/image/cortexa53.mk</div>=0A<div>&gt;&gt=
;&gt; +++ b/target/linux/mvebu/image/cortexa53.mk</div>=0A<div>&gt;&gt;&gt=
; @@ -69,3 +69,12 @@ define Device/methode_udpu</div>=0A<div>&gt;&gt;&gt;&=
nbsp;&nbsp;&nbsp; BOOT_SCRIPT :=3D udpu</div>=0A<div>&gt;&gt;&gt;&nbsp; en=
def</div>=0A<div>&gt;&gt;&gt;&nbsp; TARGET_DEVICES +=3D methode_udpu</div>=
=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +define Device/glinet_gl-=
mv1000-emmc</div>=0A<div>&gt;&gt;&gt; +&nbsp; $(call Device/Default-arm64-=
emmc)</div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; Please call "Default-ar=
m64" here. You can override image recipe</div>=0A<div>&gt;&gt; here adding=
 (don't know if that'll be necessary):</div>=0A<div>&gt;&gt; ---&gt;1,It i=
s used to distinguish between sd card and emmc.So It can let users better =
reconginze that it can be applied to EMMC rather than just sd card.</div>=
=0A<div>&gt; </div>=0A<div>&gt; But with this patch, the image has in name=
 "emmc" only, how would users know that</div>=0A<div>&gt; they can use it =
for SD card? If both images are interchangable You have to extend</div>=0A=
<div>&gt; commit message with instuctions, that single image can be used o=
n both mediums</div>=0A<div>&gt; and how to use them (the SD card is rathe=
r obvious, but more explanation is</div>=0A<div>&gt; needed for the eMMC).=
</div>=0A<div>&gt; Crucial question is left unanswered: Does the U-Boot by=
 default boot OpenWrt from</div>=0A<div>&gt; eMMC only or eMMC and SD card=
? And if boot from both, which is booted first?</div>=0A<div>&gt; </div>=
=0A<div>&gt;&gt; ---&gt;2,Currently,The uboot does not support 'firmware-g=
zip' upgrades .So it can not recover system via uboot, when the user's EMM=
C firmware fails to boot.</div>=0A<div>&gt; </div>=0A<div>&gt; Ok.</div>=
=0A<div>&gt; </div>=0A<div>&gt;&gt; ---&gt;3,Could i create another file(g=
l-mv1000.mk) to include 'Default-arm64-emmc'?</div>=0A<div>&gt; </div>=0A<=
div>&gt; No, please don't. You can always override IMAGES variable and add=
 multiple IMAGE recipes in device</div>=0A<div>&gt; definition, there is n=
o reason to add a common stub used ONLY by one device.</div>=0A<div>&gt; <=
/div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; Thank =
you!</div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; </div>=0A<div>&gt;&gt; L=
i Zhang | Software Engineer</div>=0A<div>&gt;&gt; li.zhang@gl-inet.com </d=
iv>=0A<div>&gt;&gt; GL.iNet&nbsp; WiFi for Things</div>=0A<div>&gt;&gt; We=
bsite: www.gl-inet.com&nbsp;&nbsp; |&nbsp;&nbsp; LinkedIn: gl-inet.com&nbs=
p;&nbsp; |&nbsp;&nbsp; Tel: +86-755-8660-6126</div>=0A<div>&gt;&gt; Room 3=
05-306, Skyworth Digital Building , Shiyan Street, Baoan District, Shenzhe=
n, China</div>=0A<div>&gt;&gt; Email Disclaimer: The content of this email=
 is confidential and intended for the recipient specified in message only.=
 It is strictly forbidden to share any part of this message with any third=
 party, without a written consent of the sender. If you received this mess=
age by mistake, please reply to this message and follow with its deletion,=
 so that we can ensure such a mistake does not occur in the future.</div>=
=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; From: Tomasz Maciej Nowak</d=
iv>=0A<div>&gt;&gt; Date: 2020-04-14 04:14</div>=0A<div>&gt;&gt; To: Li Zh=
ang; openwrt-devel</div>=0A<div>&gt;&gt; Subject: Re: [OpenWrt-Devel] [PAT=
CH] mvebu: add support for GL.iNet GL-MV1000</div>=0A<div>&gt;&gt; Hi Li Z=
hang.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; This version look=
s much better than the first one,</div>=0A<div>&gt;&gt; some comments inli=
ne.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; W dniu 13.04.2020 o=
 12:26, Li Zhang pisze:</div>=0A<div>&gt;&gt;&gt; This patch adds supports=
 for GL-MV1000.</div>=0A<div>&gt;&gt;&gt;</div>=0A<div>&gt;&gt;&gt; Specif=
ication:</div>=0A<div>&gt;&gt;&gt; - SOC: Marvell Armada 88F3720 (1GHz)</d=
iv>=0A<div>&gt;&gt;&gt; - Flash: 16MB (W25Q128FWSIG)</div>=0A<div>&gt;&gt;=
&gt; - RAM: 1GB DDR4</div>=0A<div>&gt;&gt;&gt; - Ethernet: 3x GE (1 WAN + =
2 LAN)</div>=0A<div>&gt;&gt;&gt; - EMMC: 8GB EMMC (KLM8G1GETF-B041)</div>=
=0A<div>&gt;&gt;&gt; - MicroSD: 1x microSD slot</div>=0A<div>&gt;&gt;&gt; =
- USB: 1x USB 2.0 port(TypeA),1x USB 3.0 port(TypeC)</div>=0A<div>&gt;&gt;=
&gt; - Button: 1x reset button,1x slide switch</div>=0A<div>&gt;&gt;&gt; -=
 LED: 3x greed LED</div>=0A<div>&gt;&gt;&gt; - UART: 1x UART on PCB (JP1: =
3.3V, RX, TX, GND)</div>=0A<div>&gt;&gt;&gt;</div>=0A<div>&gt;&gt;&gt; Sig=
ned-off-by: Li Zhang &lt;li.zhang@gl-inet.com&gt;</div>=0A<div>&gt;&gt;&gt=
; ---</div>=0A<div>&gt;&gt;&gt;&nbsp; package/boot/uboot-envtools/files/mv=
ebu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nb=
sp; 3 +</div>=0A<div>&gt;&gt;&gt;&nbsp; .../cortexa53/base-files/etc/board=
.d/02_network&nbsp;&nbsp;&nbsp; |&nbsp; 3 +-</div>=0A<div>&gt;&gt;&gt;&nbs=
p; .../boot/dts/marvell/armada-gl-mv1000-emmc.dts&nbsp;&nbsp;&nbsp;&nbsp; =
| 68 ++++++++++++++++++++++</div>=0A<div>&gt;&gt;&gt;&nbsp; target/linux/m=
vebu/image/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 9 +++</div>=0A<div=
>&gt;&gt;&gt;&nbsp; target/linux/mvebu/image/cortexa53.mk&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 9 ++=
+</div>=0A<div>&gt;&gt;&gt;&nbsp; target/linux/mvebu/image/gen_mvebu_sdcar=
d_img.sh&nbsp;&nbsp; |&nbsp; 6 ++</div>=0A<div>&gt;&gt;&gt;&nbsp; .../mveb=
u/image/generic-arm64-emmc.bootscript&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 12 +=
+++</div>=0A<div>&gt;&gt;&gt;&nbsp; 7 files changed, 109 insertions(+), 1 =
deletion(-)</div>=0A<div>&gt;&gt;&gt;&nbsp; create mode 100644 target/linu=
x/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts</=
div>=0A<div>&gt;&gt;&gt;&nbsp; create mode 100644 target/linux/mvebu/image=
/generic-arm64-emmc.bootscript</div>=0A<div>&gt;&gt;&gt;</div>=0A<div>&gt;=
&gt;&gt; diff --git a/package/boot/uboot-envtools/files/mvebu b/package/bo=
ot/uboot-envtools/files/mvebu</div>=0A<div>&gt;&gt;&gt; index 7902384..9d2=
3c77 100644</div>=0A<div>&gt;&gt;&gt; --- a/package/boot/uboot-envtools/fi=
les/mvebu</div>=0A<div>&gt;&gt;&gt; +++ b/package/boot/uboot-envtools/file=
s/mvebu</div>=0A<div>&gt;&gt;&gt; @@ -24,6 +24,9 @@ globalscale,espressobi=
n-v7-emmc|\</div>=0A<div>&gt;&gt;&gt;&nbsp; marvell,armada8040-mcbin)</div=
>=0A<div>&gt;&gt;&gt;&nbsp; ubootenv_add_uci_config "/dev/mtd0" "0x3f0000"=
 "0x10000" "0x10000" "1"</div>=0A<div>&gt;&gt;&gt;&nbsp; ;;</div>=0A<div>&=
gt;&gt;&gt; +glinet,gl-mv1000-emmc)</div>=0A<div>&gt;&gt;&gt; + ubootenv_a=
dd_uci_config "/dev/mtd1" "0x0" "0x8000" "0x8000" "1"</div>=0A<div>&gt;&gt=
;&gt; + ;;</div>=0A<div>&gt;&gt;&gt;&nbsp; linksys,caiman|\</div>=0A<div>&=
gt;&gt;&gt;&nbsp; linksys,cobra|\</div>=0A<div>&gt;&gt;&gt;&nbsp; linksys,=
shelby)</div>=0A<div>&gt;&gt;&gt; diff --git a/target/linux/mvebu/cortexa5=
3/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa53/base-fi=
les/etc/board.d/02_network</div>=0A<div>&gt;&gt;&gt; index ba4b930..e5ff66=
7 100755</div>=0A<div>&gt;&gt;&gt; --- a/target/linux/mvebu/cortexa53/base=
-files/etc/board.d/02_network</div>=0A<div>&gt;&gt;&gt; +++ b/target/linux=
/mvebu/cortexa53/base-files/etc/board.d/02_network</div>=0A<div>&gt;&gt;&g=
t; @@ -14,7 +14,8 @@ case "$board" in</div>=0A<div>&gt;&gt;&gt;&nbsp; glob=
alscale,espressobin|\</div>=0A<div>&gt;&gt;&gt;&nbsp; globalscale,espresso=
bin-emmc|\</div>=0A<div>&gt;&gt;&gt;&nbsp; globalscale,espressobin-v7|\</d=
iv>=0A<div>&gt;&gt;&gt; -globalscale,espressobin-v7-emmc)</div>=0A<div>&gt=
;&gt;&gt; +globalscale,espressobin-v7-emmc|\</div>=0A<div>&gt;&gt;&gt; +gl=
inet,gl-mv1000-emmc)</div>=0A<div>&gt;&gt;&gt;&nbsp; ucidef_set_interfaces=
_lan_wan "lan0 lan1" "wan"</div>=0A<div>&gt;&gt;&gt;&nbsp; ;;</div>=0A<div=
>&gt;&gt;&gt;&nbsp; marvell,armada-3720-db|\</div>=0A<div>&gt;&gt;&gt; dif=
f --git a/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada=
-gl-mv1000-emmc.dts b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/ma=
rvell/armada-gl-mv1000-emmc.dts</div>=0A<div>&gt;&gt;&gt; new file mode 10=
0644</div>=0A<div>&gt;&gt;&gt; index 0000000..fe01dfe</div>=0A<div>&gt;&gt=
;&gt; --- /dev/null</div>=0A<div>&gt;&gt;&gt; +++ b/target/linux/mvebu/fil=
es-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000-emmc.dts</div>=0A<div=
>&gt;&gt;&gt; @@ -0,0 +1,68 @@</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&=
gt;&gt; Please add a license in SPDX format, a common one is dual MIT and<=
/div>=0A<div>&gt;&gt; GPL-2.0+.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>=
&gt;&gt;&gt; +/*</div>=0A<div>&gt;&gt;&gt; + * Device Tree file for GL.iNe=
t GL-MV1000</div>=0A<div>&gt;&gt;&gt; + */</div>=0A<div>&gt;&gt;&gt; +</di=
v>=0A<div>&gt;&gt;&gt; +#include "armada-3720-espressobin.dts"</div>=0A<di=
v>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; This is different device from ESPR=
ESSObin altogether, please make it</div>=0A<div>&gt;&gt; stand-alone dts (=
copy espressobin dts, add required nodes and</div>=0A<div>&gt;&gt; remove/=
disable nodes for devices not present on the GL-MV1000).</div>=0A<div>&gt;=
&gt; Would be good to add all LEDs and buttons as nodes, which seem to be<=
/div>=0A<div>&gt;&gt; GPIO controlled as in this picture:</div>=0A<div>&gt=
;&gt; https://static.gl-inet.com/docs/en/3/hardware/mv1000/mv1000.png</div=
>=0A<div>&gt;&gt; but that's not mandatory.</div>=0A<div>&gt;&gt;&nbsp; </=
div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +/ {</div>=0A<div>&gt=
;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; model =3D "GL.inet GL-MV10=
00 (Marvell)";</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; Instead =
of Marvell more apropriate would be Brume, since this is used</div>=0A<div=
>&gt;&gt; on Your website.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&=
gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D "glinet,gl-mv=
1000-emmc";</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; Add here to=
 compatible array in second place "marvell,armada3720".</div>=0A<div>&gt;&=
gt; Are there any boards in cutomers hands which do not have SD card slot<=
/div>=0A<div>&gt;&gt; or eMMC soldered? There is no point in indicating th=
e eMMC presence</div>=0A<div>&gt;&gt; when all sold boards are the same. I=
n case of ESPRESSObin it's there</div>=0A<div>&gt;&gt; because various har=
dware versions. So please remove all -emmc suffixes</div>=0A<div>&gt;&gt; =
from files and file names across this patch if that's the case. One</div>=
=0A<div>&gt;&gt; exeption would be if U-Boot searches for exctly this name=
</div>=0A<div>&gt;&gt; (armada-gl-mv1000-emmc.dts) when booting, but looki=
ng at the usage of</div>=0A<div>&gt;&gt; boot.scr that's not the case.</di=
v>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt;&gt; +};</div>=0A<div>&gt;&=
gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&amp;spi0 {</div>=0A<div>&gt;&gt;&gt;=
 +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "okay";</div>=0A<d=
iv>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; flash@0 {</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =
=3D &lt;0&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compatible =3D =
"jedec,spi-nor";</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spi-max-frequ=
ency =3D &lt;104000000&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m2=
5p,fast-read;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partitions {</di=
v>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; compatible =3D "fixed-partitions";</div>=0A<div>&gt;&gt;&gt=
; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #addre=
ss-cells =3D &lt;1&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #size-cells =3D &lt;1&gt;;</div>=
=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; partition@0 {</div>=0A<div>&gt;&g=
t;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; label =3D "u-boot";</div>=
=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
 0xf0000&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt;&gt; +</div>=0A<di=
v>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; partition@f0000 {</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; label =3D "u-boot-env";</div>=0A<div>&gt;&gt;&gt; +&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0Xf0000 0x8000&gt;;</div>=0A<=
div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; };</div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; art: partition@f=
8000 {</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l=
abel =3D "art";</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; The nam=
e of this partition is rather strange, since the hardware</div>=0A<div>&gt=
;&gt; specification doesn't mention any PCIe or SDIO connected wireless</d=
iv>=0A<div>&gt;&gt; cards (don't know if there's any USB card without eepr=
om). Is</div>=0A<div>&gt;&gt; there any calibration data stored or only MA=
C address/addresses?</div>=0A<div>&gt;&gt; Does U-Boot also read informati=
on from this partition? Anyway</div>=0A<div>&gt;&gt; that's not a remark t=
o change that name, I'm just curious.</div>=0A<div>&gt;&gt;&nbsp; </div>=
=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
xf8000 0x8000&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt;&nbsp; </div>=
=0A<div>&gt;&gt; On previous patch, there were additionnal partitions in d=
ts</div>=0A<div>&gt;&gt; without -emmc suffix : dtb, firmware. If that spa=
ce would be</div>=0A<div>&gt;&gt; unused it's better to add them here, so =
later You could</div>=0A<div>&gt;&gt; introduce images that could be writt=
en in SPI flash.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt;&gt; +<=
/div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt;&gt; +&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; };</div>=0A<div>&gt;&gt;&gt; +};</div=
>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&amp;sdhci1 {</div>=0A<=
div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wp-inverted;<=
/div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bus-=
width =3D &lt;4&gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; cd-gpios =3D &lt;&amp;gpionb 17 GPIO_ACTIVE_LOW&gt;;</div=
>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; marvell,=
pad-type =3D "sd";</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; no-1-8-v;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; vqmmc-supply =3D &lt;&amp;vcc_sd_reg1&gt;;</div>=0A<d=
iv>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D "ok=
ay";</div>=0A<div>&gt;&gt;&gt; +};</div>=0A<div>&gt;&gt;&gt; +</div>=0A<di=
v>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +&amp;sdhci0 {</div>=0A<div>&gt=
;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bus-width =3D &lt;8&=
gt;;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 mmc-ddr-1_8v;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; mmc-hs400-1_8v;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; non-removable;</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no-sd;</div>=0A<div>&gt;&gt;&gt; +&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no-sdio;</div>=0A<div>&gt;&gt;&gt; +&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; marvell,pad-type =3D "fixed-1-8v=
";</div>=0A<div>&gt;&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s=
tatus =3D "okay";</div>=0A<div>&gt;&gt;&gt; +};</div>=0A<div>&gt;&gt;&gt; =
+</div>=0A<div>&gt;&gt;&gt; +&amp;eth0 {</div>=0A<div>&gt;&gt;&gt; + mtd-m=
ac-address =3D &lt;&amp;art 0x0&gt;;</div>=0A<div>&gt;&gt;&gt; +};</div>=
=0A<div>&gt;&gt;&gt; diff --git a/target/linux/mvebu/image/Makefile b/targ=
et/linux/mvebu/image/Makefile</div>=0A<div>&gt;&gt;&gt; index ef92748..b84=
8049 100644</div>=0A<div>&gt;&gt;&gt; --- a/target/linux/mvebu/image/Makef=
ile</div>=0A<div>&gt;&gt;&gt; +++ b/target/linux/mvebu/image/Makefile</div=
>=0A<div>&gt;&gt;&gt; @@ -107,6 +107,15 @@ define Device/Default-arm64</di=
v>=0A<div>&gt;&gt;&gt;&nbsp;&nbsp;&nbsp; KERNEL :=3D kernel-bin</div>=0A<d=
iv>&gt;&gt;&gt;&nbsp; endef</div>=0A<div>&gt;&gt;&gt;&nbsp; </div>=0A<div>=
&gt;&gt;&gt; +define Device/Default-arm64-emmc</div>=0A<div>&gt;&gt;&nbsp;=
 </div>=0A<div>&gt;&gt; Please don't add generic difinition for single dev=
ice where only</div>=0A<div>&gt;&gt; image name and recipe are slightly ch=
anged, please remove it.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt=
;&gt; +&nbsp; BOOT_SCRIPT :=3D generic-arm64-emmc</div>=0A<div>&gt;&gt;&gt=
; +&nbsp; DEVICE_DTS_DIR :=3D $(DTS_DIR)/marvell</div>=0A<div>&gt;&gt;&gt;=
 +&nbsp; IMAGES :=3D emmc.img</div>=0A<div>&gt;&gt;&gt; +&nbsp; IMAGE/emmc=
.img :=3D boot-scr | boot-img-ext4 | sdcard-img-ext4 | append-metadata</di=
v>=0A<div>&gt;&gt;&gt; +&nbsp; KERNEL_NAME :=3D Image</div>=0A<div>&gt;&gt=
;&gt; +&nbsp; KERNEL :=3D kernel-bin</div>=0A<div>&gt;&gt;&gt; +endef</div=
>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt;&nbsp; define Device/NAND=
-128K</div>=0A<div>&gt;&gt;&gt;&nbsp;&nbsp;&nbsp; BLOCKSIZE :=3D 128k</div=
>=0A<div>&gt;&gt;&gt;&nbsp;&nbsp;&nbsp; PAGESIZE :=3D 2048</div>=0A<div>&g=
t;&gt;&gt; diff --git a/target/linux/mvebu/image/cortexa53.mk b/target/lin=
ux/mvebu/image/cortexa53.mk</div>=0A<div>&gt;&gt;&gt; index 77f5c79..4dfd0=
b4 100644</div>=0A<div>&gt;&gt;&gt; --- a/target/linux/mvebu/image/cortexa=
53.mk</div>=0A<div>&gt;&gt;&gt; +++ b/target/linux/mvebu/image/cortexa53.m=
k</div>=0A<div>&gt;&gt;&gt; @@ -69,3 +69,12 @@ define Device/methode_udpu<=
/div>=0A<div>&gt;&gt;&gt;&nbsp;&nbsp;&nbsp; BOOT_SCRIPT :=3D udpu</div>=0A=
<div>&gt;&gt;&gt;&nbsp; endef</div>=0A<div>&gt;&gt;&gt;&nbsp; TARGET_DEVIC=
ES +=3D methode_udpu</div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt;=
 +define Device/glinet_gl-mv1000-emmc</div>=0A<div>&gt;&gt;&gt; +&nbsp; $(=
call Device/Default-arm64-emmc)</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>=
&gt;&gt; Please call "Default-arm64" here. You can override image recipe</=
div>=0A<div>&gt;&gt; here adding (don't know if that'll be necessary):</di=
v>=0A<div>&gt;&gt; BOOT_SCRIPT :=3D generic-arm64-emmc</div>=0A<div>&gt;&g=
t; IMAGES :=3D emmc.img</div>=0A<div>&gt;&gt; IMAGE/emmc.img :=3D boot-scr=
 | boot-img-ext4 | sdcard-img-ext4 | append-metadata</div>=0A<div>&gt;&gt;=
&nbsp; </div>=0A<div>&gt;&gt;&gt; +&nbsp; DEVICE_TITLE :=3D GL.iNet GL-MV1=
000 EMMC</div>=0A<div>&gt;&gt;&gt; +&nbsp; DEVICE_DTS :=3D armada-gl-mv100=
0-emmc</div>=0A<div>&gt;&gt;&gt; +&nbsp; SUPPORTED_DEVICES :=3D glinet,gl-=
mv1000-emmc</div>=0A<div>&gt;&gt;&gt; +endef</div>=0A<div>&gt;&gt;&gt; +TA=
RGET_DEVICES +=3D glinet_gl-mv1000-emmc</div>=0A<div>&gt;&gt;&gt; +</div>=
=0A<div>&gt;&gt;&gt; diff --git a/target/linux/mvebu/image/gen_mvebu_sdcar=
d_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh</div>=0A<div>&=
gt;&gt;&gt; index 842e591..50028fe 100755</div>=0A<div>&gt;&gt;&gt; --- a/=
target/linux/mvebu/image/gen_mvebu_sdcard_img.sh</div>=0A<div>&gt;&gt;&gt;=
 +++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh</div>=0A<div>&gt;&=
gt;&gt; @@ -51,6 +51,12 @@ while [ "$#" -ge 3 ]; do</div>=0A<div>&gt;&gt;&=
gt;&nbsp; shift; shift; shift</div>=0A<div>&gt;&gt;&gt;&nbsp; done</div>=
=0A<div>&gt;&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt;&gt; +model=3D''</div>=0A=
<div>&gt;&gt;&gt; +model=3D$(echo $OUTFILE | grep "gl-mv1000-emmc")</div>=
=0A<div>&gt;&gt;&gt; +[ "$model" !=3D "" ] &amp;&amp; {</div>=0A<div>&gt;&=
gt;&gt; + ptgen_args=3D"$ptgen_args -t 83 -p 7093504"</div>=0A<div>&gt;&gt=
;&nbsp; </div>=0A<div>&gt;&gt; Please don't add device hacks here it's men=
t to be as generic</div>=0A<div>&gt;&gt; as posible. Instead, add possibil=
ity to override CONFIG_TARGET_ROOTFS_PARTSIZE</div>=0A<div>&gt;&gt; as par=
ameter to "boot-img-ext4" command.</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<d=
iv>&gt;&gt;&gt; +}</div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt;&n=
bsp; head=3D16</div>=0A<div>&gt;&gt;&gt;&nbsp; sect=3D63</div>=0A<div>&gt;=
&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt;&gt; diff --git a/target/linux/mvebu/=
image/generic-arm64-emmc.bootscript b/target/linux/mvebu/image/generic-arm=
64-emmc.bootscript</div>=0A<div>&gt;&gt;&gt; new file mode 100644</div>=0A=
<div>&gt;&gt;&gt; index 0000000..4de4d39</div>=0A<div>&gt;&gt;&gt; --- /de=
v/null</div>=0A<div>&gt;&gt;&gt; +++ b/target/linux/mvebu/image/generic-ar=
m64-emmc.bootscript</div>=0A<div>&gt;&gt;&gt; @@ -0,0 +1,12 @@</div>=0A<di=
v>&gt;&gt;&gt; +setenv bootargs "root=3D/dev/mmcblk0p2 rw rootwait"</div>=
=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt;&gt; +if test -n "${console}";=
 then</div>=0A<div>&gt;&gt;&gt; + setenv bootargs "${bootargs} ${console}"=
</div>=0A<div>&gt;&gt;&gt; +fi</div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&g=
t;&gt;&gt; +setenv mmcdev 0</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;=
&gt; Does the U-Boot only load "boot.scr" from first mmcdev</div>=0A<div>&=
gt;&gt; (I assume that's eMMC) or also searches for it on SD card? If</div=
>=0A<div>&gt;&gt; searched on both devices, there's no need to add this fi=
le, use</div>=0A<div>&gt;&gt; generic-arm64.bootscript. That way image wil=
l be applicable to</div>=0A<div>&gt;&gt; both storage mediums, just write =
this information in commit</div>=0A<div>&gt;&gt; message to inform users. =
If U-Boot searches for "boot.scr" only</div>=0A<div>&gt;&gt; on eMMC, then=
 rename this file to gl-mv1000.bootscript and set</div>=0A<div>&gt;&gt; it=
 in BOOT_SCRIPT variable.</div>=0A<div>&gt;&gt;&gt; +</div>=0A<div>&gt;&gt=
;&gt; +load mmc ${mmcdev}:1 ${fdt_addr} @DTB@.dtb</div>=0A<div>&gt;&gt;&gt=
; +load mmc ${mmcdev}:1 ${kernel_addr} Image</div>=0A<div>&gt;&gt;&gt; +</=
div>=0A<div>&gt;&gt;&gt; +booti ${kernel_addr} - ${fdt_addr}</div>=0A<div>=
&gt;&gt;&gt;</div>=0A<div>&gt;&gt;&nbsp; </div>=0A<div>&gt;&gt; Regards, T=
omasz</div>=0A<div>&gt;&gt; </div>=0A<div>&gt; </div>=0A<div>&gt; </div>=
=0A<div>&nbsp;</div>=0A<div>&nbsp;</div>=0A</div></blockquote>=0A</body></=
html>
------=_001_NextPart164524647618_=------







--===============7041281457711291725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7041281457711291725==--






