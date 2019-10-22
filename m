Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F2EE027C
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 13:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DkR/Jun/2aLus0ZQgj6UcLeL79Wf1Pft3eKa+nPL6CY=; b=OUGIS0pU7C2bVOvoP+/1xawXE1
	GOY9fABoCpLqJevjIpB2GVPMyOe9qB9CuPEwizjc81HHwitNzrAxCilc+Yf9dnOSTpvVz3ZbpDgFH
	P4/v66+NYVQrzx6vu0lZrYbUQE6RMphmn/iRQ4uT7+TK/wR1YTs4mKQoHLP6ybvLz9lGs9/4pZuUW
	03ubE5cHH8VLFfi2j/VZEg+LZfEqhrk0enabyUL58b3Q4SELG2TB8LS8OI/osdEMcGM2kSZPN4ns5
	hmSH6odqKCuOnvUCZH7cYCi3GkiCIZin1bkc+EB/xQUj9Io9ejzJDjHiCkP07CvyKIeB1sUd2nllz
	hkelWLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMs1p-0003m0-08; Tue, 22 Oct 2019 11:08:41 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMs1g-0003lC-7u
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 11:08:34 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MrhHm-1hi1UW2PQK-00ndLJ for <openwrt-devel@lists.openwrt.org>; Tue, 22
 Oct 2019 13:08:28 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 13:08:24 +0200
Message-Id: <20191022110825.54574-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022110825.54574-1-freifunk@adrianschmutzler.de>
References: <20191022110825.54574-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Twwir3ayPKjkDvkI2k4bnjZa6lVcm1IreRUtvZsYSCI7Z+tmItF
 XAdDABHI09aX12JVc4IwkwxwWwAwzDiKlS6TcFRVzDZ5C4JV+EsgOtPIRRY+matGHJKZv90
 AZYVfqbBsI16FOKEQhN+Z6u+GiHNADufNqZ+2u0Ejv0260JMLqR9vdzTnL/RJwg0OqbhKvN
 aDhvBekX3inJhwkoQF5WQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ahl5FDdFUAM=:EKN/lRkqhwWixHO1S+dhjB
 mWzzmqqkwaDmb3lFxlDx/BQY09MUbmYWexGe+7L5kwY1WF6LUQVmnYFckofNblOhAiMhMp4HC
 dBTiV53g+o5JV626ofNB2tX/uDVHX0kNVHcFD9qn0YiZr6i15Q5JZuLN9yk1vkuhVMwXPNd96
 Ae/UCDGNQ9/btCC3TdZBpO1ve8ZIkC33y/eh0ZGR21zwq6B0esGVjzlcRS5pf8KyHYhsihogn
 2E1H9LSz4FGjqsG7mTJmEGFpb/4s2OQ1oVqYEwMeSK/1SMCJIVmEgv7H9PvIJ20Rda4pKBSLq
 8WU26GuIJDFttlkoSLHrondUgJLvzqTcJZP4J2mgyBQd+CxKzTDofr77je1pUVEk0x3ejpKU5
 Uvu7OWu6vLdKJkuU1t424JiSm70fbl3R3yf+MHwz75rmZWLnolQ4uDvbLcGRs4UAm+fWO3zaW
 SHvYasZA+6KaoZbHXxenmx1TE4pc7AJpB5neUJb97mKkVfGwy3WyP0SpjHnjJJqYrxtdbYAl+
 VaHl4yRhh3hUN/Jrpc8y7aIQEZQHdO9kkck+plvqk5LJz/kYu/iJoFalNbzvToNH1R4Wmi1/4
 Ej6L0XpIYeCxIj3DuRj9DsZeblnfEMYM//u/8UC+OzyuwBm53Y/OI/oB2cPeHNK9ylOd92mC5
 8xxN+KPqlxGBmsFnOV+sTfx7aE38yUxReNUwpwZqlO/1zo/gizjnCQEtMvmXJcqnuBiEZLDPQ
 wRzxamAVVqEboEpdQqKU9MPCj+rNfaIW7gE30droZ5ILZFXjbrxUeHA6/xSfu9jiwmtJevXeu
 WkmJLWp363L7UauOu1NqXptlOcPUgFb3mg/mgG/u+hoghHs461M1TxeGeyqg92sLSPY5gSqIL
 rQehlTZWQaWES4eV/mzjjTV0CbP2XkzSe3LZX62cs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_040832_576658_AE528617 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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

So far, IMAGE_SIZE is set as follows:
tplink-4m*   3904k  0x3d0000
tplink-8m*   7936k  0x7c0000
tplink-16m* 15872k  0xf80000

However, based on the size of firmware partitions in DTS it should
be:
tplink-4m*   3904k  0x3d0000
tplink-8m*   8000k  0x7d0000
tplink-16m* 16192k  0xfd0000

All (!) 8m*/16m* devices actually follow the latter scheme, which
is also consistent in terms of left free space for other
partitions. Thus, fix it.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/common-tp-link.mk | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index d1d4a8940d..bda81a3e2b 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -83,19 +83,19 @@ endef
 define Device/tplink-8m
   $(Device/tplink-nolzma)
   TPLINK_FLASHLAYOUT := 8M
-  IMAGE_SIZE := 7936k
+  IMAGE_SIZE := 8000k
 endef
 
 define Device/tplink-8mlzma
   $(Device/tplink)
   TPLINK_FLASHLAYOUT := 8Mlzma
-  IMAGE_SIZE := 7936k
+  IMAGE_SIZE := 8000k
 endef
 
 define Device/tplink-16mlzma
   $(Device/tplink)
   TPLINK_FLASHLAYOUT := 16Mlzma
-  IMAGE_SIZE := 15872k
+  IMAGE_SIZE := 16192k
 endef
 
 define Device/tplink-safeloader
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
