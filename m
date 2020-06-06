Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FD31F07AB
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 17:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s48GuYf8mSqNulBWVNJ6MVO/2i9NalohgBzVPx9ch3o=; b=EB98Zi5VvOLlSm
	Iuh3CM4cl/gA1/qRpL8yIuOCI0hGKWqG/kMukqvRIWTugmZVpTRNqfuFaWZz0LOtFlIy+181ymLAL
	t8/LY11MT2xqY4e1zuB4QbuM5AJHwJbh3WMTyusi37LHGe9AadQBrOSgiS90riZip9UioNP7iTXrq
	LHQSSLzq7lml+0pwgyKCObhaqo5BgIsTRpjiKkT5+e2P+5535vNFkm9mCu75/eKbeWVql1ra7hDP2
	x0YibnBeWR4c90Nb0nNlOS2hz8u87SWYlqll5PxJk+rrci6//ASoATRKVo7NOCY49LSy5Gwld7h9+
	+m1dx4M2vxiTs5YxQnSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhb0s-00062h-OG; Sat, 06 Jun 2020 15:45:38 +0000
Received: from mail-db8eur05on2085.outbound.protection.outlook.com
 ([40.107.20.85] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhb0m-00060w-68
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 15:45:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5RDSAJlOpWzenchuHU79DukBOjAPeZqLsNA7atlDUI8b09MuKq1S/XDhcNO/Nk6/CkfunLsdNtkDhNO9V7acLvYng0UTUmHb2Z6tGFkFDxEkChAVFRKqpkSh7cZpp+vDFY/A/yCiBxg+xKyVxVwFsMdAWyWD86bjAe6eEX6iaa0ZQGzcnectToZgiYJEMbmKV70Ibfal69RxOgltWszjVU36OUA8Jh5990UBMRasgz4MKDQ8QDuWgBGsB0ir135sodefbzrOHL4G077WxdNsltTkgI/ArhzR9o6M0hosIb1Ps1FYLLoO5JEkWQs+jbha3TIH374WJJCbrvGf1hyTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3s0ZmmSuPvMmACWLHwmxbZFQ4qFuaW5qUGT6kHlXN30=;
 b=APTc1q6M1TfAz3Yqra2J/yOldGGjSHAZmjEWuN6KWQcxfliNFCMpl4+wqUBGZuWE6KQTgl9c/HFHMvasiX1ZU8lDS2arROGzHX2xwk9Ed2YMp/Bmith2lqOLLL7wnwLefQ6yFbPgSKR4hl5ohTUjFlLPvqmM3j9pIxBrhOCnnevJ5ePls6W705pxxiOnT+06Ay9IAFM+FuEqasBR8Grqg/hUZ5NIHvedsnestNY1ebLp8i+IleSE8upIXrQKwrq0vBklGNpruTq2VFI9hNmsw3rwjkLm5DSNhoL7K/qmZhPx1Pr9+lQTTaxd3xVuzcIiXN31BPNldgRjsW3EIIzfRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3s0ZmmSuPvMmACWLHwmxbZFQ4qFuaW5qUGT6kHlXN30=;
 b=Vhc8FNkvXCtLutjGQCaXYITfekAOqI4LgqKcWPHNt3r5EnfZ26uaUmWhmO9LvynRiJ6+vWmlHSApw/3oK19oDhnUUV3KqzxV501Gtt3VLqkAnOPkCCy38M1xZdprRJmSRjU9RWZ0nNKDBTPE0OxZrQofp2aFo0F8kskc6Y0gXOQ=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4512.eurprd03.prod.outlook.com (2603:10a6:803:61::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Sat, 6 Jun
 2020 15:45:26 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3066.022; Sat, 6 Jun 2020
 15:45:25 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Thread-Topic: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
Thread-Index: AQHWOYuQZOXD+QBHV02271hcJ9uvCajIa8MAgAKfNYCAAIJLgIAAMqEA
Date: Sat, 6 Jun 2020 15:45:25 +0000
Message-ID: <9BC696B1-EBE9-4ECE-AF20-27132BD38D0D@darbyshire-bryant.me.uk>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
 <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
 <20200606045751.GC32043@meh.true.cz>
 <mailman.21076.1591447467.2542.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.21076.1591447467.2542.openwrt-devel@lists.openwrt.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: yahoo.com; dkim=none (message not signed)
 header.d=none;yahoo.com; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1227:c00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0711fb71-5612-431c-1dd4-08d80a30a158
x-ms-traffictypediagnostic: VI1PR03MB4512:
x-microsoft-antispam-prvs: <VI1PR03MB4512EF6C1EED858A0AC2123FC9870@VI1PR03MB4512.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04267075BD
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ak99g9fBOdvc3RUIUZ0wnFNmGhIXazMuDHegOoGdm/7qpag6mds6sh1hRq3vUiDiR6pBx+GRoZfzwKfQulwa4xPfcsJGQki5wso2NpjAN+4JtoxD4OsZkxb2Vpg3iJzoRCiJiO2eQbhSdAaazNnIOAwU4ettmGcS6p6HMEPy+Bc59ssALT8CSh/K/zzVyZjQRGFXlT/jdzdyFecc81dSyuNL1XHnFKz+Hl1kog0UwvyTEkb6FOudsuc8QjaSVaxGoTtKHVIrmMixsBrkXS94MylgFgOrIKtvw9vOL96Sr+a6tr82D6wfEA12MRIdmHz8ofFuzRmyWp6yaV90nhJLpnVLDk1gEjvvBzGybgqoNyGQjALBI9GzPpaDAOh5bl40KGWAjXuM59Mf7dey3K6iXTBBU0kLHUkvqE8VV60hGCoDhLKsi8FfJBghnmqzYC10PGPqX0WUIm5Hy3vXZ/orQg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(396003)(39830400003)(376002)(136003)(66574014)(83380400001)(2906002)(91956017)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(6506007)(5660300002)(2616005)(186003)(36756003)(33656002)(8936002)(508600001)(966005)(6512007)(8676002)(6486002)(71200400001)(316002)(86362001)(6916009)(4326008)(21314003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NlLFqbENYbjEcC9FopqK3X5Q2JybvwNliMvmWbaaWgzhzIp2g/TetCuNfT8SsEhGtxD2Sbb0q8hL5IkQl7i/GnHEnig1bT4znzg7xbbqeXqV42AoxnP1phqV/LX5vKZMOJTs1R2h9/OpLSq8//qnjmJxw84rzUN74yRzDR9Mkc802IxUyf1Ld7SMgOLcAYPvfWgle9yXN9mrf/yH0FK42aW14ace+cTjIzvnsvf3WXBaR45c96HghN1nm9YIODXn0DWygP3+xbH4VlgezfZya8/SBDQ7BOOfMabkZuhdSqNXHTqJWP8eRz1HN75jwpTL+ApNg5In2I4w8la5CcF5t73axXc1II6OLbjbBHwlt8nyzw/ycEZ3CrMG7Fga3jL/BQK2AovqXN+q9IgWo1T1LvUMirARYjPFynrrurGkOfm209Wm+GZ+Pi/uUt4uoUlgx+OWcZgm2GlB5clEIhvAQ0DEbol3rZaEL9lAs3Ikhbw6c2z3pFu+YdLtwUMrVhcO
x-ms-exchange-transport-forked: True
Content-ID: <430739BA2FF3894EBAD71ED3F6DB4843@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 0711fb71-5612-431c-1dd4-08d80a30a158
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2020 15:45:25.4219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0fgS5Lraoc94wI3u2Kczq4YDF2La86epu+GhcatSywaM69rEv9aFBXXVK0nEcigykcv5S+5hh2xOeIRpQ2j6g5qnJwUvisA6Nj5VGOEUWZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_084532_290551_1EFE336B 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

DQo+IEZyb206ICJSLiBEaWV6IiA8cmRpZXptYWlsLW9wZW53cnRAeWFob28uY29tPg0KPiBTdWJq
ZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gRG8gbm90IGhhcmQtY29kZSBJU19UVFkg
aW4gc2NyaXB0IHNjcmlwdHMvZmVlZHMNCj4gRGF0ZTogNiBKdW5lIDIwMjAgYXQgMTM6NDQ6MTEg
QlNUDQo+IFRvOiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pg0KPiBDYzogb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZw0KPiANCj4gDQo+IA0KPj4gaHR0cHM6Ly9vcGVud3J0Lm9y
Zy9zdWJtaXR0aW5nLXBhdGNoZXMjbm9fbWltZV9ub19saW5rc19ub19jb21wcmVzc2lvbl9ub19h
dHRhY2htZW50c19qdXN0X3BsYWluX3RleHQNCj4gDQo+IFNvbWV0aW1lcyBJIHVzZSBUaHVuZGVy
YmlyZCwgYW5kIHNvbWV0aW1lcyBJIHVzZSB0aGUgWWFob28gd2ViIGludGVyZmFjZS4gQm90aCBo
YXZlIHByb2JsZW1zIHdpdGggZS1tYWlsIGZvcm1hdHRpbmcsIGFzIHRoZXkgdGVuZCB0byByZWZs
b3cgdGV4dCBsaW5lcyBhbmQgbWVzcyB3aXRoIHF1b3RhdGlvbnMgYW5kIGJsYW5rcy4gU2VuZGlu
ZyBwYXRjaGVzIGFzIHBsYWluIHRleHQgaW5zaWRlIGUtbWFpbHMgaXMgdG9vIG11Y2ggdHJvdWJs
ZSBmb3IgbWUuDQo+IA0KPiBJIGRvIG5vdCB1bmRlcnN0YW5kIHdoeSBQYXRjaHdvcmsgY2Fubm90
IGF1dG9tYXRpY2FsbHkgcGljayB1cCBhIHBhdGNoIGZyb20gYW4gZS1tYWlsIGF0dGFjaG1lbnQg
YXB0bHkgbmFtZWQgeHh4LnBhdGNoLCBhbmQgd2l0aCBhbiBlLW1haWwgdGl0bGUgdGhhdCBzdGFy
dHMgd2l0aCBbUEFUQ0hdLg0KPiANCj4gSXMgaXQgcG9zc2libGUgdG8gYWRkIHBhdGNoZXMgbWFu
dWFsbHkgdG8gUGF0Y2h3b3JrIHVzaW5nIGl0cyB3ZWIgaW50ZXJmYWNlPyBJZiBzbywgSSB3b3Vs
ZCB0cnkgdGhhdCB3YXkuDQo+IA0KPiBPdGhlcndpc2UsIEkgYW0gdGVtcHRlZCB0byBkcm9wIGl0
IChhbmQgb3RoZXIgc3VjaCBmdXJ0aGVyIGNvbnRyaWJ1dGlvbnMgSSBoYWQgaW4gdGhlIHBpcGVs
aW5lKS4gVGhpcyBpcyBhIHRyaXZpYWwgZml4IGFuZCB0aGUgYWRtaW5pc3RyYXRpdmUgY29zdCBv
ZiBnZXR0aW5nIGl0IHJpZ2h0IGlzIGNsZWFybHkgZGlzcHJvcG9ydGlvbmF0ZS4NCg0KSSByZWNv
Z25pc2UgdGhlIGZydXN0cmF0aW9uISAgV2hlbiBJIGZpcnN0IHN0YXJ0ZWQgdHJ5aW5nIHRvIHNl
bmQgcGF0Y2hlcyBJIGhhZCBzaW1pbGFyIGlzc3VlcyAod2hpdGUgc3BhY2Ugd3JhcHBpbmcvcmVm
bG93IGV0YykgIFRoZSBzYW1lIGlzc3VlcyBhcmUgZW5jb3VudGVyZWQgd2hlbiBzZW5kaW5nIHRv
IG1hbnkgb3BlbiBzb3VyY2UgZW1haWwgcGF0Y2ggbGlzdHMgaW5jbHVkaW5nIHRoZSBMaW51eCBr
ZXJuZWwuICBJIGNhbWUgdmVyeSwgdmVyeSwgdmVyeSBjbG9zZSB0byBnaXZpbmcgdXAgd2l0aCBv
cGVud3J0LCBiZWZvcmUgYmVpbmcgaW50cm9kdWNlZCB0byDigJhnaXQgc2VuZC1lbWFpbOKAmS4g
IEkgZm91Z2h0IGEgbGl0dGxlIHdpdGggY29uZmlndXJpbmcgZ2l0IHNlbmQtZW1haWwgYW5kIGdv
dCBpdCB3b3JraW5nLCBiZWZvcmUgSSB0aGVuIGRpc2NvdmVyZWQgaHR0cHM6Ly93d3cuZnJlZWRl
c2t0b3Aub3JnL3dpa2kvU29mdHdhcmUvUHVsc2VBdWRpby9Ib3dUb1VzZUdpdFNlbmRFbWFpbC8g
IHdoaWNoIGlzIGEgcXVpdGUgaGVscGZ1bCBndWlkZS4gTWF5YmUgdGhhdCBjYW4gaGVscCB5b3Ug
dG9vPw0KDQpLZXZpbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
