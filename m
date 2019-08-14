Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9A28C537
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HVanaXRLv7jyfS41H/yXLRQvjcOzhse3svx3pb0J7UU=; b=ER3QGNVaevYDzY
	dBGdmXDnYzgVbHND8XWXlaw6xA2o1EYyGtOaaGcBd63AacB2i1xWK3iswvC4dv6+NrD4R/NYB+7eb
	/6kG6M7GR5/+wJiqkGMYJXdvvoIE5Fww7oWmHmzBZguzpsiEeGEGjt0lBosH2a5VjziqpKaQuFnpI
	9LCMLFIM0aSM3B0mhO/yK/qqKJgfB0kR6il2zZ7Hu0JVF3+tjX9YjHcVJjIKYUkoDPQVH561tbgG3
	EVSXZEYJLeRKEC8vaBcLcaJCuUpuRElZQRAqgM3c1L8NX5ieeF/hlKaRrmE998iKAz99LKHnoOEP+
	aqJjYGt1+Zm8qrxkWgNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhO2-00026a-6P; Wed, 14 Aug 2019 00:43:34 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMp-0001it-EP
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:21 +0000
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
IronPort-SDR: Ac/dkqYRVJBEvgmRDHeEaK5unGcrJISvKRPVoHT4y1fGy5mjt10QEe0M2uXSSSnuJewa896vya
 UrA7gXeacSYrI6rsrA7bLRNa38gUtBN55PQdZma0TBpCjxjtoHy6yvlfTnYGQSB2bUd6vRump4
 upv9nniQUHeNI3c0pFD5MAMESygv3lG4MJYBnhptGsJddL2Gn12lBsPT79OZDjnaQZwHBQldGx
 FSbYqWuBCkjItXo4q/W0qbbo1Ka/LsyD14Jox8deZ9dAcGfITo+GaGaFBwj6kMnGQLga/YMI4w
 Yaw=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511731"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:15 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:13 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HvnIRn8Ow+T8k5pOiLn5Vmc1pVPt+EF9/rjd70J2O7nU95zXjMuYdT3M/ntJvqQAH++CqJWJd3OFsI1IZRY1a0b/3nKy/B0pC4VZp6bWQFAt15iapD4Kic3KQsmprOHTH3o0WBck3N+HwMNf7ONNbrxy7WeXhU/nf7aSPqlYd7JGt/Mon4Vqm+c3U860Vcfd1BY+C576VtSntqLNThqNf3bu4jKBytxkInNGY/uhaWn3LI1+YspuHetWpVHCCN8S6kqV2wyD0S2evI+4D3txx6g8yy23c7JawxKUbvx72EaaSkdpl9Gq7BVlWlEY6Koy7443V43Hs6SvktBIb1sOGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fKdb3WhAfkthEq/e1ixeghCFdNCPDXWUKWwXVLJO8W0=;
 b=nULE/I8rHBniYfijA2+L9Uj7/IdOdLePS/YQ2bwDQwwRZeAgEoD288PwpR/dwl1EIvSxRIYf9HXColWcnmSuOth2pWWO1bJFgOjkmZA7CfUB97nbNWvi5J54MHIyo86R1B55UnQl4g/OIPXYYUlUu+95kZ98swxuNNWnDoBl3DViVJMBulAuYWdoKw7fEOg4umt04c6hMiTpZE3dqRX3HyY4JjjgJ7kiefQ+tyUImvUEIAhClQejCJ4X2LKYVO2N9SdzQgCMOae+CA5IyONHOgQw2zew/iDZsCF832xMQqKLVBZdUtZElFZKCi3pqenjtJUbFEp5uyiIyFRjM6cevA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fKdb3WhAfkthEq/e1ixeghCFdNCPDXWUKWwXVLJO8W0=;
 b=rh8xObPrwyHezpwHwSJErXSPTW38APNkM110SOnZax23FundBxS/eyNXFL25aHksbKwrTdLiqHxJQSjogb5VW+bNFAa9NZmF3C7jEH2hRaoGllNtBpE3NhSkTBAUGz3VBDVJz8AmO+WMOexp4QNsbMWn4yYOS1o695Paaq6BsKE=
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
Thread-Topic: [at91][patch v3 00/11] at91 patch series
Thread-Index: AQHVUjkcliJkNbyMLk6IqCcJV7TnAQ==
Date: Wed, 14 Aug 2019 00:42:12 +0000
Message-ID: <1565743239-8712-1-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: b27fd56e-6427-4d57-6518-08d720503ec6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB3367; 
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB3367797112B7D6F1CEB9147782AD0@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(5640700003)(6916009)(2501003)(7736002)(52116002)(305945005)(6436002)(5660300002)(53936002)(81156014)(8676002)(6486002)(81166006)(66066001)(86362001)(2351001)(36756003)(8936002)(3846002)(66476007)(66556008)(478600001)(66446008)(64756008)(66946007)(256004)(14444005)(50226002)(186003)(6116002)(25786009)(6506007)(386003)(71190400001)(71200400001)(2616005)(102836004)(6512007)(476003)(26005)(99286004)(14454004)(2906002)(486006)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3367;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i7OcOqDNSoZN/MhbKoD9t/2HoyJPpQRmrVrSZX0npHan2fcivY/9N9dhsIvjpjDEjw++civYbNxfRs505VA6dHgq4HqiE1sal4JxXydZF7PNj7XcTv47w5Ejd+23GIX5aRCj9Jzhm/r5Cd0jAE0MOgbeEgw7HYHnU8NVRpq2krc6gSnA+CGiY6Ax6A5jIYavWmoQaCeH7qnL3354ZKqsEOYPF+YR7i3k+XDolag9f8Yb6sAxuHZJDDuZUdLSsMCfX3I5CcLoAhWcYGzl/kUFI8GTCtNIpt+vtxDfFDxLqPyfKFvYLr+bXD6MvoM6zqBZFZwK4UCDJwn7a6HOxsuCa5jLet/1O0M0uEXoLhhkP04i/Dz62qi5xd0Z5DtkGQKf/ChXwThq+X+QHXqeOg93uWoFfQj2f0Xq34Sc+J6D9pA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b27fd56e-6427-4d57-6518-08d720503ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:12.1524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CCXvpEAu7oznrkIRUFxtJ+CJADikXqB4XmLcLFWiRoHYtmOno90LpO+f9YOdHIVjvhAkw+QkcX+ytz5PH+o3EahYBB27XxOMiumxMoocUfY2Vsbv1xXexTeZbNyc6T3JpEB67Ras9V+rS+hfhOsI1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174219_722076_CD96EADA 
X-CRM114-Status: UNSURE (   6.32  )
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
Subject: [OpenWrt-Devel] [at91][patch v3 00/11] at91 patch series
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


