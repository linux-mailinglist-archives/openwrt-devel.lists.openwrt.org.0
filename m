Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7308C545
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVGtRkSEh9Cc0rNbU5oWLGj48z9lbSWPkTRDyntNOgk=; b=QxxSCD3oMp2YRY
	1XNLoK+g6eSQ7HM+8ImZkNjm11aQt7DQykqs6BPFreZ0s8thmlDnal0YquuPJqbqnWrw9qhF/Y1bD
	zF7oDSHjp3VwyyCKTzSA9OdYU/QOpnqbu2j9fFAEvVkOsoqUNKciS3EsTyb8tZhMIeFVywwm8SbLP
	3AqqgdZZcbNjogge/p8qLx95nb/Nj5u/oG+wBTMCcaI2crijfcU8n6QKq2ArpDGoDEPTqMGCG0Eox
	cB2FCIG9OFS7+XDKj4EHjNX8cGD09QgXVwZC4aBoj/dWc2uUzA317nz0xuuHmlTxPx0yz+D/+FHLD
	XZW1fzb+/AOcJXF0FYlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhQE-0005Xi-Np; Wed, 14 Aug 2019 00:45:50 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMv-0001it-EM
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:28 +0000
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
IronPort-SDR: eUX/hDrD87yeD9IpiSaNpsHdtDqQmC2OOf1Cbo2B0AYs+JNktE4jyNI2+b8zmdPjzHdDVCK5Ac
 ZJ5OZ3iwmZp7goF5pS0trNBm+xWcL2eEM5v9iaCDP8AcFXAhx2YeesSLDyKBQQjR6OUECzsrbb
 mmUd2YqUPhgFzfYT9pAs87xb1Pwigv8jDMeSYgLKiUJ0uMqkwbKUhfQ+e3w+3RPl3GAolKHtc+
 M1T3gItZsLOaQGQTsPGIejFilvY7KmWDNq2UAjFikodDQTl6wNcWqZTKDgzthrehpR55fcpfYQ
 9b8=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511755"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+fu4XBC0tKYwaIVxZpWDrUoGd5ti8PXV6kPUPtR8j7xsor4dhL4DbxpKGsWNO0e2V/63+eGothbAItGjaUEV9N4yVFzpdSJZGHWU+5xEpL1HALafFUdFVLPLZhAJ4QUlubp+m9//fTl4EGfr3MajeT9lrRvyRX9KSq8itgVX6thgnNK8I8nLh43bZzsa5BNt/k9SbawlLcbOAIPE4wg1CA99cmN87tu6Coiw0U8CUrSF4M2NLeqWCDSz2kDJwYlsr4xeNDCosvQGeY8KENfuqpEzbprubTlZDlTLnYFIqohtjX61MIXupg69rz3WLjNG4f6FmHp6qZfR0VHezFhdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vcFKyjfYaWMxdjiSYSbI/BUDCN374fLyHEheZ+/AN50=;
 b=czrMDF4YdOxzieLk2vtW5ruTEtJsIH90Vc4mxRU06Syj98bwwPrc27wYw5bLjYVWGGCabvQzxGcVBza2FeauwFyIcKq0sarHdIuoM2VvAu+nWbGRLFZkLpJBVhSzD1DdNaXLTPrq6NcGDpodn/e7i0CyTc+QAcWZQ+FHUnIAoVMI7pLw3DgCrrdzFrP8qCdCNK71NkoXFcl5p4Ckm2uX14NB+8w2XCIocEoKp83h7tZi/ShfrmUsowCHeMjzUQgnT3HhQc//sV+wthW2pVTHfv7oB/DmwMhDlB0U3Oc2oXgOp/RNKCJJXx5F9A0xLoLLFZDGB8kzrByuSsadPrjuSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vcFKyjfYaWMxdjiSYSbI/BUDCN374fLyHEheZ+/AN50=;
 b=rBWLdI6a7LIuG0vquJjvnyGfPLnMtOcThgQzko+ckn8maXM8QqpcY3UeYRAbkXCj9IQegBfg+t8k8cBEBP6v63DfM8ej3AxnPifmuJLfMHVPvP96mvyZdVfMGgwYHgO3yZrqcL0pbfUPMSp78rrUjrT9t2rCVlvQrMXxhTQ8s9c=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2742.namprd11.prod.outlook.com (52.135.227.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Wed, 14 Aug 2019 00:42:17 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 00:42:17 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 06/11] at91bootstrap: add support for
 at91sam9x5ek
