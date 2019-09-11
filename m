Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8516B03BE
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 20:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKewapMP7xW+K7baEV7vEZTE5AzWCHlbt2l8pAkawS8=; b=jCxy7iVuziPOTy
	kjfDNHRxOT6cyjWMCSqazKJOHeCYwSNVO0Llv4Oz8yvM6s3gBXEPMx5Ni+2V67Ug7vUD57JRL6oFZ
	JKuSUKnWIfcnVoqAts59N7MSeZSvfFdzv9teMoHeiogblvEImaYAH0CGFhcdmFwSrSHqTu1D1Q9Rr
	9AP/c1ivqhvjp4GWLq59b97MiTlRyzBsIYuEF8mfxvofGH0lQBgh82mry9vB7fVnC+XH4oKBRr9IJ
	ASkqxVNlHpSDUYZt4tdAZiBWLATyjrJavdhDyQ+1kEwZLNEUmcupwhMeZk6UGeVez9vxsa1g9Z867
	Q/uBq1CZBD6hb4vtLOHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87UM-0001Sa-EG; Wed, 11 Sep 2019 18:37:10 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87TG-0000ra-PF
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 18:36:06 +0000
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
IronPort-SDR: m7VC5tCETepaaSRnUi2ff9UHsuwPJsXS0HT1JZazG1B9liM1h+BQQHI/nIbbYtUE1ne715Nv1X
 RwmfyKMhPF5X7BksCexuD/L9hmC0QOOAHmN73vRK5Kve5no+4EgSbtSo6n+a20QTx+ppvGyY6x
 SnO5sPxUL1rKW1iT+vx0kNIk2GgrIwZ62zbk/3PnrUHbcTYcSYvibJY/XBnt51vLDTS9lXhZbl
 oIBmk45nlmUQFL4L11XRgwtTdO8BokWxOYickMGSPqLGGVZnCKcqGLgvNrCRqvZHraPmWtMF3I
 bjE=
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="48718569"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 11:36:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 11:35:59 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 11:36:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVdn/opTADy0RV1CkmYs10fv8nVxTblqAzeoZadWq5wZqxOIjHFhFdclhPY1dcn8fnUVEMDINSDLBHnHVW7KzGOKGnGhqIBf3kfr+RAy8hzR+5eBvSxFchs+WydxVOj5+b0g0Bu8kk0A0u6idCKS4rsd6QA36Jj2gG/uZPbxo7L06GNd6+Tm3CalV8iEz7PQkoVAuFmCzmv++kG7yHc9r7qeMmHuN1Oe55TQtgvTdWI62op/Yrb5s59aJ5rkaHvCX0szwWS/34r9ttGAz5lBX10QVD3OTXYL+Cq7tO2JdvawbcQ41ZC8rgdSbeEiscW501WRiz0lnSun7PfR+xUVVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aM4S4i9MJw6HiYVP7UCh2iY/jisLHLXwU0sbMfPi7V0=;
 b=j4rlEeNr/+Z1ZMEVNet/5DzBazEuXJCwnGsKgmZrRztElmXnrC612cU3lRKRcIisuFQGFpe9M3LrtFrsrk+H9dnjE8cGwp3lpxctWK97Eu+lcN9kzevQMRa6D/bu+ahwFfbm/76ga9Cl9jcZRNB51Ngx1SEHO/c/PF/4Gm7i2nkTWx2tghzqLdrimf9oTn2LOonL8w0QW29Yi9fe+sIAM2jro4P8TANknvxsBc5roFGaXJRrCtwaJkpHZmNTnpqBTi+VRM8odYj+i7aVH14XadOBTPUyGbGtYK/ZO5XHznIa6qjOXMQuvLYDXTerl2wbZhE5uBokhPHe42oLseHOlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aM4S4i9MJw6HiYVP7UCh2iY/jisLHLXwU0sbMfPi7V0=;
 b=a5qGC6fcDySHpOuzIz1B+WPGDxyS0ZI8lEoaFpITv2pw0It5tp99SPTt2P1Mh5sjDrNpAxXqGa9edJEekH0JMAT0zxxGsmxGn2PR3h+Nz22UJ+QZRXHAR6QxIbeO2/C2+wEoI/N+u9K2IbtYyNiQegnElzd9chZhQq7fxqnjzn8=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3749.namprd11.prod.outlook.com (20.178.238.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.17; Wed, 11 Sep 2019 18:35:59 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::56f:70b3:cd63:6b30]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::56f:70b3:cd63:6b30%7]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 18:35:58 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91 patches 2/2] at91:sam9x: create sdcard images
