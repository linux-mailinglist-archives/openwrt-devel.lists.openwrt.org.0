Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E53184C21
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 17:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gxGUaStAN7N4LVcjltu3W/L2eiWnIl+48FWnKP+rshI=; b=cdUNKIP9AFC+Nl
	dTrwJjBM5iOyzcj9NFbApxUpgGSY7lUfC7RYSVUdOq4+oFzmwoccuuiXYyZTMajHB8B9KWt0TkVcj
	RNyfB94CgEWaShwTk7kPpJk1Qa7pegIf93yCQ4dpgZAmDZ6VdNRuQJKpHOhmrpps+Zbq+J3EJys+R
	RkwM816ACt0ijDXY04MdPZXD4rC1mi4w5UgyalrvebcusrON3hyytuRmA4vd6hutb5eei7bLnCope
	JMBKkpJjw85SZCTn4RdiALL3wwi8UWaYuYMJQPeE/eWLR1krjhAukb95spZcJO65tyUiU8/+1zar3
	yjoI8eIVX/bmAqyAUBsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmwk-0005vC-VR; Fri, 13 Mar 2020 16:14:02 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmwG-0005Pl-9p
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 16:13:40 +0000
Received: from buildfff.adridolf.com ([188.193.174.43]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MwQCb-1jV9Cf10ib-00sL1M for <openwrt-devel@lists.openwrt.org>; Fri, 13
 Mar 2020 17:13:28 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 17:11:20 +0100
Message-Id: <20200313161122.32858-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:W8blMvQPVzQV23uajvkx1MYsp/zqIeytAEyd0m2PEBq9W3ktDO9
 cKivHlgDzucgbwzmLOzwplUAPuU8CnZqaPZu1psHF1/Pc91UiXvGgijRLXACyg5Yh9DsFh+
 kV45P1cJyJ0QLKyY3Xf6F5R5FxLZ9aBGxeW7dh2E8xEclkAxnnRN1yrVEwTLgOPO/q3hWUG
 sYWFj2TKmxFjzu1zomy1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ba/SuvBFZtE=:SOvHHhISFilTQySFlBdBdy
 0Rp0S6gZi8K3NNr5teBzvXCD1vX39a6+xGtG9D23RvdpRyvs/KtN18+I/72js1tV+pKEd5XlX
 UisOxbsuols7SErlI8L3Gwdvc8DEkQXzmIyQgSZb9dBVvOFDrkxtKq1GDdVR+ZD7JiHwK/Mj3
 HgkNdhK2b0Z105/rafUCr+R99qer++5YUHCIA22rV7I/HXZk6LJrdtdCv1P5R2fZVZUVs+11/
 Rb8fn60ZXIBsiKzM+ywNjLLtjbwoz2g/k2OB8G7wBEr82Zv42o7tKYUZ6ldS9gpse1Ri5dzxZ
 uSKvkWeY/KNs9Cvm8Y/hOqvciDck0DYXL0G/Z+wyPsU0se77AcR6FgMi519b5tVxqxLRUB8Kb
 CScY4gAd2lZl9vpJb1s59+bodWkV+hK1MgG8t6qHZ4PR3ZdqTU74YGBVZZPxR4NH7m6+GR5h5
 KHnftl6gr/Fd+mVeVUqYxXIdZPPswIUbLJvR5384yJdpH0MLIKsKHkLEJ4IO7t7pNKUWkbJpa
 ETWsV73XGMxloY3Y0Mo+ZqgvIUyeZnnIqufF7EgzCizo3HZTtE1B4R4j61AOIpHKapLhySgxj
 So3Y+/UcpkHaeOq7U2+4kxQPJmFL4DlEoQEwk4QfsIAZvZHosjF17pn/n1WWVqUzucpywEQol
 DjaFidQi2HI+dBGaJnvemQlw7YTVIICP1eohideNvBGbgBAiz/HMvoMoUnEh+++ryC9jhrvzI
 nzyog2+VWzDfrY2+h1o2ELbi2CSBoljzXu3L4Z1scpydelqeSkUQebII7B3bmbeqxoj+oAMYN
 Egs0YsUUNmCtjoYqWKMAmRxd/olAbyX7G4gGb8SCrMNfTHFDFG3VaAJ4Wb8gAzNdpNVPm17
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091332_650362_FEC5341A 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/3] base-files: do not source system.sh in
 functions.sh
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

The default_postinst() function in /lib/functions.sh sources
/lib/functions/system.sh before cycling through uci-defaults files.

This creates a pseudo-cyclic dependency as system.sh also uses
functions that are located in functions.sh. Despite that, there
is actually only one uci-defaults file in the entire repo that needs
system.sh, and this one contains an explicit source for system.sh
anyway.

Consequently, this patch removes the sourcing of system.sh in
functions.sh. There are no relevant uses in packages, routing and
luci repositories.
This may require adjustments for downstream, though.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/Makefile               | 2 +-
 package/base-files/files/lib/functions.sh | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/package/base-files/Makefile b/package/base-files/Makefile
index 107d53e74f..8e252153fe 100644
--- a/package/base-files/Makefile
+++ b/package/base-files/Makefile
@@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk
 include $(INCLUDE_DIR)/feeds.mk
 
 PKG_NAME:=base-files
-PKG_RELEASE:=214
+PKG_RELEASE:=215
 PKG_FLAGS:=nonshared
 
 PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/base-files/
diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index fe908f7aa4..a77b669709 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -254,7 +254,6 @@ default_postinst() {
 		fi
 
 		if grep -m1 -q -s "^/etc/uci-defaults/" "$filelist"; then
-			. /lib/functions/system.sh
 			[ -d /tmp/.uci ] || mkdir -p /tmp/.uci
 			for i in $(grep -s "^/etc/uci-defaults/" "$filelist"); do
 				( [ -f "$i" ] && cd "$(dirname $i)" && . "$i" ) && rm -f "$i"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
