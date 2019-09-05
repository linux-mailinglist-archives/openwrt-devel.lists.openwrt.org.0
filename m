Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A935AA9E89
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 11:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qP6HCWuSTVh634dzsytsqVI0n7/bpqZjBI06qS2NWMU=; b=VPUGW+3mqOTGcD
	SnFS4+uwgEiVm+QKqKjeqdeB1uJ2iQY7/LJdjrl+5t4xcE6pbuDd9n2P35VdpPWNKfAU+pscociEz
	MEkDb0+tvY9S0dqyNm88oKR9RMnyy/MnK5GWSWu0fdShNZi4A641Q6drlupKzWmls4ebOccrGw6KV
	wZu5cS5oXPO7939JgOyR4yT5l51FfLuqBOSvcygsN7iqFzhUttNrTFzU2b25P/YmgO0iG9awg1cIr
	lu0zbR2xrjROEgvbbnZOFEt/u7OdqffakC4lvEz6E2QbCsO8ZM/wFb0CzdVQRfcaPfJ+uqGmSwA46
	/mmCtIROlfUbuCS5jlRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oCR-0005lQ-RB; Thu, 05 Sep 2019 09:37:07 +0000
Received: from mail-eopbgr130135.outbound.protection.outlook.com
 ([40.107.13.135] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oCI-0005kX-LE
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 09:37:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NRc/bv2upzT6i66Y8yugdZoDRYa23H6XKzYXJaAvdg10P5uO+hiG3B+gjzCZ2iFxCP78KfMi3QIAcv0o2QgY+aaa7AzLlLK7qgXUFVP1Whi8t7Tl8t5B3sgXAITm+PXXgxt91jNxcHBJ1xomTiYf3QBsyt5ie8N+FEVoMnJOPnkjWgDwsD3cvRi2ZSpT6BtUwsg6XyefryWB6+JAayNBuVKobtHiZ69+t34BfN74VseDncfT5U2paR8VvDlHCgvxaTfYZpNUJ808qShNcpzDoVHQoe63R4xAAYbvAVGWkfxPdwyqprnQQQrzENyO3k6E//LRk42oUjatEVRyIpfnmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pozBnXcPPkkBSIKws8FOnpGpXUHsUvTgivNNI/Tit80=;
 b=KICnLeC4+tkEeLazNDlIef9ZtA0gwJntr8gJ/NCTCadaMEaEgktCqyp+E/z74CgRn30pZcLbDxGDKilYPKKRPrQnWocdcl9twp2SmOZWsN/OnFoqu2lKRus4WOXPMkaTII8p0kwEa+NhX3fQjrrckVOA55vCw2Cjc0bWumnSnsrt6jXesJNhsEyylzV/tCogBZPTJ17irdCWtf8elmvKXm/IPUfp/JwamIq5pu5+oa4GDZueonlZFqgHxU8kYpXviuEAdMfLevW1gLgbwJ2iCfXzPrpELhdPNBT20cICejEib015857PpyGBZtKkhQEJShooZVXZgJBzGgmGOpchlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etactica.com; dmarc=pass action=none header.from=etactica.com;
 dkim=pass header.d=etactica.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eTactica.onmicrosoft.com; s=selector2-eTactica-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pozBnXcPPkkBSIKws8FOnpGpXUHsUvTgivNNI/Tit80=;
 b=CT5iZQaAb2uSKX7Yfc/DGR42NKsmRjYy3q0con1YXj5+sbzjJVh1Jc7k47amfR3jYeYR1zIoQY3tEwHV1NQc8Aew3xn+KpDXDk8+5biK8B65ig409gJDCcMq/F8MMZ2rlbidOW9k3o8f0jv1Vo2+lsItJ3rVkx2+xxSUkFJcFcY=
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com (20.178.82.92) by
 AM0PR07MB5812.eurprd07.prod.outlook.com (20.178.114.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.10; Thu, 5 Sep 2019 09:36:53 +0000
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::1ba:e51a:428:8aa3]) by AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::1ba:e51a:428:8aa3%7]) with mapi id 15.20.2241.014; Thu, 5 Sep 2019
 09:36:53 +0000
From: =?iso-8859-1?Q?Karl_P=E1lsson?= <karlp@etactica.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCHv2] ath79: eg200: enable status led usage
Thread-Index: AQHVY81zETz5QFqUx0mh0iHYlv5O4A==
Date: Thu, 5 Sep 2019 09:36:53 +0000
Message-ID: <20190905093147.19639-1-karlp@etactica.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0222.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::18) To AM0PR07MB5953.eurprd07.prod.outlook.com
 (2603:10a6:208:108::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=karlp@etactica.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [213.181.112.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33e807ec-0fb6-4792-ff54-08d731e49603
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB5812; 
x-ms-traffictypediagnostic: AM0PR07MB5812:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR07MB5812C1414C6D353DD2C7501EDDBB0@AM0PR07MB5812.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(376002)(346002)(136003)(396003)(199004)(189003)(99286004)(53936002)(4326008)(8676002)(2906002)(107886003)(81156014)(52116002)(45776006)(14454004)(6436002)(14444005)(8936002)(36756003)(476003)(5640700003)(508600001)(256004)(81166006)(2616005)(186003)(26005)(1076003)(6506007)(316002)(71200400001)(386003)(305945005)(2501003)(86362001)(6116002)(2351001)(102836004)(6486002)(6916009)(5660300002)(6512007)(25786009)(3846002)(486006)(50226002)(7736002)(71190400001)(66556008)(64756008)(66476007)(66446008)(66066001)(66946007)(52400400003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB5812;
 H:AM0PR07MB5953.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: etactica.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: F05BUs2QnR27BHGULNNbKxUWp09HH/W4WFFmXa2Mhi9PW1OxZiAQxbKNWQBrAhn4lKt0sujECePXSt+8kg6JDNkLrk6spkKfamMDpLUjrdu5nOaY4u06mr/hQUGYu7D1kQny2rCwrEQttBrv35j527yO+2185HpnaWawtjWoQTeV02KXvNKxFtgIAh1Tcc55DCNBkb9S1SjsdwOpLFn2rTEH3QnEOrXi/Y0XprxXcz84i7NTBqAlxMBIDIdecZCxto3lQqaFM67exRnTeNhuq8R54yrpb0E41u7+78q19qh/NNIvCEoxlrFUuVEaPj0dfgTvj5GfY8yvqSXfwzUa432lOMwlRglAhWIAfW06EFgfG7OYTs0Chww6a2mBN+82KQ7MwjPvY5GqVLmU+y9jaMoY5kPzSXyHIKyEcV+sbOg=
MIME-Version: 1.0
X-OriginatorOrg: etactica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33e807ec-0fb6-4792-ff54-08d731e49603
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 09:36:53.7202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3621586-558f-4e21-92a9-26df2c484dae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jisUPUAqqkyYP+Fs3H569XgjbZvzgbDS/wLHeQExSq0xxvb54g3RY1XBTdaUiIYIY3ybpkDWkGxVYTIzSq/BTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB5812
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_023658_747429_E6213BB5 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2] ath79: eg200: enable status led usage
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

From: Karl Palsson <karlp@etactica.com>

This enables using the "eTactica" LED during boot, to indicate failsafe,
and during upgrade, while still leaving the LED alone for normal
operation.  This brings the device more in line with how other devices
work, and makes the failsafe functionality easier to use and understand.

Signed-off-by: Karl Palsson <karlp@etactica.com>
---
v2 - attempt to force From: to avoid outlook365 rewriting

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
