Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECB58C53F
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9tOnRGTVWe3TfX1ACLmTdzN9AdBqP70R0xHl4TpKS4=; b=S5cDYy+yEGvsd6
	2NYKVzLQe8hq3jtSZbLGtxoZbasDrRvtKNdfV2osehYyWryMRsi5+gUJLfIY1dOVxPwmqDV/ZAFN0
	NfyLvFOhDdFjn9Ytc2D7upkdoGB93OHtt9ZOBSAkgt4od6T9X/9LNmGchfvBfSsDQgW0lErNFlZYV
	bHKmQm2w5xd51A8nLvyuN4eW3wUMwqUAkB7vXEvnut3gf5JOaouCKpNQ+Qz26WT4TjCmroQysT3yG
	E3F2nFFU4blVtCEMwUFiuTnGCcYfBrvD4UyquFr1V6FJ4sGPAdseEjryVx2JBmJ1yFMmn3JeAv2mb
	Ks1rGcVyxjf7R1ZzsXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhOa-0002lp-CP; Wed, 14 Aug 2019 00:44:08 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMr-0001ig-Ja
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:23 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ux84V9QCDAkAJx1/1J4ghbY6boZJODSVhxGYVTrdVfEuCsUcnTpNJ7PfU9KwwOmk/W1BMqMJ7M
 +U6egQJNYhCktXFTI4wBl+tW0KW/9Uo9vMrbjMxD8ytBAp0CP4KgEFUxIZ547x774ZTgqlCdMJ
 R7D+zC/F70liEmRIt15GlyXTwWMUOcMsCuuGeQU4qDsABizySQtpMSHri8aLz94S0YCnt27fPi
 nw7ZuL1wAINzHdugOgirCMuZgRhZtnblJnKykXSf0oP16XF/UcKX5aqCIU78zBHLTshPBoTJHa
 uZU=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="45039150"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:15 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:15 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sm80uRZTCI5/eJatz1ThfT4Q7IvUe69lCQLiXRF4DTSw7I9Ll/2WmAsH1a6GslVatLe45GfAuUCJoMpS5medueeoB+AHz18edUkQZkY2Z8uJNWueRYEinq0a1lN5cEJ8FafU0x4xWr9cIqJPS7HDk8Dt5sAUfuGhMR4c2VLLNG+nickiCDEJox60JKH30tiTGNiX9fbomVd7gmB3ddsczhEMbUntpWxPmcPP0SL6QpWsae4YQ3Qjek71T38zXDSqOGx2r41mX5yoAB40XtQs3ddV7n3sMuirYboPWSqo6lr7VXvvydlEdA31uA8IfpCKhZE7EOlP6B2ldZjFC8IMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2WlBY5ATo4GDMcN9nGIdbskeyJWvPYvT9xoKsyXHd1U=;
 b=hGTZpt0jNHZloGRo1bVRC6BaLQMpPGk7rKETxKl5zXppFM5HobK3+cBVLVhXUUenMX+hmMFfhRWEGu0RvT5pt3ANRgWWuEgBr3dLfbFDp7WsG86CdOtCgqqE7133jXZEPCf4jjewI+FboVwJJCeChLe4L/P51csoTL53XhKJv1hFu7UhNGT8yiJiwtxGHfgfvLpSSJK80YrljtaXuvZanaJmOhbBo6oWZoTA2lajoRhWhqQllU5MbCYb0mGJhEZmleatLFHPqaSXilFaLr3aPzW+vfdMJVQeCZtWfSZflguw2cfPq1IEE5rhTIu8DiJfGJX1wVk5d+j0iz/xSbmauw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2WlBY5ATo4GDMcN9nGIdbskeyJWvPYvT9xoKsyXHd1U=;
 b=A+LquT2s4ulOtaj7fEMunCu7nBAeUZJPoc0/z+XnJJfKtGQ6wVo3kdq63ajejOWufWvHwuSU5T1YtK0Tsa9wD3hExO4+4zygPaaIpJxGJTARpsiH/E/CjjdVNu23spYtxjTfH9PL99+wS3QKCvye3C+BDHJSvPCB6fvVMyOXNLw=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3367.namprd11.prod.outlook.com (20.177.186.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Wed, 14 Aug 2019 00:42:14 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 00:42:14 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 03/11] uboot-at91: changed som1 ek default
 defconfigs
