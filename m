Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C6F4B067
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 05:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDVhRkCI+yYwJcQfPOu5fjKYlC+n1eZoYWCiCFMMzvY=; b=ck33D+FtZ8XHod
	30vi3Rfz6senlr+948ZJfbgC14P3zMSS97DcuRE8XgRXpPhec9CTEEZMSEfhA+alR5k4z8N/+lbVX
	HmqFJlasFpbEMDnkKfDCWZvJ1pU6OSb55owNgUVVWDoGA42u72x0h6BwtIUD/2uxKe4rOW1wAj4WP
	hv6yqRlvR3DlrBCTxEW7O5GIAk7QKHIL8GvoVN2Hpm3CxdDObQ3172y39fNVMhZJZA7W4XzSrgtpy
	3hfkK+/OYM7KAQ2W6XzjWnWilH1jo5X4p4Lk3xTIFUM7NQD8TZtIrKUIkEmA6q5gj38GRkL6HP1ql
	ew5gRoWeLyLWx5wsrzsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdR9e-0001UJ-Ow; Wed, 19 Jun 2019 03:20:58 +0000
Received: from mail-he1eur04on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::618]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdR9V-0001Ts-2z
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 03:20:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XRhHG8NBzD35xzbahNJ5Dnmv59Bm+fgErNwHWpza1pA=;
 b=EBC1prVu0Bcj4EVMa3JK11vmwH7Yw1zXBC/R+uozSL/dTD9Ut0k5DqH7YYSVkVhyyhCTs70cdV2NAU6n1DKPaDBQMSLShftTwJOU6+mg9DBx0hUrvRlRGTo38XyAg5qc9e9bF03WjkIECUiaJj6saI7NiNelIvu8nH1MblEwB50=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2415.eurprd04.prod.outlook.com (10.169.134.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 19 Jun 2019 03:20:43 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::3408:f7f9:7f82:c67c]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::3408:f7f9:7f82:c67c%7]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 03:20:43 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: =?utf-8?B?UGV0ciDFoHRldGlhcg==?= <ynezz@true.cz>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH 5/6] build: switch to Python 3
Thread-Index: AQHVJUiGsWgWtfM75EWl0EOx82wYpKaiULOA
Date: Wed, 19 Jun 2019 03:20:43 +0000
Message-ID: <VI1PR0401MB22375B608C0DADFC24249471F8E50@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
 <1560802136-4157-6-git-send-email-ynezz@true.cz>
