Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EB420AB5
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 17:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=59k7dyicQxT9hQcrCN5Zoj5UUHqHXYQ0Ece7/IpNT3E=; b=IEAqm/q/OFICcVIYiQMEL6YPP
	20UwyTiLN5S9vVPgwNc5gqAqoNiur3V407111mP0QStHTnYoVi4XrzeH9aw59DbfdZU8tqoTLUY4x
	DVqSShMpWvgW3zbzTjFxTn1dxgXMjlHbIt3byKkYJnNERp36xedTjwbzEMTLhMnbPhQM7/0wXC6oG
	0DXy52gH4BkOk6G1BC/qmHpuDDCulxWMbiUPOU4ggZsHRgkX+dBD46UmbrUgC66NpjElPbCKdLNu2
	MBQ0ytV8aHWrtgYv7EqiRpxz4YeRI1zkf6DXZCC8tPTGdr0fxZJNRCz4Yv4Xb3XDWDjelAtJqutQ2
	1k4+o4Quw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRI0i-0003dm-Ag; Thu, 16 May 2019 15:09:32 +0000
Received: from mail-he1eur01olkn0815.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::815]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRI0a-0003cA-6T
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 15:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgG6ck0guFxVDo82ut35z9Y9WHs/d/mNlj4xW34yEP4=;
 b=lliOWk9qbRy7HZwFRWj1ejbHlTReipTvUsGgynIX4wt7aXZmVF4mC/QhdsV/dJI6B0CIT/+yWtLnq/OcWlDLlxHGjezsg9wVsGonGXncmoXazD9NuwaMFcSk4fjL3bqg7Ao5fS28QRyV7R8Ae5btikmA4goeToTjw/ZGzGI5fqYlGScSbgQ69le6qKKAiVyy1W/HwkfOA+lhBn7yAlyJ7RCHs+KTjLFzf6Z0iCuNh6vZ/UVpQv7oiIsqkHDC1MCudzrZXAxwsgi1Z8DBlkJjzcUyrhJoMfoJ6iDWKR33cToZsyGloWXhA8fqtza/L7Nk/dHhwWS1CCvYy5jgL+8sOw==
Received: from HE1EUR01FT017.eop-EUR01.prod.protection.outlook.com
 (10.152.0.56) by HE1EUR01HT162.eop-EUR01.prod.protection.outlook.com
 (10.152.1.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11; Thu, 16 May
 2019 15:09:20 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.0.51) by
 HE1EUR01FT017.mail.protection.outlook.com (10.152.0.166) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Thu, 16 May 2019 15:09:20 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 15:09:20 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: Hans Dedecker <dedeckeh@gmail.com>
Thread-Topic: =?gb2312?B?u9i4tDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gaW50ZXJmYWNlLWlwOiBm?=
 =?gb2312?Q?ix_find_locally_addressable_target_for_p2p?=
Thread-Index: AQHVC++b20TpGDtII06zsYpNv4AdyKZtzzUA//+U+fU=
Date: Thu, 16 May 2019 15:09:20 +0000
Message-ID: <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>,
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
In-Reply-To: <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8E9ABB9EF1BCE7EB17ED6548A38537F38EDBB00903D3A9030DF493E408E975F1;
 UpperCasedChecksum:878F7B7EA7318C3A8FA6EDED6C9FB6ED677376D077195A43265E2C8A091A58ED;
 SizeAsReceived:7057; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [8wE2GVQ8zGlaR3q9sECVYFfO1Rg7ZpHz]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT162; 
