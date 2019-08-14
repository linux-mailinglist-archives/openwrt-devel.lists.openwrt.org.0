Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A918C540
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+34/+voaqnW8c3J3QPyCBEGYqQSikplNfFSeEHAByg=; b=OBxnLJwXdPJ5b+
	u+BmHliOvpWW1dar4ujutI0O9yKShkI0qTCqtiF5oO4kXOHSDZHcF6nx86x9nI1GfapQVzVQsz6TZ
	SKoIqmxIGJTVMRSLIhpd7N5rYgh4lJhVqjq5XCJw9vqWA8tjq5pIl/Ivh6phKydD7e1zb5x72IYOj
	cDZiEWsBJcIOATq83f4l7WpaG4Gmna2ONcGoK1WaJ5iJj2D1it/gKEAlY0JyMYoS9DXOngVqXYf/c
	b/mROO9iD8wAPtDcT2/JO4I6qMIB46Xq8Bos+szvoff+nU0aO9Kt665W9IlHbetLGztTXDWOmH73I
	vh7THsRiFFZobtxHbe5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhOq-00031h-Sh; Wed, 14 Aug 2019 00:44:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMr-0001mF-Sx
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:23 +0000
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
IronPort-SDR: sJpgF4DH4Ev9+SkawFy3h5kesEtlgnTLPd+HO6cJ2JqXmuRsxDojiiWi9rJav9lloqBR/J6jEf
 T/6LzprCXkWje0p3pifp6m6ocEiwX4do6FYHoTmJi28BxzWWNuR3VgOpRGbfB1SQaJkpCl8N1m
 pu4+P5J6323vQijFB8eoDcoth5TtUOTSnD1+dp7zqeAFnkt/k0hP8XNutSZUa65TdjVFi5ZCjs
 U78A/BIboIzp+PQ/VmdvsEUyMKz45BJAMBdgEBJUM63xFlUjOFmazxClOF1vSkCb3lv0EvgvaY
 kpY=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511749"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDBYJsI3i8HbEBD1mkPmVdG5X1+8zQJnRWweS890LdNqF7PPIAXQExsDmFDrrKZvwV9R/Qn0e+Yz6kUHvKQXI3dzR+X28V3QXHmbgQkMTuGFK5L7x7BVmlMW9VhT3boWSDbCwRYxOdhjMa6VAKSqCp5B9LA88kVKFzfVGRAsFvCRokzUZaOLclNo8t4wNDQZ3anT4A+AMLJlRUD3s3DlIb8H6HNn6Pe7tGCqp7GIVYuRGIhjYQzYm6ZINirs2VissHrm4QUJkh02Rl6OvYWDCNTd/2FpaOMT6hT9R2xx7NhmoIOm8y6CA61jnnUi9gRd8+tjubQvw44SoccFMEH9mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMSAHowTytAfNiAWvhQ86lhMaxP0FtLN4qyqQYG1nh4=;
 b=EaPru7M6xliM4sDv7e7EJr/OdjpGHp31mnwYwUXQhgb50SJ/xttE8mP5IrrXKVGZNvXAlV2Ai+yj9aVwVgJZVyISCpndTR93JEJ4Imyau3vxuqvZJL7cYS+w+A4rgtGaSZf4pzr0AqbyPr03+fLjICsfT38Kc/Bj3NICvu6Vj0rDNHrkPepMAIVC/Cco28ftjLO8F7k0PChD0HwnBwbj3fDeZRO3nVCigO55pwgBHbLxE/W4B7IwLHVLY+/JZSTESh9dfy47+tgpSxHpbgA21uThpg0kiX67LRa5zKcAGnOMprnlZhaFtovl3zxTYunj5k4WZhk/yB5oPSVBEZjo/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMSAHowTytAfNiAWvhQ86lhMaxP0FtLN4qyqQYG1nh4=;
 b=KsMMqBihWfvGfu6IQgy9Z9EHNxO8DKvd7l5hSf25/zcnH4lVpVfQPWO47gF5t2lf4mGLJDdq2fBBPtkGN4zYpYUScNVmUlA41zfPN3p0/kUoZVzvCHDleebT/MzmIrb8ig9GjopeTyTQloGdgiYuQ8wE0STWtPZH+/+PeZ9s7Ac=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2742.namprd11.prod.outlook.com (52.135.227.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Wed, 14 Aug 2019 00:42:18 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 00:42:18 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 07/11] at91bootstrap: add
 sama5d27_som1_eksd1_uboot as default defconfig
