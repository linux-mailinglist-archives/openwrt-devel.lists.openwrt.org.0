Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F398181437
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 10:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xRECVcMkxhir+xbVcfyuTPlGHU7g3Xv29raF6NKGWNU=; b=Agehs/WgiBjuli
	mcdA35k5EScHYhQ1glPu7jWl+Xx9YX1+HGqqUfEBly0mB9VZLBAeFXG6YKnS1VqGhjGLBmOEJ1anj
	Gl7agJFSiV3Ze/PXdlK8NisIvs1opDhZfxRDj6r8yNYDNo/olSFEQYzSNJsi/qs9aK/GAIi6wuWC7
	ihJ+XFHQBov380qTVEZjmQ4h6gi3ARpFulqNB53rdEmLR3i3lTY55QG2koTHk8YLO2lkGFVwJ96Ah
	hKuzxm1yYfJGpmEthD2wghebynw6GeYeN0EA5yCr87NE2XNz8StsEn8+56mkuvwxncghvEyr0esRl
	Zq6yleYCD2PjTc6K2FLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxOR-0008CL-Db; Wed, 11 Mar 2020 09:11:11 +0000
Received: from mail-am6eur05on2082.outbound.protection.outlook.com
 ([40.107.22.82] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxNT-0007E4-Mj
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 09:10:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hcFp26RyRJL0HyZvgZOqOZlQulApk2BwR64qtE54MbWxVVaY0Uo9Uw+jaBcsW3h8quSGJKnDTs/ISTbddZOB25TK0cw+EzpH04gYRpKaxSijDEFLaX6PoN2cDBnCjUxNpbdmYnG1+IBYsoQ+pJOGdQ0sgqMIVcM21KZgXaAifWHKpaHi7C3FYAfkdKvRhu7kwOkhlzBoV1NVLWmHUi+fZwWm5STtNEbGqfqFnBjniMTcjjU9npHdcWFyGeKVOJaeM+OVMneWc9Rpj89MJBAXgYc/rxw3CFRbGkuKTHm1QLVZcGlqWwoxujSX3YaVkCVDUEpEZ4GyGRGI2WN4uyonKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZVU3svOVdbCE5qw3Hli4pxQjCmWUlZMVcei8K1lwJ0I=;
 b=XRWs3Gc5d1Ljr7GfxI9jEu7t8L7aUnYXNiUQL6M1qOy/x6PZEqgy4qvjO2kf3J5hsdbyIKeCozrOzzv28cdDevRowdi2fojJZKcehPbddLI4Wz7zgeXNRbWdhF9NisQF2OVlMQlSePUM3/gWH5D53aJrB3vMnOEjt4mla9Qv8XS299trQs+8/yTjqtM/nCgUcAGjDkpy9ZxbCAconRLJOh5qccX4KkTv7bDWcaYa/TcW7v2A3UicRgWpyoqMxv2ucBIBReHCGhch6QuiYYosXDjGdGArftBRlmld5YUFBVqh9dR83ciNyOIRVg07C5JaRoTNSXh0jdSTn0CTqZKokA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=80211.de; dmarc=pass action=none header.from=80211.de;
 dkim=pass header.d=80211.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=catrinescu.onmicrosoft.com; s=selector2-catrinescu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZVU3svOVdbCE5qw3Hli4pxQjCmWUlZMVcei8K1lwJ0I=;
 b=R3KuWVipKJihYrjBO9tsEbg04m0nq8cjIx2KOcDFZ+DteiaKIl2it7RyNSxxBtYprMzwQe1aU4ds8B4poaapmWoql0QD3J5dDHQhx/Oy4ocHBfIz/Bogcm49Ta5J40SQOpc+P85hPH+k9jojdAw20/+XBhcty1IbHWYiTiPmCKc=
Authentication-Results: spf=none (sender IP is ) smtp.mailfrom=cc@80211.de; 
Received: from VI1PR0302MB3358.eurprd03.prod.outlook.com (52.134.13.25) by
 VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 09:10:07 +0000
Received: from VI1PR0302MB3358.eurprd03.prod.outlook.com
 ([fe80::8d80:bb9d:1f26:5de]) by VI1PR0302MB3358.eurprd03.prod.outlook.com
 ([fe80::8d80:bb9d:1f26:5de%6]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 09:10:07 +0000
From: cc@80211.de
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Mar 2020 10:10:00 +0100
Message-Id: <20200311091000.22103-1-cc@80211.de>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM0P190CA0002.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::12) To VI1PR0302MB3358.eurprd03.prod.outlook.com
 (2603:10a6:803:1a::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (2001:16b8:a4a1:dc00:18c8:4222:8941:d823)
 by AM0P190CA0002.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14 via Frontend
 Transport; Wed, 11 Mar 2020 09:10:06 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [2001:16b8:a4a1:dc00:18c8:4222:8941:d823]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: abd72daa-0e40-4596-a9f2-08d7c59bfdee
X-MS-TrafficTypeDiagnostic: VI1PR0302MB2750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0302MB27507984DE1806497C61AC0CEFFC0@VI1PR0302MB2750.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:155;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(39830400003)(366004)(396003)(376002)(346002)(136003)(199004)(66556008)(186003)(16526019)(6512007)(2906002)(66476007)(9686003)(2616005)(1076003)(5660300002)(966005)(6506007)(52116002)(316002)(508600001)(81166006)(4326008)(6486002)(81156014)(6666004)(66946007)(36756003)(69590400007)(6916009)(8676002)(86362001)(107886003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB2750;
 H:VI1PR0302MB3358.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: 80211.de does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WPRWCok07f528pR5jXShzAgWeFHmNh6t3hqybwrDMfEAP3WHVQjqOV+tip6cLFzNZ17dWdl8uo0U4OkN4qu9pb169tIhDMgxXbEPqu/t2FLD3WC2ZBT0qnlAUFnmCAFlbsgk+nISaSNTA//Ndh1pM9mxIljHqZeyNzRWWqhUY6UwwI58lx1nkwWWQMmuxbhrCIxDpgZ3Y5zdsdkPo+/wmYuZlcRbtS5IMCAUl/yTsMcVtxpg4oRmqPc125PWFAuFSzr8/7TCwPBA4m9bLuP12Nhkm+hWDg3c/PeabUo1ls6rCodrQHCmQB4y+ik0buBMEiRy1isgfBEKq7ytRLQbr37KzfmKJWBasYhQ9PZTr3Vx1AFxeY47PXe4tCWhSgnKqe1nJyW9IeMJYEuW5m2TaJl9yLArRVCZD6LTM/I7oDEyLXM1mH5xW5iIYF5+KQfpZw6NtQYp2QHKLAim7y5son95pYF8/5PVDKAaiPjPIw/B2ESUIWFvNCQQbBeBwaJxZ+g1QnObGevL+8/e8vBzssioD5+thvx5mIn59mmGmpnKnsM/SpoLd9JJxduAh19aw05wCxDrUNOKqx/IVaFaPQ==
X-MS-Exchange-AntiSpam-MessageData: yJU3oFhyWdjVVEbVDX4y5POjmyh/qYJlYLfT8xW0m2IDFufbVwlVXNzs20xTbngrU5YXAp5mWtxVII+s8wOY+uOdnP55sdKMIE8Ls5uZ3EdEB44SHPsWNk18NETukk3pvbgNdwLBA5PiT+8zxoj9rSG4chAqidmqGQUBXN2khFjNj6snWQYmwI281LbiShu9Z4DJlmD/LjHThHATah4MfA==
X-OriginatorOrg: 80211.de
X-MS-Exchange-CrossTenant-Network-Message-Id: abd72daa-0e40-4596-a9f2-08d7c59bfdee
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 09:10:06.8653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 72175547-ec04-4fa6-8f9d-95719e86a428
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YsZRsvqzo03K5y22sxCA0ZwUcauWfmPzbf5Rac3tuLjmNjwaHcIYLEv5cVVIQQEN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_021011_840310_EC0F915B 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 2.0 PDS_NAKED_TO_NUMERO    Naked-to, numberonly domain
Subject: [OpenWrt-Devel] [PATCH] ar71xx & ath79: ew-dorin,
 fix the trigger level for WPS button
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
Cc: Catrinel Catrinescu <cc@80211.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Catrinel Catrinescu <cc@80211.de>

Because the WPS button had the wrong trigger level,
the failsafe mode was triggered quite often,
after this commit:
https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=27f3f493de


Signed-off-by: Catrinel Catrinescu <cc@80211.de>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c | 2 +-
 target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
index 575a976aec..5544596f91 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-ew-dorin.c
@@ -47,7 +47,7 @@ static struct gpio_keys_button dorin_gpio_keys[] __initdata = {
 		.code		= KEY_WPS_BUTTON,
 		.debounce_interval = DORIN_KEYS_DEBOUNCE_INTERVAL,
 		.gpio		= DORIN_GPIO_BTN_JUMPSTART,
-		.active_low	= 1,
+		.active_low	= 0,
 	},
 	{
 		.desc		= "reset button",
diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
index d0e0169f1b..88b48faf89 100644
--- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
+++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
@@ -34,7 +34,7 @@
 		wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
-			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
 		};
 
 		reset {
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
