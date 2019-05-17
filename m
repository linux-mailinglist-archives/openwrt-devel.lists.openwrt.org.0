Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411AF21BD7
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 18:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nxfg8vRgCKPeTIv7C5jR/1OWnY0yVtM0p2V2O24eo/Y=; b=UZUcU6B3YTiqjd9vJus6/9dwa
	alv4/x3+QQMr1wRTqhyecugVOuarSt3GLMAeKS+OaSf1FNDUNr5hZiY00dRsxaWjrbem6ULBItT8u
	L/VqISMxWUx9sMd23J+RGJtZOnDDj9HHQjI8G7ZLwz1jaAfbRhhmKsQiaq4bNYw27UXnbzM3Dj1Kr
	nkNYrq07eW7NvorJ5rNeYmPBGphhIJapoddxF+likVLv2a05c8WPRdeN061Yhy3RDP2SGnCsgHajp
	EY6MI95kn7gX4Y5NHB1BbmqosiH7HtXiMX3wapQ4Md04fZqBFw5B3CqVHQvUmdfhVCz+5ikWyVFLL
	YUhknDllQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfw4-0005oh-41; Fri, 17 May 2019 16:42:20 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfvu-0005oB-6G
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 16:42:13 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,480,1549954800"; d="scan'208,217";a="33852547"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 17 May 2019 09:42:06 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.106) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 17 May 2019 09:42:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtA3AzPICcCr69BgZJATkpXGhl33D3yuWoc0C5ExKds=;
 b=Zgmvf6wQnMVeE+8NjST4VWx6P3FQzlQHYecvqxHjehozpcKD/vFQflPez7lHs0Wmm8vdhIdBgevXxahFlXk0yGXEPKY/QeoRN5t4W9P4hfct4OMGSxGv6KwJvhp/8lqA6iagIp80i/M2Ih5oBE6rk1/HrhBNBUppIsgOtq6N2qk=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3782.namprd11.prod.outlook.com (20.178.238.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Fri, 17 May 2019 16:41:03 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c820:c233:b27:15f5]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c820:c233:b27:15f5%5]) with mapi id 15.20.1878.024; Fri, 17 May 2019
 16:41:03 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH 3/4] at91: Merge SAMA5 subtargets
Thread-Index: AQHVB/Ga8XD0VW2H70+7CFlFLz/H6aZvi1gw
Date: Fri, 17 May 2019 16:41:02 +0000
Message-ID: <BYAPR11MB3157455EFFE6402BF4CE6D9A820B0@BYAPR11MB3157.namprd11.prod.outlook.com>
References: <20190511115320.12285-1-hauke@hauke-m.de>,
 <20190511115320.12285-4-hauke@hauke-m.de>
In-Reply-To: <20190511115320.12285-4-hauke@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8c259b4-97e0-4958-2ecb-08d6dae67344
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BYAPR11MB3782; 
x-ms-traffictypediagnostic: BYAPR11MB3782:
x-microsoft-antispam-prvs: <BYAPR11MB37824DD7A0D325DB016C5AC4820B0@BYAPR11MB3782.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(136003)(366004)(376002)(189003)(199004)(478600001)(66476007)(72206003)(11346002)(476003)(446003)(14454004)(6506007)(99286004)(486006)(316002)(76176011)(102836004)(81166006)(8936002)(6246003)(81156014)(53546011)(8676002)(64756008)(110136005)(33656002)(66556008)(9686003)(54896002)(68736007)(66446008)(76116006)(66946007)(73956011)(186003)(26005)(7696005)(66066001)(229853002)(6436002)(55016002)(6606003)(256004)(14444005)(3846002)(86362001)(6116002)(71190400001)(71200400001)(19627405001)(30864003)(2906002)(5660300002)(4326008)(2501003)(25786009)(74316002)(7736002)(52536014)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3782;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wVKPy+XD89ibQ4spxGx56f5BBWls1y60M4vf8ZdtsT/VnolXFv23g+AvR2k2M0iTfnXTAqRm+BcBzDn5KJJl/XrszHuMix5dbyzv2ga8rT1XleIKeOIGiK06OJzI2y6+73KfbzdPtCpRiL0JCuKFZQjN2awECODFpmJ2xEG4YWD2b4mOfQ2Z6iNtKfGXb/kCvuSfvAvP1An97YHjlaTT+KMqE5cb2H5bXoGb5CCiRFHXT8Pu4nYWGtESXel+DDP41I+o5h83NaK/5SiT8DTcs7t0v7/ufYqSzhGxYT2ZT7SUcv4in6RYqumKDsrbOXIbZwqAZxsyJQUbUfdFAqjz4Xsszgz1Du+EuNBRBO+c0vsgaHz7uLk2siUcvXqhcUrdFHwNzCuJzfKEPyAXEinm3Rcf7jQIMLzPnR68bvoVGJI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a8c259b4-97e0-4958-2ecb-08d6dae67344
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 16:41:02.9356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3782
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094210_575359_AADC258B 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] at91: Merge SAMA5 subtargets
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
Cc: c.mignanti@gmail.com
Content-Type: multipart/mixed; boundary="===============5378874278001054515=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5378874278001054515==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3157455EFFE6402BF4CE6D9A820B0BYAPR11MB3157namp_"

--_000_BYAPR11MB3157455EFFE6402BF4CE6D9A820B0BYAPR11MB3157namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Hauke Mehrtens,

     The reason I created different SAMA5 subtargets is:


  1.  Able to set neon flags to sama5d2 & sama5d4 subtargets.
  2.  We can configure kernel specific to these subtarget.
  3.  Able to set vfpu4 flags to samad3 subtargets


I would not recommend to merge subtargets into one. Adding neon optimizatio=
n improves performance.

Regards,
Sandeep Sheriker M


________________________________
From: Hauke Mehrtens <hauke@hauke-m.de>
Sent: Saturday, May 11, 2019 4:53 AM
To: openwrt-devel@lists.openwrt.org
Cc: c.mignanti@gmail.com; Sandeep Sheriker Mallikarjun - C17018; Hauke Mehr=
tens
Subject: [PATCH 3/4] at91: Merge SAMA5 subtargets

External E-Mail


