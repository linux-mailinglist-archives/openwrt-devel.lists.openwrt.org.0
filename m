Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9BE8C536
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmgpaM6qlH8Q/a+eStO5PI/T4k3ZkAYtZX1yBz75FBM=; b=CgXs+WJpsWGh+W
	VQWKtOAxIKy0MzgoH6dbzL1/wrCUuHRTBwawW492WCCbPED+Wn5CntMPiATGB+VwMhGNmIwaxfhZN
	kjHR2BlAHOaynHHBxyXM00GjaOY2od3dE6vwvVkvmngWsgL1O52v8t1PFwF/gRq0nniKP/1+sf5ot
	+RWtEH9P+S1IkNb7dZLsgdaEKJpHtaMxYbuw80ENdi3GCBf10wAc83vXbTpPiHznP/2gPSZAWqQgi
	FlPpS2U1ZIzgtRtJckbnoAxTh+cIg83/6GeNZ2Q1h6zXCcKNEEYvpKqvf63NtIT0cyPcU5ybzPVXu
	c3j0IBuDVOoSli/IKh/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhNc-0001r0-Ew; Wed, 14 Aug 2019 00:43:09 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMo-0001ig-J3
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:21 +0000
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
IronPort-SDR: 6nClEGWwf3irKETiFvF3L4SYttiEEommfFYNcaSjFmxmYHXcKD6FGEzPPUSWNsN2PYKYmEQmE4
 H1V+FegqUwqb+5jn/ZbWmVQD4TN577GrOyAjcrh0aT+Mefv3sIqK3LUd2BHDbgfvHwYl4ARAyo
 tyQWH3irD26ZWkw6sDAxCLuETi0Bo7UU679+LFyNVKZaxm9q++THYj3JrHnTjflMtOcU4bMhm7
 670R6s27SPxIBsEXoIH/YJwpgHSlsSe5Bi+Zjup1ofMOYl3i8zAQATUHDsleQSti4OZpfkipaa
 12o=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="45039149"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:14 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PTKEQ9jTevmQpvoohuJt5ZAqsmsRbd1jiSp2wpsq+Fh/uhnNdygMKpx8LQtHb7zmjgQV/9MZUE09icc/0OsERtKgZkHgrgBsnbTuOAdm3PtEZ7mJuSYuqT9ZlzJ1jMRJDgJIhp7Kg/6ZioMW3TKFgLK169jU7Q1CDsaWjXB/mHCW4OptnVnKoRNbKeQj8IFdlhWZ8wP+KSYvCTy7rhjYT9qsjaiuVv1HrO9T4Gq5eYvy00Zdu9LP1dzIk5lTxNfgTaycQcyPvXZokldkmbMjod5bracJlrIV+IyAOQ1FanMGDoELJPM1HHhSKHB+iExUsGaS/YSpJKTXvyViPjzTVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6Czb6w676phgga1YpWxtTv0nnFTQVCQAgqzs8aFDFs=;
 b=ISy6HA4U56E2N8M/qhq1J2oNzPkNV098fgRQVu05Kql8RsFtgyBOA1i4HYCqL5vlRRzQrGBI7Mh0zEdYLXTy/qvVwm42WVnqldWv6p6gcnav87BuhDmr/qCFX3ka82Pv9Yltl8X3VivQvL0eG54LySLTrq0SWMwdojLTfrYxUjr3lpwg570M4pXQLB9+9Bw6fwOJ9VzhZ/FjPwl0VpGAg8IRVZ76EIrhvyUqanrsvr4kKzoLMvsVmNvjZ12G6VPF9eSZLfaJsCd0VErMYO1hnJG9q0uZdm9NUFI5wECDkp+aB5y27yReKgi/SZZtPjujTR1N4mXGP+RamSvkoc6EpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6Czb6w676phgga1YpWxtTv0nnFTQVCQAgqzs8aFDFs=;
 b=o20C0CQy3qvFItEDIXKAYKEXNjaemLfV5HGYqe48v+Gf4ZsAojeJwKPWb3xRhtIEXH8BhS2KVFIyDh6+i3s8FRxCsn32KYm7nXpLKWBHDAjWQKJ0xhguWPGXQLhDwkcLSxMj60na9YGhzYjJw7trc4FpmDHGfDfQN8WJOSWpY4Y=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3367.namprd11.prod.outlook.com (20.177.186.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Wed, 14 Aug 2019 00:42:12 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 00:42:12 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 01/11] uboot-at91: bump linux4sam_5.8 to
 linux4sam_6.0