x-ms-traffictypediagnostic: HE1EUR01HT162:
x-microsoft-antispam-message-info: WaF7xrfjG4Jd81CBP9kEnU5P6jCzU7zGaVu2PK1jdtTj9ymPpFd0VZPhXbS58V691UdySCCYMgiAuP8s97h0Y6bjT9c0A8OQNZGbhjF08VYI13p1t0YbZVGYztF6X6zb2UoaxXzZ3MUolSulnELrJNTo4L1jzzjHnwmf+Yjn7PHRzG2TPY15PUtMnUay3DRu
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 952cab30-cb52-45b8-ad2d-08d6da107906
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 15:09:20.3277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080924_335471_818272EE 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:815 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xfan1024[at]live.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (xfan1024[at]live.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] =?gb2312?b?u9i4tDogIFtQQVRDSF0gaW50ZXJmYWNlLWlw?=
 =?gb2312?b?OiBmaXggZmluZCBsb2NhbGx5IGFkZHJlc3NhYmxlIHRhcmdldCBmb3IgcDJw?=
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2988635096585973141=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2988635096585973141==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0AM6PR03MB4821eurp_"

--_000_AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0AM6PR03MB4821eurp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksIEkgYWRkIHNvbWUgZXhwbGFuYXRpb24gdG8gdGhlIHBhdGNoDQoNCkZyb20gNTcwMDdlZWY3
N2YyNjZlNDA2NDBhMmM3NmFhYmQ1NmZkMzc1NTNmNyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEN
CkZyb206IHhpYW9mYW4gPHhmYW4xMDI0QGxpdmUuY29tPg0KRGF0ZTogVGh1LCAxNiBNYXkgMjAx
OSAyMToxMjo0NyArMDgwMA0KU3ViamVjdDogW1BBVENIXSBpbnRlcmZhY2UtaXA6IGZpeCBmaW5k
IGxvY2FsbHkgYWRkcmVzc2FibGUgdGFyZ2V0IGZvciBwMnANCg0KSW4gY2FzZSBvZiB0dW5uZWwg
b3ZlciBQUFAoc3VjaCBhcyBncmV0YXAgb3ZlciBsMnRwKTogdHVubmVsIGludGVyZmFjZQ0KdXNl
IFBQUCdzIHBlZXIgYWRkcmVzcyBhcyByZW1vdGUgYWRkcmVzcywgbmV0aWZkIHNjcmlwdCB3aWxs
IGNhbGwNCnByb3RvX2FkZF9ob3N0X2RlcGVuZGVuY3kgZnVuY3Rpb24sIHRoZW4gbmV0aWZkIHdp
bGwgc2VhcmNoIHdoaWNoIGRldmljZQ0KY2FuIHJlYWNoIHRvIHRoZSByZW1vdGUgYWRkcmVzcy4g
QmVmb3JlIHRoZSBwYXRjaCwgbmV0aWZkIGRvbid0IGNvbnNpZGVyDQp0aGUgUFBQIGludGVyZmFj
ZSBjYW4gcmVhY2ggdG8gdGhlIHJlbW90ZSBhZGRyZXNzLCBzbyBuZXRpZmQgd2lsbCBzZWxlY3QN
CmRlZmF1bHQgcm91dGUgdG8gcmVtb3RlIGFkZHJlc3MsIGl0IHdpbGwgbGVhZCB0byByZW1vdGUg
YWRkcmVzcyB1bnJlYWNoYWJsZS4NCg0KU2lnbmVkLW9mZi1ieTogeGlhb2ZhbiA8eGZhbjEwMjRA
bGl2ZS5jb20+DQotLS0NCiBpbnRlcmZhY2UtaXAuYyB8IDMgKysrDQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvaW50ZXJmYWNlLWlwLmMgYi9pbnRlcmZh
Y2UtaXAuYw0KaW5kZXggNjkwMGNkNy4uOGQ1NTg3YyAxMDA2NDQNCi0tLSBhL2ludGVyZmFjZS1p
cC5jDQorKysgYi9pbnRlcmZhY2UtaXAuYw0KQEAgLTE5Niw2ICsxOTYsOSBAQCBfX2ZpbmRfaXBf
YWRkcl90YXJnZXQoc3RydWN0IGludGVyZmFjZV9pcF9zZXR0aW5ncyAqaXAsIHVuaW9uIGlmX2Fk
ZHIgKmEsIGJvb2wgdg0KICAgaWYgKHY2ICE9ICgoYWRkci0+ZmxhZ3MgJiBERVZBRERSX0ZBTUlM
WSkgPT0gREVWQUREUl9JTkVUNikpDQogICAgY29udGludWU7DQoNCisgIGlmICghdjYgJiYgYWRk
ci0+cG9pbnRfdG9fcG9pbnQgJiYgYS0+aW4uc19hZGRyID09IGFkZHItPnBvaW50X3RvX3BvaW50
KQ0KKyAgIHJldHVybiB0cnVlOw0KKw0KICAgLyogSGFuZGxlIG9mZmxpbmsgYWRkcmVzc2VzIGNv
cnJlY3RseSAqLw0KICAgdW5zaWduZWQgaW50IG1hc2sgPSBhZGRyLT5tYXNrOw0KICAgaWYgKChh
ZGRyLT5mbGFncyAmIERFVkFERFJfRkFNSUxZKSA9PSBERVZBRERSX0lORVQ2ICYmDQotLQ0KMi4x
Ny4xDQoNCg0KDQoNCj4NCj4gSGksDQo+DQo+IE9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDQ6MDEg
UE0gVGFuIFhpYW9mYW4gPHhmYW4xMDI0QGxpdmUuY29tPiB3cm90ZToNCj4gPg0KPiA+IEZyb20g
ZDBlMWNiODFiNDVlYzgyNTE5OWQ0OTljZGE5YzhkYWVmOTRlMTNhNSBNb24gU2VwIDE3IDAwOjAw
OjAwIDIwMDENCj4gPiBGcm9tOiB4aWFvZmFuIDx4ZmFuMTAyNEBsaXZlLmNvbT4NCj4gPiBEYXRl
OiBUaHUsIDE2IE1heSAyMDE5IDIxOjEyOjQ3ICswODAwDQo+ID4gU3ViamVjdDogW1BBVENIXSBp
bnRlcmZhY2UtaXA6IGZpeCBmaW5kIGxvY2FsbHkgYWRkcmVzc2FibGUgdGFyZ2V0IGZvciBwMnAN
Cj4gVGhlIHBhdGNoIGZhaWxzIHRvIGV4cGxhaW4gd2h5IHRoaXMgY2hhbmdlIGlzIHJlcXVpcmVk
IGFuZCB3aGF0DQo+IHVzZWNhc2UvcHJvYmxlbSBpdCBmaXhlcy4NCj4NCj4gSGFucw0KPiA+DQo+
ID4gU2lnbmVkLW9mZi1ieTogeGlhb2ZhbiA8eGZhbjEwMjRAbGl2ZS5jb20+DQo+ID4gLS0tDQo+
ID4gIGludGVyZmFjZS1pcC5jIHwgNCArKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9pbnRlcmZhY2UtaXAuYyBiL2ludGVyZmFj
ZS1pcC5jDQo+ID4gaW5kZXggNjkwMGNkNy4uN2FiODY0MyAxMDA2NDQNCj4gPiAtLS0gYS9pbnRl
cmZhY2UtaXAuYw0KPiA+ICsrKyBiL2ludGVyZmFjZS1pcC5jDQo+ID4gQEAgLTE5Niw2ICsxOTYs
MTAgQEAgX19maW5kX2lwX2FkZHJfdGFyZ2V0KHN0cnVjdCBpbnRlcmZhY2VfaXBfc2V0dGluZ3Mg
KmlwLCB1bmlvbiBpZl9hZGRyICphLCBib29sIHYNCj4gPiAgICBpZiAodjYgIT0gKChhZGRyLT5m
bGFncyAmIERFVkFERFJfRkFNSUxZKSA9PSBERVZBRERSX0lORVQ2KSkNCj4gPiAgICAgY29udGlu
dWU7DQo+ID4NCj4gPiArICBpZiAoIXY2ICYmIGFkZHItPnBvaW50X3RvX3BvaW50ICYmIGEtPmlu
LnNfYWRkciA9PSBhZGRyLT5wb2ludF90b19wb2ludCkgew0KPiA+ICsgICByZXR1cm4gdHJ1ZTsN
Cj4gPiArICB9DQo+ID4gKw0KPiA+ICAgIC8qIEhhbmRsZSBvZmZsaW5rIGFkZHJlc3NlcyBjb3Jy
ZWN0bHkgKi8NCj4gPiAgICB1bnNpZ25lZCBpbnQgbWFzayA9IGFkZHItPm1hc2s7DQo+ID4gICAg
aWYgKChhZGRyLT5mbGFncyAmIERFVkFERFJfRkFNSUxZKSA9PSBERVZBRERSX0lORVQ2ICYmDQo+
ID4gLS0NCj4gPiAyLjE3LjENCj4gPg0KPiA+DQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdA0K
PiA+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcNCj4gPiBodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbA0KPg0K

