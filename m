Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D243477560
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Jul 2019 02:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yWzXouuhFEk3M6CbifDTtbcKIomvO+SC7R8MMahB9HU=; b=EFlRE5sipnvKPUa1JIIPJqJ74f
	3qTC/aY6y/q9p8VNcz8u3+Wk0REt773M/6kehUksdkO4ETvXpWrpq4F1PYOOm9hNBFBn8CKkjaynr
	btr3vQ2dLomLRGTLsm9e2/N5ySI+kWwRJRroZ9bkKfg9aGBx+xBuJH9BLAzGNFYyKXB4cPTAdvcTx
	Kns3CGmCUl6f2OD99ZrjNeAZoeeLNe49QE/nElr5rYNgDwrZYaR83Eboy34SB0S9fKA4jBeONytUm
	EHeBN5iealxmp6fRwirw+pPiwBugrPzFHKue7AXIyxsBtcMjR8axgn7PNbun4KgPKrVU7ky7bKdDt
	74LXHOpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrANW-0001pX-SG; Sat, 27 Jul 2019 00:16:02 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrAN9-0001ol-Ru
 for openwrt-devel@lists.openwrt.org; Sat, 27 Jul 2019 00:15:42 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3uvjquaRtPYABlgFkIZ9n4CCWPMNLtIhLF6BvTPif+RPWbj8URrMQxfyhSF2aKelv+iXhG+PI/
 a7iCbsUlAOuoYY5qhfN4rhebd/Jbsc0y14akPN0QXYu3hwCEKvyJWCtKx1qODBaVW7ythoVrBP
 QLerQLAgeVeaWDAF/HC1eA9InyxQ+rnU8QlKxbFSdCOfY3k+rIYSAyxoOpfCrsUrKf84Pt3GXR
 nlTWHr71Be0SbatxJ7MCkAhTvkku25XV+7J6Kz+9E5ed2+8R2E5w9Rj0KBg0PdCEyE+U1UaFMi
 Zxc=
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="41335250"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jul 2019 17:15:35 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 26 Jul 2019 17:15:33 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 26 Jul 2019 17:15:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsKxO5Jg6BCQ2POeoovoryWm6hpM2435/b4bfq5Vkv/JDsIxgT2tM0ZlFKZR6JzH04gVaEG+QxxWqNxT1ej32Xq3WteM3lY91/OVH43eWPBF4YqwFuuNOJ8UMuIRBrU8jZ68RJ0/7dVDaB6CjFl9absTpkw0+LvZMQ+nHoES1hXWQ1wbrbj0vuRZvShsTpTyv7AIgMsnB1GqMMLr9+aMz0GuLwdsufZXChiLdzqT+Zm4xnjJQblVWOfb8pLaCTNBAY8UJdVrcSKCsJPNaxCVt57q8/QTcSSuTSmRUUANzvac+4LFz5f7UUFerODPbJEcerzwCwoT0+cCkk5kosWBdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=70t8gdUwxjFc54I6QTsTYg5HN+dP3rv1+C1t9PTo4vQ=;
 b=S2j5V+QCk1e7Y9eEy/hu+vNqacCYynFBWlaf6Pagu+w46aMptnElPbJhEuSXP8/X0I9AWLjsaO4DiIBhkfAXEpmF0rY2lPzULcSTTNUrtkt9959X8LsrfvluGp/EorHwOO4NKGbxNDZV64PYtBquPmykTkb4Iny1CUFPNwt4IDrzSOJhtt3F8RflluQ41A5w5RP4VrN+7HxTzNxihM49RddA8jWRGuhOqgTIGb2kJ7Kb3pFJy8lwFLi/S7ByfueqVRWpgnZpOVTM+nwyDYDOJwSygXIbNffIR0+2yMDXoY77uhXgU44fJT1j+/i3+DnWDUFW+2Njc9ri5nDYe+OHmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=70t8gdUwxjFc54I6QTsTYg5HN+dP3rv1+C1t9PTo4vQ=;
 b=zgoBQQTe97RE16ub5jgIGDqdKpm2HqHKE84pTUVRZ70GK5G1PZa4rshqG1/t5dftLEqUFW1kSXcfEg42lm4Nlw4Tjes0RKulqZ5LVsXQXpq+ll91PIhtfStWyGEOxuVmgPzj3QxTsxHhIXavNroCmZoCib0EmfRA8MEENxP1euA=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2712.namprd11.prod.outlook.com (52.135.227.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Sat, 27 Jul 2019 00:15:32 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c1ec:ebbf:f6e4:2876]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c1ec:ebbf:f6e4:2876%5]) with mapi id 15.20.2094.013; Sat, 27 Jul 2019
 00:15:32 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [at91][patch v2 00/11] at91 patch series
