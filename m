Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0134F4B8
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 11:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gnjqL3JycYOQfjKnDl2Sj/XBrhQASXXLmn9itGhZoIw=; b=Pf65iVvsZ1tWLhnHGafh34M67i
	KWMgXRjPLfiYs7tcFE2vhv7J2UkdIfhStm7Qr+zKzZpF2npdl3CXCIeGwi4K+UsEJiIm8+f/bNlit
	7FSEzwZrEd/EFLm0agHO986q3E83QobWPGDDyu4iN7M0557kjEG1e2BYcwuczVzZ3nsWyEfvsTjKX
	/Vj54vQBaT1fQzpGcGvNrPVkfErO6jqv4tTT1clrFFWoV8Sch6/P3fth3so6qyAe/Cuu1sMP4sFbs
	rQkwbi4v2yrLxEXqejey1egQ3atz0V+oOyb/Eb4yoUHC6ptX96Dpe9sZcRxbDNHCdOXsRiqfk07TM
	WBjJ107Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecOn-0003P5-Uc; Sat, 22 Jun 2019 09:33:30 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecOO-0003D6-51
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 09:33:05 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MJEAX-1huEUx0L87-00Kh6m for <openwrt-devel@lists.openwrt.org>; Sat, 22
 Jun 2019 11:33:00 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Jun 2019 11:31:57 +0200
Message-Id: <20190622093157.1372-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190622093157.1372-1-freifunk@adrianschmutzler.de>
References: <20190622093157.1372-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:oExGv8XozlWLK1B6c/uUlDgsv/HB6TCqx+4dBfbEegqHgpmoeuX
 A1vKINyzuxfGrrCDhb4gshwgrWyZ9jqPYzTc6GRYt5MvgdAIiaQnXm4+RHab5kVyV40oqpT
 3K1tTEFKMUBqclZ4rLmFkwfMobF+DpahvglSgNaOoeBFeITuZQJQX6IEpkmulZkTXqOlBIN
 x9w54Ng6VkppxFR0JsE9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CIqlkgLEM9Y=:OSpFr6e9oXViZrqTTbjxE5
 06jk7E8hYKa0rBsVepl1s6hvpJLCypile1TRvOg2Q1nYJAQYBXQkrP0cR8DLwKLA9OOMgBjqi
 q5F12RntRa7pgQ0tgoipP4h8LaCvYsQolNv+j4Gvmo8rh6qNUr4ptu38t3dsJPXC0lDgz0o8W
 kZBeP2BNYsZhMQn1ywtGMduLd1+eppsBm2ySSsJMvdnqZpewBkLT8RJrL/HBYWGFQQ4ya4YVA
 E7IVvt9awV4EiEbjnD684tZfTggdbmHmUKJ2SliM+jrASeV+Vj1aSr1JiBM/22LML4Gv1ZEqg
 07cqXIQK3McpKYM349iZ9+72fUsNH6Qagpsh1qRtGaQTyJYeeL4gBNKD+Y3/5r4gb6+RivBb2
 ag4zOjRakMNA5d1eRocC6JClaYplZSRFPGDeTCbXiSxhTAOefdbpyRCk17A6rJmY4yAKNg+ov
 sZcV0k1I/7YB672YXrShDuxs5o6EJdzVEOwtQuh56SAn57qI7wHvd3rxxURLteYK7BStaEpq/
 +/3Xkr4PY2Vxy767CD4jYavhndYY4z03EA8SMrUf8AFqtBMibEjqgUHh3A0qpMh6Zmpi/2x+q
 DBu0twGKLze75D7rY8Z/ik+sFfAUaLYvZsfadWtUT+5RjHcATjxODO6FwSGklYcwxrwjbxW3H
 5oUhjiBs8SMdKKtDjHX4hXAYveJas8s4756lZeP8+WYr0vUMe04FGCE7xYKmmP8hUDYTU3hyv
 jFYlPcNkQCe+VSEDDPEvwJiEd7s+Fsvz+EyQ/F643MkE0L4zao0hp/EKldc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_023304_487373_82250FBF 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] openwrt-19.07: ar71xx: Code style fixes
 in 10_fix_wifi_mac
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

This fixes one comparison and one useless echo.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index b58cf9b591..1082ad4ad3 100644
--- a/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -1,6 +1,6 @@
 #!/bin/ash
 
-[ "$ACTION" == "add" ] || exit 0
+[ "$ACTION" = "add" ] || exit 0
 
 PHYNBR=${DEVPATH##*/phy}
 
@@ -17,7 +17,7 @@ case "$board" in
 	archer-c59-v2|\
 	archer-c60-v1|\
 	archer-c60-v2)
-		echo $(macaddr_add $(mtd_get_mac_binary mac 8)  $(($PHYNBR - 1)) ) > /sys${DEVPATH}/macaddress
+		macaddr_add $(mtd_get_mac_binary mac 8) $(($PHYNBR - 1)) > /sys${DEVPATH}/macaddress
 		;;
 	*)
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