Thread-Index: AQHVaM+/gEDjUZBpekuFGrvMQba2ug==
Date: Wed, 11 Sep 2019 18:35:56 +0000
Message-ID: <1568226855-29385-3-git-send-email-sandeep.sheriker@microchip.com>
References: <1568226855-29385-1-git-send-email-sandeep.sheriker@microchip.com>
In-Reply-To: <1568226855-29385-1-git-send-email-sandeep.sheriker@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0019.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::32) To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e6ec310-c943-4412-de77-08d736e6e255
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR11MB3749; 
x-ms-traffictypediagnostic: BYAPR11MB3749:
x-microsoft-antispam-prvs: <BYAPR11MB3749A1BF035D104120ACE1BE82B10@BYAPR11MB3749.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:88;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(396003)(366004)(199004)(189003)(86362001)(6116002)(3846002)(11346002)(6486002)(446003)(6916009)(2501003)(2616005)(476003)(486006)(6512007)(5660300002)(478600001)(50226002)(25786009)(2351001)(316002)(2906002)(66446008)(99286004)(36756003)(52116002)(64756008)(102836004)(66476007)(66946007)(66556008)(53936002)(26005)(186003)(14454004)(256004)(71190400001)(7736002)(305945005)(81166006)(66066001)(6436002)(76176011)(81156014)(5640700003)(8936002)(71200400001)(6506007)(8676002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3749;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NTy3M0D8Nc73qM8JLZDTKbIxpflwsYyDFMb0wzLTX4O8Ubu2ktE89lg5pw9uFol5bvIWJ11vSrIR7lcDMCBczYgE0TIaV4MCQ1c7ua4NPHocBH+79+9Jx+zQXVUqwztLsDAV9jPKryV8UBgYpMzXqAhgGLNleyVG8Udluhq9A39q5JO1MbObVw8heDrxv1QCcCIFixrgcusdQxPJJo2L91oXxryT5KDYKcW+/aqC2cVUFiro22Yt0c2AO5HejBxcq9zDeIqOckpw1szZArKpiv57PG/9QGqcTuWCqPBDdUdZKg8wLT+M1NxUMN5tUNZyMWL5oBZ6rg9GmPu/ivw0VzgEpxVJWWvz+kcd17zQ66rKNL4j548/XvixNnfZFkwUeaH+AIiem7qEJM78Dtjkh0gHjNjlOB2biuWO2rnlDEg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e6ec310-c943-4412-de77-08d736e6e255
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 18:35:56.6099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c6EUc2DV7IeYpBTayZMOQFC5BDbowkuSE7QfkL80Rb69aJ36xb5oTDvCiug/qGQsKT2bctd0EIE2FWuyvNtbtdcNe/Qf3Uh7I11+NopclfYEHOnAuo/vdGvkEd5FAYphHDzWve8Yh2B6omqh4j2/KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_113602_838646_9FE6D113 
X-CRM114-Status: UNSURE (   5.75  )
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
Subject: [OpenWrt-Devel] [at91 patches 2/2] at91:sam9x: create sdcard images
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

create sdcard images for sam9x25 & sam9x35 ek targets.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/sam9x.mk | 44 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/target/linux/at91/image/sam9x.mk b/target/linux/at91/image/sam9x.mk
index e40019f..8fd6b45 100644
--- a/target/linux/at91/image/sam9x.mk
+++ b/target/linux/at91/image/sam9x.mk
@@ -5,6 +5,44 @@ define Device/default-nand
   MKUBIFS_OPTS := -m $$(PAGESIZE) -e 126KiB -c 2048
 endef
 
+define Build/at91-sdcard
+  $(if $(findstring ext4,$@), \
+  rm -f $@.boot
+  mkfs.fat -C $@.boot $(FAT32_BLOCKS)
+
+  mcopy -i $@.boot \
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb \
+	::$(DEVICE_NAME)-fit.itb
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/u-boot-at91sam9x5ek_mmc/u-boot.bin \
+    ::u-boot.bin
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/at91bootstrap-at91sam9x5eksd_uboot/at91bootstrap.bin \
+    ::BOOT.bin
+
+  $(CP) uboot-env.txt $@-uboot-env.txt
+  sed -i '2d;3d' $@-uboot-env.txt
+  sed -i '2i board='"$(DEVICE_NAME)"'' $@-uboot-env.txt
+  sed -i '3i board_name='"$(DEVICE_NAME)"'' $@-uboot-env.txt
+
+  mkenvimage -s 0x4000 -o $@-uboot.env $@-uboot-env.txt
+
+  mcopy -i $@.boot $@-uboot.env ::uboot.env
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
+  rm -f $@.img $@.boot $@-uboot.env $@-uboot-env.txt)
+endef
+
 define Device/at91sam9263ek
   $(Device/evaluation-dtb)
   DEVICE_VENDOR := Atmel
@@ -56,16 +94,18 @@ endef
 TARGET_DEVICES += at91sam9m10g45ek
 
 define Device/at91sam9x25ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_VENDOR := Atmel
   DEVICE_MODEL := AT91SAM9X25-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x25ek
 
 define Device/at91sam9x35ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_VENDOR := Atmel
   DEVICE_MODEL := AT91SAM9X35-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x35ek
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
