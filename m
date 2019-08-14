Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729328DF96
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 23:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VXNzIR7z1s98W/qLsABBtpaM8FRGpDFG2wUPIJxAFwM=; b=Sfi9hytBamzyob
	LjsIE7awUPLzpLDJj1Dd2bcXSz673V4fSIepFAcFtQtnf+OW9Xh0QpwzpC1SeQhU8z0tybbHQVesA
	eG+2yiGIFkpI9I4ERjsDNfyV6B86vAz1ygQq7jIZpkrORz0Pmgp1P3FDrjC9JqIiCp8Js5gd99GSx
	eKp5j/4QZtNaPN3lfLc0Fo7IaoswyiWCAXsi/8EuF6jOTdtbm7kBL/P3LjD1C2wb0H4N+8Bb8FhMi
	CP0xa4OakANU2Mpe3slhmd43DtHeewioqLnUDCeT7cAu/ZL+zNvte6RjUEmbuxqi0ASzD8XsaRZR6
	MyaA0DkNsTRDaNVl9++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy0Pv-0000F1-Hn; Wed, 14 Aug 2019 21:02:47 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy0Pk-0000EU-Gf
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 21:02:38 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: MiZMNMdK9hhqRSM2nHvun5WtCixp6WX8RgPillyc/ZmdgzTcHfEUVypp4cSxdYEnf/VnFsQ8Ja
 /XjaspfuGKzbIInZ2zWG/oGTrbdIaNewEbJOtPXkvcLlvLfdrPleyvt+dmOi/kugLx9y3aSNls
 juolfDi5swqZhNBOZQXie13AqTjjvFD24aaJeMKdOVaYPu5UZq4WjXo6qMTvzVY6rUAeY1Da6w
 ckz4zUICKICkWG3PLuYcKguQEfgKzgG82QwwHrs7/hQUtQcugQ+VnwMPNaOmrXqKKqI1kMsF0y
 tdE=
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="46579583"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Aug 2019 14:02:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 14 Aug 2019 14:02:28 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 14 Aug 2019 14:02:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbXj1N4H/mOZSQ4achW+MpH4L6MLHd5j+UuNZ92E+mQwuxEHnDmmzxN9O+hyaUchOVWglCNGt0fV9/s/Dlf8ZsXQ5ikYQmKBNGWPqNQaoM+nNu7yLGnmqX9L7LKv2IvH2v90jB7Z0/QLeoKhiG7QmC1aEetXAvhQT8Ld9fyjeOeBPPloi4WgjZGJuh+XuDm/IOyQ0TlAvDl3w7XfQk5k2Kn4h2GXilGxhPKAwzhOW5lwbdyPO1VmZ/liuFi5uIsfV5O1eOJAiimm5K29gqX7JkVile9GI2CWAbE30iwLB1vZl1sbUtUla2JM0oM/rUu3dgAFJusFwfYQzO7iqv7xuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=78mWlcCdfxmc9wsW557B5gEcIjYd934EcmSyRoj78SA=;
 b=Zjk+X6IVO0LIDsqeXvD4xDgAsxiOYyNvfNsNNn7Nm19/Jj4UARVd/hQ4EcGZqiNFYjbgHICoPLlQ0TyoUmApNi3sL7jJr9MBP18caqoMTYjngHgryZtM8kA6gtQIpsOtWz2v6brJpEge2xCSPLRkTuDPSFTSvH0KzXefQYN1DfAyA2P3Mt1w/PWO5zh4hNXRVAa83dtJ7wJUoCmOHMaFBrO4ujMLWZnu5tauauf4YCqAhqyMsauXM1fmpv601h7/oUwbt1gr/UG9MTWl3ba2k6i71AnoWCMubc5/7x4anxg7AQnPSYR0zDUVUgEAWlQKkB72A1tu4i40oVvY49Vofw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=78mWlcCdfxmc9wsW557B5gEcIjYd934EcmSyRoj78SA=;
 b=YBRjb0dupYUsA/aZUy4PtaipGtoCMrOXK/kfotTH//TwtO18Hk6187fRk7TxM3kMRSne1sGzc4ZLb6VyvKgA9ILYZxOoyJI9KzBtyWbKCUUNch6cM0C5LCwZ0Z7COzXXzx134j+0V4J5HwR4GH2fi2O71M8xD/DsAuOxu7dBOk0=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2614.namprd11.prod.outlook.com (52.135.227.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 21:02:16 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 21:02:16 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 12/13] at91: remove Build/at91-sdcard command