In-Reply-To: <1560802136-4157-6-git-send-email-ynezz@true.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9a9c95a-a2ed-4db0-38a5-08d6f4651d2b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2415; 
x-ms-traffictypediagnostic: VI1PR0401MB2415:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR0401MB2415BAF556147D111CB1359BF8E50@VI1PR0401MB2415.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(39860400002)(366004)(136003)(13464003)(199004)(189003)(186003)(316002)(14454004)(76176011)(6116002)(7736002)(81166006)(3846002)(305945005)(74316002)(110136005)(2501003)(7696005)(71200400001)(99286004)(76116006)(25786009)(6436002)(229853002)(73956011)(8936002)(2906002)(256004)(33656002)(81156014)(45080400002)(4326008)(66446008)(66556008)(66066001)(55016002)(9686003)(6306002)(446003)(14444005)(478600001)(8676002)(71190400001)(5660300002)(68736007)(11346002)(66946007)(66574012)(6246003)(64756008)(6506007)(476003)(102836004)(53546011)(53936002)(52536014)(86362001)(26005)(966005)(66476007)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2415;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VgVdFmN60reiRVGEqccsRCKCcF5goQM6r0VIz7A+pbXGFuK5epyua5iD7hmpPNxLwAcpu/XMz8vY6jQFcVi4dX6iESCIB+Lv8W5CoayJpTDYev9hq3kw5fy/99o5IaFuW7eQCrVf2vWIMO0oae6RmRDhw6vRC6p3zLPt8KGkWDEL3ZSvzzsP1Ohtbn0g1OmbQ6khMrYnRPTLKTal/byQr7YcsCGLhbCOp1Vt7nsPwrRTCx4FMQXyHfX8RDwrGurfR+MTdAnyUSV7mHvZqag7r/HdmlyrK7KMcYvNGvc8I8te8kEQsjb491mNwLVvt8eVKrfQlXmG4jnqfNaH1uKTNmWwHD71PD4PR8hp8Nz10+Ia1pUkZRgH2Ypvn9FCFX4xXXiqLK7SWpT6NignW65RL5FHiRVYgjtE3V0M3bfft0s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a9c95a-a2ed-4db0-38a5-08d6f4651d2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 03:20:43.6719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_202049_238927_D2E70002 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 5/6] build: switch to Python 3
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
Cc: Mathew McBride <matt@traverse.com.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQZXRyIMWg
dGV0aWFyIDx5bmV6ekB0cnVlLmN6Pg0KPiBTZW50OiAyMDE55bm0NuaciDE45pelIDQ6MDkNCj4g
VG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcNCj4gQ2M6IFBldHIgxaB0ZXRpYXIg
PHluZXp6QHRydWUuY3o+OyBZLmIuIEx1IDx5YW5nYm8ubHVAbnhwLmNvbT47IE1hdGhldw0KPiBN
Y0JyaWRlIDxtYXR0QHRyYXZlcnNlLmNvbS5hdT4NCj4gU3ViamVjdDogW1BBVENIIDUvNl0gYnVp
bGQ6IHN3aXRjaCB0byBQeXRob24gMw0KPiANCj4gVGhpcyBwYXRjaCBzd2l0Y2hlcyBQeXRob24g
dXNlZCBpbiBidWlsZHJvb3QgdG8gUHl0aG9uIDMgYXMgUHl0aG9uIDIueCBzZXJpZXMNCj4gaXMg
Z29pbmcgdG8gYmUgRU9MIHJlbGF0aXZlbHkgc29vblsxXS4NCj4gDQo+ICAiQmVpbmcgdGhlIGxh
c3Qgb2YgdGhlIFB5dGhvbiAyLnggc2VyaWVzLCAyLjcgd2lsbCBoYXZlIGFuIGV4dGVuZGVkDQo+
ICAgcGVyaW9kIG9mIG1haW50ZW5hbmNlLiBTcGVjaWZpY2FsbHksIDIuNyB3aWxsIHJlY2VpdmUg
YnVnZml4IHN1cHBvcnQNCj4gICB1bnRpbCBKYW51YXJ5IDEsIDIwMjAuIEFmdGVyIHRoZSBsYXN0
IHJlbGVhc2UsIDIuNyB3aWxsIHJlY2VpdmUgbm8NCj4gICBzdXBwb3J0LiINCj4gDQo+IEl0IHNl
ZW1zIGxpa2UgUHl0aG9uIDMgaXMgZ29pbmcgdG8gYmUgbmVlZGVkIGluIG9yZGVyIHRvIHN1cHBv
cnQgTWVzb24gYnVpbGQNCj4gc3lzdGVtIHdoaWNoIGhhcyBnYWluZWQgc29tZSB0cmFjdGlvbiBy
ZWNlbnRseS4NCj4gDQo+IEJ1aWxkIHRlc3RlZCBvbiBmb2xsb3dpbmcgdGFyZ2V0czoNCj4gDQo+
ICBhdGg3OS9nZW5lcmljDQo+ICBpbXg2L2dlbmVyaWMNCj4gIGlwcTQweHgvZ2VuZXJpYw0KPiAg
bGFudGlxL3h3YXkNCj4gIGxheWVyc2NhcGUvYXJtdjcgKGJyb2tlbikNCj4gIGxheWVyc2NhcGUv
YXJtdjhfMzJiIChicm9rZW4pDQo+ICBsYXllcnNjYXBlL2FybXY4XzY0YiAoYnJva2VuKQ0KPiAg
bXZlYnUvY29ydGV4YTcyDQo+ICByYW1pcHMvbXQ3NjIxDQo+ICByYW1pcHMvbXQ3NjIwDQo+ICBz
dW54aS9jb3J0ZXhhNw0KPiAgeDg2LzY0DQo+IA0KPiBMYXllcnNjYXBlIHRhcmdldHMgYXJlIHVu
Zm9ydHVuYXRlbHkgbGVmdCBicm9rZW4gYXMgdGhlaXIgbHMtcmN3IGZpcm13YXJlDQo+IHBhY2th
Z2UgdXNlcyBQeXRob24gMiBhbmQgY29udmVydGluZyBpdCB0byBQeXRob24gMyB3b3VsZCB0YWtl
IG1vcmUgdGhlbg0KPiByZWFzb2FuYmxlIGFtb3VudCBvZiB0aW1lIChJJ3ZlIHRyaWVkIHRvIGZp
eCBpdCBhbHJlYWR5KSBhbmQgd291bGQgYmUgYmV0dGVyDQo+IGZpeGVkIGJ5IHNvbWVvbmUgd2hv
IGNhbiBldmVuIHJ1biB0ZXN0IGl0Lg0KDQpbWS5iLiBMdV0gSSBjcmVhdGVkIGEgcHVsbCByZXF1
ZXN0IGZvciBscy1yY3cgdG8gY29udmVydCB0byBweXRob24zLiBJIGNvbXBhcmVkIHRoZSBiaW5h
cmllcyBnZW5lcmF0ZWQgd2l0aCBweXRob24yIGFuZCBweXRob24zLiBMb29rZWQgZ29vZC4NClBs
ZWFzZSBoZWxwIHRvIHJldmlldyBvciBjaGVycnktcGljayBpZiB5b3UgbmVlZC4NCmh0dHBzOi8v
Z2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8yMTQ5DQoNCg0KPiANCj4gUnVuIHRlc3Rl
ZCBvbiBhdGg3OSAoQXJjaGVyIEM3IHY1KSwgaXBxNDB4eCAobmJnNjYxNykgYW5kIHg4Nl82NCAo
UUVNVQ0KPiBhbmQgYXB1MikuDQo+IA0KPiAxLg0KPiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5w
cm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZ3d3cucA0KPiB5dGhvbi5v
cmclMkZkZXYlMkZwZXBzJTJGcGVwLTAzNzMlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q3lhbmdiby4N
Cj4gbHUlNDBueHAuY29tJTdDOGVhNGYwNTRiNWJlNDUyYjFmODgwOGQ2ZjM1ZmE3YWYlN0M2ODZl
YTFkM2JjMmI0Yw0KPiA2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMSU3QzYzNjk2Mzk4OTQ5MzU1
MjgwMCZhbXA7c2RhdGE9bW50DQo+IHhiN294NnpnQjJuJTJCJTJGZTA3biUyQmxocSUyRkxxVkF4
YVNndlR6Q2ZiNll2RSUzRCZhbXA7cmVzZXJ2ZQ0KPiBkPTANCj4gDQo+IFJlZjogUFIjMTkzNw0K
PiBDYzogWWFuZ2JvIEx1IDx5YW5nYm8ubHVAbnhwLmNvbT4NCj4gQ2M6IE1hdGhldyBNY0JyaWRl
IDxtYXR0QHRyYXZlcnNlLmNvbS5hdT4NCj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8
eW5lenpAdHJ1ZS5jej4NCj4gLS0tDQo+ICBSRUFETUUgICAgICAgICAgICAgICAgICB8ICAyICst
DQo+ICBpbmNsdWRlL3ByZXJlcS1idWlsZC5tayB8IDE1ICsrKysrKysrKysrLS0tLQ0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL1JFQURNRSBiL1JFQURNRQ0KPiBpbmRleCA1NWNhOTJhZjY1ZjguLmM4NjdjMWZh
NGRhOCAxMDA2NDQNCj4gLS0tIGEvUkVBRE1FDQo+ICsrKyBiL1JFQURNRQ0KPiBAQCAtMTEsNyAr
MTEsNyBAQCBUbyBidWlsZCB5b3VyIG93biBmaXJtd2FyZSB5b3UgbmVlZCBhIExpbnV4LCBCU0Qg
b3INCj4gTWFjT1NYIHN5c3RlbSAoY2FzZSAgc2Vuc2l0aXZlIGZpbGVzeXN0ZW0gcmVxdWlyZWQp
LiBDeWd3aW4gaXMgdW5zdXBwb3J0ZWQNCj4gYmVjYXVzZSBvZiB0aGUgbGFjayAgb2YgYSBjYXNl
IHNlbnNpdGl2ZSBmaWxlIHN5c3RlbS4NCj4gDQo+IC1Zb3UgbmVlZCBnY2MsIGJpbnV0aWxzLCBi
emlwMiwgZmxleCwgcHl0aG9uLCBwZXJsLCBtYWtlLCBmaW5kLCBncmVwLCBkaWZmLA0KPiArWW91
IG5lZWQgZ2NjLCBiaW51dGlscywgYnppcDIsIGZsZXgsIHB5dGhvbjMuNSssIHBlcmwsIG1ha2Us
IGZpbmQsDQo+ICtncmVwLCBkaWZmLA0KPiAgdW56aXAsIGdhd2ssIGdldG9wdCwgc3VidmVyc2lv
biwgbGliei1kZXYgYW5kIGxpYmMgaGVhZGVycyBpbnN0YWxsZWQuDQo+IA0KPiAgMS4gUnVuICIu
L3NjcmlwdHMvZmVlZHMgdXBkYXRlIC1hIiB0byBvYnRhaW4gYWxsIHRoZSBsYXRlc3QgcGFja2Fn
ZSBkZWZpbml0aW9ucw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsgYi9p
bmNsdWRlL3ByZXJlcS1idWlsZC5tayBpbmRleA0KPiBmN2RhOTE2ZjY0OGMuLmM1MmNhNzE5MDg3
YyAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsNCj4gKysrIGIvaW5jbHVk
ZS9wcmVyZXEtYnVpbGQubWsNCj4gQEAgLTE0MSwxMCArMTQxLDE3IEBAICQoZXZhbCAkKGNhbGwg
U2V0dXBIb3N0Q29tbWFuZCx3Z2V0LFBsZWFzZQ0KPiBpbnN0YWxsIEdOVSAnd2dldCcsIFwgICQo
ZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxwZXJsLFBsZWFzZSBpbnN0YWxsIFBlcmwNCj4g
NS54LCBcDQo+ICAJcGVybCAtLXZlcnNpb24gfCBncmVwICJwZXJsLip2NSIpKQ0KPiANCj4gLSQo
ZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29tbWFuZCxweXRob24sUGxlYXNlIGluc3RhbGwgUHl0aG9u
IDIueCwgXA0KPiAtCXB5dGhvbjIuNyAtViAyPiYxIHwgZ3JlcCBQeXRob24sIFwNCj4gLQlweXRo
b24yIC1WIDI+JjEgfCBncmVwIFB5dGhvbiwgXA0KPiAtCXB5dGhvbiAtViAyPiYxIHwgZ3JlcCBQ
eXRob24pKQ0KPiArJChldmFsICQoY2FsbCBTZXR1cEhvc3RDb21tYW5kLHB5dGhvbixQbGVhc2Ug
aW5zdGFsbCBQeXRob24gPj0gMy41LCBcDQo+ICsJcHl0aG9uMy43IC1WIDI+JjEgfCBncmVwIC1F
ICdQeXRob24gM1wuWzUtOV1cLj8nLCBcDQo+ICsJcHl0aG9uMy42IC1WIDI+JjEgfCBncmVwIC1F
ICdQeXRob24gM1wuWzUtOV1cLj8nLCBcDQo+ICsJcHl0aG9uMy41IC1WIDI+JjEgfCBncmVwIC1F
ICdQeXRob24gM1wuWzUtOV1cLj8nLCBcDQo+ICsJcHl0aG9uMyAtViAyPiYxIHwgZ3JlcCAtRSAn
UHl0aG9uIDNcLls1LTldXC4/JykpDQo+ICsNCj4gKyQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0Q29t
bWFuZCxweXRob24zLFBsZWFzZSBpbnN0YWxsIFB5dGhvbiA+PSAzLjUsIFwNCj4gKwlweXRob24z
LjcgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwNCj4gKwlweXRob24z
LjYgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwNCj4gKwlweXRob24z
LjUgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwNCj4gKwlweXRob24z
IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nKSkNCj4gDQo+ICAkKGV2YWwg
JChjYWxsIFNldHVwSG9zdENvbW1hbmQsZ2l0LFBsZWFzZSBpbnN0YWxsIEdpdCAoZ2l0LWNvcmUp
ID49IDEuNy4xMi4yLCBcDQo+ICAJZ2l0IC0tZXhlYy1wYXRoIHwgeGFyZ3MgLUkgJSAtLSBncmVw
IC1xIC0tIC0tcmVjdXJzaXZlICUvZ2l0LXN1Ym1vZHVsZSkpDQo+IC0tDQo+IDEuOS4xDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