Instead of maintaining 3 very similar subtargets merge them into one.
This does not use the Arm NEON extension any more, because the SAMA5D3
does not support NEON.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/boot/at91bootstrap/Makefile      | 26 ++++-----
 package/boot/uboot-at91/Makefile         | 22 ++++----
 target/linux/at91/Makefile               |  2 +-
 target/linux/at91/config-4.9             |  5 +-
 target/linux/at91/image/Makefile         | 10 +---
 target/linux/at91/image/sama5.mk         | 71 ++++++++++++++++++++++++
 target/linux/at91/image/sama5d2.mk       | 31 -----------
 target/linux/at91/image/sama5d3.mk       | 33 -----------
 target/linux/at91/image/sama5d4.mk       | 19 -------
 target/linux/at91/sama5/config-default   |  0
 target/linux/at91/sama5/target.mk        | 10 ++++
 target/linux/at91/sama5d2/config-default |  3 -
 target/linux/at91/sama5d2/target.mk      | 10 ----
 target/linux/at91/sama5d3/config-default |  2 -
 target/linux/at91/sama5d3/target.mk      | 10 ----
 target/linux/at91/sama5d4/target.mk      | 10 ----
 16 files changed, 111 insertions(+), 153 deletions(-)
 create mode 100644 target/linux/at91/image/sama5.mk
 delete mode 100644 target/linux/at91/image/sama5d2.mk
 create mode 100644 target/linux/at91/sama5/config-default
 create mode 100644 target/linux/at91/sama5/target.mk
 delete mode 100644 target/linux/at91/sama5d2/config-default
 delete mode 100644 target/linux/at91/sama5d2/target.mk
 delete mode 100644 target/linux/at91/sama5d3/config-default
 delete mode 100644 target/linux/at91/sama5d3/target.mk
 delete mode 100644 target/linux/at91/sama5d4/target.mk

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstr=
ap/Makefile
index 22afd1ec41..8a08a7aa2c 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -30,79 +30,79 @@ endef

 define AT91Bootstrap/sama5d2_xplaineddf_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_xplained
 endef

 define AT91Bootstrap/sama5d2_xplaineddf_qspi_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (QSPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_xplained
 endef

 define AT91Bootstrap/sama5d2_xplainedsd_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (SDcard/EMMC)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_xplained
 endef

 define AT91Bootstrap/sama5d3_xplainednf_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D3 Xplained board (Nand Flash)
-  BUILD_SUBTARGET:=3Dsama5d3
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d3_xplained
 endef

 define AT91Bootstrap/sama5d3_xplainedsd_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D3 Xplained board (SDcard)
-  BUILD_SUBTARGET:=3Dsama5d3
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d3_xplained
 endef

 define AT91Bootstrap/sama5d4_xplainednf_uboot_secure
   TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (Nand Flash)
-  BUILD_SUBTARGET:=3Dsama5d4
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d4_xplained
 endef

 define AT91Bootstrap/sama5d4_xplaineddf_uboot_secure
   TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d4
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d4_xplained
 endef

 define AT91Bootstrap/sama5d4_xplainedsd_uboot_secure
   TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (SDcard)
-  BUILD_SUBTARGET:=3Dsama5d4
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d4_xplained
 endef

 define AT91Bootstrap/sama5d27_som1_eksd_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard0)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
 endef

 define AT91Bootstrap/sama5d27_som1_eksd1_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard1)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
 endef

 define AT91Bootstrap/sama5d27_som1_ekqspi_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (QSPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
 endef

 define AT91Bootstrap/sama5d2_ptc_eknf_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D2 PTC EK (Nand Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
 endef

 define AT91Bootstrap/sama5d2_ptc_eksd_uboot
   TITLE:=3DAT91Bootstrap for SAMA5D2 PTC EK (SDCard)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
 endef

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Mak=
efile
index f0a4ba56c2..23bd2d2b01 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -40,67 +40,67 @@ endef

 define U-Boot/sama5d3_xplained_nandflash
   NAME:=3DSAMA5D3 Xplained board (NandFlash)
-  BUILD_SUBTARGET:=3Dsama5d3
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d3_xplained
 endef

 define U-Boot/sama5d3_xplained_mmc
   NAME:=3DSAMA5D3 Xplained board (SDcard)
-  BUILD_SUBTARGET:=3Dsama5d3
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d3_xplained
 endef

 define U-Boot/sama5d2_xplained_spiflash
   NAME:=3DSAMA5D2 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_xplained
 endef

 define U-Boot/sama5d2_xplained_mmc
   NAME:=3DSAMA5D2 Xplained board (SDcard/EMMC)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_xplained
 endef

 define U-Boot/sama5d4_xplained_spiflash
   NAME:=3DSAMA5D4 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d4
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d4_xplained
 endef

 define U-Boot/sama5d4_xplained_mmc
   NAME:=3DSAMA5D4 Xplained board (SDcard)
-  BUILD_SUBTARGET:=3Dsama5d4
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d4_xplained
 endef

 define U-Boot/sama5d4_xplained_nandflash
   NAME:=3DSAMA5D4 Xplained board (NandFlash)
-  BUILD_SUBTARGET:=3Dsama5d4
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d4_xplained
 endef

 define U-Boot/sama5d27_som1_ek_mmc
   NAME:=3DSAMA5D27 SOM1 Ek (SDCard)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
 endef

 define U-Boot/sama5d27_som1_ek_spiflash
   NAME:=3DSAMA5D27 SOM1 Ek (QSPI Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d27_som1_ek
 endef

 define U-Boot/sama5d2_ptc_ek_nandflash
   NAME:=3DSAMA5D2 PTC Ek (Nand Flash)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
 endef

 define U-Boot/sama5d2_ptc_ek_mmc
   NAME:=3DSAMA5D2 PTC Ek (SDCard)
-  BUILD_SUBTARGET:=3Dsama5d2
+  BUILD_SUBTARGET:=3Dsama5
   BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek
 endef

diff --git a/target/linux/at91/Makefile b/target/linux/at91/Makefile
index d71e0850ff..cae3c6278b 100644
--- a/target/linux/at91/Makefile
+++ b/target/linux/at91/Makefile
@@ -11,7 +11,7 @@ BOARD:=3Dat91
 MAINTAINER:=3DClaudio Mignanti <c.mignanti@gmail.com>
 BOARDNAME:=3DMicrochip (Atmel AT91)
 FEATURES:=3Dext4 squashfs targz usb usbgadget ubifs
-SUBTARGETS:=3Dsama5d2 sama5d3 sama5d4 legacy
+SUBTARGETS:=3Dsama5 legacy

 KERNEL_PATCHVER:=3D4.9

diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
index 452cfd5aa3..ad18d6b826 100644
--- a/target/linux/at91/config-4.9
+++ b/target/linux/at91/config-4.9
@@ -214,6 +214,7 @@ CONFIG_HAVE_ARCH_PFN_VALID=3Dy
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=3Dy
 CONFIG_HAVE_ARCH_TRACEHOOK=3Dy
 CONFIG_HAVE_ARM_SMCCC=3Dy
+CONFIG_HAVE_AT91_GENERATED_CLK=3Dy
 CONFIG_HAVE_AT91_H32MX=3Dy
 CONFIG_HAVE_AT91_SMD=3Dy
 CONFIG_HAVE_AT91_USB_CLK=3Dy
@@ -464,8 +465,8 @@ CONFIG_SND_SUPPORT_OLD_API=3Dy
 CONFIG_SND_TIMER=3Dy
 CONFIG_SOC_BUS=3Dy
 CONFIG_SOC_SAMA5=3Dy
-# CONFIG_SOC_SAMA5D2 is not set
-# CONFIG_SOC_SAMA5D3 is not set
+CONFIG_SOC_SAMA5D2=3Dy
+CONFIG_SOC_SAMA5D3=3Dy
 CONFIG_SOC_SAMA5D4=3Dy
 CONFIG_SOC_SAM_V7=3Dy
 CONFIG_SOUND=3Dy
diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Mak=
efile
index 49d93aa97d..f4d942b682 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -16,14 +16,8 @@ endef
 ifeq ($(SUBTARGET),legacy)
 include ./legacy.mk
 endif
-ifeq ($(SUBTARGET),sama5d2)
-include ./sama5d2.mk
-endif
-ifeq ($(SUBTARGET),sama5d3)
-include ./sama5d3.mk
-endif
-ifeq ($(SUBTARGET),sama5d4)
-include ./sama5d4.mk
+ifeq ($(SUBTARGET),sama5)
+include ./sama5.mk
 endif

 AT91_SD_BOOT_PARTSIZE:=3D64
diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sam=
a5.mk
new file mode 100644
index 0000000000..f9a190c8b2
--- /dev/null
+++ b/target/linux/at91/image/sama5.mk
@@ -0,0 +1,71 @@
+
+define Device/default-nand
+  BLOCKSIZE :=3D 128k
+  PAGESIZE :=3D 2048
+  SUBPAGESIZE :=3D 2048
+  MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
+endef
+
+define Device/at91-sama5d2_xplained
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 Xplained
+  KERNEL_SIZE :=3D 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES +=3D at91-sama5d2_xplained
+
+define Device/at91-sama5d27_som1_ek
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D27 SOM1 Ek
+  KERNEL_SIZE :=3D 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES +=3D at91-sama5d27_som1_ek
+
+define Device/at91-sama5d2_ptc_ek
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 PTC Ek
+  KERNEL_SIZE :=3D 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES +=3D at91-sama5d2_ptc_ek
+
+
+define Device/at91-sama5d3_xplained
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D3 Xplained
+  KERNEL_SIZE :=3D 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES +=3D at91-sama5d3_xplained
+
+ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),"")
+ ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),"")
+  define Device/wb50n
+    $(Device/evaluation-fit)
+    DEVICE_TITLE :=3D Laird WB50N
+    DEVICE_PACKAGES :=3D \
+         kmod-mmc-at91 kmod-ath6kl-sdio ath6k-firmware \
+         kmod-usb-storage kmod-fs-vfat kmod-fs-msdos \
+         kmod-leds-gpio
+    BLOCKSIZE :=3D 128k
+    PAGESIZE :=3D 2048
+    SUBPAGESIZE :=3D 2048
+    MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 955
+  endef
+  TARGET_DEVICES +=3D wb50n
+ endif
+endif
+
+
+define Device/at91-sama5d4_xplained
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D4 Xplained
+  KERNEL_SIZE :=3D 6144k
+  BLOCKSIZE :=3D 256k
+  PAGESIZE :=3D 4096
+  SUBPAGESIZE :=3D 2048
+  MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 248KiB -c 2082
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES +=3D at91-sama5d4_xplained
diff --git a/target/linux/at91/image/sama5d2.mk b/target/linux/at91/image/s=
ama5d2.mk
deleted file mode 100644
index b841448633..0000000000
--- a/target/linux/at91/image/sama5d2.mk
+++ /dev/null
@@ -1,31 +0,0 @@
-
-define Device/default-nand
-  BLOCKSIZE :=3D 128k
-  PAGESIZE :=3D 2048
-  SUBPAGESIZE :=3D 2048
-  MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
-endef
-
-define Device/at91-sama5d2_xplained
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 Xplained
-  KERNEL_SIZE :=3D 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES +=3D at91-sama5d2_xplained
-
-define Device/at91-sama5d27_som1_ek
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D27 SOM1 Ek
-  KERNEL_SIZE :=3D 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES +=3D at91-sama5d27_som1_ek
-
-define Device/at91-sama5d2_ptc_ek
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 PTC Ek
-  KERNEL_SIZE :=3D 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES +=3D at91-sama5d2_ptc_ek
diff --git a/target/linux/at91/image/sama5d3.mk b/target/linux/at91/image/s=
ama5d3.mk
index f48c981030..e69de29bb2 100644
--- a/target/linux/at91/image/sama5d3.mk
+++ b/target/linux/at91/image/sama5d3.mk
@@ -1,33 +0,0 @@
-
-define Device/default-nand
-  BLOCKSIZE :=3D 128k
-  PAGESIZE :=3D 2048
-  SUBPAGESIZE :=3D 2048
-  MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
-endef
-
-define Device/at91-sama5d3_xplained
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D3 Xplained
-  KERNEL_SIZE :=3D 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES +=3D at91-sama5d3_xplained
-
-ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),"")
- ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),"")
-  define Device/wb50n
-    $(Device/evaluation-fit)
-    DEVICE_TITLE :=3D Laird WB50N
-    DEVICE_PACKAGES :=3D \
-         kmod-mmc-at91 kmod-ath6kl-sdio ath6k-firmware \
-         kmod-usb-storage kmod-fs-vfat kmod-fs-msdos \
-         kmod-leds-gpio
-    BLOCKSIZE :=3D 128k
-    PAGESIZE :=3D 2048
-    SUBPAGESIZE :=3D 2048
-    MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 955
-  endef
-  TARGET_DEVICES +=3D wb50n
- endif
-endif
diff --git a/target/linux/at91/image/sama5d4.mk b/target/linux/at91/image/s=
ama5d4.mk
index 1140c3c4b2..e69de29bb2 100644
--- a/target/linux/at91/image/sama5d4.mk
+++ b/target/linux/at91/image/sama5d4.mk
@@ -1,19 +0,0 @@
-
-define Device/default-nand
-  BLOCKSIZE :=3D 128k
-  PAGESIZE :=3D 2048
-  SUBPAGESIZE :=3D 2048
-  MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048
-endef
-
-define Device/at91-sama5d4_xplained
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D4 Xplained
-  KERNEL_SIZE :=3D 6144k
-  BLOCKSIZE :=3D 256k
-  PAGESIZE :=3D 4096
-  SUBPAGESIZE :=3D 2048
-  MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 248KiB -c 2082
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES +=3D at91-sama5d4_xplained
diff --git a/target/linux/at91/sama5/config-default b/target/linux/at91/sam=
a5/config-default
new file mode 100644
index 0000000000..e69de29bb2
diff --git a/target/linux/at91/sama5/target.mk b/target/linux/at91/sama5/ta=
rget.mk
new file mode 100644
index 0000000000..35df05b70d
--- /dev/null
+++ b/target/linux/at91/sama5/target.mk
@@ -0,0 +1,10 @@
+BOARDNAME:=3DSAMA5 boards(Cortex-A5)
+CPU_TYPE:=3Dcortex-a5
+CPU_SUBTYPE:=3Dvfpv4
+FEATURES+=3Dfpu
+DEFAULT_PACKAGES +=3D kmod-usb2
+
+define Target/Description
+       Build generic firmware for Microchip(Atmel AT91) SAMA5D2,
+       SAMA5D3 and SAMA5D4 MPU's using the ARMv7 instruction set.
+endef
diff --git a/target/linux/at91/sama5d2/config-default b/target/linux/at91/s=
ama5d2/config-default
deleted file mode 100644
index 1724375c33..0000000000
--- a/target/linux/at91/sama5d2/config-default
+++ /dev/null
@@ -1,3 +0,0 @@
-CONFIG_HAVE_AT91_GENERATED_CLK=3Dy
-CONFIG_SOC_SAMA5D2=3Dy
-# CONFIG_SOC_SAMA5D4 is not set
diff --git a/target/linux/at91/sama5d2/target.mk b/target/linux/at91/sama5d=
2/target.mk
deleted file mode 100644
index 63f50aeea1..0000000000
--- a/target/linux/at91/sama5d2/target.mk
+++ /dev/null
@@ -1,10 +0,0 @@
-BOARDNAME:=3DSAMA5D2 boards(Cortex-A5)
-CPU_TYPE:=3Dcortex-a5
-CPU_SUBTYPE:=3Dneon-vfpv4
-FEATURES+=3Dfpu
-DEFAULT_PACKAGES +=3D kmod-usb2
-
-define Target/Description
-       Build generic firmware for Microchip(Atmel AT91) SAMA5D2 MPU's
-       using the ARMv7 instruction set.
-endef
diff --git a/target/linux/at91/sama5d3/config-default b/target/linux/at91/s=
ama5d3/config-default
deleted file mode 100644
index eb0ec01cb9..0000000000
--- a/target/linux/at91/sama5d3/config-default
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_SOC_SAMA5D3=3Dy
-# CONFIG_SOC_SAMA5D4 is not set
diff --git a/target/linux/at91/sama5d3/target.mk b/target/linux/at91/sama5d=
3/target.mk
deleted file mode 100644
index d30931bfc0..0000000000
--- a/target/linux/at91/sama5d3/target.mk
+++ /dev/null
@@ -1,10 +0,0 @@
-BOARDNAME:=3DSAMA5D3 boards(Cortex-A5)
-CPU_TYPE:=3Dcortex-a5
-CPU_SUBTYPE:=3Dvfpv4
-FEATURES+=3Dfpu
-DEFAULT_PACKAGES +=3D kmod-usb2
-
-define Target/Description
-       Build generic firmware for Microchip(Atmel AT91) SAMA5D3 MPU's
-       using the ARMv7 instruction set.
-endef
diff --git a/target/linux/at91/sama5d4/target.mk b/target/linux/at91/sama5d=
4/target.mk
deleted file mode 100644
index 2bbab60d81..0000000000
--- a/target/linux/at91/sama5d4/target.mk
+++ /dev/null
@@ -1,10 +0,0 @@
-BOARDNAME:=3DSAMA5D4 boards(Cortex-A5)
-CPU_TYPE:=3Dcortex-a5
-CPU_SUBTYPE:=3Dneon-vfpv4
-FEATURES+=3Dfpu
-DEFAULT_PACKAGES +=3D kmod-usb2
-
-define Target/Description
-       Build generic firmware for Microchip(Atmel AT91) SAMA5D4 MPU's
-       using the ARMv7 instruction set.
-endef
--
2.20.1



