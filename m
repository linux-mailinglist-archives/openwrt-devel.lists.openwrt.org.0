Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F0617F77E
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 13:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYBDkS8MiszkGNdVjDxfKP+t8dK0rCfif3QY2FLABQg=; b=bDrVphhd7DlGFB
	ri9s1IuELXQPe+DdHnF+/3xPFF84hzTTE2VhKekfDgCX2i9pOum0pwybjFeXLCUKuQGzpQBKhMaV0
	YzxVGkCJpSQI+edlbAoaiBkTdtcYQlDUVEkXGvhFVEZKjBaUYrHDTG1oqojnouLdiZDSF+EDLkUXZ
	4JvStdMCObayQeZY8CKknfiMZ5LM0BO40kiQrZ2H4LwgHEPASTK4IMz4OHetsws//q5zjS/FBvEK5
	3WGir/qY9+gshPMxUWqiTE7P424Mlbwq2NK4FWFT+yYLESz7FMBAEZAhxyuCoZuYGm80kzX/fZUq7
	l8ROrAoLsJLUDldRBAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBe4b-0004ME-Dt; Tue, 10 Mar 2020 12:33:25 +0000
Received: from mail-eopbgr20064.outbound.protection.outlook.com ([40.107.2.64]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBe4U-0004Ll-Ea
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 12:33:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2luhomb+PQWq++MQUWbfiTL6iaojjVO4/JRYH/AJJ7K8f6gxpRuaWl8Ry7vVK4SldE1se/VuJBGHwy80mZX8SIdez/bhPAnanwarP+3Thl7QMR28v3kkTztifvsj6g4mxz47NotGCXY1/Ws+rBeP7S8pEeYEkqohb1sO631ugWPRFLeWSrEnbtsNlIkdPE0aruPsfHq3zuX14p7e0YQOk9ULRlXa1h1Pr7yI1wSB0qO9OrWFme5lCTIalG1HmbAu5KvddQxy64Cyhr+4UWC4fYcEuRPFN7rH4ghjQT7Fb4SmURdRTKiQCWjmC+1dxCPwkNKtHEUONiSWJa1rGRvDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+LWswok1gYbbLEFrJ93/9sVRM48EYasZJSoSSPD3UFw=;
 b=ayqOQOD8HQHDsKQ6rk3/3uVEeflOmhZk6drBKpAXZTKymTiaZLxe9QxbkdULHeRaz8DsIDmmFKqO231ekhZlaf9AG0SDMn7fkJrFUGcJx6ConCfic6pQbnLsWnFcXFuPCjZHMX8l3lVkJXEYOzcXcAWbmyPX3GBtGxrh87BLR+jB1ZUowtCCSDsj6aFCff6FQQBytAIyW5hPQLBW9PO+PtHPpAf5vgQYPqatI4XUTBj5t06Et9XbRramgs1qa5lxEH/OV8fjGSm4YBW0vIkWWz+j6UGKKYhFv3oZD2bqP6onyXh7bePZ/GIpWhOE7qXneX+X8/Q6AJWkvQaK7ukVLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=80211.de; dmarc=pass action=none header.from=80211.de;
 dkim=pass header.d=80211.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=catrinescu.onmicrosoft.com; s=selector2-catrinescu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+LWswok1gYbbLEFrJ93/9sVRM48EYasZJSoSSPD3UFw=;
 b=WcupjqWPDylhZ+jrvkCYydp8mwmiDK4qrm91xdI3dSm9no9/0fd/h4n46pKDVR/Nu5pPTn4qzB0EgCTRXZtca2FlvJTtqOvsjVqHtq1jPMBLaJDYdyKuEZwXuadwOMMEcVCjFDbJ8IJdn8fqAD8aXs6hzn9wya/gm+oGcIR3nSs=
Received: from VI1PR0302MB3358.eurprd03.prod.outlook.com (52.134.13.25) by
 VI1PR0302MB2719.eurprd03.prod.outlook.com (10.171.104.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 12:33:13 +0000
Received: from VI1PR0302MB3358.eurprd03.prod.outlook.com
 ([fe80::8d80:bb9d:1f26:5de]) by VI1PR0302MB3358.eurprd03.prod.outlook.com
 ([fe80::8d80:bb9d:1f26:5de%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 12:33:13 +0000
From: Catrinel Catrinescu <cc@80211.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
Thread-Index: AQHV9tO6Q1Bha1UJq0aZTEuWYp2MGKhBwGwAgAABEbA=
Date: Tue, 10 Mar 2020 12:33:13 +0000
Message-ID: <VI1PR0302MB335814CBB9F315217C149B87EFFF0@VI1PR0302MB3358.eurprd03.prod.outlook.com>
References: <20200310120204.6704-1-cc@80211.de>
 <00b601d5f6d7$0a1111b0$1e333510$@adrianschmutzler.de>
In-Reply-To: <00b601d5f6d7$0a1111b0$1e333510$@adrianschmutzler.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=cc@80211.de; 
x-originating-ip: [2001:16b8:a485:e200:c4a7:d912:e788:d1b5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f16d0412-0696-49d0-6ce6-08d7c4ef33ab
x-ms-traffictypediagnostic: VI1PR0302MB2719:
x-microsoft-antispam-prvs: <VI1PR0302MB271951065050F4A07E036CEAEFFF0@VI1PR0302MB2719.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:207;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(136003)(39830400003)(346002)(189003)(199004)(52536014)(86362001)(966005)(55016002)(5660300002)(53546011)(508600001)(71200400001)(6506007)(9686003)(81156014)(66476007)(64756008)(110136005)(186003)(33656002)(8676002)(8936002)(66446008)(66556008)(76116006)(2906002)(66946007)(81166006)(7696005)(316002)(142923001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB2719;
 H:VI1PR0302MB3358.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: 80211.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 72+gJTQugdbY7q7s+E8rQLnwX41m2O5kYXys6cu+zPkx5Ew9UPBDD84YKg0fiTMfmMUHxohQ6D/rV9cfJEHVsKktmqowR/v6OuKNu1Z1TWmUJXz0r4IBROwIZTUzLeuVJ9bkLfZbepyMLq7qO4cIK23kx3HJ5cK9Bquc8+k3YBD/GwIgMIrF7rnqqvMQ+xBi+ux706Qi3/D0BdpLPPxATHgX9mMVPD/j00YWybjKCs95zSedgGhNzM25qhLGgoKP1B0sC4/FnzuZPWSCoEdVosrqlda56Yx3FTbHPvqDn+Db/I4/7MgM6FaScoXl0+cC6ozAlC5kMEAhGO6CnOMi/Zm4gs/32QiNnhSayApGMa6mOVkIWINv6xJkA8LYqV3ULNERhjk6eIq4DCsHMF5/rw08ee/JTmoyI+XcuZwAQnB5+1Y4Cs0roJykG+LBKHoCfVH/+q87xFfoLxj3Ns94vVOgg4LzRa0LJfENGPgWIXST33RomgLjlaIlPJBbeOW9hPyjsb/S2VAuy1Ysebd+F5gSWU3JXc1v+rkbIU6qq2arx3nk+VWZr0tNJVuUX/fy
x-ms-exchange-antispam-messagedata: gnDws71i4nuUjZMRdulmJjcajb09ORM66LuxGYdMIDp17YOm9zTe3l51nGjKCkYc3NaNDCv76dvEbnR6ROPWx06Giazwm6jG3NELuDzaFgXxbQuUvgqD0Ch9TvX3lX4oyts6BAHE7SHAufBxiUmm+VG0emyOkgOnTyV0Gt0HOHHqQ418fd6rmRBhlKMmXioJvK4u4vUCoBtFLPXydtkkMQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: 80211.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f16d0412-0696-49d0-6ce6-08d7c4ef33ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 12:33:13.8405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72175547-ec04-4fa6-8f9d-95719e86a428
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FjNw1W2qIgSyQC67cYTQQyNeIWvuB+Zc1j4ZQBNRqAfkypCUwf62srOIMitB90Lo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2719
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_053318_490099_C7DA3EDC 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
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

SGkgQWRyaWFuDQoNCkFmdGVyIHN1Y2Nlc3NmdWwgdGVzdGluZywgSSBhbHdheXMgc2F2ZSB0aGUg
LmNvbmZpZyBmaWxlcywgYXR0YWNoaW5nIHRoZSByZXZpc2lvbiBudW1iZXIsIGxpa2UgLmNvbmZp
Z19yMTIzNDUuDQoNCkFuZCBpdCBpcyBhIGNvc21ldGljIHJlcGxhY2VtZW50IHRvby4NCg0KDQpU
aGFua3MNCkNhdHJpbmVsDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFk
cmlhbiBTY2htdXR6bGVyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+IA0KU2VudDogVHVlc2Rh
eSwgMTAgTWFyY2ggMjAyMCAxMzoyNg0KVG86IENhdHJpbmVsIENhdHJpbmVzY3UgPGNjQDgwMjEx
LmRlPjsgb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZw0KU3ViamVjdDogUkU6IFtPcGVu
V3J0LURldmVsXSBbUEFUQ0hdIC5naXRpZ25vcmU6IGlnbm9yZSBhbGwgLmNvbmZpZyogZmlsZXMN
Cg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBvcGVud3J0LWRldmVsIFtt
YWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXSANCj4gT24gQmVo
YWxmIE9mIGNjQDgwMjExLmRlDQo+IFNlbnQ6IERpZW5zdGFnLCAxMC4gTcOkcnogMjAyMCAxMzow
Mg0KPiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZw0KPiBDYzogQ2F0cmluZWwg
Q2F0cmluZXNjdSA8Y2NAODAyMTEuZGU+DQo+IFN1YmplY3Q6IFtPcGVuV3J0LURldmVsXSBbUEFU
Q0hdIC5naXRpZ25vcmU6IGlnbm9yZSBhbGwgLmNvbmZpZyogZmlsZXMNCg0KV2h5IGlzIHRoaXMg
bmVjZXNzYXJ5ICgtPiBjb21taXQgbWVzc2FnZSk/DQoNCk9yIGlzIGl0IGp1c3QgYSBjb3NtZXRp
YyByZXBsYWNlbWVudCBvZiB0d28gbGluZXMgYnkgb25lPyAoSW4gdGhhdCBjYXNlLCBJJ2QgcHJl
ZmVyIHRoZSBzcGVjaWZpYyBsaW5lcykuDQoNCkJlc3QNCg0KQWRyaWFuDQoNCj4gDQo+IEZyb206
IENhdHJpbmVsIENhdHJpbmVzY3UgPGNjQDgwMjExLmRlPg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Q2F0cmluZWwgQ2F0cmluZXNjdSA8Y2NAODAyMTEuZGU+DQo+IC0tLQ0KPiAgLmdpdGlnbm9yZSB8
IDMgKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvLmdpdGlnbm9yZSBiLy5naXRpZ25vcmUNCj4gaW5kZXggNjU0
OWFmODNiZS4uZWRmZmJhOWMwNSAxMDA2NDQNCj4gLS0tIGEvLmdpdGlnbm9yZQ0KPiArKysgYi8u
Z2l0aWdub3JlDQo+IEBAIC0zLDggKzMsNyBAQA0KPiAgLiouc3dwDQo+ICAvZW52DQo+ICAvZGwN
Cj4gLS8uY29uZmlnDQo+IC0vLmNvbmZpZy5vbGQNCj4gKy8uY29uZmlnKg0KPiAgL2Jpbg0KPiAg
L2J1aWxkX2Rpcg0KPiAgL3N0YWdpbmdfZGlyDQo+IC0tDQo+IDIuMTcuMQ0KPiANCj4gDQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IG9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0DQo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcNCj4g
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
