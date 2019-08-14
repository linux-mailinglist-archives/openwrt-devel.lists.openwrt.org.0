Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0888C544
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YK61Us8BJac7mCiaL2MzRmzittyOsIJWH2BmNxDgoXs=; b=ken/DPg4uiQzNH
	niS2nhRC6816jgpEtxKuGpXcuSIOJ7/R9vA/+0bynOWreUGyDhm9wJRjBW11R7Ky7GbCDXZPFnNo2
	kiPQAMydulYS7WibUcjACdmrUaZEaQ1Tw1gNuz0sfZx0EdfRbUZS/kB97+S51zu0BkkWUbZ9GJkdP
	A3Yg70Lo7e7U/qhtjnaTxsWimTucX0zj1n+a63Q+glqIiuX/pvPuSZAgfSAfBNNkBQJrPyMEiqnfA
	HAWF2eAl5oWJQgxWE2tZFq/1iZBOL+KQVZUGyQKX1GhuBBFvEAcGiRU+skAfmNNhHWrZVxwnji2b8
	/J/YIdXRt6HR4nTFEz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhQ0-0005IW-5F; Wed, 14 Aug 2019 00:45:36 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMv-0001oR-Iu
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:28 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 0X2GFg9N0bMg3CdJqPawuQFHNvs2ihimuAnGBdOuinoEFJEofA8SekBuxmGtOWhJO/x/aPY1Zo
 ta2RoDDqJQxkicvIiN8eD+AGQ6+073RA6c4A9FXh8aiZXXblmMQVSPF+Iog/doOhBG4GlSfUrA
 2u2Yn8zPcSHcpuKF3XrlmoL9xgV8uYoZ7P8RXfGnyyu0idKtZALRDy4JwmE17sKwZzGJJyrQrh
 RGf+c04NobbtTe3PAnkcag83xh3KOtrufaStyZltgEbzH+/GeX3HeFlJH/pJDkKcnroXT27Hqt
 ero=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="45069580"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cMUjZtSkq4jXab7ck+XL4XwuNSbKeA3tcjQgq/sFSMqDT9HLv3oZiN3mJkRtxNqQOpj1L8dInajupuUQ62ZyheDklqSiYSIbT5Hnyrr338AwnuOlafHxyfbyR/2s9K2h4vT8ScKlaqxhCfUHWrgjoB3BP7L/B6TFzAOT5fV1pUe9KI4NZ90EQGgo53riTC5oiyrQJkjq8vuUfphtObDTpdtInajKyBxq1eaAJMD9pmE+W16xQxl8IU/1h8cKK7RvtX8ceNXzHGyCAKM0Uv7ZqHHsTJ1SrMXyDq3VsF7htpvuVcd8xD0yNdLvXSo9dp2P9mgLk8qBD0M6ECQGHqi1tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbLL6dEPYS4SYxSYQkd5ulGHf4pMb3Z4RX+tspscpwU=;
 b=ItdbuungavxJD0bqaw5RmWeY3Ou1P6vUlbU0p1N91nNkgvJddF8xoGN/xFcTUiAs/89Nlkm34SiIHFdRLE0Dvu1Z71VOvoWA9CGDuPIoG+RAs0u8s8VGzRJChYLiznicVnUHCoA/sykJPNst1jAGxa9HifX7UncwltXVLH8YjHPqvq7UeHJ2sTR08zIX0ggAYZ5wmS+9Sc8QQY1YmMlwBlhzcueSNPbsWzcZa1/RqoiqU/fYmQhznIL70u35m6wjIaVdBZvMtHj0oB9DaDk7hH/dKHPMckxRHfwx1gAWQx4J/TT7rz1M9IrFaxjnrfbo1uysUByhXZfypepur6bs6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbLL6dEPYS4SYxSYQkd5ulGHf4pMb3Z4RX+tspscpwU=;
 b=aevmEXVM25fmpzbeoUQ44ljmuFVjdjT+FS88j7hOqeQS0bUE3txrCdsepzsG7RkO1WSVqIlXluVTYRc0iMWGgVauXRAFWttN5ky8rvoVV2QubabIqRZ1UjPLo0DapbqU5B3qCQxcMmlsMilijp/5QMye0iV8lEFTEtlsO29AUmQ=
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
Thread-Topic: [at91][patch v3 08/11] at91: move at91-sdcard command to sama5.mk
Thread-Index: AQHVUjkehUNsD/W8t02GIlbCliQQ5Q==
Date: Wed, 14 Aug 2019 00:42:15 +0000
Message-ID: <1565743239-8712-9-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: 3ded1a8a-53a9-4dd4-8859-08d7205040ed
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2742; 
x-ms-traffictypediagnostic: BYAPR11MB2742:
x-microsoft-antispam-prvs: <BYAPR11MB2742BF3DD78769F40953912982AD0@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:23;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(5640700003)(8936002)(316002)(76176011)(2351001)(81166006)(52116002)(81156014)(5660300002)(36756003)(26005)(186003)(14454004)(6506007)(102836004)(386003)(6512007)(86362001)(53936002)(6916009)(7736002)(8676002)(2906002)(50226002)(3846002)(478600001)(6436002)(305945005)(6486002)(66066001)(25786009)(99286004)(476003)(71200400001)(71190400001)(6116002)(6666004)(256004)(66476007)(66556008)(64756008)(66446008)(66946007)(486006)(11346002)(2501003)(2616005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2742;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HggcADWdn5UrSIcynIpfg8UWus3QP/6hoHedcc+xRUJaC3kCMYDVD2qOAFofyz53Rbwi0pmlTbJ2eE5mk2ZFeuvwp706o5My8Jt/BB6Xx0mlmfGDj1eT3Vvo9m5mG2Q0tfqf+ECh/cX+L0ziKPRxFwQbByPSz2XK34ubTswOdTsxj9OB1CkbpyFcCDC8OZsE9GQa2MhbCCBOoAzJK6lAV4Lu5ef3EejQDErXh9PiPvUuGzAid/q92pKpUcYIShmbCE8EqZ7WKq0+nCmacqRw6KqYXmpsDnznog0r5FuFXGy0FpIN7Tvv1gxiLMQcaT7UoosoUU4Lw8kySOAhcckZOxF94awfX/ICJocnmhVyttIt1I0d4RwgLzX7ViwQHOdsjcYXx5QC6DhZvZJyXx0mpD5eYWdcEtfKioEix7h0WVU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ded1a8a-53a9-4dd4-8859-08d7205040ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:15.6454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 94DFaFqs90vAfcKlicxnAWMwctCa2eJirxH5j0ztRIMWFBtDVxsJbk6I3yZCheG7uw2JjYaxz68MC4PGfpstPy0iKgdIwzdsDus+HaKh/pspARHwsx/ahwuuRNmcoK17M6pZ0iuyYB9bvnwwfDeS+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174225_765800_16997365 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [at91][patch v3 08/11] at91: move at91-sdcard
 command to sama5.mk
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
 target/linux/at91/image/sama5.mk | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index f9a190c..d02f51a 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -6,6 +6,39 @@ define Device/default-nand
   MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
 endef
 
+define Build/at91-sdcard
+  $(if $(findstring ext4,$@), \
+  rm -f $@.boot
+  mkfs.fat -C $@.boot $(FAT32_BLOCKS)
+
+  mcopy -i $@.boot $(KDIR)/zImage ::zImage
+
+  $(if $(findstring at91-sama5d27_som1_ek,$@), \
+      mcopy -i $@.boot \
+          $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc1/u-boot.bin \
+          ::u-boot.bin
+      mcopy -i $@.boot \
+          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd1_uboot/at91bootstrap.bin \
+          ::BOOT.bin,
+      mcopy -i $@.boot \
+          $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
+          ::u-boot.bin
+      mcopy -i $@.boot \
+          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot/at91bootstrap.bin \
+          ::BOOT.bin)
+
+  ./gen_at91_sdcard_img.sh \
+      $@.img \
+      $@.boot \
+      $(KDIR)/root.ext4 \
+      $(AT91_SD_BOOT_PARTSIZE) \
+      $(CONFIG_TARGET_ROOTFS_PARTSIZE)
+
+  gzip -nc9 $@.img > $@
+
+  rm -f $@.img $@.boot )
+endef
+
 define Device/at91-sama5d2_xplained
   $(Device/evaluation-dtb)
   DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D2 Xplained
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