--_000_BYAPR11MB3157455EFFE6402BF4CE6D9A820B0BYAPR11MB3157namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Arial=
, Helvetica, sans-serif;">Hi Hauke Mehrtens,</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Arial=
, Helvetica, sans-serif;">&nbsp; &nbsp; &nbsp;The reason I created differen=
t&nbsp;SAMA5 subtargets is:</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-size: 12pt;">=
<br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><span style=3D"font-size: 12pt; font-family: Arial, Helvetica, sans-ser=
if;">Able to set neon flags to sama5d2 &amp; sama5d4 subtargets.</span></li=
><li><span style=3D"font-family: Arial, Helvetica, sans-serif;">We can&nbsp=
;</span><span style=3D"font-size: 12pt; font-family: Arial, Helvetica, sans=
-serif;">configure kernel specific to these&nbsp;subtarget.</span></li><li>=
<span style=3D"font-family: Arial, Helvetica, sans-serif;">Able to set vfpu=
4 flags to samad3 subtargets</span></li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Arial=
, Helvetica, sans-serif;">I would not&nbsp;</span><span style=3D"font-famil=
y: Arial, Helvetica, sans-serif;">recommend
</span><font face=3D"Arial, Helvetica, sans-serif">to merge subtargets into=
 one. Adding neon optimization improves performance.</font><span style=3D"f=