Thread-Index: AQHVUjkdYyCmDyRi3kSbNwZ3ywofyQ==
Date: Wed, 14 Aug 2019 00:42:13 +0000
Message-ID: <1565743239-8712-4-git-send-email-sandeep.sheriker@microchip.com>
References: <1565743239-8712-1-git-send-email-sandeep.sheriker@microchip.com>
In-Reply-To: <1565743239-8712-1-git-send-email-sandeep.sheriker@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0033.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::46) To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7ac1237-bac3-4390-dd0a-08d720503f96
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB3367; 
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB33670FE04A090FBD6ADE330682AD0@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:88;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(5640700003)(6916009)(2501003)(7736002)(52116002)(305945005)(6436002)(5660300002)(53936002)(81156014)(8676002)(6486002)(76176011)(81166006)(66066001)(86362001)(2351001)(36756003)(8936002)(3846002)(66476007)(66556008)(478600001)(66446008)(64756008)(66946007)(256004)(11346002)(50226002)(186003)(6116002)(446003)(25786009)(6506007)(386003)(71190400001)(71200400001)(2616005)(102836004)(6512007)(476003)(26005)(99286004)(14454004)(2906002)(486006)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3367;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Gci/G6+Qj25rhd4mrzNLJUgv6xFFtNcbimWXBNJh5/jlJ39vxhF5Z5hxSRX1Mgro3jGC79W9til5/TG/QLjo3lhtR8fUhLL3A/VwufnUcMqn7Zq/sRPi5n26sufyjvuFgn9Fg8wldIlOpzsRUxjBjq5h0Elhuw6X66eZsYb8/5ZhzrH2LOCTiBGol79Aoyl6mp+HsUDECNSl7uR2ITXwD/VXAqUM7ATVHFIIGcf0tkEIHtrHNTDpnnmKLoDxXrKS6upv6/J3j534CRpswiq1dWarnckwwSitOUfF7emYcvUy/xZ6DMfs4sOM6qnam2+LzYYgzyF77+crDfukoTtwxg+gOdIbLBmIkWU/O9oHE4bkFX1PyofAFKyERNuH0HnAM+kTz3QK0G6WB6JHRNUixS1PtUhXf1oDiy/JcxhWbj4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ac1237-bac3-4390-dd0a-08d720503f96
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:13.3907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YLBulL1F+pFTouw/50zK396W1e7nCqRA4zq4AANFAZt+krpjf4cR6uTVpCEGEIjZzlV8uno4xgZHhhBvaCU910WSSz0QPE1jBt3PczZfwTudidfEgnem9LY2T+NFCN+/UGrudycdZQYxXLTt0GlYmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174222_037772_FDA168A9 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [at91][patch v3 03/11] uboot-at91: changed som1 ek
 default defconfigs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

replaced som1 ek spi flash with qspi defconfig and mmc with mmc1
defconfig.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index 90f1a3b..c17f1e0 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -88,13 +88,13 @@ define U-Boot/sama5d4_xplained_nandflash
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
-define U-Boot/sama5d27_som1_ek_mmc
-  NAME:=SAMA5D27 SOM1 Ek (SDCard)
+define U-Boot/sama5d27_som1_ek_mmc1
+  NAME:=SAMA5D27 SOM1 Ek (SDCard1)
   BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
-define U-Boot/sama5d27_som1_ek_spiflash
+define U-Boot/sama5d27_som1_ek_qspiflash
   NAME:=SAMA5D27 SOM1 Ek (QSPI Flash)
   BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
@@ -123,8 +123,8 @@ UBOOT_TARGETS := \
 	sama5d4_xplained_mmc \
 	sama5d4_xplained_spiflash \
 	sama5d4_xplained_nandflash\
-    sama5d27_som1_ek_mmc \
-    sama5d27_som1_ek_spiflash \
+	sama5d27_som1_ek_mmc1 \
+	sama5d27_som1_ek_qspiflash \
 	sama5d2_ptc_ek_nandflash \
 	sama5d2_ptc_ek_mmc
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