Thread-Index: AQHVUjkcfeGZmNgPk026qcsYU5niiw==
Date: Wed, 14 Aug 2019 00:42:12 +0000
Message-ID: <1565743239-8712-2-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: d0f6c300-6101-4884-d0b4-08d720503f10
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB3367; 
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB336725B2715B9F7E8CAEFD6582AD0@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:102;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(5640700003)(6916009)(2501003)(7736002)(52116002)(305945005)(6436002)(5660300002)(53936002)(81156014)(8676002)(6486002)(76176011)(81166006)(66066001)(86362001)(2351001)(36756003)(8936002)(3846002)(66476007)(66556008)(478600001)(66446008)(64756008)(66946007)(256004)(11346002)(50226002)(186003)(6116002)(446003)(25786009)(6506007)(386003)(4744005)(71190400001)(71200400001)(2616005)(102836004)(6512007)(476003)(6306002)(26005)(99286004)(14454004)(2906002)(486006)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3367;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GlKPZXdR//3XkMlnt+Z+tC4pc9gx4O+Dl0PBCdaVBtk+VDIMQ9NFTdaAJPP4BvSJZlK+r71k7zqm267nUfZK0GfZLtsQLOsL1Ids7ezPVr6x15RR5R39c7CPmfcrBqNVF0gfwkRADdcM2lCNBUy48UmItIZUirjCIGNMxMXhJ6/0TDRVKuO1SkzpDmK8Y1Qf39Taqe519d1/k9aXErRD1MUhB/1+dyRygqQZ9bksLjzD36MwovYqUZ0hNWzxSGzirCMhzxiqZUUwXVH36Jz5hQWw1C6G60dnOZT4mQR4OeaX27eERvrdR5XZckiucfgN5pdOndyhwlh3jyag7T7mQtc0haKinFO6g+6dO4XqNtxLcz4hFgVTKORTTEiSeX2vaTDAPXPWKynJtpVqUM/UkOetVj81BxgHWQnqwieXe+k=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0f6c300-6101-4884-d0b4-08d720503f10
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:12.5932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /6E4td/1hjN1X2slAFf0NeGvysNDlW/84mprn5orTpuW8AecscJ8K3nCOKtXmpTM3wUetgw/seVen31rnCW8UlBymjTsuIgjyr8Xx8GMxHdHSnIN7yCL9GsoIhZ04VuGnU8l6C5w0YZ7//b29v/i2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174218_777005_823D9D07 
X-CRM114-Status: UNSURE (   6.26  )
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
Subject: [OpenWrt-Devel] [at91][patch v3 01/11] uboot-at91: bump
 linux4sam_5.8 to linux4sam_6.0
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
 package/boot/uboot-at91/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index a3262b5..15a26be 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -7,12 +7,12 @@
 
 include $(TOPDIR)/rules.mk
 
-PKG_VERSION:=linux4sam_5.8
+PKG_VERSION:=linux4sam_6.0
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/linux4sam/u-boot-at91.git
-PKG_SOURCE_VERSION:=59f202622154f82e708a6ca2bf86350a5c1b2d33
+PKG_SOURCE_VERSION:=1e7d2e5973c1fb780e55e28a801c6c574158ac14
 
 include $(INCLUDE_DIR)/u-boot.mk
 include $(INCLUDE_DIR)/package.mk
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
