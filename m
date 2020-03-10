Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEE817F700
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 13:02:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JUGoMG+pmjxrnbLZQeV4VwvirkPKv9dLT4sVXsd7aqI=; b=URevdTdJLJrob2
	+yGXu+vCThwjVdjZHNDCZSKNtePb8ifo1WRtsa3xPfNZl1+t2ckd8jzsVqNMExRbrxfIHZKc3cW1a
	WZpYCDsK68aWRmIY8gClIcODAOeCbBru4uJeyb6PyWa7BhTo62vFzFLMBzJytrvBAMsw9Jt0FbyKq
	Ew1JztN0yXRL0CWO/Dtueby5ONMcmqVDbsWfvci3pg4rKW2FVQnojAzy2f8qqZfA83gMFiIVcGir5
	meqm0BxKPdE3R8ZTr72oINDNwr69ocvAupfdsiNBzz5pt+hHuTMSVeLNtiLYeMt98lyaznNnd28Qr
	+vNnqoNhTwx05Vl3mrfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdb0-0007zF-K4; Tue, 10 Mar 2020 12:02:50 +0000
Received: from mail-db8eur05on2040.outbound.protection.outlook.com
 ([40.107.20.40] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdad-0007iM-9i
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 12:02:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8C0ZMOSXeSS5MnNMEogpYf48Ft7LAbwPqPNlLB2/J2hkTAoaluXQsWdj/2/TJGJkhc7916a36fEBWuZHu1CD2Olh/b+n/jfhA+TyXAm6RTcFKyRTkfsX5seE6V16N7fgTlTzH+k+TYHeyYw3pWN8vhEaM5ncG4GHVdBRtPC9Mz/S0CjIBDjgw+tlJeUloo9T9rFsvfevsynTHljFsbhP04ryqD6Xtt/O5WjzPEqkO5zMyUgX5Qe5mtf3+wA7ioUP6KfUnKYO42v9o3g+PyHx8u2zsfxhCawA49K4fHiQhyKPowxRvWfnmxNpf3oOwPfPCjv39+z9RRI8G8+sOWaiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9jG4EYOmlIDx5pSanNb/3V6DAinDoQCB5gHxdoCjoA=;
 b=hB95lTDL1QT2FKhbZ3012aoImx4OgcANZWcy9L9Wy4qo5oeGfqYxdq4i3a5UwaEt4w0US7NxYiyPstnl1AP8LipYq9DIvBPTlUSgvVXX73+w9gTPbWu4P8Ec+fONy18vwjEkTHS7xffWrLA5Bqk6fVA4VauCdd5LmPRvGzS5d7zGiWT5rBdAOwJ0h4+0OjofBfNGi1fO/Mhnd9926nJhvYFDEzvQu+kKWt7pphCADFCQMF3F3HDRBof1fbkkMH7yuutvZzngFTuYpOKkI1IWtegW9o01QYq/SOAjtYr6sKyaCaRd7Pky8XBLYm1hlRY0v8UmXyuAD51gWfygmCT08g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=80211.de; dmarc=pass action=none header.from=80211.de;
 dkim=pass header.d=80211.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=catrinescu.onmicrosoft.com; s=selector2-catrinescu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9jG4EYOmlIDx5pSanNb/3V6DAinDoQCB5gHxdoCjoA=;
 b=do0cIneaDbtmcbRQZRTa3df+FG0dDn00GLyjqEnOboFIUdF1jbzcYEoHILyfMY1Nv1L5TBV0LUvTRykwcwmAn7jrjEWFH/ej/vOjcNiPBZzcW/gSJD5w2IqrT3WlnTVfuwZe083HWyVuw9PHw3DRsjFHMNjuVeQKJcq5m5ywJXs=
Authentication-Results: spf=none (sender IP is ) smtp.mailfrom=cc@80211.de; 
Received: from VI1PR0302MB3358.eurprd03.prod.outlook.com (52.134.13.25) by
 VI1PR0302MB3264.eurprd03.prod.outlook.com (52.134.13.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Tue, 10 Mar 2020 12:02:11 +0000
Received: from VI1PR0302MB3358.eurprd03.prod.outlook.com
 ([fe80::8d80:bb9d:1f26:5de]) by VI1PR0302MB3358.eurprd03.prod.outlook.com
 ([fe80::8d80:bb9d:1f26:5de%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 12:02:11 +0000
From: cc@80211.de
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Mar 2020 13:02:04 +0100
Message-Id: <20200310120204.6704-1-cc@80211.de>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM0PR06CA0071.eurprd06.prod.outlook.com
 (2603:10a6:208:aa::48) To VI1PR0302MB3358.eurprd03.prod.outlook.com
 (2603:10a6:803:1a::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (2001:16b8:a485:e200:28f2:6094:c05b:ee68)
 by AM0PR06CA0071.eurprd06.prod.outlook.com (2603:10a6:208:aa::48) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Tue, 10 Mar 2020 12:02:10 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [2001:16b8:a485:e200:28f2:6094:c05b:ee68]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce9399bc-312f-4652-a4c4-08d7c4eadd1e
X-MS-TrafficTypeDiagnostic: VI1PR0302MB3264:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0302MB32649A5DCD743AFA7D093679EFFF0@VI1PR0302MB3264.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(346002)(39830400003)(136003)(396003)(376002)(366004)(189003)(199004)(16526019)(186003)(52116002)(6506007)(508600001)(6916009)(1076003)(69590400007)(316002)(4326008)(6666004)(36756003)(9686003)(5660300002)(81156014)(107886003)(2616005)(66556008)(66946007)(66476007)(2906002)(4744005)(81166006)(6512007)(86362001)(8936002)(8676002)(6486002)(142923001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3264;
 H:VI1PR0302MB3358.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: 80211.de does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qAs0F8IWbvPaGM/ragIIHZ9Hgguf+OrlneYIUo8IC3qqxgVa172OZlgANoRtHQF1Yle3OM4LX2vI4hHKJWEbpUX1EAtpRPgw+uJ8NUnhMetEcdoagn1vsh5oXTo6JpCTF3rlfl+Ql7rJMe7Wsx1Q0kjULrE5x0YrYi59e8Kw37k/iLRMm3U8oY1Ats9xqXAQSpmMPBqejkesN99F6oxMTMhlAYpwMLTxa3IZS8D5r31+HWwM2OzrxXgk1VY/i2wxHcM9qqshuYaJPzefHAPHdYoR8bQePe09bkxQ0pOa4c0BbhayY5HajvHRW+osGEZmaKtQJHO6e4vOgOYaMZIOroepr11ElXPMmEs3Uqu4tgehwReZpMzpWAZOTsTOoahrSmQiRUu+ROyy8cAKWm+2AbpUUIPYxQdrAuFZsaLsN3nyJi6orpHxt/HTgkZHG77mJ/iPDNYfxbtjGkeQB5FOuzmCroeFH5Jl9yb/cWIHh8nsjlqExxu6IBtVyipSFngs606lc2UT0a3NWaWwvej0Ug==
X-MS-Exchange-AntiSpam-MessageData: uljoa0kluBijuEqyPp8+Notm1Kw74d76wVsW+9j6RJ//LanuZa7550mUn28DW33n0N6NQAxvuztOgT/ZyDkpd7vGSkOMOPvBsQ9wl8Uw2Jvx2RdEwUlRb8rmDJE+RsrnhvktMEadYJJc5T5vfFDpsieskF4SsUAYTHOm8XZp/S47oCzKeLnUemsPCubbp8SZNkjtKk7o4BWNy7ZMEVmnFQ==
X-OriginatorOrg: 80211.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9399bc-312f-4652-a4c4-08d7c4eadd1e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 12:02:11.0287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 72175547-ec04-4fa6-8f9d-95719e86a428
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CuguF294DgpMcFpgJrws0nS4d7D4l5pafOQhNc+lfqIzkT46DzOJz3fehRhGy6CP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3264
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_050227_429619_8F74AC9D 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 2.0 PDS_NAKED_TO_NUMERO    Naked-to, numberonly domain
Subject: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
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

Signed-off-by: Catrinel Catrinescu <cc@80211.de>
---
 .gitignore | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index 6549af83be..edffba9c05 100644
--- a/.gitignore
+++ b/.gitignore
@@ -3,8 +3,7 @@
 .*.swp
 /env
 /dl
-/.config
-/.config.old
+/.config*
 /bin
 /build_dir
 /staging_dir
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
