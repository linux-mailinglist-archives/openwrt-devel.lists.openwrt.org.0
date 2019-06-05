Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87DF36251
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 19:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NzDU23E2yCOPaqFSEN5kdJ36tcxemX+wtbGs9KyGG4=; b=HBgT6K0JN/Oo4o
	QCVz/3tJHNYjEQtvyp+UdR5v3LzR4FntxdjGUatbAbyg6EbgbLzJh9NSPG/JF68UjCiU7XwdGGFFc
	u7eqY36fsvkFEkb4BNg9jUSPMx6nhwM5Wyd5ooenx36JbrQ0RFRD1yJNq38FQw5k3eMSRvlxbp+TA
	1/vJU6PGIc2mPFjecVQoOWGlIP3vSTWQvZQp3jdcXeeg7aQdIulE6jLm2FlBX82O/eOyxaSXW6H5A
	DlOHVIk2+yPYtGf3DBDeyn4u/fl5k7VWNeH+5Vdgmk+HadUZ2v/rr85B5tGo9QG2B8uuI6tcsZWn5
	RAZ32S1F5hHALZNUiNwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZXc-0002Ha-Hj; Wed, 05 Jun 2019 17:17:36 +0000
Received: from mail-eopbgr70133.outbound.protection.outlook.com
 ([40.107.7.133] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZWx-0001Zn-Lo
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 17:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eTactica.onmicrosoft.com; s=selector1-eTactica-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6USwe5x3rzxnJVENoT1g/jrI7eBgzwXxwnexo+YEzE=;
 b=vWafLzSPwlKLBPWHy0pJSJ+HAgnvnNfgH9inmcJWeXwJdNA8VUJSm88ynwM0skHwzI+h3ZtUicSz2Skm/qSAwYRf2uF8jCX3pkJmYcaxhP85iXotcUc3D+N5BQN7aSFB0S/N4EQ2Dwnemk358jSIxVEU3R/jYuzZ2Dg/i120Row=
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com (20.178.82.92) by
 AM0PR07MB5185.eurprd07.prod.outlook.com (20.178.18.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.9; Wed, 5 Jun 2019 17:16:52 +0000
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::9c6:5a2a:1b0e:e0e8]) by AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::9c6:5a2a:1b0e:e0e8%3]) with mapi id 15.20.1987.004; Wed, 5 Jun 2019
 17:16:52 +0000
From: =?utf-8?B?S2FybCBQw6Fsc3Nvbg==?= <karlp@etactica.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCHv2] toolchain: replace LEDE in help text
Thread-Index: AQHVG8J3fRK56I2oF0m1ciA/5Suc9w==
Date: Wed, 5 Jun 2019 17:16:52 +0000
Message-ID: <20190605171548.22809-1-karlp@etactica.com>
References: <20190605171030.6645-1-karlp@etactica.com>
In-Reply-To: <20190605171030.6645-1-karlp@etactica.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR05CA0061.eurprd05.prod.outlook.com
 (2603:10a6:208:be::38) To AM0PR07MB5953.eurprd07.prod.outlook.com
 (2603:10a6:208:108::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=karlp@etactica.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [213.181.112.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2648888e-1dc2-4bdf-e5a6-08d6e9d999ed
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:AM0PR07MB5185; 
x-ms-traffictypediagnostic: AM0PR07MB5185:
x-microsoft-antispam-prvs: <AM0PR07MB518552CD536A0BFE648D363BDD160@AM0PR07MB5185.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(396003)(376002)(39830400003)(366004)(199004)(189003)(8676002)(81156014)(81166006)(508600001)(8936002)(4744005)(486006)(50226002)(85182001)(305945005)(2616005)(186003)(7736002)(68736007)(316002)(446003)(26005)(11346002)(99286004)(102836004)(107886003)(386003)(76176011)(2501003)(6506007)(52116002)(476003)(2906002)(6486002)(85202003)(6916009)(86362001)(6116002)(53936002)(5640700003)(25786009)(2351001)(6512007)(71190400001)(6436002)(256004)(71200400001)(36756003)(4326008)(66946007)(5660300002)(73956011)(1076003)(66446008)(64756008)(66476007)(3846002)(66066001)(66556008)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB5185;
 H:AM0PR07MB5953.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: etactica.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /XlB1xW7nKtCgpHWYAktDjmrRUYoDEgOkTdWsSdOea/Oer5n2qV9JBc4GZ2BHheh6Pu/ZRvmF41KGHo4W6zhUskcC9xbqHIArVcZMXhfx5K4EPCCcspzi3VgTxrOHzGqI2Kdgm4ep5T1Hq+4MhCW2fx/ZN2B7A76QLOdB9VPREqowWpprUiF9Rhhy2gQ9a7X4gIJBSpldq0ENVFbK27q4K50F+kEFEm3SZLvwOmt1J9nuElq25qyEqEA56rrW+PCNEmyJ44atlWOzlXHnRn7weCUB6ok4dPfnnon9G3PnABdRS75l4hdrgIY/olTDa6f9t1bqZsPFcP1V0mlJoq1+cknpqwzmL7V8xgIC98s9i7/S6Sjt+11l7nlljRaW8z0i8QEhdEV1797IYHx/BqRJbIToXhVh8kkCteno5ggbrU=
MIME-Version: 1.0
X-OriginatorOrg: etactica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2648888e-1dc2-4bdf-e5a6-08d6e9d999ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 17:16:52.1822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3621586-558f-4e21-92a9-26df2c484dae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: karlp@etactica.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB5185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_101656_421652_E4A19690 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.133 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] [PATCHv2] toolchain: replace LEDE in help text
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

v2: fixed typo
 toolchain/Config.in | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/toolchain/Config.in b/toolchain/Config.in
index 82dddbc209..95087b7078 100644
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
+		  If enabled, the buildroot will compile using the native toolchain for your
 		  host instead of compiling one.
 
 	config TARGET_NAME
-- 
2.20.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
