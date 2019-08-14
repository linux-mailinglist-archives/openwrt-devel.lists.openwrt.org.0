Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533E68C541
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtNA3UcyNpP+DOLZDaOhyM5HdRSKN7Dfl1R2ZtKPrpk=; b=L2Wt6KsGqY7S2x
	vNUJ6g/j1VUKgnbBgCW66fE4GesjwzYqIeIaAJQTVFhbihm+MHpvi4L8NNfA04W50MqNcSP/ph9Vr
	P8GwRjkvkiL4IfEWH6LYkP4ms+d9dZ3mQ9c8xsALGDR5Axyp0dN37X/n59V3Ubhfc3iEVFDja8DQq
	RAIAz02sF/PyRBreY64T/Huk9C4l7F3cFpinsNLkdfPcjMmtNgfl5kY0s5BvTVFnLj0Q+Wui9kuXI
	inC7/rekg0JSDH55Cjax4nsfmuyOo0kMPwnaQIAu8o0KxsRqAmyic4lbXUgergnNtEX7DfWa69EVI
	m0QrimiAUjsVfk/AV48w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhP6-0003HT-H1; Wed, 14 Aug 2019 00:44:40 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMr-0001it-N4
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:25 +0000
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
IronPort-SDR: BE6TqH/luoFXu2gIeqNBVM68Wu2kmIr797FR4RqP9+tzarp7gKyxXER0y4z+j91SjLqvsyFJqK
 mMReJi6c6hggoWtkHmW/Kb3kkOVJT6EAYz1yUMgSz0a4mZtL//pHEgXrXHEB2E1Uy5mzcmD3Ui
 3tRGg4zBeAQ3FQXlobwJlEeB5HO9tUUpXIPeNieSXrs0dWEJBVm3F+h4Cc4HTdCb+S7QOFjqJR
 U7DdzuTVCYz4tGUrPYrCTslbeQbzLKNUHD3IO+CjAS+A9uRAEuOrFedThLXYRvD8IDD2w7QGds
 hwo=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511739"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:17 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+Yl0HwlSfTHugWZzrMEWYZd/8pc7/GmDdwqMf1n4h1C5e5+ZrBgCmvwwmDEsipvks7pgPx9FrTdDQxET74DZd5xMAvX7LxoEf4fdo/EQVoFM27xDxAFn1FXOk5Yc5F1DlBd3iqD6Fp1iiIZm1cgBwpgbBmoVlHXGyjrA/cYfAqQMB7K0sKrwxI7g1quRvWJJgkrINIhYEeroF7iCZVrERro+m418L0N54bCqCAJRTeiuRCFhn0YfU847VgQY+TjE+wlwEdQksUN50s1HavjX5UNdmn97KlLOnecdlk/zCzIkiW5XNGfH98L75sc28Fe0kxvoI19knjwSxlUohmSGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4m9zmEBLraQ7arfPN02W7DpYNofyWjbUCFHUcj8VLUU=;
 b=S54Rrj8M1b9UQsXvnHUHmo50CkS6WeOYitMdW6lZCJJdnqDrfJKJ0Q/fmP1ynWABJUaUIBh5hrTPSUDMT6kBgjS7M6mwdevez8SxhO9UceZ3LULOyp8QF1xW9Of/IC9rlWnv6xDljBmu1lEmTLhym7BplTq5eSCQOii98ylyWfTL59UgeWmk8NWi+XqU8xmZRCtio++XMKPeBqNhrM0Z0n6toXCRHNYM8W2o2/MEScCoRdk+2sDLD5XyigMEpV9RVWXzUJ/Fn9VQWPpXp6bea49XID+cUregI+swjYsexjt7/5tzj3CcBTZ5Qlr8RqLwMeCn3z2c7ey1nqq2S5oNhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4m9zmEBLraQ7arfPN02W7DpYNofyWjbUCFHUcj8VLUU=;
 b=SnimZxzWEuzQmmNJ7csg4/LpKjwJZHAFu0+a91yX50jiwkcMHi0hzVC+U5JTCPSYOJydyD86zrVuuhShLMRcZoR2tA7uJJ8MRT6Q3FLkcAc9mdlP1U64Baj3+chfVeN374ZY4rmZ4LqWp7kqYj8SgFKVsDQo6Vaa3k5YkoiPwtY=
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
Thread-Topic: [at91][patch v3 04/11] uboot-at91: fix -Wformat-security
Thread-Index: AQHVUjkd4ThTcyo7zkyr61DDKcoa3A==
Date: Wed, 14 Aug 2019 00:42:14 +0000
Message-ID: <1565743239-8712-5-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: 391ce20e-8a83-42de-9a95-08d720503fe8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB3367; 
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB33675AEECB99E1BE858B3B8C82AD0@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(5640700003)(6916009)(2501003)(7736002)(52116002)(305945005)(6436002)(5660300002)(53936002)(81156014)(8676002)(6486002)(76176011)(81166006)(66066001)(86362001)(2351001)(36756003)(8936002)(3846002)(66476007)(66556008)(478600001)(66446008)(64756008)(66946007)(256004)(14444005)(11346002)(50226002)(186003)(6116002)(15650500001)(446003)(25786009)(6506007)(386003)(71190400001)(71200400001)(2616005)(102836004)(6512007)(476003)(26005)(99286004)(14454004)(2906002)(486006)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3367;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Pl2lx+V62/7ECHktbnVlSI3eMyfBugolO9uVH97MSpvkJ83JOLxil0gd/KdrcI16gil3A47NxEB7iORpcDdLz24hEa0oDJuCMDqzTG0ps6iWBYWuMhP02rj1Xj+bBuNbLreGpUWS1UZQ7KMLIvfI6Rvkv3S9U6EyjhaHnpFuW4eR4O3CNHAdmGBuw450Bi4N06UH//nnd0xjfYE46SRTepyy4Fcm2wzs5G2a090dZFRah70G6HJhXhV9qBb3B+EK3MvBSC6h4oe+amkRM7QsO3SNByjJTYf10qFd0hxvz0cuqGAancuHO9kNEnFuOiof+LxM14XsiQbXLhJ426pe3X3HlA3EVK/fwEnE30iwrfrfy/sM6aoRUd5CLao9hb4b4biS/EosXlzqciXC0M5cd9XZkJqy+3t8BEK1/ukqj7g=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 391ce20e-8a83-42de-9a95-08d720503fe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:14.0933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ISlhgcOeq69xprV65Y4atemY93Ux6ZsCLb6XZTYM0o5BzKAEO84reU+uTcYi3441ist2K+D/3DLJ1jx4aUV4TcyUyw6fenVc1qetoPrIntItr2C+SKsvhEVYgivkSQWsTdop03u9AkoaVh7QNqtsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174222_040394_32904662 
X-CRM114-Status: UNSURE (   9.09  )
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
Subject: [OpenWrt-Devel] [at91][patch v3 04/11] uboot-at91: fix
 -Wformat-security
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

