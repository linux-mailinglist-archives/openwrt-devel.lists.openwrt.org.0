Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0F68C542
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jL1r0W7Y6MFLldYg5XdK4audUGYYxX65yZHoKCH6r0w=; b=W+ZvfnGovolPrm
	IAcZggR3Pyt0iZnSI5/hTDava1eSoPUzCvZPIreF8+lTkqDdpuqb9HC1rK1fcW37WTUxgS+B/1R6a
	9niohto8JPJ9F9DOOtj77sedoeXKgorrAi6AeSwejWXE1/ll7tHxF2ri6nJ3CqzBpDZJfQEisbxqK
	tz9n5N6oEeKs66i3hGgxBfE3+rcDzYYBiwZygE+t/PYvw79pZFC2D2mmU1rqs1SFgt+P/XuYlwa7p
	54vVud3NQHu1TkuDZf2ZSueanwS0kfLfasowQG+flJNT8NTbJ/cxoaDt9KpsSTPNmc3gAslXI3+4w
	Cw6JXTIJPy6T9Rwc58JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhPS-0003bk-Q0; Wed, 14 Aug 2019 00:45:03 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMv-0001mF-1o
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:26 +0000
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
IronPort-SDR: akMCPP49xznHhynW/GHnyB/cMBWHJgRMMgU1WsgtgfqdrRxMB1IgG/09pZJLk4oJCrNX4DGWbl
 hnYfvZQogk9yGOi84boLe7LQ3hlPUm6WfdvPCe8iNa1dZjAz77iVl7fBlAWf8ZBroTssyNkHBv
 MnKfKvY0Cn8agDbXUyiTmdP5sVT9GqZEJHT6ZQ9sInZJcQCU9P0ng9Ic2xoCxffEW7n94SJhy9
 coLg8IozrBa4+/gW/1fTeJj16OHMz2jbOgv5U2btsYD8VLWR2sW0l5AcTvBIC/wh9bzKc2d9rM
 5ic=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511753"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HQ5UgHmxlWvsCA4os0EsNyvCr2biYPbv1RxX1meCEwWevPl5CMEYgKz70mroqe46aqGoYCjWpaEj7ZNmXhpLs9Nsn1q+RosA6U5AKX02e6pCpU8cBCyWljTu8wiAoH3IHQNHgI/IMYfHIk2+9FYbm8L6nLEsmYorBqTFSmZ2CG4mJYBqOvEr3D3myaI6hlFb3wrHSshNuqKW0T4yUNs7/bEjpKFQFWr6F+k5SpXm2pYfMAyaU+dYQsPegAALnlHxygZV2QJbA+iXdpKP4m6Vi91LdxAy0lUJ/xSwMeyciruBCDIG8m4vjwaQiSL/yiBYCiplm6MKo/XPiP6pVqBhTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4o7F5dgowM8r9ET8KNxmVoGnqKNhEAQrZfMP/tIKDTg=;
 b=IRyY6E8/jx9ezMZNtPChMSPlldWxW639YGlfR6kAxO1qZE1D/s/BdTONowth7obmSJzsQXVPSSNPQcf0hra+6nqzcNBzinXgLbRo5xzP8e7xiyC5oVVRaWkZMpKE+sYgcIiqza5lNoGTVkdxSfAeFfophqsuqMB9PAEvJdXJ23irNL4pL9MiWxga5Tf+sFhp+AdxWqrA3ajJrsG8k8YLT4GbQkDCWeSSOZLdXDP6+QuZ+w7JwNPYnj47e03CHxaruWZy7+PkCBV9fWu7fPWnmdQIcpD+6TJjonf5xBtGf1u8RJUkWIuEyqOCOZds8egp+6hNMX5FePEw3ckzeFx2Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4o7F5dgowM8r9ET8KNxmVoGnqKNhEAQrZfMP/tIKDTg=;
 b=EvJy0mjwgfOuplRwEJ+9rfckY1IzVQA7c4/fuWtbQeDefJWatzDBQtfjzAJivYiRRHf5e9AquzbGOWa5qvuIvJ7EgUp0Cd/SQMu+rR7LRgTZe1snUo9cU+y0IawzL5Y2AXmMgEPK+5U/VuxhYt5F4jH9BU+QE9n9uIshSg/HvAE=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2742.namprd11.prod.outlook.com (52.135.227.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Wed, 14 Aug 2019 00:42:19 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 00:42:19 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 09/11] at91: add uboot environments