Thread-Index: AQHVUjkelNzH4mt3MUaOed3m3hY6kg==
Date: Wed, 14 Aug 2019 00:42:14 +0000
Message-ID: <1565743239-8712-7-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: 57296ae2-1309-43a9-ccad-08d720504080
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2742; 
x-ms-traffictypediagnostic: BYAPR11MB2742:
x-microsoft-antispam-prvs: <BYAPR11MB2742D21412859A32936AD3C482AD0@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(5640700003)(8936002)(316002)(76176011)(2351001)(81166006)(52116002)(81156014)(5660300002)(36756003)(26005)(186003)(14454004)(6506007)(102836004)(386003)(6512007)(86362001)(53936002)(6916009)(7736002)(8676002)(2906002)(50226002)(3846002)(478600001)(6436002)(305945005)(6486002)(66066001)(25786009)(99286004)(476003)(71200400001)(71190400001)(6116002)(6666004)(256004)(66476007)(66556008)(64756008)(66446008)(66946007)(486006)(11346002)(2501003)(2616005)(446003)(138113003)(98903001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2742;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j9rokYSmF1lUClhdUvDRbEuK0+UEacUjtI2z97HWdBHoxjtn0lJ0op6/r0yMmZ7+Qdh8ORDmH7RMQ5Ng86/Sfxn8TfBtPhYTR0tws395O39V+PcIwM2QY6QAnTxYcsvETsdq/1usJeB5Qu6Cosyh01Rr6sO3wRwbs+RUk1NLNd49Sqm+Ph3LtYWvx4KZcqH9WOGHO0C2bc3uovRPqrezpIe+XpFvOi32u3r9c6tzeF0lQIzjJK+FWngeogghA6gjk/oUYcHyW0xMWACWWTgsSxTvJWv6o2ElUNbFMuTye8d/vtqhJU7E+M/A0/EYPNjhFmapVlL+9jtamnH8KbVlqboJFY77NLHc19ZgTZOxMUUNBmyIJtC7wj8EOJhRAvPFo91w9mAGsWmhUdfZpvmvFO4CxIexxC6EWzV5dcDvPdI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 57296ae2-1309-43a9-ccad-08d720504080
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:14.9369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: liT7w68+PMUp+YlepT8U6Wl8oxXJ42Q3ni5lg+6gb0CmF7sg2z2vWzA+7xeVfeyqf9YnD3TZOr0Z7COjUlxXan4YOQn88pJTaZLc+3jZrUYXDFgm3cJsdWiKBuObq8o1zQvGdfENEQc7XDDnaBcuLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174225_765875_6D92E5BB 
X-CRM114-Status: UNSURE (   5.64  )
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
Subject: [OpenWrt-Devel] [at91][patch v3 06/11] at91bootstrap: add support
 for at91sam9x5ek
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
 package/boot/at91bootstrap/Makefile | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstrap/Makefile
index 642d094..6496b5a 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -27,6 +27,18 @@ define AT91Bootstrap/Default
   AT91BOOTSTRAP_IMAGE:=at91bootstrap.bin
 endef
 
+define AT91Bootstrap/at91sam9x5eknf_uboot
+  NAME:=AT91Bootstrap for AT91SAM9X5-EK board (NandFlash)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9x25ek at91sam9x35ek
+endef
+
+define AT91Bootstrap/at91sam9x5eksd_uboot
+  NAME:=AT91Bootstrap for AT91SAM9X5-EK board (SDcard)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9x25ek at91sam9x35ek
+endef
+
 define AT91Bootstrap/sama5d2_xplaineddf_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)
   BUILD_SUBTARGET:=sama5
@@ -106,6 +118,8 @@ define AT91Bootstrap/sama5d2_ptc_eksd_uboot
 endef
 
 AT91BOOTSTRAP_TARGETS := \
+    at91sam9x5eknf_uboot \
+    at91sam9x5eksd_uboot \
     sama5d2_xplaineddf_uboot \
     sama5d2_xplaineddf_qspi_uboot \
     sama5d2_xplainedsd_uboot \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
