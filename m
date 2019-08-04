Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FED280AB8
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 13:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rCaUF3rZtTSyYHZwAFaEEQtOwnGz/F/HkX94gJw7RxU=; b=cbU
	sRL9Q/WuuEJWtvFHw+sKYtqhASAk1Dv5tfEbk3E+DdT9QSx77kRw6YO4VTLvey7Tw94CZYjbEy6/A
	6ovoz7nhJ6vot1/D6AKaftyGRL6Y21Ze0INR0zZ2CVBAsZxIOHp3fHSznWVVRBzm8CkNEWf2eZD2W
	ADUZqcJjNcaVcj5tA4j5msHZLHPYvsRiT1U3f0y9qrEfI7o/Y+b4XdvqB/wsL5g2ISDx12/s2QBsR
	DCC6s3pbEzdUSBCqA6do3tFrJZQvgkU2LP/ZCd4NnZbuJi/oMLE3cK0YBQ+YULwzZ+Nz56GHhWTY9
	Y9izQLKIzhrU2IbtMPNxkcYF8WITi0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huF2v-0003IW-A0; Sun, 04 Aug 2019 11:51:29 +0000
Received: from mail-oln040092065069.outbound.protection.outlook.com
 ([40.92.65.69] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huF2p-0003Hw-6k
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 11:51:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkShU/VpCwmAWcLG4uqVKlF2l+t+exxQovSMzfZP/Q4FS0aVz1fbzN8/GM8fZ50UfrjswZsbztNcf83iRKZVWrx5OokNpwHKZbtxcTQowFotA24c3nt5/I9PM+B+x01ai99A7NqroH8gR48Ydqz80btc90VwlWeHiiK+RUQUix7pd1k7AHBsQ2wEwI3CStaR/EqIPqGOFr9aAHt8oSagngQM6d/wFcHelDV4nq9zeVdR7rTvKZ3jESEuRVLP9IR+1R/SqqdISMSBPCjTy0p6jbjitfdFKMJXyeuBU/vPap9o8iCx7dXooqMG8SPMTXkWNmpAYG6kn7n1Anin6cjNmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gxo9WnhWjdMTMy/kbQBV1br6SXXd8SgNSUx7lCjGzcI=;
 b=Oim37hCKB8yizAprOUbnqV3A4U2wRQcBNlLquql1X2+WSdtnsMAEOG8sfhGGZ/mlRo8vAuyUWMGG/9rDRnORNv6uU3cTYWI7kcldy/TIWk4bUOJATp2UuKNNowYDe4sRy2Lh8tm3loEuFBOkqazicHyDyKv7bbEYIP0proyX9S7z5gkGxdf6Qz1dTHbXz7IcdpljpR9L/EAnOKoggwqTYwgmwBUMEgLM9W4E0redrIAb/EWzh29rOb17RA0/eQk1Ahv9flIgQPM5LPCP6iJq+80RbYEsmLeR9lHnLfNDSllHWeUWrxfBzc6NQ3ubYqQR4l1+1WeJnt1LRy3FwgGUCA==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gxo9WnhWjdMTMy/kbQBV1br6SXXd8SgNSUx7lCjGzcI=;
 b=dFDH0l9rjcdJHcdF70w3bHbUkvuYX8QbcI3GuV2owaT+eDQj3D2jZtXDCZmT9zUckA+myn1H6FaKyH+PHbObj96JkLtSrTUB3lx/6K1q4p+F64mk7YvgC4z6kScUobEFd5nW0XKyRfpzK7cXGH0BG64cWh7bpOarGUZrwHg5/U9dTRcLxuTfNBzhAJFb8vDS4Qfyrr+vhoE7gVkaZpUOek00No1RsfvFaTxUsxzUbfq44acBSY1gu5+NRujzCAaokRSCwV6JhqZ9MzIs4meK9qwyIZ1sd7phiS6Op20VJM1Hm/+i+ElUSBG44I/A6omlVLsMkoFDEvAJpflweIBg6Q==
Received: from DB5EUR01FT027.eop-EUR01.prod.protection.outlook.com
 (10.152.4.60) by DB5EUR01HT170.eop-EUR01.prod.protection.outlook.com
 (10.152.5.130) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14; Sun, 4 Aug
 2019 11:51:16 +0000
Received: from VI1PR03MB3917.eurprd03.prod.outlook.com (10.152.4.60) by
 DB5EUR01FT027.mail.protection.outlook.com (10.152.5.1) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14 via Frontend Transport; Sun, 4 Aug 2019 11:51:16 +0000
Received: from VI1PR03MB3917.eurprd03.prod.outlook.com
 ([fe80::49d5:4e87:3cc7:3a30]) by VI1PR03MB3917.eurprd03.prod.outlook.com
 ([fe80::49d5:4e87:3cc7:3a30%6]) with mapi id 15.20.2136.018; Sun, 4 Aug 2019
 11:51:16 +0000
From: Sebastian Knapp <sebastian4842@outlook.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Keep device available to the imagbuilder for release 19.07
Thread-Index: AQHVSrrs7A7GinysJkivHbqzye9QsA==
Date: Sun, 4 Aug 2019 11:51:16 +0000
Message-ID: <VI1PR03MB3917209D32B0369CAE852E50A2DB0@VI1PR03MB3917.eurprd03.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0102CA0022.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::35) To VI1PR03MB3917.eurprd03.prod.outlook.com
 (2603:10a6:803:69::23)
x-incomingtopheadermarker: OriginalChecksum:DF245E3A30424E1B4E5F5D4CAF85A945E3702A8720B150D8CC50A5B42D82D7F5;
 UpperCasedChecksum:62A8C2FD95FA120E1ACC26596A8783A21DB9138A5FB06E1DE792460B2E2DC19F;
 SizeAsReceived:7281; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [H/86jh+oZ7lyqFeWASAtaxbtnzVl9V7S]