Hi,
 This patch series contains

1. rework in creating sdcard images for different subtarget.
2. creating a fit images.
3. add support for sam9x5ek soc 
4. add uboot env file.
5. bump uboot & at91bootstrap to latest versions

---
v2 -> v3
 fixed errors while creating sdcard images for multiple targets.

Sandeep Sheriker M (11):
  uboot-at91: bump linux4sam_5.8 to linux4sam_6.0
  uboot-at91:add at91sam9x5ek soc
  uboot-at91: changed som1 ek default defconfigs
  uboot-at91: fix -Wformat-security
  at91bootstrap: bump v3.8.10 to v3.8.12
  at91bootstrap: add support for at91sam9x5ek
  at91bootstrap: add sama5d27_som1_eksd1_uboot as default defconfig
  at91: move at91-sdcard command to sama5.mk
  at91: add uboot environments
  at91:sama5: create fit image
  at91:sam9x: create sdcard images

 package/boot/at91bootstrap/Makefile                | 25 +++++++++---
 package/boot/uboot-at91/Makefile                   | 25 ++++++++----
 .../patches/001-fix-Wformat-security.patch         | 13 +++++++
 target/linux/at91/image/Makefile                   | 12 ++++--
 target/linux/at91/image/sam9x.mk                   | 44 +++++++++++++++++++++-
 target/linux/at91/image/sama5.mk                   | 44 ++++++++++++++++++++++
 target/linux/at91/image/uboot-env.txt              | 14 +++++++
 7 files changed, 158 insertions(+), 19 deletions(-)
 create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
 create mode 100644 target/linux/at91/image/uboot-env.txt

-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