add patch to fix -Wformat-security warnings.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile                            |  2 +-
 .../boot/uboot-at91/patches/001-fix-Wformat-security.patch  | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-security.patch

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index c17f1e0..547b72f 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -131,7 +131,7 @@ UBOOT_TARGETS := \
 define Build/Compile
   +$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
      CROSS_COMPILE=$(TARGET_CROSS) \
-	 DTC=$(LINUX_DIR)/scripts/dtc/dtc \
+	 DTC=$(PKG_BUILD_DIR)/scripts/dtc/dtc \
      KCFLAGS="$(filter-out -fstack-protector \
       -mfloat-abi=hard, $(TARGET_CFLAGS)) -mfloat-abi=soft"
 endef
diff --git a/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch b/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
new file mode 100644
index 0000000..18f9af7
--- /dev/null
+++ b/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
@@ -0,0 +1,13 @@
+diff --git a/cmd/version.c b/cmd/version.c
+index b2fffe9..bcbbeb1 100644
+--- a/cmd/version.c
++++ b/cmd/version.c
+@@ -18,7 +18,7 @@ static int do_version(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
+ {
+	char buf[DISPLAY_OPTIONS_BANNER_LENGTH];
+
+-	printf(display_options_get_banner(false, buf, sizeof(buf)));
++	printf("%s",display_options_get_banner(false, buf, sizeof(buf)));
+ #ifdef CC_VERSION_STRING
+	puts(CC_VERSION_STRING "\n");
+ #endif
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
