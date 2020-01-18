Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251EC14156A
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M51/6YGXkZAQtbWPdIMcEUHC3tFcTHDbO8hIXUIrqy4=; b=a0F5lx3BIbYPnv
	MprdOmLWQDw7gcDqwFjkhEFN0FVpw1uR6O49qcwjpBVep/tZ20hqptqSEbYWivsh4nZiV06lP4xli
	9tZyXJXdC3Tu7QzoKOiJQgIXsi4x4a00MP8nMG2c75BZ9NjI7eP3NrFIhNaqLMwfr7QCAoP+/3jGB
	uPZ6aSr/1XR55pYIfGqDOFm7oOtnA0HkX4nYE14H7M83jcB7I0/w3xiTSEH2SRGA33zOM3LILbNio
	wMLEjyyHBalWDP/1zJPf+0F7AQHs+x+ZliIdlb1hbomjIyNpx1L04FK6+GWS/6iCnjtaMldswPwSM
	/Lguxkh5CwitmSU4Ef5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscoW-0006kF-9y; Sat, 18 Jan 2020 01:22:12 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscoO-0006ir-8x
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:22:05 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MGi6m-1inh7L0Bvu-00Drp6 for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:22:01 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:21:11 +0100
Message-Id: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:+ArqT8i8y2DZI/3srupZ/4r8eTTdlZNDqlWL5QLYYs8Vd0uhu4P
 KpwghkYtpudX5++UxnKXqubUsVC704Z07ETh+5vNJu1QVJKwdiyvpl8vdJpwpABaZ2Xqyjm
 CBIqDIcncvKB4VEc8Qg9NaD6rwVI6ML+ohRoVwtrrO6yibBEm6MGz3cv9zAYbaF3aLYv8Uq
 F8dYN16vYYlLE2f/YhfZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gaU5F/VVCV4=:buzsqYZXX9y8SV4GtCftTX
 LzPk9MuNO0PtdlHND7HjUpjAzij0Jml1F64GFSTEOdm9F2wk6f6gZ+N84q88fCCN1GItEG5LT
 7+hF+b2q9PISLQR8RYAv7V6uh8ey1VcRHthA6O52oFjRkTDG78gfd7VR0NEK5ZH6WzGT4g5Lj
 iL9m03HpqNqKgtEWe6wLxaKDWcusgyCMMY0wDe3bRuFe07LmLA1hda7ttJzou1g/Iek+lSo+X
 93wl8VD+GF/Hma0f3A/H7z4ZMWWvrTTQb4ePmXq2/JwkfZ+Sz/d9NC/CFU1kMSQou5kqnzS/6
 ro3d95JhPI4D/OI1t3PJqNMiiRwkHqA95Da+qVSs6UYrDRv6ofo5HeicxAY5x2axazGVdCcHv
 yBnYBk+N2qLCNH9Dcb01KXKMZEt8jirGaY6CwGDxvOXW6qzDYyMcz36An0SqpKK6IKO2t7wiu
 +rBdUTlw37vXuNCCvRBreVSqiBQM7z4sYFjGaiK5+wlvEuM9HA0ZXVJlQQCpjyxFkg5lbB+wX
 dsmMLJEmUI6QZN8EyW8DOWqkRFnOmbOORhPbBvtok0rCPKPwCbwsqJKqBArCwt2OhIh5C+gh7
 UMtPUAkIixzfol4Ac8kgFA9aQsZazG+v8CSB8CAK7OJadKiwb03g2MKL86asy/2GOp+DHBxVC
 VN7AbxgsWHvmMHYP8IugHblQJ7hd5Ujqj170u1Afi2Jzzw0SacSCCf5TD414LM5B/e315ppR9
 uONhRWjniv3C9gFWoZczgkZfEyKcQBsHqhaRYxDpsKR5c4EpO093adhPFLejBHk86r5A3R7vW
 +fWzZT4i4oFnCTfuY4XHyhSWHc28ldn3NOHzzcMFWUEVeyPd1KkRI8WczP2PQWJn0FRnVGbR8
 A0aCQYSxH8+uXKT5SKRXPOXmDvfH3hL7qcMczUsqk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_172204_610950_1FD01CB7 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] mvebu: move subtarget image Makefile
 switch to parent Makefile
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

This moves the if conditions for choosing which image Makefiles
are used to the parent image/Makefile. It seems more convenient
to have "codeflow" in the parent while the subtarget-specific
files only contain the definitions.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mvebu/image/Makefile      | 8 ++++++++
 target/linux/mvebu/image/cortex-a53.mk | 4 ----
 target/linux/mvebu/image/cortex-a72.mk | 4 ----
 target/linux/mvebu/image/cortex-a9.mk  | 4 ----
 4 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index ce1344a547..6dd7bde7ae 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -116,8 +116,16 @@ define Device/NAND-512K
   PAGESIZE := 4096
 endef
 
+ifeq ($(SUBTARGET),cortexa9)
 include cortex-a9.mk
+endif
+
+ifeq ($(SUBTARGET),cortexa53)
 include cortex-a53.mk
+endif
+
+ifeq ($(SUBTARGET),cortexa72)
 include cortex-a72.mk
+endif
 
 $(eval $(call BuildImage))
diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
index f5313429af..e58a3c42b9 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -1,5 +1,3 @@
-ifeq ($(SUBTARGET),cortexa53)
-
 define Device/globalscale_espressobin
   $(call Device/Default-arm64)
   DEVICE_VENDOR := Marvell
@@ -73,5 +71,3 @@ define Device/methode_udpu
   BOOT_SCRIPT := udpu
 endef
 TARGET_DEVICES += methode_udpu
-
-endif
diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
index 5e619804e8..6abee2d8b9 100644
--- a/target/linux/mvebu/image/cortex-a72.mk
+++ b/target/linux/mvebu/image/cortex-a72.mk
@@ -1,5 +1,3 @@
-ifeq ($(SUBTARGET),cortexa72)
-
 define Device/marvell_macchiatobin
   $(call Device/Default-arm64)
   DEVICE_VENDOR := SolidRun
@@ -29,5 +27,3 @@ define Device/marvell_armada7040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
 endef
 TARGET_DEVICES += marvell_armada7040-db
-
-endif
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index c2ada75c2d..389082e426 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -6,8 +6,6 @@
 # See /LICENSE for more information.
 #
 
-ifeq ($(SUBTARGET),cortexa9)
-
 define Device/linksys
   $(Device/NAND-128K)
   DEVICE_VENDOR := Linksys
@@ -218,5 +216,3 @@ define Device/cznic_turris-omnia
   SUPPORTED_DEVICES += armada-385-turris-omnia
 endef
 TARGET_DEVICES += cznic_turris-omnia
-
-endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