--_000_AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0AM6PR03MB4821eurp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div><span>Hi, I add some explanation to the patch</span></div>
<div><span><br>
</span></div>
<div><span><span>From 57007eef77f266e40640a2c76aabd56fd37553f7 Mon Sep 17 0=
0:00:00 2001<br>
</span>
<div>From: xiaofan &lt;xfan1024@live.com&gt;<br>
</div>
<div>Date: Thu, 16 May 2019 21:12:47 &#43;0800<br>
</div>
<div>Subject: [PATCH] interface-ip: fix find locally addressable target for=
 p2p<br>
</div>
<div><br>
</div>
<div>In case of tunnel over PPP(such as gretap over l2tp): tunnel interface=
<br>
</div>
<div>use PPP's peer address as remote address, netifd script will call<br>
</div>
<div>proto_add_host_dependency function, then netifd will search which devi=
ce<br>
</div>
<div>can reach to the remote address. Before the patch, netifd don't consid=
er<br>
</div>
<div>the PPP interface can reach to the remote address, so netifd will sele=
ct<br>
</div>
<div>default route to remote address, it will lead to remote address unreac=
hable.<br>
</div>
<div><br>
</div>
<div>Signed-off-by: xiaofan &lt;xfan1024@live.com&gt;<br>
</div>
<div>---<br>
</div>
<div>&nbsp;interface-ip.c | 3 &#43;&#43;&#43;<br>
</div>
<div>&nbsp;1 file changed, 3 insertions(&#43;)<br>
</div>
<div><br>
</div>
<div>diff --git a/interface-ip.c b/interface-ip.c<br>
</div>
<div>index 6900cd7..8d5587c 100644<br>
</div>
<div>--- a/interface-ip.c<br>
</div>
<div>&#43;&#43;&#43; b/interface-ip.c<br>
</div>
<div>@@ -196,6 &#43;196,9 @@ __find_ip_addr_target(struct interface_ip_sett=
ings *ip, union if_addr *a, bool v<br>
</div>
<div>&nbsp; &nbsp;if (v6 !=3D ((addr-&gt;flags &amp; DEVADDR_FAMILY) =3D=3D=
 DEVADDR_INET6))<br>
</div>
<div>&nbsp; &nbsp; continue;<br>
</div>
<div>&nbsp;<br>
</div>
<div>&#43; &nbsp;if (!v6 &amp;&amp; addr-&gt;point_to_point &amp;&amp; a-&g=
t;in.s_addr =3D=3D addr-&gt;point_to_point)<br>
</div>
<div>&#43; &nbsp; return true;<br>
</div>
<div>&#43;<br>
</div>
<div>&nbsp; &nbsp;/* Handle offlink addresses correctly */<br>
</div>
<div>&nbsp; &nbsp;unsigned int mask =3D addr-&gt;mask;<br>
</div>
<div>&nbsp; &nbsp;if ((addr-&gt;flags &amp; DEVADDR_FAMILY) =3D=3D DEVADDR_=
INET6 &amp;&amp;<br>
</div>
<div>-- <br>
</div>
<div>2.17.1<br>
</div>
<div><br>
</div>
<span></span><br>
</span></div>
<div><span><br>
</span></div>
<div><span><br>
</span></div>
<div><span>&gt; </span></div>
<div><span></span></div>
<div>&gt; Hi,<br>
</div>
<div>&gt; <br>
</div>
<div>&gt; On Thu, May 16, 2019 at 4:01 PM Tan Xiaofan &lt;xfan1024@live.com=
&gt; wrote:<br>
</div>
<div>&gt; &gt;<br>
</div>
<div>&gt; &gt; From d0e1cb81b45ec825199d499cda9c8daef94e13a5 Mon Sep 17 00:=
00:00 2001<br>
</div>
<div>&gt; &gt; From: xiaofan &lt;xfan1024@live.com&gt;<br>
</div>
<div>&gt; &gt; Date: Thu, 16 May 2019 21:12:47 &#43;0800<br>
</div>
<div>&gt; &gt; Subject: [PATCH] interface-ip: fix find locally addressable =
target for p2p<br>
</div>
<div>&gt; The patch fails to explain why this change is required and what<b=
r>
</div>
<div>&gt; usecase/problem it fixes.<br>
</div>
<div>&gt; <br>
</div>
<div>&gt; Hans<br>
</div>
<div>&gt; &gt;<br>
</div>
<div>&gt; &gt; Signed-off-by: xiaofan &lt;xfan1024@live.com&gt;<br>
</div>
<div>&gt; &gt; ---<br>
</div>
<div>&gt; &gt; &nbsp;interface-ip.c | 4 &#43;&#43;&#43;&#43;<br>
</div>
<div>&gt; &gt; &nbsp;1 file changed, 4 insertions(&#43;)<br>
</div>
<div>&gt; &gt;<br>
</div>
<div>&gt; &gt; diff --git a/interface-ip.c b/interface-ip.c<br>
</div>
<div>&gt; &gt; index 6900cd7..7ab8643 100644<br>
</div>
<div>&gt; &gt; --- a/interface-ip.c<br>
</div>
<div>&gt; &gt; &#43;&#43;&#43; b/interface-ip.c<br>
</div>
<div>&gt; &gt; @@ -196,6 &#43;196,10 @@ __find_ip_addr_target(struct interf=
ace_ip_settings *ip, union if_addr *a, bool v<br>
</div>
<div>&gt; &gt; &nbsp; &nbsp;if (v6 !=3D ((addr-&gt;flags &amp; DEVADDR_FAMI=
LY) =3D=3D DEVADDR_INET6))<br>
</div>
<div>&gt; &gt; &nbsp; &nbsp; continue;<br>
</div>
<div>&gt; &gt;<br>
</div>
<div>&gt; &gt; &#43; &nbsp;if (!v6 &amp;&amp; addr-&gt;point_to_point &amp;=
&amp; a-&gt;in.s_addr =3D=3D addr-&gt;point_to_point) {<br>
</div>
<div>&gt; &gt; &#43; &nbsp; return true;<br>
</div>
<div>&gt; &gt; &#43; &nbsp;}<br>
</div>
<div>&gt; &gt; &#43;<br>
</div>
<div>&gt; &gt; &nbsp; &nbsp;/* Handle offlink addresses correctly */<br>
</div>
<div>&gt; &gt; &nbsp; &nbsp;unsigned int mask =3D addr-&gt;mask;<br>
</div>
<div>&gt; &gt; &nbsp; &nbsp;if ((addr-&gt;flags &amp; DEVADDR_FAMILY) =3D=
=3D DEVADDR_INET6 &amp;&amp;<br>
</div>
<div>&gt; &gt; --<br>
</div>
<div>&gt; &gt; 2.17.1<br>
</div>
<div>&gt; &gt;<br>
</div>
<div>&gt; &gt;<br>
</div>
<div>&gt; &gt; _______________________________________________<br>
</div>
<div>&gt; &gt; openwrt-devel mailing list<br>
</div>
<div>&gt; &gt; openwrt-devel@lists.openwrt.org<br>
</div>
<div>&gt; &gt; https://lists.openwrt.org/mailman/listinfo/openwrt-devel<br>
</div>
<span>&gt; </span>
</body>
</html>

--_000_AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0AM6PR03MB4821eurp_--


--===============2988635096585973141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2988635096585973141==--

