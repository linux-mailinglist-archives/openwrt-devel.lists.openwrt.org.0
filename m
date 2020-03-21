Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49ED18DF32
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 10:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1AgAEEZWeI3+/V6U1GXhyJ8cysvgfxCFBxNFDr/rzA=; b=poD8qx3ccWesov
	rnYqu5rajKDOlbBQFfzZRH/Y6UKRzancym6UqN/1K9Gong+5/8rqGX091uUMpnfUqWyryYSr5h7IC
	tfFtaZhfdxHA6yShpnPhjgrCNIRKfeJqi121p4Qtz+GyosDxnQDaydCTLzYoB62bPi5Ea6DTGiTwH
	CHkMRaeP8Kt2l+PlRtKqOZ9LOwTtaZIsONDS0D9TuOdccBoDM3k0XWi8ewgmvk0pLijIFfRIyNC+f
	yllejLy4rx//1JMarYelI5Tn5WUHpjPuskOgmgnf/tlVBIGFbePIcDuF2upzS7V8LvIaEzWgS49Bh
	y4+Gu7bhwZbSe185+znQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFaaZ-0001VV-5W; Sat, 21 Mar 2020 09:38:43 +0000
Received: from mail-eopbgr60056.outbound.protection.outlook.com ([40.107.6.56]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFaaO-0001Uw-F1
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 09:38:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6WaCeURnTg2bP2WB8d3lvrChlIDoa4GDy7Un6k2Jy9kA0smpzqCP3IIvtGuaOQJvpwJZjnaSXlZheLpedCEsPwcYPmxNR7hPIxgoA6TAjyrXBo5LPfLHs7jfwSI8Vzk3qvoQ6O8mGj7EJTJ31gB2m+SQtiQLOfcI+fmdUDjbfE6apnfr/kmcaAh+DWfee+qPe81U2tnjN8moilfyYt9xXJq2KKu1iAiZyu6LTx8AcpAFovxUC+FqkhoGV5SLR23drB4dUv7/jbeQi8q4U1IGkwBUClnnx2EHkKPxbnXReWZna0yYaDm8K0EX+fkrXJqhjW6/982TqIbEk/596u9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqYILnkHTQ6UlFLe6kCn+ntFMd+wW9e4xEwXC5QocFk=;
 b=L+STNNCgrDQOs3NihMFLfLr7Isicyy/SD/VJhdlletB74+PCYP4b1uwnQaxk85EwCx6omLsvmkM5l0lGLfx1AT4rUtL46J84zJO1exQqryBMuTMW9arh1bdCkvI7dQ0/fdhyx8r9KQYBT7Bn0y3mEzU0Br6QNCNCtWMleyp0tGnl0NV6zbc5Hfp0dwKvtID65OdfrZdkvrJ5KEMNZ9nKXiIa91JR0TdHpJKNoy7twl8iTEGDvPw+Ru0eyRbIgIW+p1alz3nG4zHnMxIXuhQ7NF9j3oeBBVRwM6WaTEgY/MpyPoLXnc8W8C+Ozqiqz7PKM907R2tt2DL0T0hmuijG6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqYILnkHTQ6UlFLe6kCn+ntFMd+wW9e4xEwXC5QocFk=;
 b=ETuhbDtRMxt13O5yUx0ZeeCjBE0oAUZhjtkDA78dhJSuNVQ7ukqnc/H87nZDTPpKsdwOfhSXOraZ6A5SGThxVbMksfhi4ukyRKsI8dbvm4VEyby3rJDOitO/MfAi83akWYe5d8CaEhufQbCrqgPW58oWkGxojPzdfW+bzEHSdF8=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (20.177.50.76) by
 VI1PR03MB4637.eurprd03.prod.outlook.com (20.177.51.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Sat, 21 Mar 2020 09:38:27 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2835.017; Sat, 21 Mar 2020
 09:38:27 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Sebastian Kemper <sebastian_ml@gmx.net>
Thread-Topic: Strongswan compile fails since connmark related commits in
 OpenWrt
Thread-Index: AQHV/2ESuDom4j5M106vmpJor4/wBqhSyiuA
Date: Sat, 21 Mar 2020 09:38:27 +0000
Message-ID: <A831410E-2F5C-4C4D-8C38-D14C12A0FAE2@darbyshire-bryant.me.uk>
References: <20200321091353.GA29430@darth.lan>
In-Reply-To: <20200321091353.GA29430@darth.lan>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3d422ab-0fd0-4e59-066d-08d7cd7b9bd6
x-ms-traffictypediagnostic: VI1PR03MB4637:
x-microsoft-antispam-prvs: <VI1PR03MB4637DD3EF2908E3FD35B2560C9F20@VI1PR03MB4637.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 034902F5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(39830400003)(376002)(396003)(34036004)(448600002)(199004)(36756003)(5660300002)(4326008)(6486002)(91956017)(2906002)(64756008)(66556008)(76116006)(66446008)(6916009)(86362001)(53546011)(8676002)(66946007)(6512007)(2616005)(71200400001)(966005)(66476007)(8936002)(33656002)(38610400001)(6506007)(81156014)(586005)(186003)(54906003)(81166006)(102460200006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR03MB4637;
 H:VI1PR03MB4575.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IKsmTAxtpOJ12XI2w3iGUhTVVlxEaIFO2NiRgNsjBnsZdW1SrHE283ShkZNh6CRITCzypbKuA2HMMv7NcjwOGoIiDXESfopHn2vE/142bmJE1EtxKL5WuWbYqC82WHo2L3dpo+CyjCRX4KQjS+tdkJAKTxCnmOhd/qBV4Nqm2qF0+R9UR+WUWZoQ3Q7GPuc00DcBqXqdaZXXXMcUjS2/sT4aDRI3hesHTSq2ilT7JkmFIqdVFYpGuqTDg2uluwCQNDJBjAb927szDcb53ugUOhDomwyxURBP5BoxjBEG+Bm0XYKoTEPbtyFF7xkrxqpZLKmhpVAVPfJ6T/tIicTifXkJBhCEt4IdphBS5YruVgHqQNrO9GCI2uFgzsAeaklYXqh4BLeVIg/F3NdnPVCbtPw+/Ss4JxiFJLvlAbNDe5jRgv249ZYY9TKUsq/o3P0DcuMvyMZi6BKNXN6bG6IBYzERv1TEuvp4KMT7SZKQXFEFqLkKPNEbAKKmAhY0Pou5i5zMPyqux/gOD92QUgmTek63nYUL0K2v2bMVeN7a7shn3KbXrKkeP6iAahqT4mUaeALiJoYsARcA2J2X9RQ9zg==
x-ms-exchange-antispam-messagedata: Q2itOPqr24gXx9wJDQExo2r5PzpQ+HClS+R2BAZ9Dax+T1HyjfOPInSkTcuNUKublgRiwmfaAVq+amAHl1S6vA6j0+sp7fQdi8tKhGNP01z7z7EmuETCIvU1AVsvOWdWsHHwO95MjaoAKzLI2hXfmFO30h/tHFsW2kTItx2B+cWCnhbVfsuDy/Pco4yD31Wu
x-ms-exchange-transport-forked: True
Content-ID: <268C3FAE1E805D4FB2EC714E1AF44B8B@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d422ab-0fd0-4e59-066d-08d7cd7b9bd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2020 09:38:27.4391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VMPa3V+4uCTr1+QYuv/q+fcqUdPKEZ3LKRG8uoQYgHzkSOZVDknTLyBZS4k5iLhSQpBZs3wVD7JkhoHzmTD3zlydODu1+uAVuUpM3Zsmz6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_023832_562089_0A622450 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Strongswan compile fails since connmark related
 commits in OpenWrt
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgU2ViYXN0aWFuLA0KDQpJ4oCZdmUganVzdCBkb25lIGEgZml4IGZvciB0aGlzLiAgSnVzdCB3
YWl0aW5nIGZvciBhIGJ1aWxkIHRvIGNvbXBsZXRlIGJlZm9yZSBJIHB1c2ggaXQuDQoNCkluIGVz
c2VuY2UsIHRoZSBrZXJuZWwgaGFjayBwYXRjaGVzIGZvciA0LjE5IHdlcmUgY29waWVkIHRvIDUu
NC4gIFRoZSBwYXRjaCBpbiA0LjE5IHdhcyBmaXhlZCBidXQgdGhlIG9uZSBpbiA1LjQgZ290IGZv
cmdvdHRlbiBhYm91dCwgc2luY2Ugbm8gb25lIHdhcyBhY3R1YWxseSBidWlsZGluZyB3aXRoIGEg
NS40IGtlcm5lbCB0aWxsIG5vdy4NCg0KV2hhdCBJIHJlYWxseSBkb27igJl0IHVuZGVyc3RhbmQg
YXMgdGhlIGF1dGhvciBvZiB0aGUgcGF0Y2ggaXMgcXVpdGUgaG93IHRoZSBvbGQgaGVhZGVyIHN5
bnRheCBzdGlsbCBleGlzdHMsIHNpbmNlIHRoZSB2ZXJzaW9uIG9mIHBhdGNoZXMgSSBzZW50IHVw
c3RyZWFtIGhhcyB0aGUgZml44oCmLmFuZCBpbiB0aGVvcnkgSSBiYWNrcG9ydGVkIHRob3NlIHVw
ZGF0ZXMgdG8gb3BlbndydC4NCg0KSWYgeW91IGNhbuKAmXQgd2FpdCB0aGVuIHR3ZWFrIGhhY2st
NS40LzY0NS1uZXRmaWx0ZXItY29ubm1hcmstaW50cm9kdWNlLXNldC1kc2NwbWFyay5wYXRjaDoN
Cg0KZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL2hhY2stNS40LzY0NS1uZXRmaWx0
ZXItY29ubm1hcmstaW50cm9kdWNlLXNldC1kc2NwbWFyay5wYXRjaCBiL3RhcmdldC9saW51eC9n
ZW5lcmljL2hhY2stNS40LzY0NS1uZXRmaWx0ZXItY29ubm1hcmstaW50cm9kdWNlLXNldC1kc2Nw
bWFyay5wYXRjaA0KaW5kZXggZjVjYTFiZWY2ZS4uMmQzZmUwMWE3NSAxMDA2NDQNCi0tLSBhL3Rh
cmdldC9saW51eC9nZW5lcmljL2hhY2stNS40LzY0NS1uZXRmaWx0ZXItY29ubm1hcmstaW50cm9k
dWNlLXNldC1kc2NwbWFyay5wYXRjaA0KKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvaGFjay01
LjQvNjQ1LW5ldGZpbHRlci1jb25ubWFyay1pbnRyb2R1Y2Utc2V0LWRzY3BtYXJrLnBhdGNoDQpA
QCAtODcsOCArODcsOCBAQCBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8
bGRpckBkYXJieXNoaXJlLWJyeWFudC5tZS51az4NCiAgfTsNCiAgDQogIGVudW0gew0KLSsgICAg
ICBYVF9DT05OTUFSS19WQUxVRSA9IEJJVCgwKSwNCi0rICAgICAgWFRfQ09OTk1BUktfRFNDUCA9
IEJJVCgxKQ0KKysgICAgICBYVF9DT05OTUFSS19WQUxVRSA9ICAgICAoMSA8PCAwKSwNCisrICAg
ICAgWFRfQ09OTk1BUktfRFNDUCA9ICAgICAgKDEgPDwgMSkNCiArfTsNCiArDQogK2VudW0gew0K
DQpBcG9sb2dpZXMgZm9yIHRoZSBpbmNvbnZlbmllbmNlLg0KDQpLZXZpbg0KDQo+IE9uIDIxIE1h
ciAyMDIwLCBhdCAwOToxMywgU2ViYXN0aWFuIEtlbXBlciA8c2ViYXN0aWFuX21sQGdteC5uZXQ+
IHdyb3RlOg0KPiANCj4gSGkgYWxsLA0KPiANCj4gc3Ryb25nc3dhbiBmYWlscyB0byBjb21waWxl
IHNpbmNlIG1hbnkgd2Vla3M6DQo+IA0KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL2J1aWxkZXIv
c2hhcmVkLXdvcmtkaXIvYnVpbGQvc2RrL3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi1hYXJjaDY0X2Nv
cnRleC1hNTNfZ2NjLTguNC4wX211c2wvaW5jbHVkZS9saW51eC9uZXRmaWx0ZXIveHRfQ09OTk1B
UksuaDo1LA0KPiAgICAgICAgICAgICAgICAgZnJvbSBjb25ubWFya19saXN0ZW5lci5jOjMwOg0K
PiAvYnVpbGRlci9zaGFyZWQtd29ya2Rpci9idWlsZC9zZGsvc3RhZ2luZ19kaXIvdG9vbGNoYWlu
LWFhcmNoNjRfY29ydGV4LWE1M19nY2MtOC40LjBfbXVzbC9pbmNsdWRlL2xpbnV4L25ldGZpbHRl
ci94dF9jb25ubWFyay5oOjIzOjI6IGVycm9yOiBlbnVtZXJhdG9yIHZhbHVlIGZvciAnWFRfQ09O
Tk1BUktfVkFMVUUnIGlzIG5vdCBhbiBpbnRlZ2VyIGNvbnN0YW50DQo+ICBYVF9DT05OTUFSS19W
QUxVRSA9IEJJVCgwKSwNCj4gIF5+fn5+fn5+fn5+fn5+fn5+DQo+IC9idWlsZGVyL3NoYXJlZC13
b3JrZGlyL2J1aWxkL3Nkay9zdGFnaW5nX2Rpci90b29sY2hhaW4tYWFyY2g2NF9jb3J0ZXgtYTUz
X2djYy04LjQuMF9tdXNsL2luY2x1ZGUvbGludXgvbmV0ZmlsdGVyL3h0X2Nvbm5tYXJrLmg6MjU6
MTogZXJyb3I6IGVudW1lcmF0b3IgdmFsdWUgZm9yICdYVF9DT05OTUFSS19EU0NQJyBpcyBub3Qg
YW4gaW50ZWdlciBjb25zdGFudA0KPiB9Ow0KPiBeDQo+IA0KPiBGdWxsIGxvZyBleGFtcGxlOg0K
PiANCj4gaHR0cHM6Ly9kb3dubG9hZHMub3BlbndydC5vcmcvc25hcHNob3RzL2ZhaWxsb2dzL2Fh
cmNoNjRfY29ydGV4LWE1My9wYWNrYWdlcy9zdHJvbmdzd2FuL2NvbXBpbGUudHh0DQo+IA0KPiBJ
IHRoaW5rIHRoYXQgdGhpcyBidWlsZCBmYWlsdXJlIGlzIHJlbGF0ZWQgdG8gb25lIG9mIHRoZSBm
b2xsb3dpbmcgY29tbWl0czoNCj4gDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53
cnQvY29tbWl0L2U0ODFkZjA3ZmE2NTk5ZTE4YTA1NzBhY2I0ZGFkYWJjNTYyOTliN2INCj4gaHR0
cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9jb21taXQvYTFjZmUwZGNiYjI0MmFiNDQw
YWY2ODAxZTIyM2ViZGU1NDBlZDkwZg0KPiANCj4gKHByb2JhYmx5IHRoZSBzZWNvbmQgb25lKQ0K
PiANCj4gTWF5YmUgYW55Ym9keSBjYW4gdGFrZSBhIGxvb2sgYXQgdGhpcz8NCj4gDQo+IElmIHlv
dSB3YW50IG1lIHRvIHJhaXNlIGFuIGlzc3VlIGluIEZseXNwcmF5IGxldCBtZSBrbm93Lg0KPiAN
Cj4gS2luZCByZWdhcmRzLA0KPiBTZWINCg0KDQpDaGVlcnMsDQoNCktldmluIEQtQg0KDQpncGc6
IDAxMkMgQUNCMiAyOEM2IEM1M0UgOTc3NSAgOTEyMyBCM0EyIDM4OUIgOURFMiAzMzRBDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
