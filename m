Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4424DA6F03
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 18:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=osfAvPM5QVjZz9ikNPxZQ4uMoNeFunEzbTPp1ts5Q/8=; b=ib2KRi4Pqp1avk
	p4i7yrrPvt++EWXD5lmayi5sdPC0SWAT7ZOsZqGrM3DOW/EHd/ExTTC7ls+7ES4fp92qZPa7MCZca
	cBP5fYBzc3LxDTK2xgTRZw91JM7oxrHPCubA40TbG8Koz4oxjloghyZZHVE+06WDbLySOoTgifbAU
	ryLJFYi9KaoLH7/pXykK8+/BhIs5Ih+k7H0vi5U3YIHgXvOoSHTLq4U0V35ZPv5YyvPiQuStJYPuB
	HfAe49tM+SsdSsHKGmXu1pSYQ7/DgxaJgpF6AzG7YJzjSiWPuEazyEFIVFBOVD14gTtNkxwcsMEuH
	l5VmehonGPENNYTIUx+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Bi3-0002cq-Up; Tue, 03 Sep 2019 16:31:12 +0000
Received: from mail-eopbgr140125.outbound.protection.outlook.com
 ([40.107.14.125] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Bhs-0002br-La
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 16:31:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a55tKWqBwmleNpzeceDD8bXeCzEtmTBnGjlPhnZ+IIKb9e2j5jO9oc5aX10lrBX1ZpVlZ6gx1YpngWr4gsKKV+I1/51aITqJUAEVswjM0JljfMw2tZT+STUWQSalp0aUVoy+SKIG34xYsl8Ae7xrbrVuGLu7KwxKkZg+Oq0hTthUpBpnFeCPUb4VP+5POzBDlPWqomhxsR8FTOiEe7Q4u1RXvcC7Ajee/oWvuJkD/usQUzmSAnWRhzPAznqbREv5neOtFtw+9DIG/lYP8+PDT8kkND3McLQWdpel+UYL7Geh6LseBp6UMdNVMFylt5XWaLh3TnDq3ftnysX9G2xTrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBrHIU8YeqOpqOkIqwpFyxsFpc324reO9LcaWddkFq0=;
 b=bAC6Qy4mSxDGeDgSo+/HtUhL8xYmajBFpJf57r4/ygzPiaSAoBEJHt+f3KZv4cbjn/SqJKSm6THDhhNf7Zk7aXrkAFxi/dAEa44enizxSalpawFcDGjAehL25KPKKL8LIEgDZLCp2BFZQ2pq69MonS1CC9npnYLRjYcCQVUN3Ix1WfQ0XtIJRuRfy024wvkYwL+6F0O4TrPO9A9hD7444iSHU4xqn0focjBBfG8rnVw+G4IVrjC5kgfdsSJLZIqPutaqyNZZ1f+vindkl7EIgCdgD6VDGr4Yz7x7SsC+Thgaom2RF7OxhQ/e0VkCM0xCNdzonJIRwSp8B2pv+T4IPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etactica.com; dmarc=pass action=none header.from=etactica.com;
 dkim=pass header.d=etactica.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eTactica.onmicrosoft.com; s=selector2-eTactica-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBrHIU8YeqOpqOkIqwpFyxsFpc324reO9LcaWddkFq0=;
 b=J+4/hvn6rZ4ZcgLJMOxbt0FXfjkWOLiLuRyrawDzT8nKFWFQ/pxF0lYAh5ed37i73HhyKzAFTHOvbBM0spOk6/Rvi/+JiCFmYZxgDaqWH1R2Q+L/yDTNKJK9iBFHe9l+NXz7yYDkdG4WCfkqRIu4mxT86m1p3P43exGjC6HcKmU=
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com (20.178.82.92) by
 AM0PR07MB5363.eurprd07.prod.outlook.com (20.178.21.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.9; Tue, 3 Sep 2019 16:30:55 +0000
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::1ba:e51a:428:8aa3]) by AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::1ba:e51a:428:8aa3%7]) with mapi id 15.20.2241.012; Tue, 3 Sep 2019
 16:30:55 +0000