Thread-Index: AQHVKIWQVk80AGo7IECcxjgofu9rnabA4TIAgBzuKgA=
Date: Sat, 27 Jul 2019 00:15:32 +0000
Message-ID: <13ef7180-3e4a-af5d-fc09-23165c4e313f@microchip.com>
References: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
 <04bea1ee-9ed4-f6ed-e9fd-5327203a7253@hauke-m.de>
In-Reply-To: <04bea1ee-9ed4-f6ed-e9fd-5327203a7253@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0041.namprd07.prod.outlook.com
 (2603:10b6:a03:60::18) To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ddfdd8c-32f4-4183-f851-08d7122789ff
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2712; 
x-ms-traffictypediagnostic: BYAPR11MB2712:
x-microsoft-antispam-prvs: <BYAPR11MB2712FFAA2C5EF73FC1D6D0D982C30@BYAPR11MB2712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 01110342A5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(366004)(199004)(189003)(102836004)(66066001)(68736007)(31696002)(2501003)(25786009)(53936002)(316002)(86362001)(6246003)(110136005)(229853002)(2906002)(6436002)(6486002)(14454004)(6116002)(99286004)(3846002)(8936002)(81156014)(81166006)(478600001)(8676002)(186003)(6512007)(26005)(76176011)(31686004)(7736002)(52116002)(71190400001)(71200400001)(53546011)(6506007)(386003)(486006)(5660300002)(11346002)(2616005)(476003)(14444005)(36756003)(305945005)(446003)(256004)(66476007)(66446008)(66946007)(64756008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2712;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UsjCBOWBV57WTVNgLFGmicS+JqI8KF50seZmZjN+jt7rSIh1AZJRkpxm+8bSP5EZPCPM4mnjXjUkJYRs6c6Yc3/zCyqHvXDXndHqAc2E0sPyOvpeXe89lI6OGPb/o6EfvEGAjCh3nBGXs2CFvOkQzsxmYAGjdJbIojyAIn5jNJN2wfRfo88tB3zJSKLTkAuBPtOHaa/bhTiFYA1YY/OjZY+XAgVCihyAVznkhsnSFGVvC6/8oqqzHZfpp1uwdrGcKXcwPLXLYdO+n1Wj9yiIBv6lSMbBYqDziMtY8X7Khui3PmJOJRH40t1Sm0FLHa+wSuI+g8mAVYSY7+5K1RJPHLT0GEVf6lNAAwgRTKSDiRSErYBHXr6bvSORnAhrJ/prCj/RFexbyYNqy6cxWfsmBkAYvzeKT6dNMGhNL7BI72o=
Content-ID: <063846AE15FDC74EBB75B6F17D1BEA06@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ddfdd8c-32f4-4183-f851-08d7122789ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2019 00:15:32.7201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeepsheriker.mallikarjun@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_171540_073010_EFD7CA23 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [at91][patch v2 00/11] at91 patch series
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

DQpPbiA3LzgvMTkgNzoyNiBBTSwgSGF1a2UgTWVocnRlbnMgd3JvdGU6DQo+IEV4dGVybmFsIEUt
TWFpbA0KPg0KPg0KPiBPbiA2LzIyLzE5IDE6MDIgQU0sIFNhbmRlZXAgU2hlcmlrZXIgTSB3cm90
ZToNCj4+IEhpLA0KPj4gICBUaGlzIHBhdGNoIHNlcmllcyBjb250YWlucw0KPj4NCj4+IDEuIHJl
d29yayBpbiBjcmVhdGluZyBzZGNhcmQgaW1hZ2VzIGZvciBkaWZmZXJlbnQgc3VidGFyZ2V0Lg0K
Pj4gMi4gY3JlYXRpbmcgYSBmaXQgaW1hZ2VzLg0KPj4gMy4gYWRkIHN1cHBvcnQgZm9yIHNhbTl4
NWVrIHNvYw0KPj4gNC4gYWRkIHVib290IGVudiBmaWxlLg0KPj4gNS4gYnVtcCB1Ym9vdCAmIGF0
OTFib290c3RyYXAgdG8gbGF0ZXN0IHZlcnNpb25zDQo+Pg0KPj4gLS0tDQo+PiB2MSAtPiB2Mg0K
Pj4gICBmaXhlZCBlcnJvcnMgd2hpbGUgY3JlYXRpbmcgc2RjYXJkIGltYWdlcy4NCj4+DQo+PiBT
YW5kZWVwIFNoZXJpa2VyIE0gKDExKToNCj4+ICAgIHVib290LWF0OTE6IGJ1bXAgbGludXg0c2Ft
XzUuOCB0byBsaW51eDRzYW1fNi4wDQo+PiAgICB1Ym9vdC1hdDkxOmFkZCBhdDkxc2FtOXg1ZWsg
c29jDQo+PiAgICB1Ym9vdC1hdDkxOiBjaGFuZ2VkIHNvbTEgZWsgZGVmYXVsdCBkZWZjb25maWdz
DQo+PiAgICB1Ym9vdC1hdDkxOiBmaXggLVdmb3JtYXQtc2VjdXJpdHkNCj4+ICAgIGF0OTFib290
c3RyYXA6IGJ1bXAgdjMuOC4xMCB0byB2My44LjEyDQo+PiAgICBhdDkxYm9vdHN0cmFwOiBhZGQg
c3VwcG9ydCBmb3IgYXQ5MXNhbTl4NWVrDQo+PiAgICBhdDkxYm9vdHN0cmFwOiBhZGQgc2FtYTVk
Mjdfc29tMV9la3NkMV91Ym9vdCBhcyBkZWZhdWx0IGRlZmNvbmZpZw0KPj4gICAgYXQ5MTogbW92
ZSBhdDkxLXNkY2FyZCBjb21tYW5kIHRvIHNhbWE1Lm1rDQo+PiAgICBhdDkxOiBhZGQgdWJvb3Qg
ZW52aXJvbm1lbnRzDQo+PiAgICBhdDkxOnNhbWE1OiBjcmVhdGUgZml0IGltYWdlDQo+PiAgICBh
dDkxOnNhbTl4OiBjcmVhdGUgZml0IGltYWdlIGFuZCBzZGNhcmQgaW1hZ2UNCj4+DQo+PiAgIHBh
Y2thZ2UvYm9vdC9hdDkxYm9vdHN0cmFwL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgMjUgKysr
KysrKysrLS0tDQo+PiAgIHBhY2thZ2UvYm9vdC91Ym9vdC1hdDkxL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgIHwgMjUgKysrKysrKystLS0tDQo+PiAgIC4uLi9wYXRjaGVzLzAwMS1maXgtV2Zv
cm1hdC1zZWN1cml0eS5wYXRjaCAgICAgICAgIHwgMTMgKysrKysrKw0KPj4gICB0YXJnZXQvbGlu
dXgvYXQ5MS9pbWFnZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICB8IDMzICstLS0tLS0tLS0t
LS0tLS0NCj4+ICAgdGFyZ2V0L2xpbnV4L2F0OTEvaW1hZ2Uvc2FtOXgubWsgICAgICAgICAgICAg
ICAgICAgfCA0NCArKysrKysrKysrKysrKysrKysrKystDQo+PiAgIHRhcmdldC9saW51eC9hdDkx
L2ltYWdlL3NhbWE1Lm1rICAgICAgICAgICAgICAgICAgIHwgNDIgKysrKysrKysrKysrKysrKysr
KysrDQo+PiAgIHRhcmdldC9saW51eC9hdDkxL2ltYWdlL3Vib290LWVudi50eHQgICAgICAgICAg
ICAgIHwgMTQgKysrKysrKw0KPj4gICA3IGZpbGVzIGNoYW5nZWQsIDE0OSBpbnNlcnRpb25zKCsp
LCA0NyBkZWxldGlvbnMoLSkNCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2thZ2UvYm9vdC91
Ym9vdC1hdDkxL3BhdGNoZXMvMDAxLWZpeC1XZm9ybWF0LXNlY3VyaXR5LnBhdGNoDQo+PiAgIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5MS9pbWFnZS91Ym9vdC1lbnYudHh0DQo+
Pg0KPiBIaSwNCj4NCj4gbXkgYnVpbGQgc3RpbGwgc3RvcHMgaGVyZToNCj4NCj4gbWNvcHkgLWkN
Cj4gL2hvbWUvaGF1a2Uvb3BlbndydC9vcGVud3J0L2J1aWxkX2Rpci90YXJnZXQtYXJtX2NvcnRl
eC1hNSt2ZnB2NF9tdXNsX2VhYmkvbGludXgtYXQ5MV9zYW1hNS90bXAvb3BlbndydC1hdDkxLXNh
bWE1LWF0OTEtc2FtYTVkMjdfc29tMV9lay1leHQ0LXNkY2FyZC5pbWcuZ3ouYm9vdA0KPiAvaG9t
ZS9oYXVrZS9vcGVud3J0L29wZW53cnQvYmluL3RhcmdldHMvYXQ5MS9zYW1hNS9hdDkxYm9vdHN0
cmFwLXNhbWE1ZDI3X3NvbTFfZWtzZCovYXQ5MWJvb3RzdHJhcC5iaW4NCj4gOjpCT09ULmJpbg0K
PiBTZXZlcmFsIGZpbGUgbmFtZXMgZ2l2ZW4sIGJ1dCBsYXN0IGFyZ3VtZW50IChCT09ULmJpbikg
bm90IGEgZGlyZWN0b3J5DQo+IExvbmcgZmlsZSBuYW1lICJCT09ULmJpbiIgYWxyZWFkeSBleGlz
dHMuDQo+IGEpdXRvcmVuYW1lIEEpdXRvcmVuYW1lLWFsbCByKWVuYW1lIFIpZW5hbWUtYWxsIG8p
dmVyd3JpdGUgTyl2ZXJ3cml0ZS1hbGwNCj4gcylraXAgUylraXAtYWxsIHEpdWl0IChhQXJSb09z
U3EpOg0KPg0KPg0KPiB3aXRoIHRoaXMgY29uZmlndXJhdGlvbjoNCj4NCj4gaGF1a2VAaGF1a2Ut
dDQ4MDp+L29wZW53cnQvb3BlbndydCQgLi9zY3JpcHRzL2RpZmZjb25maWcuc2gNCj4gQ09ORklH
X1RBUkdFVF9hdDkxPXkNCj4gQ09ORklHX1RBUkdFVF9hdDkxX3NhbWE1PXkNCj4gQ09ORklHX1RB
UkdFVF9NVUxUSV9QUk9GSUxFPXkNCj4gQ09ORklHX1RBUkdFVF9ERVZJQ0VfYXQ5MV9zYW1hNV9E
RVZJQ0VfYXQ5MS1zYW1hNWQyX3B0Y19laz15DQo+IENPTkZJR19UQVJHRVRfREVWSUNFX2F0OTFf
c2FtYTVfREVWSUNFX2F0OTEtc2FtYTVkMl94cGxhaW5lZD15DQo+IENPTkZJR19UQVJHRVRfREVW
SUNFX2F0OTFfc2FtYTVfREVWSUNFX2F0OTEtc2FtYTVkMjdfc29tMV9laz15DQo+IENPTkZJR19U
QVJHRVRfREVWSUNFX2F0OTFfc2FtYTVfREVWSUNFX2F0OTEtc2FtYTVkM194cGxhaW5lZD15DQo+
IENPTkZJR19UQVJHRVRfREVWSUNFX2F0OTFfc2FtYTVfREVWSUNFX2F0OTEtc2FtYTVkNF94cGxh
aW5lZD15DQo+IENPTkZJR19UQVJHRVRfQUxMX1BST0ZJTEVTPXkNCj4NCj4gSGF1a2UNCg0KSGkg
SGF1a2UsDQoNCiDCoMKgwqAgV2l0aCBhYm92ZSBjb25maWd1cmF0aW9uIG9wdGlvbnMsIEkgYW0g
bm90IGFibGUgdG8gcmVwcm9kdWNlIHRoaXMgDQppc3N1ZS4gbXkgYnVpbGQgc3VjY2VlZCBhbmQg
YWxsIGJpbmFyaWVzIGhhdmUgYmVlbiBnZW5lcmF0ZWQuDQoNClBsZWFzZSBjaGVjayBhbmQgY29u
ZmlybSBhZ2Fpbi4NCg0KUmVnYXJkcywNCg0KU2FuZGVlcCBTaGVyaWtlciBNDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
