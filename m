Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927C236219
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 19:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRZ0Sl+jiHD8MgFl7832Z7QFIDUdu5unuBKjjXX3oBM=; b=Spz3i5lToBe4yW
	h1ZUWv5M7YEIQ0D6RnpanqYHkorv9txX3VF0DGTxKnUIe/ReIgz8LpXsZbe4rDIOVmiyHP4o2iq8v
	+a6XKcUfO3vXW4rdLXJn4UTnY5FH0Il9QicheuCHpB4fP9qio96UKBMbz8W5/9lV1UOppgn+hV/a6
	40QZiKVKTRxGXyW9GdpDUyvtUJnQ81Py7XW/1olc3iwPOD4Q1LvWUkzdTwWWCJLWP2MCSvaWKoYVv
	4bw6Av7DnWvQk/cs/FB+7EwFd1B9+mQ4uqM/4w6Pf6HYr5bW/3O2bZUQRmaG2qvqONR7ggmePbuz7
	af03oA7MvyI2Cy5Q3FuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZRC-0006y5-4w; Wed, 05 Jun 2019 17:10:58 +0000
Received: from mail-eopbgr150138.outbound.protection.outlook.com
 ([40.107.15.138] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZR4-0006xW-Ge
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 17:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eTactica.onmicrosoft.com; s=selector1-eTactica-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V7TkPpbYgg12zYgTSJf5KhGYjNDF6nsXjmsUTR9nA+s=;
 b=ULm17g/vx0gvEvu6nNG6X7+Cqz9+rT0gTxw/PXBAIgjlZRUx/bHUY/D3mWj7jxTvav1oCa3gjOhQjVNE3wG6zfyVVn8ul1dVhz1g5A8u9aOUVLGN1uQfau25fqtoxo97mqigZty9Nu37quakYE3K6ZLXeuZhNPGq779q4L1a33o=
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com (20.178.82.92) by
 AM0PR07MB4961.eurprd07.prod.outlook.com (20.178.19.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 17:10:42 +0000
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::9c6:5a2a:1b0e:e0e8]) by AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::9c6:5a2a:1b0e:e0e8%3]) with mapi id 15.20.1987.004; Wed, 5 Jun 2019
 17:10:42 +0000
From: =?utf-8?B?S2FybCBQw6Fsc3Nvbg==?= <karlp@etactica.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] toolchain: replace LEDE in help text
Thread-Index: AQHVG8GbfFHlgLL5lECj+KrrugrKbQ==
Date: Wed, 5 Jun 2019 17:10:42 +0000
Message-ID: <20190605171030.6645-1-karlp@etactica.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0902CA0007.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::17) To AM0PR07MB5953.eurprd07.prod.outlook.com
 (2603:10a6:208:108::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=karlp@etactica.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [213.181.112.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f286e897-2af6-4cdb-e543-08d6e9d8bd6d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:AM0PR07MB4961; 
x-ms-traffictypediagnostic: AM0PR07MB4961:
x-microsoft-antispam-prvs: <AM0PR07MB4961F28F1B1733FA4612E5D3DD160@AM0PR07MB4961.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(376002)(39830400003)(346002)(199004)(189003)(2906002)(99286004)(102836004)(26005)(66556008)(8936002)(186003)(3846002)(508600001)(68736007)(4326008)(52116002)(386003)(53936002)(6506007)(7736002)(71200400001)(66476007)(6116002)(107886003)(5660300002)(8676002)(50226002)(81156014)(85202003)(66946007)(25786009)(71190400001)(2351001)(4744005)(1076003)(64756008)(73956011)(81166006)(66446008)(305945005)(5640700003)(2616005)(86362001)(6916009)(36756003)(85182001)(256004)(14454004)(316002)(2501003)(6436002)(6486002)(66066001)(486006)(476003)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB4961;
 H:AM0PR07MB5953.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: etactica.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WBy57VGnmCp3ON/j0A7tSD3y6VphfGudZB73AB6VoqnTDaQ5cgYP0n6iDty7ioIX6N3RYaChPm9sDgDhEVnHb0tFzXjVC8rRqeJn2ssgSQWC3njaS0HOgpcgq8P1aEfwAcAUi17waHDZiDtusUhb2+KQs7ciw51c+c26gdP8S9x3oAlNw8qeV3fMHTNarbtobKyIs2j/He5lqgubIpyII/Bsu3cXVbCJqXGynpw4lLNzLazvQfNq7ueU9VwlDqhyEzYqeJWSIbBJu4oQBQYiEh/3S6K5+NOet98F7Z0uwGYCdg5E/J3CYZ7mzGQvt3Hq1GAByagDMyjgpnKDFUcb2vwUH4atplxyD7lDUSeF4Ci6YYmBIs2vbuxpSqNca47MyzOkZjTgdek+mzwv08WykolFzsSOvue4Jul2pDCZ8WA=
MIME-Version: 1.0
X-OriginatorOrg: etactica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f286e897-2af6-4cdb-e543-08d6e9d8bd6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 17:10:42.1946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3621586-558f-4e21-92a9-26df2c484dae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: karlp@etactica.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_101050_598017_EF08D5D2 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.138 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] [PATCH] toolchain: replace LEDE in help text
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
Cc: =?utf-8?B?S2FybCBQw6Fsc3Nvbg==?= <karlp@etactica.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Use generic wording.

Signed-off-by: Karl Palsson <karlp@etactica.com>
---
 toolchain/Config.in | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 82dddbc209..e76e62e34f 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -42,7 +42,7 @@ menuconfig EXTERNAL_TOOLCHAIN
 	bool
 	prompt "Use external toolchain"  if DEVEL
 	help
-	  If enabled, LEDE will compile using an existing toolchain instead of
+	  If enabled, the buildroot will compile using an existing toolchain instead of
 	  compiling one.
 
 	config NATIVE_TOOLCHAIN
@@ -51,7 +51,7 @@ menuconfig EXTERNAL_TOOLCHAIN
 		depends on EXTERNAL_TOOLCHAIN
 		select NO_STRIP
 		help
-		  If enabled, LEDE will compile using the native toolchain for your
+		  If enabled, the buildrood will compile using the native toolchain for your
 		  host instead of compiling one.
 
 	config TARGET_NAME
-- 
2.20.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