x-microsoft-original-message-id: <a73b0489-3ac0-3122-2318-6931fe600db3@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR01HT170; 
x-ms-traffictypediagnostic: DB5EUR01HT170:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: pE7TEcnIqXM8dJe4Yd5JJztEYRG9p/0d9kkT5uV3U3TtZIBvrMU5+bWWeMtNL5qNaebJLl1Rbtjfabttrgube1H1xMv+lopHNFNXOPBtxWsTfj0HZclryCw9GWOSPjeE9S30f1Ln9kZrKtAW2EqyMbE8CtCGVcJKbgyahBYT9i5cNnbq9nDuzyACyGM3tcT/
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bf35c583-6bad-43f0-4046-08d718d20e69
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2019 11:51:16.3210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_045123_341098_CCB4CDCD 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.69 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sebastian4842[at]outlook.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian4842[at]outlook.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Keep device available to the imagbuilder for
 release 19.07
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
Content-Type: multipart/mixed; boundary="===============5706658658387765224=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5706658658387765224==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR03MB3917209D32B0369CAE852E50A2DB0VI1PR03MB3917eurp_"

--_000_VI1PR03MB3917209D32B0369CAE852E50A2DB0VI1PR03MB3917eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCmF1dG9tYXRpYyBidWlsZGluZyBmb3IgdGhlIGRldmljZSBOZXRnZWFyIGV4MjcwMCBo
YXMgYmVlbiBzdG9wcGVkIHJlY2VudGx5OiBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVu
d3J0L29wZW53cnQuZ2l0O2E9Y29tbWl0ZGlmZjtoPTQwMjIwMzVhYWZkM2Y2OGI5ZmE1NjA2OWI1
MjYwZjU1Y2JmMzBlNWUNCg0KSSBhbSBhd2FyZSBvZiB0aGUgbGltaXRhdGlvbnMgb2YgNC8zMiBk
ZXZpY2VzIGFuZCBrbm93IHRoYXQgT3BlbldydCAxOS4wNyB3aWxsIGJlIHRoZSBsYXN0IHJlbGVh
c2UuDQoNCklzIGl0IHBvc3NpYmxlIHRvIG1ha2UgdGhlIGRldmljZSBhdmFpbGFibGUgdG8gdGhl
IGltYWdlYnVpbGRlciBvbmx5IGluc3RlYWQgb2YgY29tcGxldGVseSByZW1vdmluZyBpdCBmcm9t
IHRoZSBidWlsZCBwcm9jZXNzPw0KU28geW91IGNhbiBhdCBsZWFzdCBwdXQgYSB3b3JraW5nIGlt
YWdlIHRvZ2V0aGVyIGVhc2lseSBpbnN0ZWFkIG9mIGJ1aWxkaW5nIGV2ZXJ5dGhpbmcgZnJvbSBz
b3VyY2UuDQoNCktpbmQgcmVnYXJkcywNClNlYmFzdGlhbg0KDQo=

--_000_VI1PR03MB3917209D32B0369CAE852E50A2DB0VI1PR03MB3917eurp_
Content-Type: text/html; charset="utf-8"
Content-ID: <290F14479DD7AA4B82622EF69E18E7F8@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KSGksPGJyPg0KPGJy
Pg0KYXV0b21hdGljIGJ1aWxkaW5nIGZvciB0aGUgZGV2aWNlIE5ldGdlYXIgZXgyNzAwIGhhcyBi
ZWVuIHN0b3BwZWQgcmVjZW50bHk6IDxhIG1vei1kby1ub3Qtc2VuZD0idHJ1ZSIgaHJlZj0iaHR0
cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9vcGVud3J0LmdpdDthPWNvbW1pdGRpZmY7
aD00MDIyMDM1YWFmZDNmNjhiOWZhNTYwNjliNTI2MGY1NWNiZjMwZTVlIj4NCmh0dHBzOi8vZ2l0
Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7YT1jb21taXRkaWZmO2g9NDAyMjAz
NWFhZmQzZjY4YjlmYTU2MDY5YjUyNjBmNTVjYmYzMGU1ZTwvYT48YnI+DQo8YnI+DQpJIGFtIGF3
YXJlIG9mIHRoZSBsaW1pdGF0aW9ucyBvZiA0LzMyIGRldmljZXMgYW5kIGtub3cgdGhhdCBPcGVu
V3J0IDE5LjA3IHdpbGwgYmUgdGhlIGxhc3QgcmVsZWFzZS48YnI+DQo8YnI+DQo8Yj5JcyBpdCBw
b3NzaWJsZSB0byBtYWtlIHRoZSBkZXZpY2UgYXZhaWxhYmxlIHRvIHRoZSBpbWFnZWJ1aWxkZXIg
b25seSBpbnN0ZWFkIG9mIGNvbXBsZXRlbHkgcmVtb3ZpbmcgaXQgZnJvbSB0aGUgYnVpbGQgcHJv
Y2Vzcz88L2I+PGJyPg0KU28geW91IGNhbiBhdCBsZWFzdCBwdXQgYSB3b3JraW5nIGltYWdlIHRv
Z2V0aGVyIGVhc2lseSBpbnN0ZWFkIG9mIGJ1aWxkaW5nIGV2ZXJ5dGhpbmcgZnJvbSBzb3VyY2Uu
PGJyPg0KPGJyPg0KS2luZCByZWdhcmRzLDxicj4NClNlYmFzdGlhbjxicj4NCjxicj4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_VI1PR03MB3917209D32B0369CAE852E50A2DB0VI1PR03MB3917eurp_--


--===============5706658658387765224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5706658658387765224==--