ont-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Em=
oji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbo=
l&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 14.6667px;"></=
span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-size: 12pt;">=
</p>
<div><br>
</div>
<div><span style=3D"font-family: Arial, Helvetica, sans-serif;">Regards,</s=
pan></div>
<div><span style=3D"font-family: Arial, Helvetica, sans-serif;">Sandeep She=
riker M</span></div>
</span>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hauke Mehrtens &lt;ha=
uke@hauke-m.de&gt;<br>
<b>Sent:</b> Saturday, May 11, 2019 4:53 AM<br>
<b>To:</b> openwrt-devel@lists.openwrt.org<br>
<b>Cc:</b> c.mignanti@gmail.com; Sandeep Sheriker Mallikarjun - C17018; Hau=
ke Mehrtens<br>
<b>Subject:</b> [PATCH 3/4] at91: Merge SAMA5 subtargets</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">External E-Mail<br>
<br>
<br>
Instead of maintaining 3 very similar subtargets merge them into one.<br>
This does not use the Arm NEON extension any more, because the SAMA5D3<br>
does not support NEON.<br>
<br>
Signed-off-by: Hauke Mehrtens &lt;hauke@hauke-m.de&gt;<br>
---<br>
&nbsp;package/boot/at91bootstrap/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 2=
6 &#43;&#43;&#43;&#43;-----<br>
&nbsp;package/boot/uboot-at91/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; | 22 &#43;&#43;&#43;&#43;----<br>
&nbsp;target/linux/at91/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 2 &#43;-<br>
&nbsp;target/linux/at91/config-4.9&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 5 &#43;-<br>
&nbsp;target/linux/at91/image/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; | 10 &#43;---<br>
&nbsp;target/linux/at91/image/sama5.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; | 71 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;target/linux/at91/image/sama5d2.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 31 -----------<br>
&nbsp;target/linux/at91/image/sama5d3.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 33 -----------<br>
&nbsp;target/linux/at91/image/sama5d4.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; | 19 -------<br>
&nbsp;target/linux/at91/sama5/config-default&nbsp;&nbsp; |&nbsp; 0<br>
&nbsp;target/linux/at91/sama5/target.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; | 10 &#43;&#43;&#43;&#43;<br>
&nbsp;target/linux/at91/sama5d2/config-default |&nbsp; 3 -<br>
&nbsp;target/linux/at91/sama5d2/target.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 1=
0 ----<br>
&nbsp;target/linux/at91/sama5d3/config-default |&nbsp; 2 -<br>
&nbsp;target/linux/at91/sama5d3/target.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 1=
0 ----<br>
&nbsp;target/linux/at91/sama5d4/target.mk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 1=
0 ----<br>
&nbsp;16 files changed, 111 insertions(&#43;), 153 deletions(-)<br>
&nbsp;create mode 100644 target/linux/at91/image/sama5.mk<br>
&nbsp;delete mode 100644 target/linux/at91/image/sama5d2.mk<br>
&nbsp;create mode 100644 target/linux/at91/sama5/config-default<br>
&nbsp;create mode 100644 target/linux/at91/sama5/target.mk<br>
&nbsp;delete mode 100644 target/linux/at91/sama5d2/config-default<br>
&nbsp;delete mode 100644 target/linux/at91/sama5d2/target.mk<br>
&nbsp;delete mode 100644 target/linux/at91/sama5d3/config-default<br>
&nbsp;delete mode 100644 target/linux/at91/sama5d3/target.mk<br>
&nbsp;delete mode 100644 target/linux/at91/sama5d4/target.mk<br>
<br>
diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstr=
ap/Makefile<br>
index 22afd1ec41..8a08a7aa2c 100644<br>
--- a/package/boot/at91bootstrap/Makefile<br>
&#43;&#43;&#43; b/package/boot/at91bootstrap/Makefile<br>
@@ -30,79 &#43;30,79 @@ endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d2_xplaineddf_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)<=
br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d2_xplaineddf_qspi_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (QSPI Flash)=
<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d2_xplainedsd_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D2 Xplained board (SDcard/EMMC=
)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d3_xplainednf_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D3 Xplained board (Nand Flash)=
<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d3<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d3_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d3_xplainedsd_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D3 Xplained board (SDcard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d3<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d3_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d4_xplainednf_uboot_secure<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (Nand Flash)=
<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d4<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d4_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d4_xplaineddf_uboot_secure<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (SPI Flash)<=
br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d4<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d4_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d4_xplainedsd_uboot_secure<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D4 Xplained board (SDcard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d4<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d4_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d27_som1_eksd_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard0)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d27_som1_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d27_som1_eksd1_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard1)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d27_som1_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d27_som1_ekqspi_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D27 SOM1 Ek (QSPI Flash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d27_som1_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d2_ptc_eknf_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D2 PTC EK (Nand Flash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define AT91Bootstrap/sama5d2_ptc_eksd_uboot<br>
&nbsp;&nbsp; TITLE:=3DAT91Bootstrap for SAMA5D2 PTC EK (SDCard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek<br>
&nbsp;endef<br>
&nbsp;<br>
diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Mak=
efile<br>
index f0a4ba56c2..23bd2d2b01 100644<br>
--- a/package/boot/uboot-at91/Makefile<br>
&#43;&#43;&#43; b/package/boot/uboot-at91/Makefile<br>
@@ -40,67 &#43;40,67 @@ endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d3_xplained_nandflash<br>
&nbsp;&nbsp; NAME:=3DSAMA5D3 Xplained board (NandFlash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d3<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d3_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d3_xplained_mmc<br>
&nbsp;&nbsp; NAME:=3DSAMA5D3 Xplained board (SDcard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d3<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d3_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d2_xplained_spiflash<br>
&nbsp;&nbsp; NAME:=3DSAMA5D2 Xplained board (SPI Flash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d2_xplained_mmc<br>
&nbsp;&nbsp; NAME:=3DSAMA5D2 Xplained board (SDcard/EMMC)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d4_xplained_spiflash<br>
&nbsp;&nbsp; NAME:=3DSAMA5D4 Xplained board (SPI Flash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d4<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d4_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d4_xplained_mmc<br>
&nbsp;&nbsp; NAME:=3DSAMA5D4 Xplained board (SDcard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d4<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d4_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d4_xplained_nandflash<br>
&nbsp;&nbsp; NAME:=3DSAMA5D4 Xplained board (NandFlash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d4<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d4_xplained<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d27_som1_ek_mmc<br>
&nbsp;&nbsp; NAME:=3DSAMA5D27 SOM1 Ek (SDCard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d27_som1_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d27_som1_ek_spiflash<br>
&nbsp;&nbsp; NAME:=3DSAMA5D27 SOM1 Ek (QSPI Flash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d27_som1_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d2_ptc_ek_nandflash<br>
&nbsp;&nbsp; NAME:=3DSAMA5D2 PTC Ek (Nand Flash)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek<br>
&nbsp;endef<br>
&nbsp;<br>
&nbsp;define U-Boot/sama5d2_ptc_ek_mmc<br>
&nbsp;&nbsp; NAME:=3DSAMA5D2 PTC Ek (SDCard)<br>
-&nbsp; BUILD_SUBTARGET:=3Dsama5d2<br>
&#43;&nbsp; BUILD_SUBTARGET:=3Dsama5<br>
&nbsp;&nbsp; BUILD_DEVICES:=3Dat91-sama5d2_ptc_ek<br>
&nbsp;endef<br>
&nbsp;<br>
diff --git a/target/linux/at91/Makefile b/target/linux/at91/Makefile<br>
index d71e0850ff..cae3c6278b 100644<br>
--- a/target/linux/at91/Makefile<br>
&#43;&#43;&#43; b/target/linux/at91/Makefile<br>
@@ -11,7 &#43;11,7 @@ BOARD:=3Dat91<br>
&nbsp;MAINTAINER:=3DClaudio Mignanti &lt;c.mignanti@gmail.com&gt;<br>
&nbsp;BOARDNAME:=3DMicrochip (Atmel AT91)<br>
&nbsp;FEATURES:=3Dext4 squashfs targz usb usbgadget ubifs<br>
-SUBTARGETS:=3Dsama5d2 sama5d3 sama5d4 legacy<br>
&#43;SUBTARGETS:=3Dsama5 legacy<br>
&nbsp;<br>
&nbsp;KERNEL_PATCHVER:=3D4.9<br>
&nbsp;<br>
diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9<br=
>
index 452cfd5aa3..ad18d6b826 100644<br>
--- a/target/linux/at91/config-4.9<br>
&#43;&#43;&#43; b/target/linux/at91/config-4.9<br>
@@ -214,6 &#43;214,7 @@ CONFIG_HAVE_ARCH_PFN_VALID=3Dy<br>
&nbsp;CONFIG_HAVE_ARCH_SECCOMP_FILTER=3Dy<br>
&nbsp;CONFIG_HAVE_ARCH_TRACEHOOK=3Dy<br>
&nbsp;CONFIG_HAVE_ARM_SMCCC=3Dy<br>
&#43;CONFIG_HAVE_AT91_GENERATED_CLK=3Dy<br>
&nbsp;CONFIG_HAVE_AT91_H32MX=3Dy<br>
&nbsp;CONFIG_HAVE_AT91_SMD=3Dy<br>
&nbsp;CONFIG_HAVE_AT91_USB_CLK=3Dy<br>
@@ -464,8 &#43;465,8 @@ CONFIG_SND_SUPPORT_OLD_API=3Dy<br>
&nbsp;CONFIG_SND_TIMER=3Dy<br>
&nbsp;CONFIG_SOC_BUS=3Dy<br>
&nbsp;CONFIG_SOC_SAMA5=3Dy<br>
-# CONFIG_SOC_SAMA5D2 is not set<br>
-# CONFIG_SOC_SAMA5D3 is not set<br>
&#43;CONFIG_SOC_SAMA5D2=3Dy<br>
&#43;CONFIG_SOC_SAMA5D3=3Dy<br>
&nbsp;CONFIG_SOC_SAMA5D4=3Dy<br>
&nbsp;CONFIG_SOC_SAM_V7=3Dy<br>
&nbsp;CONFIG_SOUND=3Dy<br>
diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Mak=
efile<br>
index 49d93aa97d..f4d942b682 100644<br>
--- a/target/linux/at91/image/Makefile<br>
&#43;&#43;&#43; b/target/linux/at91/image/Makefile<br>
@@ -16,14 &#43;16,8 @@ endef<br>
&nbsp;ifeq ($(SUBTARGET),legacy)<br>
&nbsp;include ./legacy.mk<br>
&nbsp;endif<br>
-ifeq ($(SUBTARGET),sama5d2)<br>
-include ./sama5d2.mk<br>
-endif<br>
-ifeq ($(SUBTARGET),sama5d3)<br>
-include ./sama5d3.mk<br>
-endif<br>
-ifeq ($(SUBTARGET),sama5d4)<br>
-include ./sama5d4.mk<br>
&#43;ifeq ($(SUBTARGET),sama5)<br>
&#43;include ./sama5.mk<br>
&nbsp;endif<br>
&nbsp;<br>
&nbsp;AT91_SD_BOOT_PARTSIZE:=3D64<br>
diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sam=
a5.mk<br>
new file mode 100644<br>
index 0000000000..f9a190c8b2<br>
--- /dev/null<br>
&#43;&#43;&#43; b/target/linux/at91/image/sama5.mk<br>
@@ -0,0 &#43;1,71 @@<br>
&#43;<br>
&#43;define Device/default-nand<br>
&#43;&nbsp; BLOCKSIZE :=3D 128k<br>
&#43;&nbsp; PAGESIZE :=3D 2048<br>
&#43;&nbsp; SUBPAGESIZE :=3D 2048<br>
&#43;&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048<br>
&#43;endef<br>
&#43;<br>
&#43;define Device/at91-sama5d2_xplained<br>
&#43;&nbsp; $(Device/evaluation-dtb)<br>
&#43;&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 Xplained<br>
&#43;&nbsp; KERNEL_SIZE :=3D 6144k<br>
&#43;&nbsp; $(Device/evaluation-sdimage)<br>
&#43;endef<br>
&#43;TARGET_DEVICES &#43;=3D at91-sama5d2_xplained<br>
&#43;<br>
&#43;define Device/at91-sama5d27_som1_ek<br>
&#43;&nbsp; $(Device/evaluation-dtb)<br>
&#43;&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D27 SOM1 Ek<br>
&#43;&nbsp; KERNEL_SIZE :=3D 6144k<br>
&#43;&nbsp; $(Device/evaluation-sdimage)<br>
&#43;endef<br>
&#43;TARGET_DEVICES &#43;=3D at91-sama5d27_som1_ek<br>
&#43;<br>
&#43;define Device/at91-sama5d2_ptc_ek<br>
&#43;&nbsp; $(Device/evaluation-dtb)<br>
&#43;&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 PTC Ek<br>
&#43;&nbsp; KERNEL_SIZE :=3D 6144k<br>
&#43;&nbsp; $(Device/evaluation-sdimage)<br>
&#43;endef<br>
&#43;TARGET_DEVICES &#43;=3D at91-sama5d2_ptc_ek<br>
&#43;<br>
&#43;<br>
&#43;define Device/at91-sama5d3_xplained<br>
&#43;&nbsp; $(Device/evaluation-dtb)<br>
&#43;&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D3 Xplained<br>
&#43;&nbsp; KERNEL_SIZE :=3D 6144k<br>
&#43;&nbsp; $(Device/evaluation-sdimage)<br>
&#43;endef<br>
&#43;TARGET_DEVICES &#43;=3D at91-sama5d3_xplained<br>
&#43;<br>
&#43;ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),&quot;&quot;)<br>
&#43; ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),&quot;&quot;)<br>
&#43;&nbsp; define Device/wb50n<br>
&#43;&nbsp;&nbsp;&nbsp; $(Device/evaluation-fit)<br>
&#43;&nbsp;&nbsp;&nbsp; DEVICE_TITLE :=3D Laird WB50N<br>
&#43;&nbsp;&nbsp;&nbsp; DEVICE_PACKAGES :=3D \<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kmod-mmc-at91 kmod-at=
h6kl-sdio ath6k-firmware \<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kmod-usb-storage kmod=
-fs-vfat kmod-fs-msdos \<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kmod-leds-gpio<br>
&#43;&nbsp;&nbsp;&nbsp; BLOCKSIZE :=3D 128k<br>
&#43;&nbsp;&nbsp;&nbsp; PAGESIZE :=3D 2048<br>
&#43;&nbsp;&nbsp;&nbsp; SUBPAGESIZE :=3D 2048<br>
&#43;&nbsp;&nbsp;&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 955<=
br>
&#43;&nbsp; endef<br>
&#43;&nbsp; TARGET_DEVICES &#43;=3D wb50n<br>
&#43; endif<br>
&#43;endif<br>
&#43;<br>
&#43;<br>
&#43;define Device/at91-sama5d4_xplained<br>
&#43;&nbsp; $(Device/evaluation-dtb)<br>
&#43;&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D4 Xplained<br>
&#43;&nbsp; KERNEL_SIZE :=3D 6144k<br>
&#43;&nbsp; BLOCKSIZE :=3D 256k<br>
&#43;&nbsp; PAGESIZE :=3D 4096<br>
&#43;&nbsp; SUBPAGESIZE :=3D 2048<br>
&#43;&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 248KiB -c 2082<br>
&#43;&nbsp; $(Device/evaluation-sdimage)<br>
&#43;endef<br>
&#43;TARGET_DEVICES &#43;=3D at91-sama5d4_xplained<br>
diff --git a/target/linux/at91/image/sama5d2.mk b/target/linux/at91/image/s=
ama5d2.mk<br>
deleted file mode 100644<br>
index b841448633..0000000000<br>
--- a/target/linux/at91/image/sama5d2.mk<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,31 &#43;0,0 @@<br>
-<br>
-define Device/default-nand<br>
-&nbsp; BLOCKSIZE :=3D 128k<br>
-&nbsp; PAGESIZE :=3D 2048<br>
-&nbsp; SUBPAGESIZE :=3D 2048<br>
-&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048<br>
-endef<br>
-<br>
-define Device/at91-sama5d2_xplained<br>
-&nbsp; $(Device/evaluation-dtb)<br>
-&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 Xplained<br>
-&nbsp; KERNEL_SIZE :=3D 6144k<br>
-&nbsp; $(Device/evaluation-sdimage)<br>
-endef<br>
-TARGET_DEVICES &#43;=3D at91-sama5d2_xplained<br>
-<br>
-define Device/at91-sama5d27_som1_ek<br>
-&nbsp; $(Device/evaluation-dtb)<br>
-&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D27 SOM1 Ek<br>
-&nbsp; KERNEL_SIZE :=3D 6144k<br>
-&nbsp; $(Device/evaluation-sdimage)<br>
-endef<br>
-TARGET_DEVICES &#43;=3D at91-sama5d27_som1_ek<br>
-<br>
-define Device/at91-sama5d2_ptc_ek<br>
-&nbsp; $(Device/evaluation-dtb)<br>
-&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D2 PTC Ek<br>
-&nbsp; KERNEL_SIZE :=3D 6144k<br>
-&nbsp; $(Device/evaluation-sdimage)<br>
-endef<br>
-TARGET_DEVICES &#43;=3D at91-sama5d2_ptc_ek<br>
diff --git a/target/linux/at91/image/sama5d3.mk b/target/linux/at91/image/s=
ama5d3.mk<br>
index f48c981030..e69de29bb2 100644<br>
--- a/target/linux/at91/image/sama5d3.mk<br>
&#43;&#43;&#43; b/target/linux/at91/image/sama5d3.mk<br>
@@ -1,33 &#43;0,0 @@<br>
-<br>
-define Device/default-nand<br>
-&nbsp; BLOCKSIZE :=3D 128k<br>
-&nbsp; PAGESIZE :=3D 2048<br>
-&nbsp; SUBPAGESIZE :=3D 2048<br>
-&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048<br>
-endef<br>
-<br>
-define Device/at91-sama5d3_xplained<br>
-&nbsp; $(Device/evaluation-dtb)<br>
-&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D3 Xplained<br>
-&nbsp; KERNEL_SIZE :=3D 6144k<br>
-&nbsp; $(Device/evaluation-sdimage)<br>
-endef<br>
-TARGET_DEVICES &#43;=3D at91-sama5d3_xplained<br>
-<br>
-ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),&quot;&quot;)<br>
- ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),&quot;&quot;)<br>
-&nbsp; define Device/wb50n<br>
-&nbsp;&nbsp;&nbsp; $(Device/evaluation-fit)<br>
-&nbsp;&nbsp;&nbsp; DEVICE_TITLE :=3D Laird WB50N<br>
-&nbsp;&nbsp;&nbsp; DEVICE_PACKAGES :=3D \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kmod-mmc-at91 kmod-ath6kl=
-sdio ath6k-firmware \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kmod-usb-storage kmod-fs-=
vfat kmod-fs-msdos \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kmod-leds-gpio<br>
-&nbsp;&nbsp;&nbsp; BLOCKSIZE :=3D 128k<br>
-&nbsp;&nbsp;&nbsp; PAGESIZE :=3D 2048<br>
-&nbsp;&nbsp;&nbsp; SUBPAGESIZE :=3D 2048<br>
-&nbsp;&nbsp;&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 955<br>
-&nbsp; endef<br>
-&nbsp; TARGET_DEVICES &#43;=3D wb50n<br>
- endif<br>
-endif<br>
diff --git a/target/linux/at91/image/sama5d4.mk b/target/linux/at91/image/s=
ama5d4.mk<br>
index 1140c3c4b2..e69de29bb2 100644<br>
--- a/target/linux/at91/image/sama5d4.mk<br>
&#43;&#43;&#43; b/target/linux/at91/image/sama5d4.mk<br>
@@ -1,19 &#43;0,0 @@<br>
-<br>
-define Device/default-nand<br>
-&nbsp; BLOCKSIZE :=3D 128k<br>
-&nbsp; PAGESIZE :=3D 2048<br>
-&nbsp; SUBPAGESIZE :=3D 2048<br>
-&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 124KiB -c 2048<br>
-endef<br>
-<br>
-define Device/at91-sama5d4_xplained<br>
-&nbsp; $(Device/evaluation-dtb)<br>
-&nbsp; DEVICE_TITLE :=3D Microchip(Atmel AT91) SAMA5D4 Xplained<br>
-&nbsp; KERNEL_SIZE :=3D 6144k<br>
-&nbsp; BLOCKSIZE :=3D 256k<br>
-&nbsp; PAGESIZE :=3D 4096<br>
-&nbsp; SUBPAGESIZE :=3D 2048<br>
-&nbsp; MKUBIFS_OPTS :=3D -m $$(PAGESIZE) -e 248KiB -c 2082<br>
-&nbsp; $(Device/evaluation-sdimage)<br>
-endef<br>
-TARGET_DEVICES &#43;=3D at91-sama5d4_xplained<br>
diff --git a/target/linux/at91/sama5/config-default b/target/linux/at91/sam=
a5/config-default<br>
new file mode 100644<br>
index 0000000000..e69de29bb2<br>
diff --git a/target/linux/at91/sama5/target.mk b/target/linux/at91/sama5/ta=
rget.mk<br>
new file mode 100644<br>
index 0000000000..35df05b70d<br>
--- /dev/null<br>
&#43;&#43;&#43; b/target/linux/at91/sama5/target.mk<br>
@@ -0,0 &#43;1,10 @@<br>
&#43;BOARDNAME:=3DSAMA5 boards(Cortex-A5)<br>
&#43;CPU_TYPE:=3Dcortex-a5<br>
&#43;CPU_SUBTYPE:=3Dvfpv4<br>
&#43;FEATURES&#43;=3Dfpu<br>
&#43;DEFAULT_PACKAGES &#43;=3D kmod-usb2<br>
&#43;<br>
&#43;define Target/Description<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build generic firmware for Microc=
hip(Atmel AT91) SAMA5D2,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SAMA5D3 and SAMA5D4 MPU's using t=
he ARMv7 instruction set.<br>
&#43;endef<br>
diff --git a/target/linux/at91/sama5d2/config-default b/target/linux/at91/s=
ama5d2/config-default<br>
deleted file mode 100644<br>
index 1724375c33..0000000000<br>
--- a/target/linux/at91/sama5d2/config-default<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,3 &#43;0,0 @@<br>
-CONFIG_HAVE_AT91_GENERATED_CLK=3Dy<br>
-CONFIG_SOC_SAMA5D2=3Dy<br>
-# CONFIG_SOC_SAMA5D4 is not set<br>
diff --git a/target/linux/at91/sama5d2/target.mk b/target/linux/at91/sama5d=
2/target.mk<br>
deleted file mode 100644<br>
index 63f50aeea1..0000000000<br>
--- a/target/linux/at91/sama5d2/target.mk<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,10 &#43;0,0 @@<br>
-BOARDNAME:=3DSAMA5D2 boards(Cortex-A5)<br>
-CPU_TYPE:=3Dcortex-a5<br>
-CPU_SUBTYPE:=3Dneon-vfpv4<br>
-FEATURES&#43;=3Dfpu<br>
-DEFAULT_PACKAGES &#43;=3D kmod-usb2<br>
-<br>
-define Target/Description<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build generic firmware for Microchip(=
Atmel AT91) SAMA5D2 MPU's<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; using the ARMv7 instruction set.<br>
-endef<br>
diff --git a/target/linux/at91/sama5d3/config-default b/target/linux/at91/s=
ama5d3/config-default<br>
deleted file mode 100644<br>
index eb0ec01cb9..0000000000<br>
--- a/target/linux/at91/sama5d3/config-default<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,2 &#43;0,0 @@<br>
-CONFIG_SOC_SAMA5D3=3Dy<br>
-# CONFIG_SOC_SAMA5D4 is not set<br>
diff --git a/target/linux/at91/sama5d3/target.mk b/target/linux/at91/sama5d=
3/target.mk<br>
deleted file mode 100644<br>
index d30931bfc0..0000000000<br>
--- a/target/linux/at91/sama5d3/target.mk<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,10 &#43;0,0 @@<br>
-BOARDNAME:=3DSAMA5D3 boards(Cortex-A5)<br>
-CPU_TYPE:=3Dcortex-a5<br>
-CPU_SUBTYPE:=3Dvfpv4<br>
-FEATURES&#43;=3Dfpu<br>
-DEFAULT_PACKAGES &#43;=3D kmod-usb2<br>
-<br>
-define Target/Description<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build generic firmware for Microchip(=
Atmel AT91) SAMA5D3 MPU's<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; using the ARMv7 instruction set.<br>
-endef<br>
diff --git a/target/linux/at91/sama5d4/target.mk b/target/linux/at91/sama5d=
4/target.mk<br>
deleted file mode 100644<br>
index 2bbab60d81..0000000000<br>
--- a/target/linux/at91/sama5d4/target.mk<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,10 &#43;0,0 @@<br>
-BOARDNAME:=3DSAMA5D4 boards(Cortex-A5)<br>
-CPU_TYPE:=3Dcortex-a5<br>
-CPU_SUBTYPE:=3Dneon-vfpv4<br>
-FEATURES&#43;=3Dfpu<br>
-DEFAULT_PACKAGES &#43;=3D kmod-usb2<br>
-<br>
-define Target/Description<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build generic firmware for Microchip(=
Atmel AT91) SAMA5D4 MPU's<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; using the ARMv7 instruction set.<br>
-endef<br>
-- <br>
2.20.1<br>
<br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_BYAPR11MB3157455EFFE6402BF4CE6D9A820B0BYAPR11MB3157namp_--


--===============5378874278001054515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5378874278001054515==--

