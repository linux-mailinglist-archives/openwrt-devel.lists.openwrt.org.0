Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9BCDEF9B
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 16:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hviva32RRVdOXpas+HJcCh1ajbtPY2lsb+raN4MLULE=; b=VXrrGqOFQWEicOXExCBYG+f/lm
	34LMA+H4SeydWdmVvTMJZqbLsD+ZKJ5p6iey4AJQfqsI9+DILjCRFa1vJf17VLys/1V5Bisk9ylnC
	8p2QQHnluqBy1DF7r5jpi1kUMcDa2vUS1SJEf1mUpBDu28ono8fO8NhbkU7MkdWwTy7V97sZwAF3T
	tBJzhWp5tYGsf1TyUMT0t4+7Z34qtnx314u+zfTgGon6fHEXVB48715c7At4Z1eqvm2q+lP05kIo0
	Ht32X3NsJw1zbEatVXMzRY1b6rrUxiN4gnMxKgHix7LqWalpqz7hRoIU2/1j2aTSZ1lPU/gAC0+Og
	tmKAeDpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYiY-0001rS-Hb; Mon, 21 Oct 2019 14:31:30 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgo-0007Vm-Rp
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:29:45 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N6bsM-1hxfaP3QNS-0183lh for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 16:29:39 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 16:29:36 +0200
Message-Id: <20191021142936.17352-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021142936.17352-1-freifunk@adrianschmutzler.de>
References: <20191021142936.17352-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:1Kbs7Rw4aEGQxJrcw0axXNJJt783HMbYnjXMhGeIF2ETSnNpVIR
 QNUqKyY0naT559RJhm1cEJcwVwtryAIcly2lVANiM9PV+MxrR088O32RE6GahrsqmoXotj7
 Yltpc8QVUvt9HULGkKSgjhmgeoUF2d4WM5cO0ACrgZwCc25fvC4fBb8DES5s3WH9v8mTmNG
 PMZv+w1cjRoIE3pjWjWLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SVDS3VM7bXQ=:DAL6N2GUNp0E+qq9lUhT50
 HEHRG6QprBJst3H43Pvx18HBV6wbRXZD1cFRLUhTtw5YAd8uNCbZywQTxmpT+2DdOVRCsqEpn
 dtCUZpq2+d2AtziCa7jYQXbHLViRiIjMcEqDz0r0MBaWa/YFYaaqpT/+BoY58R6OIOXi1dxX7
 w72x9K+OwiBLWT27EP6gXK9wTKyFGnKt6iu2NCgS10VG5JPddSju53lxdRS+FMolSAUoE+zd8
 Dx8KTZQz8GVHLU3+lwMIFnJ5nUg6RbeSVoUPvBC9J1fKgGyr1+/LxNYk4GV+J2ZUqBSjdI+mi
 Byj5cBpQ17iFCvOIwMFBStaxQA9oubYqJ65H1sGemlnMS+HxhL870DTDEU/5xU3soP5oC5kt4
 M8jTyoyUm3GhAn8CuxYRxXPLJGLDQJCqn6gdfuba71Rq96cxP/YQuqn0TWcFTBo6W3CVoDwsA
 B/WDgA66hs5ZZ90T14ND9kOEZJmIiY2XZJ9h3zY1TzJGhvj/46ZFJU2t+XlUhb8prkkaUaRFY
 BHx6XWuFwwLF3hQ1lhnWzcZ3YgMH39CVArEExvWrOxDBGrphbcMvBdBijxkvSf5esVwUsEnZ8
 1ZHh6/e/SvXqCNGgQ/lNCe5gAL28iwkI0szCPQxeTU/2i3yOU8PBlXeKDjU0oX+WvfAgthNbQ
 qaUNeKx00w02WewKF442pRaIIsV9fLnjgNWlVSyxQyk5/MRZRbDf8UfVHWDCJaoRmuPErTNUz
 NUiI4BxXLTzfRES2NLc2YVhNatl15PfhOrLmqlm/G3OuJZPPJKT7fxC/np3eabSgb3uqXSs3x
 HhNlBwmjyUzzIZj4mFAhLsQapOo6l1dOin9rs7GAWvW46bS1OVUcCvdBdbrs/JuTskgnBrssJ
 q/mqwHvmkrZqXqMHEYVnxBYEkoxysGzz6iylZwnjQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072943_241437_3F1A464E 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 2/2] ath79: add LED migration for
 several Archer Cxx devices
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

Several Archer Cxx devices were using board-specific LED names in
ar71xx, which were changed to "tp-link:*" in ath79.

This patch adds migration for them.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit 53e6cc7a81175728f64f978c2363a18c1fa66d64)
---
 .../ath79/base-files/etc/uci-defaults/04_led_migration   | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
index a512225523..a291bf8c7f 100644
--- a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
@@ -10,13 +10,16 @@ case "$board" in
 engenius,epg5000)
 	migrate_leds ":wlan-2g=:wlan2g" ":wlan-5g=:wlan5g"
 	;;
-tplink,archer-c7-v2)
-	migrate_leds ":blue:=:green:"
-	;;
+tplink,archer-c25-v1|\
+tplink,archer-c58-v1|\
+tplink,archer-c59-v1|\
 tplink,archer-c7-v4|\
 tplink,archer-c7-v5)
 	migrate_leds "^$boardonly:=tp-link:"
 	;;
+tplink,archer-c7-v2)
+	migrate_leds ":blue:=:green:"
+	;;
 wd,mynet-n750)
 	migrate_leds "wd:=mynet-n750:"
 	;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