From: =?iso-8859-1?Q?Karl_P=E1lsson?= <karlp@etactica.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] ath79: eg200: enable status led usage
Thread-Index: AQHVYnT1ywdYrNZAfEKUktM7FoOiTQ==
Date: Tue, 3 Sep 2019 16:30:55 +0000
Message-ID: <20190903162450.740-1-karlp@etactica.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0195.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::15) To AM0PR07MB5953.eurprd07.prod.outlook.com
 (2603:10a6:208:108::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=karlp@etactica.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [213.181.112.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0edb7b5-5f70-4970-3cdb-08d7308c17d7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB5363; 
x-ms-traffictypediagnostic: AM0PR07MB5363:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR07MB53634DFC987C3019047B3FBEDDB90@AM0PR07MB5363.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(366004)(396003)(136003)(39830400003)(199004)(189003)(6916009)(107886003)(53936002)(14454004)(2906002)(6116002)(6436002)(3846002)(508600001)(36756003)(6486002)(2501003)(386003)(26005)(102836004)(186003)(305945005)(5640700003)(6506007)(66946007)(7736002)(316002)(99286004)(71190400001)(71200400001)(6512007)(45776006)(2616005)(476003)(486006)(14444005)(4326008)(25786009)(1076003)(8936002)(2351001)(66066001)(81166006)(8676002)(256004)(50226002)(5660300002)(86362001)(52116002)(66556008)(64756008)(81156014)(66446008)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB5363;
 H:AM0PR07MB5953.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: etactica.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DARGnarjexz116G/KqcVqq83BiJffTn3fH/N8de1fy+b0Zwch821kIuae+VyofDj8tsY2GZws+Sf9gMlGFhYTJJWwkDGCjujvBRQjY6p5U8byY93VC7fyS024dvuvImtxkGpKkJmrWZPzAdBfaP0IOMq/xHTCboXiXtu9OGoiSyrrSd56K4bsG42+wB9Ge+zAfJ+uPPXXkLJJwVeceidLaBmAWmTGiA80iL3pYKKevqSUehg/fTqPHtV5LOS4aGbTDZ7zpMjD68jPXiN2+yGwSTdI4xY+mFyTYjlNbQ0JNR/jlrfZnU/ZuYjYfxUV9P3f6boES0CvxzETB5XhzUFdDmHTheiAhZzCz/8SeI44plnGDs4MkJLew8ZAyhBWyybGjhslNUvOk4oyz4lYfivwSUdDAyBZrR/ZzTe+TLxpkQ=
MIME-Version: 1.0
X-OriginatorOrg: etactica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0edb7b5-5f70-4970-3cdb-08d7308c17d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 16:30:55.1470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3621586-558f-4e21-92a9-26df2c484dae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lkTwTKyXahZzRToZN+2LIPNGkMjN5IwE+xgAF7qfiHL6CtUC680aQgYutU5xMVOpZ49jxXMlfSR3o5gYmQ49QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB5363
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_093100_763233_7CF513D0 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.125 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: eg200: enable status led usage
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
Cc: =?iso-8859-1?Q?Karl_P=E1lsson?= <karlp@etactica.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This enables using the "eTactica" LED during boot, to indicate failsafe,
and during upgrade, while still leaving the LED alone for normal
operation.  This brings the device more in line with how other devices
work, and makes the failsafe functionality easier to use and understand.

Signed-off-by: Karl Palsson <karlp@etactica.com>
---
 target/linux/ath79/base-files/etc/board.d/01_leds | 1 -
 target/linux/ath79/dts/ar9331_etactica_eg200.dts  | 5 ++++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index ced8a94fd0..e317ce26e1 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -87,7 +87,6 @@ engenius,ews511ap)
 etactica,eg200)
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:red:eth0" "eth0"
 	ucidef_set_led_oneshot "modbus" "Modbus" "$boardname:red:modbus" "100" "33"
-	ucidef_set_led_default "etactica" "etactica" "$boardname:red:etactica" "ignore"
 	;;
 glinet,gl-ar150)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
index 708e9defa4..9160aa2b2e 100644
--- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
+++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
@@ -11,6 +11,9 @@
 	compatible = "etactica,eg200", "qca,ar9331";
 
 	aliases {
+		led-boot = &led_etactica;
+		led-failsafe = &led_etactica;
+		led-upgrade = &led_etactica;
 		serial0 = &uart;
 	};
 
@@ -34,7 +37,7 @@
 			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
 		};
 
-		etactica {
+		led_etactica: etactica {
 			label = "eg200:red:etactica";
 			gpios = <&gpio 15 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