Thread-Index: AQHVUuON4wl1jufGakStKN7dhlp8/g==
Date: Wed, 14 Aug 2019 21:02:16 +0000
Message-ID: <1565816443-10924-1-git-send-email-sandeep.sheriker@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR16CA0022.namprd16.prod.outlook.com (2603:10b6:907::35)
 To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e59bfb94-da17-4f1f-c598-08d720fab014
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2614; 
x-ms-traffictypediagnostic: BYAPR11MB2614:
x-microsoft-antispam-prvs: <BYAPR11MB261425B75499F1FC739042A682AD0@BYAPR11MB2614.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:38;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(39860400002)(136003)(199004)(189003)(386003)(6916009)(66476007)(8936002)(52116002)(476003)(5660300002)(316002)(66066001)(486006)(2616005)(6436002)(6486002)(256004)(7736002)(99286004)(102836004)(6506007)(305945005)(186003)(71190400001)(71200400001)(36756003)(26005)(53936002)(2906002)(2501003)(6512007)(25786009)(50226002)(66556008)(86362001)(81166006)(81156014)(14454004)(478600001)(2351001)(8676002)(66446008)(64756008)(6116002)(3846002)(5640700003)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2614;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8CwkKuHvOiSCD0+BI0CqChLb7ZDwQ01eZXFPUkGVyvxO6C6KXCq7EsBfnlsFNqGlv8M3P2kQf09INerOd0jSfHdJwXKRrpoZKakbhRYyIljYdJy4nxSVnjUVQ4ximvqToI8n0H6T/uHJIPzUtsfHZkUNXHYp6LpI78nWAkpzMv10O3i4Ki4VLTlIsrIVvpOlPYGFjc05XAOGO97shNYdg+2MwOrZMOEBGQPEqTL3PNz3ssVzTPRb+o14HBR1HA8nABGsAp0CKMZ0GuPGCRZxiC2aj9XoSOnJgR+2vuQHPmdxZYmDV3RwYfZ+b2mSkbssoZIYGCJjl9H6zq7a3YzSRwC9xJdHCNMcOsWtXoM35mrKNIZkJczwnvGchmHzP9BFCz1THx4dV46s0i/wT6q37xSAu487iprJv4jLp/7PXa8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e59bfb94-da17-4f1f-c598-08d720fab014
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 21:02:16.7177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0oLAWE0ln/SqVQ2016FwwI43+XxLxjQlAwngOYnQd5i1j+26PQnC61LNIo7iFEnrCeJ89J1aF8xH1pY8W1JMIXzO54Fvrx4ICVSjwfW38QK6vpduppEyJ7jYMSRxQj8W15TeRIg5OvcbDreC+mBAVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_140236_717928_248E812A 
X-CRM114-Status: UNSURE (   3.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [at91][patch v3 12/13] at91: remove
 Build/at91-sdcard command
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

remove at91-sdcard build command from Makefile as this is moved to
respective subtarget Makefile.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile | 35 -----------------------------------
 1 file changed, 35 deletions(-)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index 03a3104..adb7c6d 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -40,41 +40,6 @@ define Device/dtb
   KERNEL := kernel-bin | lzma | uImage lzma
 endef
 
-define Build/at91-sdcard
-  $(if $(findstring ext4,$@), \
-  rm -f $@.boot
-  mkfs.fat -C $@.boot $(FAT32_BLOCKS)
-
-  mcopy -i $@.boot $(KDIR)/zImage ::zImage
-
-  $(foreach dts,$(DEVICE_DTS), \
-     mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
-        ::$(dts).dtb)
-
-  mcopy -i $@.boot \
-    $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
-    ::u-boot.bin
-
-  $(if $(findstring at91-sama5d27_som1_ek,$@), \
-      mcopy -i $@.boot \
-          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd1_uboot/at91bootstrap.bin \
-          ::BOOT.bin,
-      mcopy -i $@.boot \
-          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot/at91bootstrap.bin \
-          ::BOOT.bin)
-
-  ./gen_at91_sdcard_img.sh \
-      $@.img \
-      $@.boot \
-      $(KDIR)/root.ext4 \
-      $(AT91_SD_BOOT_PARTSIZE) \
-      $(CONFIG_TARGET_ROOTFS_PARTSIZE)
-
-  gzip -nc9 $@.img > $@
-
-  rm -f $@.img $@.boot )
-endef
-
 define Device/evaluation-sdimage
   IMAGES += sdcard.img.gz
   IMAGE/sdcard.img.gz := at91-sdcard
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
