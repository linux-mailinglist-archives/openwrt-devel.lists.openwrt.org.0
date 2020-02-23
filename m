Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A0216996B
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 19:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WwhxmnYEVe+K85zkhvrbt35IkJcPyFXgakXQfmmIpuQ=; b=Pz4r3xqH0LP+VX
	TzSoCrJvzryzCLGc6LYRM5DkylTkg+8XhTw3HyxCm+5DTOlGFjeB7nG+qyfMIL4TxqCwCJkZbPkDo
	hFnTjqQS2mfGIZ/WMdalaFW5nAkxszMBImdYsRvrtoNJMbiLAKsVUvzybTAvwCGRbQ+o8Hl0hOkv1
	ThJz16eZCjCNcMhq2fZ+aOKgGpZ/dSwZWojSFogomWRzFaRmRqcXefZHdUDXhA1oys8kgCtbXaSsE
	j6+2NBARBYg8HOQzcAff0+AuZp9uqweB6GeqhFngvUA9IuFk9z0ZvoB9QmxwsE7IlYdTuCEYIatJq
	GPawvegWvKMlRLfR2ZWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5vyO-0008VA-9K; Sun, 23 Feb 2020 18:27:24 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5vyF-0008Up-1t
 for openwrt-devel@lists.openwrt.org; Sun, 23 Feb 2020 18:27:16 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 48QYZP1FhRzQlGF;
 Sun, 23 Feb 2020 19:27:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id xpoSBsvrXeYj; Sun, 23 Feb 2020 19:27:06 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Feb 2020 19:26:51 +0100
Message-Id: <20200223182651.19529-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_102715_250137_2C242FBD 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: Sort generic configuration
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This was done by executing these commands:

$ ./scripts/kconfig.pl '+' target/linux/generic/config-4.19 /dev/null > target/linux/generic/config-4.19-new
$ mv target/linux/generic/config-4.14-new target/linux/generic/config-4.14

$ ./scripts/kconfig.pl '+' target/linux/generic/config-4.14 /dev/null > target/linux/generic/config-4.14-new
$ mv target/linux/generic/config-4.19-new target/linux/generic/config-4.19

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/generic/config-4.14 | 2 +-
 target/linux/generic/config-4.19 | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 9681d9c278..cfe56e5d60 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -730,9 +730,9 @@ CONFIG_CC_STACKPROTECTOR_NONE=y
 # CONFIG_CDROM_PKTCDVD is not set
 # CONFIG_CEPH_FS is not set
 # CONFIG_CEPH_LIB is not set
-# CONFIG_CFQ_GROUP_IOSCHED is not set
 # CONFIG_CFG80211 is not set
 # CONFIG_CFG80211_CERTIFICATION_ONUS is not set
+# CONFIG_CFQ_GROUP_IOSCHED is not set
 # CONFIG_CGROUPS is not set
 # CONFIG_CGROUP_BPF is not set
 # CONFIG_CGROUP_DEBUG is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index d8ea243fc7..6cb4f927a0 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -506,10 +506,10 @@ CONFIG_BINFMT_ELF=y
 # CONFIG_BINFMT_MISC is not set
 CONFIG_BINFMT_SCRIPT=y
 CONFIG_BITREVERSE=y
+# CONFIG_BLK_CGROUP_IOLATENCY is not set
 # CONFIG_BLK_CMDLINE_PARSER is not set
 # CONFIG_BLK_CPQ_CISS_DA is not set
 # CONFIG_BLK_CPQ_DA is not set
-# CONFIG_BLK_CGROUP_IOLATENCY is not set
 # CONFIG_BLK_DEBUG_FS is not set
 CONFIG_BLK_DEV=y
 # CONFIG_BLK_DEV_3W_XXXX_RAID is not set
@@ -3681,7 +3681,6 @@ CONFIG_PARTITION_ADVANCED=y
 # CONFIG_PCIE_KIRIN is not set
 # CONFIG_PCIE_PTM is not set
 # CONFIG_PCIE_XILINX is not set
-# CONFIG_PCI_V3_SEMI is not set
 # CONFIG_PCIPCWATCHDOG is not set
 # CONFIG_PCI_ATMEL is not set
 # CONFIG_PCI_CNB20LE_QUIRK is not set
@@ -3706,6 +3705,7 @@ CONFIG_PCI_QUIRKS=y
 # CONFIG_PCI_STUB is not set
 # CONFIG_PCI_SW_SWITCHTEC is not set
 CONFIG_PCI_SYSCALL=y
+# CONFIG_PCI_V3_SEMI is not set
 # CONFIG_PCI_XGENE is not set
 # CONFIG_PCMCIA is not set
 # CONFIG_PCMCIA_3C574 is not set
@@ -3832,11 +3832,11 @@ CONFIG_PPP_MULTILINK=y
 # CONFIG_PPS_DEBUG is not set
 # CONFIG_PPTP is not set
 # CONFIG_PREEMPT is not set
+# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
+# CONFIG_PREEMPTIRQ_EVENTS is not set
 CONFIG_PREEMPT_NONE=y
 # CONFIG_PREEMPT_TRACER is not set
 # CONFIG_PREEMPT_VOLUNTARY is not set
-# CONFIG_PREEMPTIRQ_EVENTS is not set
-# CONFIG_PREEMPTIRQ_DELAY_TEST is not set
 CONFIG_PREVENT_FIRMWARE_BUILD=y
 CONFIG_PRINTK=y
 CONFIG_PRINTK_NMI=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
