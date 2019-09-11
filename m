Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EB3B03BB
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 20:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHEYa1nYsjUQ2bx9oVz1pOQI5tp+MGJTZ4iyeqmzjTc=; b=b6c16ubEJL2uCP
	6NvQn0TXNiJgNZLh21KGfpv2UmQD3VcproTp+vJpc4efbAEPKdsSSr0suR+t42jq27ooIDm+2LH6J
	GSW9ecnc/BesUp97OaYYJfphECTmCrCuOu9pDaQ5f9hvnCO5mK4qTnrbs7KbMn5THbjskkTlZ68JN
	aw1drArsXOFRFdI+pXEUWvHJEIMD5mkTSemH5f3PDA5+ih0ub7RRqNvwgG8LTu6O7Nh73l+70I7De
	p89eU5CzpRNJV43mE0l2VTGHOUBp6UjQr7E/fbhMNd0/pJcliM5yUKXRxQBiuzEHz4I+MOr9nXS0q
	GvDnWTNm7mjLwqy+w4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87Tx-00018t-Kr; Wed, 11 Sep 2019 18:36:45 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87TF-0000rB-DB
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 18:36:04 +0000
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
IronPort-SDR: /FvxQ64XdJE9u8832jA/chaDjTFyCen4A7qKz4O/dC56QIPQvtwUYynY+BOoMnhatbInBC/Exb
 HNZ2KrXsPhqaGgVWh+iK70G/FdEfuFOafLjjdTWXyH02A33XwcKy15zim9mULYeuDhMvdmphAI
 WAL6oDAa+wXpxEMRWiWF//JrBMVJ1xFwy/zJslQ/X/7gN4w/sZXTiRUmtqEHPNFUPvK0z+0ZpW
 ikMszZIhjjAn6utVIefa/H+YYWp/4uAL6VsHZOIF1T2aHAGCCXDii3qtZdBGPkAO1j+OR9phcC
 70U=
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="48579153"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 11:36:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 11:35:58 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 11:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ey9K7UBG8wI9voXlAuqEbW0brNi68zJ7RYmqYOV2vDHzckwxTBsBa25ai4fRNifv7lSPeOfWsELZYLuBtKzvND2PP+05tdNmY/S6Br7mVxdPWV/hgtZTMnBrkcpMpw/uCTilRSQLbfJ04AmXFeD3lknGN3+6xUji3IXN3k83wgG7I5iqZo+8JS0rfl/GmgPbBRTkBSxkRxXlnweoWmAAI4ONoHHYHCEEqVNTm0Oit+CCRJl/p4ycOPhzxLM2eFfWmrP7xq6Hzr1nXB3jsYp0XPLBWTeFvLo1G9UaquySPnAhBfYxMA1J5Fjxfnvg4qY9xHmWeHq5wz3Wtc6nJeRq0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjuSMeJ51PjkWunaSsp46DlvT0F5fHe7pTZuBlxaZtE=;
 b=ArZ0O9z6bmfdsHDcyF0lpPd3NlOD4AwRmBI1X1dw96vF9O9nUES6WkCnifY+C4x0wEuaA+kJtoCvqA8W4YzGC18w4xCBs9PcA9llio/rL8az1xrl2ChJHJ26wsVU2jStDFXj0erW4x9Fq6n/TWU9rCFkk00hCvQV4T9KXTwJ7/Z18xMQEJmiO68Lx4cR34YAt+Mlp65IdA8hVrA0zOBhkI+14tx7Ip9oIW0ph9Dukshph2gXpGS2I/qRXIo0D9ndzZSm7Cd98z14AUtfwmj/tC1WdLDWaP4mJ20TaG1e7Pxwd4Kxnh04pKN7bd8nqi2AAkADQaMjov5lGaLCYZOX+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjuSMeJ51PjkWunaSsp46DlvT0F5fHe7pTZuBlxaZtE=;
 b=fLDFPV9wfn1PkKTM+BgFzJiIHZrLLtcFAraAJ+W4Dr+1bTxBnbqqmCT6/JkubZeK+kNivE4cdjcRCPwBa0Mc4AzOZF/JqhlZuqVKUnEuWBRJxsLaNDw9U2JpMrLA8PPhYnxjUhKYN/RGsC6WlnukdxOalqToa+M+3541W/NjTd0=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3749.namprd11.prod.outlook.com (20.178.238.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.17; Wed, 11 Sep 2019 18:35:58 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::56f:70b3:cd63:6b30]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::56f:70b3:cd63:6b30%7]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 18:35:58 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91 patches 1/2] at91:sama5: create fit image
