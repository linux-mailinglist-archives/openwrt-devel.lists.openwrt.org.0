Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6872F8C543
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjivpScHP2HRk/N8BtHAKY+X5hwDvstF0Sx9LoHT4X0=; b=U+eQa5ITlbEgUx
	J81CzR1wz9XONnrnkHH2tvLPmZaDm7/jJ4UjkVkJwMbawETodDVGeUtb138ZCjvNfgI84Cakq/QNA
	RnL8lHg+BGOVlqKaK5SHuC8uD8V8UNSVATu2FM7xyIObIw02GoobGP1s6IdvOu1cP97ps0yxghbL5
	bonoMOZe8s53zm987p9iY0TuummgSlPeD23mcnrXmsqMjLTcLt7+Y+Qp1OCgwm2LQujhGn5QiJMsi
	ccD39N3rpjI8jDxXbGKimL/fiUvOz9zwq0mfZxV+h9lLN+gHrm06sxvgxExEht8srbZsTCtRT+1mN
	VBNEK9r+dZ+yP5wUkPZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhPk-0004Sg-CR; Wed, 14 Aug 2019 00:45:20 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMv-0001kn-1m
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
IronPort-SDR: LTB8pexMwpWF21qhn8x0/2S8QFql//HMhhQjBTMHl4hBziwyMbbk8m8O6hVxCR5o4Pb2hwl7Cv
 gyip8YO7f8ARh3yoxcJPPv1xB1WYiyDwz9eh6Bto4KOtmAj1Vq/YeKS5kFCn/Vgh4fCD4yYvPi
 YudC1u3xshY0XzU4iBsIxRCGR+m/9xdAhOBAhElq3YE3iiV1BJBaE5n3HMkxlyv3qYpoprDU6T
 2fzuwaHd/OZSwBRgArsaK+96Rfp1GXWuPt29GUqvHbOBv0yA9QznUlUx4+IKYIlge7xVLJfpUw
 U04=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511750"
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
 via Frontend Transport; Tue, 13 Aug 2019 17:42:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUF/vgKmVMzt1NzBLm6z51vAaT7Urt00XJK2ehPtkctyWj+lNd5B0FjCfwvq+gNgMASDh5qHli3Ghn3h1PriTEn3z5xOW/9APFlX1F9XMr4xyHceT8iOIlb9ZMZiN5LcWt5vD1ixIbiFvD/RdpZmonoVc2Y8GWSMr8Rfq+YfZEn3ip97umJy4Rvp0SLhf6iW+qVKTgediOxHpEKcDC8v+UZOu1tI59RFcKa/uaee6cmN5yv3J/w2o5XkaaKzcgmgxWs41AoBsBeexQjZrhDHeabzshAIUt0CmJkDeadlNg+WLEK3wgioc5Geg2+yTN+T7b5d/ND48csgDvKlxbx2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSUxHGqcxhWR6L9flFshFXH7Wa+RrX1aU+N94ot7M5I=;
 b=YmdMD6o9rfeguvSaq4EV9P7Em1cCtfX0HKsS9k+6QX/k3V/lr+o2XXEGD7EQdMCYAWxg+hlZlLAgz3mKYud+ODUzoKd7xk0w9TWIdHqHagLJM5pn2k18TSS8RuVLTsCoQcBf3+u0cy/a7RUN48hUyiJw530fRSIXGFcYmOZ/NNrPOxHJ2SLCzz8fLy+ppDBSf9nKD8S1CUuMe+V/CeyLaa1gS8A5WABb3zJS1oj0JPWip9mtHC1sXD6PXVpLVC4j0CogeTyN26AxrVAWhvTPGeR81G/IJ5lFmtVnIp3XrbFCVxxcCtSr4XAcvDamZ7zsTtFK9ZmgHaL5Ysz4z6x1Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YSUxHGqcxhWR6L9flFshFXH7Wa+RrX1aU+N94ot7M5I=;
 b=rxBNVZIi9Kp2m6n6QFsxe2mfrOVRplwaIWV+MM/hV2Dj5+gpOPxCXfZb2YyUvncyzqLi+cYHmgUvwO0+xjabshzzingDY4u68ecT98E3dWIa8eDy0a8d6LoT46HvXQ3zTt/v+4LecSoYFUdzQlWhsZbVAPuYKRnLcp4AyQtiaMk=
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
Thread-Topic: [at91][patch v3 05/11] at91bootstrap: bump v3.8.10 to v3.8.12
Thread-Index: AQHVUjkd5u1PEiz/Lk6aQuzft72a+A==
Date: Wed, 14 Aug 2019 00:42:14 +0000
Message-ID: <1565743239-8712-6-git-send-email-sandeep.sheriker@microchip.com>
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
x-ms-office365-filtering-correlation-id: db3e32c7-a7d9-4353-71ba-08d720504040
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2742; 
x-ms-traffictypediagnostic: BYAPR11MB2742:
x-microsoft-antispam-prvs: <BYAPR11MB27428A147EA7C960F35A7CA982AD0@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(5640700003)(8936002)(316002)(76176011)(2351001)(4744005)(81166006)(52116002)(81156014)(5660300002)(36756003)(26005)(186003)(14454004)(6506007)(102836004)(386003)(6512007)(86362001)(53936002)(6306002)(6916009)(7736002)(8676002)(2906002)(50226002)(3846002)(478600001)(6436002)(305945005)(6486002)(66066001)(25786009)(99286004)(476003)(71200400001)(71190400001)(6116002)(6666004)(256004)(66476007)(66556008)(64756008)(66446008)(66946007)(486006)(11346002)(2501003)(2616005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2742;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BWVGRtXdwTGM0MYQXWH7o2qZXKVFrcNCzb0anOX5TC+U2jaCTypabT9lR3L4LUmyBdxZzfVUBBs9cq56B9LGZOXlRG7fj9VSc1lHrK7AhA8SdNl3oRDRs9E+uTXTJkGJINjIlM8+HBEuj4QbzmLmNVGmjMlkLiyS6XdU1S4ar2EKqh5EiWvBUQCxWQ3bxhKMojEBWiXSwBW6bvI8Rd0dj5U8V/AtUsTkpCihf1FWeSCxOH5+qeiSEG85hqiNAvGCQgV0M0A/7wk/QnRDh7ScwBYMg4ydMoCLZA5W8wgP2yf9cxRtU5VfQ86M8nL+vNOlL+5he3whPkisP4/oPE2jrhWEu4m97fIcZ9fumhh0Uwg8k+56sFyVDEvAbltPKCgWVVVL+VFFwmkux6tlcWkTBXxpO0gqaN9HZWLZCVJKTWw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db3e32c7-a7d9-4353-71ba-08d720504040
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:14.5091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rXFyVe3YMuofoOk0GT+233ZWw4/mGYtpzNLI2bSYyfZuTET6mZ7Kn0hRePsw0mbMR1+i8lTMOD+yRWPHTB+0d9MT1yf6cZUhUQEpfbu2PvIf+8KXfXY1jXn3ajswYCn7wxNE6hzNEWa15f2kEuMY3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174225_339338_1B161550 
X-CRM114-Status: UNSURE (   5.93  )
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
Subject: [OpenWrt-Devel] [at91][patch v3 05/11] at91bootstrap: bump v3.8.10
 to v3.8.12
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
 package/boot/at91bootstrap/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstrap/Makefile
index 8a08a7a..642d094 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -9,13 +9,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=at91bootstrap
-PKG_VERSION:=v3.8.10
+PKG_VERSION:=v3.8.12
 PKG_RELEASE:=
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/linux4sam/at91bootstrap.git
-PKG_SOURCE_VERSION:=04efa5500d60a0211d14b6ee60df7ce0a828704d
-
+PKG_SOURCE_VERSION:= 28e15d07e9f24efb04b87bb0baa211a0c5640ef1
 PKG_BUILD_DIR = \
     $(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