Thread-Index: AQHVUjkeFoGFg2jP7UqFwCEcN3j5wg==
Date: Wed, 14 Aug 2019 00:42:15 +0000
Message-ID: <1565743239-8712-10-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: 4271c90c-bb1e-40c7-6ecd-08d720504124
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2742; 
x-ms-traffictypediagnostic: BYAPR11MB2742:
x-microsoft-antispam-prvs: <BYAPR11MB27427B0DEDF151FF06C9D01E82AD0@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:311;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(5640700003)(8936002)(316002)(76176011)(2351001)(81166006)(52116002)(81156014)(5660300002)(36756003)(26005)(186003)(14454004)(6506007)(102836004)(386003)(6512007)(86362001)(53936002)(6916009)(7736002)(8676002)(2906002)(50226002)(3846002)(478600001)(6436002)(305945005)(6486002)(66066001)(25786009)(99286004)(476003)(71200400001)(71190400001)(6116002)(6666004)(256004)(66476007)(66556008)(64756008)(66446008)(66946007)(486006)(14444005)(11346002)(2501003)(2616005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2742;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2YGBdnVB5oICWmocGmhTL75TY33xV6xE0ADylwoNTnBS4uJtV2+EORnyU1LEPVy3HuMPts6rAklqoHJD0x5dxuOMNki2mu0evrltg7uolo4ZrkXhDk60AZtysmVq7Mnhicax2v514lP9DD+8J6Qnvk0innn7PiqGWfdiuseTGOi+EfEOPShJyqoK14ZNa5wfShWccbH82JrqKuDCnB3I11swqgb1HToDRd+wydfYqGfqqoBvIpVkw1tzPWhkHv45iIJATUAjqyZEjAbUQ7USOz1RAR8ffasnODUInzTOox/ZZ3XTRer7pM+NKR+eV9+cYYkPcAl8GpwW0NpMHa6u0lnvo62tgsjy1PZR++EGTn1hB8MKIYA39xdHL/djyc75/u0iLitDyTNmlBOJN+le0TzPm27KATHoyYH605HBvHQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4271c90c-bb1e-40c7-6ecd-08d720504124
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:16.0182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ETSu7NykBcO0+NJKFvarlR34n9gkLcq107vd6gvh7Zu8JCitL6F2QJXp0bljscxgkmvWjiq4U3jViRqWR7qaVODoWzLdavL+h5ecN5pHsG1UCejfuZQzqdi67CSL0CLrC1VYpXKWyP9ln7Y25mZbIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174225_332661_9679FF3D 
X-CRM114-Status: UNSURE (   6.99  )
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
Subject: [OpenWrt-Devel] [at91][patch v3 09/11] at91: add uboot environments
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

add uboot environments to sdcard image

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/sama5.mk      | 11 ++++++++++-
 target/linux/at91/image/uboot-env.txt | 14 ++++++++++++++
 2 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/at91/image/uboot-env.txt

diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index d02f51a..4fee464 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -27,6 +27,15 @@ define Build/at91-sdcard
           $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot/at91bootstrap.bin \
           ::BOOT.bin)
 
+  $(CP) uboot-env.txt $@-uboot-env.txt
+  sed -i '2d;3d' $@-uboot-env.txt
+  sed -i '2i board='"$(DEVICE_NAME:at91-%=%)"'' $@-uboot-env.txt
+  sed -i '3i board_name='"$(DEVICE_NAME:at91-%=%)"'' $@-uboot-env.txt
+
+  mkenvimage -s 0x4000 -o $@-uboot.env $@-uboot-env.txt
+
+  mcopy -i $@.boot $@-uboot.env ::uboot.env
+
   ./gen_at91_sdcard_img.sh \
       $@.img \
       $@.boot \
@@ -36,7 +45,7 @@ define Build/at91-sdcard
 
   gzip -nc9 $@.img > $@
 
-  rm -f $@.img $@.boot )
+  rm -f $@.img $@.boot $@-uboot.env $@-uboot-env.txt)
 endef
 
 define Device/at91-sama5d2_xplained
diff --git a/target/linux/at91/image/uboot-env.txt b/target/linux/at91/image/uboot-env.txt
new file mode 100644
index 0000000..80d051b
--- /dev/null
+++ b/target/linux/at91/image/uboot-env.txt
@@ -0,0 +1,14 @@
+/* Do Not remove First 2 lines, Makefile will modify these lines with proper board names */
+board=at91sam9x25ek
+board_name=at91sam9x25ek
+bootargs=console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4
+bootargsd2=console=ttyS0,115200 earlyprintk root=/dev/mmcblk1p2 rw rootwait rootfstype=ext4
+bootargsxx=console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4
+bootcmd=run setbootargs; run fatload_mmc; bootm 0x21000000
+bootdelay=1
+fatload_mmc=if test ${board_name} = sama5d2_xplained || test ${board_name} = sama5d27_som1_ek; then fatload mmc 1:1 0x21000000 ${board_name}-fit.itb; else fatload mmc 0:1 0x21000000 ${board_name}-fit.itb; fi
+setbootargs=if test ${board_name} = sama5d2_xplained || test ${board_name} = sama5d27_som1_ek; then setenv bootargs ${bootargsd2}; else setenv bootargs ${bootargsxx}; fi
+ethact=gmac0
+stderr=serial
+stdin=serial
+stdout=serial
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