Thread-Index: AQHVaM+/oePfEtZba0KYmEBir8MOhQ==
Date: Wed, 11 Sep 2019 18:35:55 +0000
Message-ID: <1568226855-29385-2-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: f7f422d6-41fb-4f41-5138-08d736e6e1ba
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR11MB3749; 
x-ms-traffictypediagnostic: BYAPR11MB3749:
x-microsoft-antispam-prvs: <BYAPR11MB3749F8AE7C58C7AC9C0415BB82B10@BYAPR11MB3749.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:126;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(396003)(366004)(199004)(189003)(86362001)(6116002)(3846002)(11346002)(6486002)(446003)(6916009)(2501003)(2616005)(476003)(486006)(6512007)(5660300002)(478600001)(50226002)(25786009)(2351001)(316002)(2906002)(66446008)(99286004)(36756003)(52116002)(64756008)(102836004)(6666004)(66476007)(66946007)(66556008)(53936002)(26005)(186003)(14454004)(256004)(71190400001)(7736002)(14444005)(305945005)(81166006)(66066001)(6436002)(76176011)(81156014)(5640700003)(8936002)(71200400001)(6506007)(8676002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3749;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nWQUelfBFvDYe8LyLNkQaj6EGfarx1d50UKFnnc0xAyoh2zr/6iyXCgRU9JLm4V43orhyFMY2xI3Ucew2mNqAUwOCo5TB5aW0QXhWfVddufHGXaod1603p/l++X2Wn1meEHSi6+2sGNNioXmhKHMGlNCZk7mwXp8uh405cOLta5242CsSV0n2xGgNe+2ETet/Obur2dsKhB1bqZQ3MvDx8CzTy6npFredfSUGZdIVBp5gBJkSvskQqqKx6MtXeLVwZY2NrKN1kBgWsIxicbfBPK19d8J8xXgSZxr1xnPXEmuu0INGprqbzcxmAVv4BLZwQjHspKPdwVC8AgHuBoK758pdvK0soiBOLlEL/DEDCvsj+CTugR+nW1lwT5wSbt0jUC7ZXoWZOrK+8T8IAv/L8Lk0gqj2DEYVWVB4kYCH2c=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f7f422d6-41fb-4f41-5138-08d736e6e1ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 18:35:55.9043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QeXznq1iOoFRnTRResRR9eLz0+tY8O3JWgqIFzYMMmfLZ7fqssE0EuQEFtuqCk89BJZZSGfm4SP2L0D//iDVKaHuUy3EghaY0S6I/MdVV7ehElh6CJ4U8oP6IXT0deVRNHQvdEhI0ZP+c3oHUVIzSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_113601_535909_165388E8 
X-CRM114-Status: UNSURE (   6.28  )
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
Subject: [OpenWrt-Devel] [at91 patches 1/2] at91:sama5: create fit image
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

create fit image & add it to sdcard image for sama5 target
device.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile | 2 ++
 target/linux/at91/image/sama5.mk | 4 +++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index 3b01d42..adb7c6d 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -63,6 +63,8 @@ define Device/evaluation-dtb
   $(Device/evaluation-zImage)
   IMAGES += dtb
   IMAGE/dtb := install-dtb
+  KERNEL_SUFFIX := -fit-zImage.itb
+  KERNEL := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
 endef
 
 define Device/evaluation-fit
diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index a737ba5..1e4366c 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -11,7 +11,9 @@ define Build/at91-sdcard
   rm -f $@.boot
   mkfs.fat -C $@.boot $(FAT32_BLOCKS)
 
-  mcopy -i $@.boot $(KDIR)/zImage ::zImage
+  mcopy -i $@.boot \
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb \
+	::$(DEVICE_NAME:at91-%=%)-fit.itb
 
   $(if $(findstring at91-sama5d27_som1_ek,$@), \
       mcopy -i $@.boot \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
