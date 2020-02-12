Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CE015A701
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 11:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+u1QVJS4j/GSFta9gaZ5GLBUVbC5EpMV7kYjnlTurs=; b=ZbD3S+dYBokNFq
	sA0WZLLJgz9VLaEW3IXeJ9jZRz5kaHrDKc8SR4UGg89WaAl1wGgHvD/vTnmcdf9er/1F+v0Hkqrh4
	N+TI2bt51fD6b5ubAEy4BqmaBqhJn51uiEwHUi0ow40j6RwX0zFzQQhqtezM8icRuJhUZ/Gp+jhAq
	0fBEs8eq8JDV+e9YzXeh7REgOryBdzWxflGoO63YfKqiUw5+0jwrp623XA413B306dUFnbqGYv3Ec
	JVlBS5jaE+UEJymo8Q1SlWSiULqYu358ZLN0J45gyxuaPvAghJ/MrKCQm2Wj/XgQhk04U/EaIQlWg
	TaxB2fYQOg5P65rP2nzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pbP-00038R-ED; Wed, 12 Feb 2020 10:50:43 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1paA-0000qd-4Q
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 10:49:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:49:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="251874751"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2020 02:49:23 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 11:49:02 +0100
Message-Id: <20200212104902.7779-4-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212104902.7779-1-hauke.mehrtens@intel.com>
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024926_475019_019FA6DA 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/4] build: Add additional kernel debug
 options
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
Cc: hauke@hauke-m.de, Hauke Mehrtens <hauke.mehrtens@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Make it possible to activate some additional kernel debug options.
This can be used to debug some problems in kernel drivers.

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 config/Config-kernel.in          | 68 ++++++++++++++++++++++++++++++++
 target/linux/generic/config-4.14 |  5 +++
 target/linux/generic/config-4.19 |  5 +++
 3 files changed, 78 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index 8e9e3518bf..4330d9fa5c 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -377,6 +377,74 @@ config KERNEL_PROVE_LOCKING
 	select KERNEL_DEBUG_KERNEL
 	default n
 
+config KERNEL_LOCKUP_DETECTOR
+	bool "Compile the kernel with detect Hard and Soft Lockups"
+	depends on KERNEL_DEBUG_KERNEL
+	help
+	  Say Y here to enable the kernel to act as a watchdog to detect
+	  hard and soft lockups.
+
+	  Softlockups are bugs that cause the kernel to loop in kernel
+	  mode for more than 20 seconds, without giving other tasks a
+	  chance to run.  The current stack trace is displayed upon
+	  detection and the system will stay locked up.
+
+	  Hardlockups are bugs that cause the CPU to loop in kernel mode
+	  for more than 10 seconds, without letting other interrupts have a
+	  chance to run.  The current stack trace is displayed upon detection
+	  and the system will stay locked up.
+
+	  The overhead should be minimal.  A periodic hrtimer runs to
+	  generate interrupts and kick the watchdog task every 4 seconds.
+	  An NMI is generated every 10 seconds or so to check for hardlockups.
+
+	  The frequency of hrtimer and NMI events and the soft and hard lockup
+	  thresholds can be controlled through the sysctl watchdog_thresh.
+
+config KERNEL_DETECT_HUNG_TASK
+	bool "Compile the kernel with detect Hung Tasks"
+	depends on KERNEL_DEBUG_KERNEL
+	default KERNEL_LOCKUP_DETECTOR
+	help
+	  Say Y here to enable the kernel to detect "hung tasks",
+	  which are bugs that cause the task to be stuck in
+	  uninterruptible "D" state indefinitely.
+
+	  When a hung task is detected, the kernel will print the
+	  current stack trace (which you should report), but the
+	  task will stay in uninterruptible state. If lockdep is
+	  enabled then all held locks will also be reported. This
+	  feature has negligible overhead.
+
+config KERNEL_WQ_WATCHDOG
+	bool "Compile the kernel with detect Workqueue Stalls"
+	depends on KERNEL_DEBUG_KERNEL
+	help
+	  Say Y here to enable stall detection on workqueues.  If a
+	  worker pool doesn't make forward progress on a pending work
+	  item for over a given amount of time, 30s by default, a
+	  warning message is printed along with dump of workqueue
+	  state.  This can be configured through kernel parameter
+	  "workqueue.watchdog_thresh" and its sysfs counterpart.
+
+config KERNEL_DEBUG_ATOMIC_SLEEP
+	bool "Compile the kernel with sleep inside atomic section checking"
+	depends on KERNEL_DEBUG_KERNEL
+	help
+	  If you say Y here, various routines which may sleep will become very
+	  noisy if they are called inside atomic sections: when a spinlock is
+	  held, inside an rcu read side critical section, inside preempt disabled
+	  sections, inside an interrupt, etc...
+
+config KERNEL_DEBUG_VM
+	bool "Compile the kernel with debug VM"
+	depends on KERNEL_DEBUG_KERNEL
+	help
+	  Enable this to turn on extended checks in the virtual-memory system
+          that may impact performance.
+
+	  If unsure, say N.
+
 config KERNEL_PRINTK_TIME
 	bool "Enable printk timestamps"
 	default y
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 5a9b82db80..d1ce30d2f7 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -594,6 +594,7 @@ CONFIG_BLOCK=y
 # CONFIG_BONDING is not set
 # CONFIG_BOOKE_WDT is not set
 CONFIG_BOOKE_WDT_DEFAULT_TIMEOUT=3
+# CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
 # CONFIG_BOOT_PRINTK_DELAY is not set
 CONFIG_BOOT_RAW=y
 CONFIG_BPF=y
@@ -1073,6 +1074,9 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_UART_BCM63XX is not set
 # CONFIG_DEBUG_VIRTUAL is not set
 # CONFIG_DEBUG_VM is not set
+# CONFIG_DEBUG_VM_PGFLAGS is not set
+# CONFIG_DEBUG_VM_RB is not set
+# CONFIG_DEBUG_VM_VMACACHE is not set
 # CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
 # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
 # CONFIG_DEBUG_WX is not set
@@ -1081,6 +1085,7 @@ CONFIG_DEBUG_KERNEL=y
 CONFIG_DEFAULT_CUBIC=y
 CONFIG_DEFAULT_DEADLINE=y
 CONFIG_DEFAULT_HOSTNAME="(none)"
+CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
 CONFIG_DEFAULT_IOSCHED="deadline"
 CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
 # CONFIG_DEFAULT_NOOP is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 372cad70a6..153520c396 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -617,6 +617,7 @@ CONFIG_BLOCK=y
 # CONFIG_BONDING is not set
 # CONFIG_BOOKE_WDT is not set
 CONFIG_BOOKE_WDT_DEFAULT_TIMEOUT=3
+# CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
 # CONFIG_BOOT_PRINTK_DELAY is not set
 CONFIG_BOOT_RAW=y
 CONFIG_BPF=y
@@ -1131,6 +1132,9 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_UART_BCM63XX is not set
 # CONFIG_DEBUG_VIRTUAL is not set
 # CONFIG_DEBUG_VM is not set
+# CONFIG_DEBUG_VM_PGFLAGS is not set
+# CONFIG_DEBUG_VM_RB is not set
+# CONFIG_DEBUG_VM_VMACACHE is not set
 # CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
 # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
 # CONFIG_DEBUG_WX is not set
@@ -1139,6 +1143,7 @@ CONFIG_DEBUG_KERNEL=y
 CONFIG_DEFAULT_CUBIC=y
 CONFIG_DEFAULT_DEADLINE=y
 CONFIG_DEFAULT_HOSTNAME="(none)"
+CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
 CONFIG_DEFAULT_IOSCHED="deadline"
 CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
 # CONFIG_DEFAULT_NOOP is not set
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