Thread-Index: AQHVUjke9NQGYrY/JkaqcsrU/AZm4Q==
Date: Wed, 14 Aug 2019 00:42:15 +0000
Message-ID: <1565743239-8712-8-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: c0e35db7-be6d-46e4-9d66-08d7205040b8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2742; 
x-ms-traffictypediagnostic: BYAPR11MB2742:
x-microsoft-antispam-prvs: <BYAPR11MB27429D816DDE71220A3B862182AD0@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:96;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(5640700003)(8936002)(316002)(76176011)(2351001)(81166006)(52116002)(81156014)(5660300002)(36756003)(26005)(186003)(14454004)(6506007)(102836004)(386003)(6512007)(86362001)(53936002)(6916009)(7736002)(8676002)(2906002)(50226002)(3846002)(478600001)(6436002)(305945005)(6486002)(66066001)(25786009)(99286004)(476003)(71200400001)(71190400001)(6116002)(6666004)(256004)(66476007)(66556008)(64756008)(66446008)(66946007)(486006)(11346002)(2501003)(2616005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2742;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: amjGLMHur+5rQ4CJWYPRQ0MIqD9+hR934neo6JKljz1AtE7pS3fYUD9AHQj+AnESWnfaG+KMvKyL97e14GEDT6bvyolAdaO6A/QqxiaTlWRM3zHF9+sZN7lTQ4TFPVohEk8BO8LEMHtfE5IefVpRXhbKCnT+rQwF1Q/AV5pSxE1DRBOEZafQh8EqOGnQ2Ghs12FlItltPR83NCHisehcXJ3zdLx2P2Q5GzvDbE7nES9OW2zfq8IESXMJJeOCOTdrRyz6qFj2gZ4M+iZN/8OOCg85DnDlXHSMH2BizkFlb5WsycVAKIDup3OGOGLHJSgEJIgXIasny67t6M6/Wap3VwdwtxeyljQXy67an0ft0X1wH8WXcQiT9aVaNI3uLzKgVHwaTJB4ZH8jIwEi9uN09MFDEms3yoopTGz9Ay53tMw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c0e35db7-be6d-46e4-9d66-08d7205040b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:15.2966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u6O1sW2a74QoyezPLWR5DfgA7O1atMbvybkFz3J5rhzqBRdAMEbyRimvYsasyLt1i53y10TT2UrAZiW9yMqNXyVbwtu0v8r7/dYfujd+dYWDv5VF3U+B/3nCjSlfKJE0XL8uAsw/E2NKcupedXozhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174222_161685_1FFAC8D7 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [at91][patch v3 07/11] at91bootstrap: add
 sama5d27_som1_eksd1_uboot as default defconfig
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

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/at91bootstrap/Makefile |  6 +++---
 target/linux/at91/image/Makefile    | 10 +++++++---
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstrap/Makefile
index 6496b5a..1c07e21 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -128,9 +128,9 @@ AT91BOOTSTRAP_TARGETS := \
     sama5d4_xplainednf_uboot_secure \
     sama5d4_xplaineddf_uboot_secure \
     sama5d4_xplainedsd_uboot_secure \
-	sama5d27_som1_eksd_uboot \
-	sama5d27_som1_ekqspi_uboot \
-	sama5d2_ptc_eknf_uboot \
+    sama5d27_som1_eksd1_uboot \
+    sama5d27_som1_ekqspi_uboot \
+    sama5d2_ptc_eknf_uboot \
     sama5d2_ptc_eksd_uboot
 
 define Build/Compile
diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index e4c17e3..3a906a6 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -55,9 +55,13 @@ define Build/at91-sdcard
     $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
     ::u-boot.bin
 
-  mcopy -i $@.boot \
-    $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd*/at91bootstrap.bin \
-    ::BOOT.bin
+  $(if $(findstring at91-sama5d27_som1_ek,$@), \
+      mcopy -i $@.boot \
+          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd1_uboot/at91bootstrap.bin \
+          ::BOOT.bin,
+      mcopy -i $@.boot \
+          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot/at91bootstrap.bin \
+          ::BOOT.bin)
 
   ./gen_at91_sdcard_img.sh \
       $@.img \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
