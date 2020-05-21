Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6281DC922
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 10:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KcUra5tqjlcmCrHdN3AoUdNDiOiFwSF1/of38PMuCRg=; b=C46g5WTWMjUSWq
	aNk+UFHWAoYiUU/jqMA3qaltUSz3M48A97eIOw6wQCHmj4DLn6zudRS7BnAGV6TEq8z38fRmQ6itz
	j1SkTcH7ESlIQFLiPEKl3X+sSRlsb0Py1PlgQ9jXmSpZUw7dwkLT5Q/BccPHSsFZMawVZl5+mwKe4
	6YBnsbA2RpeR2DZClQRFfvhovDW+BhvL67CVhZC5J7IwDm8dLWth0iFzrIBXPErQRWWd9Nm+YdXGj
	yrNxUs1d9FDGptq85Jvm6kLUUFLS3akKGS+NNDsH2D4BY+sHkBdJjZ10xLyHZOhchcVsi/F6zuTYy
	jh/wC8Sh8fyfTJIHCn9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbh3V-0004uk-2U; Thu, 21 May 2020 08:59:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbh3B-0004GD-3K
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 08:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iUDAqesAoLhRj4iAfA4aKaqT2GubYQpI2Nj2gBAR/vY=; b=DXEwVwMRw5N5QWAH3Jjwtvp5rG
 566KHixaYcb/VqLeekal6Re93nM+63lHQYD30jn17ZEmdu2UdBc4/13l8co6oS+PxemMx0l6oYke/
 bPQx+Lc3oL4oGpP0vci3eFBe452cx7SsiWEbm2AdBIA2j5KgQOh1ndVx6zOUVDqXbM00GaAFkb+qb
 XVAfCsSBluQMcwjPQseSy1+g7DprISUroWj5eyyi4qInCj2FmCulHWJVp0b7tQK52Q6J9PSmhy9PW
 x7fjppcp5q1Jhh7F3SgqaSAXDagoDsMhPlFra4rVNTkjZ/HjIlu6Cd7fxMj8DfkCnWw65i4l2igte
 JltKLT/Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43052)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jbh16-0001yx-3K; Thu, 21 May 2020 09:57:28 +0100
Received: from rmk by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@shell.armlinux.org.uk>)
 id 1jbh15-0008V8-Ib; Thu, 21 May 2020 09:57:27 +0100
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jbh15-0008V8-Ib@shell.armlinux.org.uk>
Date: Thu, 21 May 2020 09:57:27 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_015938_659105_C8B867D4 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/3] kernel: backport v5.8 i2c-pxa updates
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

Add i2c-pxa updates queued for v5.8, which add bus recovery to this
driver; this is needed for the uDPU platform.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
 ...pxa-use-official-address-byte-helper.patch |  64 +++
 ...5.8-i2c-pxa-remove-unneeded-includes.patch |  42 ++
 ...ge-includes-to-be-in-alphabetical-or.patch |  57 +++
 ...-re-arrange-functions-to-flow-better.patch | 385 ++++++++++++++++++
 ...e-arrange-register-field-definitions.patch | 166 ++++++++
 ...nd-use-definitions-for-IBMR-register.patch |  71 ++++
 ...-set-fm-and-hs-members-for-each-type.patch |  71 ++++
 ...ove-private-definitions-to-i2c-pxa.c.patch | 135 ++++++
 ...-move-DT-IDs-along-side-platform-IDs.patch |  55 +++
 ..._pxa_scream_blue_murder-debug-output.patch |  52 +++
 ...13-v5.8-i2c-pxa-clean-up-decode_bits.patch |  58 +++
 ...pxa_wait_bus_not_busy-boundary-condi.patch |  58 +++
 ...lidate-i2c_pxa_-xfer-implementations.patch |  96 +++++
 ...omplaints-with-non-responsive-slaves.patch |  72 ++++
 ...a-ensure-timeout-messages-are-unique.patch |  50 +++
 ...2c-pxa-remove-some-unnecessary-debug.patch |  39 ++
 ...l-master-action-bits-in-i2c_pxa_stop.patch |  43 ++
 ...a-use-master-abort-for-device-probes.patch |  40 ++
 ...a-implement-generic-i2c-bus-recovery.patch | 290 +++++++++++++
 19 files changed, 1844 insertions(+)
 create mode 100644 target/linux/generic/backport-5.4/803-v5.8-i2c-pxa-use-official-address-byte-helper.patch
 create mode 100644 target/linux/generic/backport-5.4/804-v5.8-i2c-pxa-remove-unneeded-includes.patch
 create mode 100644 target/linux/generic/backport-5.4/805-v5.8-i2c-pxa-re-arrange-includes-to-be-in-alphabetical-or.patch
 create mode 100644 target/linux/generic/backport-5.4/806-v5.8-i2c-pxa-re-arrange-functions-to-flow-better.patch
 create mode 100644 target/linux/generic/backport-5.4/807-v5.8-i2c-pxa-re-arrange-register-field-definitions.patch
 create mode 100644 target/linux/generic/backport-5.4/808-v5.8-i2c-pxa-add-and-use-definitions-for-IBMR-register.patch
 create mode 100644 target/linux/generic/backport-5.4/809-v5.8-i2c-pxa-always-set-fm-and-hs-members-for-each-type.patch
 create mode 100644 target/linux/generic/backport-5.4/810-v5.8-i2c-pxa-move-private-definitions-to-i2c-pxa.c.patch
 create mode 100644 target/linux/generic/backport-5.4/811-v5.8-i2c-pxa-move-DT-IDs-along-side-platform-IDs.patch
 create mode 100644 target/linux/generic/backport-5.4/812-v5.8-i2c-pxa-fix-i2c_pxa_scream_blue_murder-debug-output.patch
 create mode 100644 target/linux/generic/backport-5.4/813-v5.8-i2c-pxa-clean-up-decode_bits.patch
 create mode 100644 target/linux/generic/backport-5.4/814-v5.8-i2c-pxa-fix-i2c_pxa_wait_bus_not_busy-boundary-condi.patch
 create mode 100644 target/linux/generic/backport-5.4/815-v5.8-i2c-pxa-consolidate-i2c_pxa_-xfer-implementations.patch
 create mode 100644 target/linux/generic/backport-5.4/816-v5.8-i2c-pxa-avoid-complaints-with-non-responsive-slaves.patch
 create mode 100644 target/linux/generic/backport-5.4/817-v5.8-i2c-pxa-ensure-timeout-messages-are-unique.patch
 create mode 100644 target/linux/generic/backport-5.4/818-v5.8-i2c-pxa-remove-some-unnecessary-debug.patch
 create mode 100644 target/linux/generic/backport-5.4/819-v5.8-i2c-pxa-clear-all-master-action-bits-in-i2c_pxa_stop.patch
 create mode 100644 target/linux/generic/backport-5.4/820-v5.8-i2c-pxa-use-master-abort-for-device-probes.patch
 create mode 100644 target/linux/generic/backport-5.4/821-v5.8-i2c-pxa-implement-generic-i2c-bus-recovery.patch

diff --git a/target/linux/generic/backport-5.4/803-v5.8-i2c-pxa-use-official-address-byte-helper.patch b/target/linux/generic/backport-5.4/803-v5.8-i2c-pxa-use-official-address-byte-helper.patch
new file mode 100644
index 000000000000..8aaa6c9b3c1c
--- /dev/null
+++ b/target/linux/generic/backport-5.4/803-v5.8-i2c-pxa-use-official-address-byte-helper.patch
@@ -0,0 +1,64 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 01/17] i2c: pxa: use official address byte helper
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+i2c-pxa was created before i2c_8bit_addr_from_msg() was implemented,
+and used its own i2c_pxa_addr_byte() which is functionally the same.
+Sadly, it was never updated to use this new helper. Switch it over.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 21 +++++++--------------
+ 1 file changed, 7 insertions(+), 14 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 2c3c3d6935c0..966000923e8e 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -675,16 +675,6 @@ static void i2c_pxa_slave_stop(struct pxa_i2c *i2c)
+  * PXA I2C Master mode
+  */
+ 
+-static inline unsigned int i2c_pxa_addr_byte(struct i2c_msg *msg)
+-{
+-	unsigned int addr = (msg->addr & 0x7f) << 1;
+-
+-	if (msg->flags & I2C_M_RD)
+-		addr |= 1;
+-
+-	return addr;
+-}
+-
+ static inline void i2c_pxa_start_message(struct pxa_i2c *i2c)
+ {
+ 	u32 icr;
+@@ -693,8 +683,8 @@ static inline void i2c_pxa_start_message(struct pxa_i2c *i2c)
+ 	/*
+ 	 * Step 1: target slave address into IDBR
+ 	 */
+-	writel(i2c_pxa_addr_byte(i2c->msg), _IDBR(i2c));
+-	i2c->req_slave_addr = i2c_pxa_addr_byte(i2c->msg);
++	i2c->req_slave_addr = i2c_8bit_addr_from_msg(i2c->msg);
++	writel(i2c->req_slave_addr, _IDBR(i2c));
+ 
+ 	/*
+ 	 * Step 2: initiate the write.
+@@ -1006,8 +999,8 @@ static void i2c_pxa_irq_txempty(struct pxa_i2c *i2c, u32 isr)
+ 		/*
+ 		 * Write the next address.
+ 		 */
+-		writel(i2c_pxa_addr_byte(i2c->msg), _IDBR(i2c));
+-		i2c->req_slave_addr = i2c_pxa_addr_byte(i2c->msg);
++		i2c->req_slave_addr = i2c_8bit_addr_from_msg(i2c->msg);
++		writel(i2c->req_slave_addr, _IDBR(i2c));
+ 
+ 		/*
+ 		 * And trigger a repeated start, and send the byte.
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/804-v5.8-i2c-pxa-remove-unneeded-includes.patch b/target/linux/generic/backport-5.4/804-v5.8-i2c-pxa-remove-unneeded-includes.patch
new file mode 100644
index 000000000000..ed4a3d592877
--- /dev/null
+++ b/target/linux/generic/backport-5.4/804-v5.8-i2c-pxa-remove-unneeded-includes.patch
@@ -0,0 +1,42 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 02/17] i2c: pxa: remove unneeded includes
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+i2c-pxa does not need linux/sched.h nor linux/time.h includes, so
+remove these.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 4 ----
+ 1 file changed, 4 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 966000923e8e..eddb749c9eae 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -20,8 +20,6 @@
+ #include <linux/module.h>
+ #include <linux/i2c.h>
+ #include <linux/init.h>
+-#include <linux/time.h>
+-#include <linux/sched.h>
+ #include <linux/delay.h>
+ #include <linux/errno.h>
+ #include <linux/interrupt.h>
+@@ -35,8 +33,6 @@
+ #include <linux/io.h>
+ #include <linux/platform_data/i2c-pxa.h>
+ 
+-#include <asm/irq.h>
+-
+ struct pxa_reg_layout {
+ 	u32 ibmr;
+ 	u32 idbr;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/805-v5.8-i2c-pxa-re-arrange-includes-to-be-in-alphabetical-or.patch b/target/linux/generic/backport-5.4/805-v5.8-i2c-pxa-re-arrange-includes-to-be-in-alphabetical-or.patch
new file mode 100644
index 000000000000..ccca8d1dc7b4
--- /dev/null
+++ b/target/linux/generic/backport-5.4/805-v5.8-i2c-pxa-re-arrange-includes-to-be-in-alphabetical-or.patch
@@ -0,0 +1,57 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 03/17] i2c: pxa: re-arrange includes to be in alphabetical
+ order
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Arrange the includes to be in alphabetical order to help avoid
+duplicated includes.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 18 +++++++++---------
+ 1 file changed, 9 insertions(+), 9 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index eddb749c9eae..ee83d2e46de0 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -16,22 +16,22 @@
+  *    Dec 2004: Added support for PXA27x and slave device probing [Liam Girdwood]
+  *    Feb 2005: Rework slave mode handling [RMK]
+  */
+-#include <linux/kernel.h>
+-#include <linux/module.h>
+-#include <linux/i2c.h>
+-#include <linux/init.h>
++#include <linux/clk.h>
+ #include <linux/delay.h>
++#include <linux/err.h>
+ #include <linux/errno.h>
+-#include <linux/interrupt.h>
++#include <linux/i2c.h>
+ #include <linux/i2c-pxa.h>
++#include <linux/init.h>
++#include <linux/interrupt.h>
++#include <linux/io.h>
++#include <linux/kernel.h>
++#include <linux/module.h>
+ #include <linux/of.h>
+ #include <linux/of_device.h>
+ #include <linux/platform_device.h>
+-#include <linux/err.h>
+-#include <linux/clk.h>
+-#include <linux/slab.h>
+-#include <linux/io.h>
+ #include <linux/platform_data/i2c-pxa.h>
++#include <linux/slab.h>
+ 
+ struct pxa_reg_layout {
+ 	u32 ibmr;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/806-v5.8-i2c-pxa-re-arrange-functions-to-flow-better.patch b/target/linux/generic/backport-5.4/806-v5.8-i2c-pxa-re-arrange-functions-to-flow-better.patch
new file mode 100644
index 000000000000..efe7071de4f0
--- /dev/null
+++ b/target/linux/generic/backport-5.4/806-v5.8-i2c-pxa-re-arrange-functions-to-flow-better.patch
@@ -0,0 +1,385 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 04/17] i2c: pxa: re-arrange functions to flow better
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Re-arrange the PXA I2C code to avoid forward declarations, and keep
+similar functionality (e.g. the non-IRQ mode support) together. This
+improves code readability.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 325 +++++++++++++++++------------------
+ 1 file changed, 162 insertions(+), 163 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index ee83d2e46de0..e5f00ae39861 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -327,7 +327,6 @@ static void i2c_pxa_scream_blue_murder(struct pxa_i2c *i2c, const char *why)
+ #endif /* ifdef DEBUG / else */
+ 
+ static void i2c_pxa_master_complete(struct pxa_i2c *i2c, int ret);
+-static irqreturn_t i2c_pxa_handler(int this_irq, void *dev_id);
+ 
+ static inline int i2c_pxa_is_slavemode(struct pxa_i2c *i2c)
+ {
+@@ -703,34 +702,6 @@ static inline void i2c_pxa_stop_message(struct pxa_i2c *i2c)
+ 	writel(icr, _ICR(i2c));
+ }
+ 
+-static int i2c_pxa_pio_set_master(struct pxa_i2c *i2c)
+-{
+-	/* make timeout the same as for interrupt based functions */
+-	long timeout = 2 * DEF_TIMEOUT;
+-
+-	/*
+-	 * Wait for the bus to become free.
+-	 */
+-	while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB)) {
+-		udelay(1000);
+-		show_state(i2c);
+-	}
+-
+-	if (timeout < 0) {
+-		show_state(i2c);
+-		dev_err(&i2c->adap.dev,
+-			"i2c_pxa: timeout waiting for bus free\n");
+-		return I2C_RETRY;
+-	}
+-
+-	/*
+-	 * Set master mode.
+-	 */
+-	writel(readl(_ICR(i2c)) | ICR_SCLE, _ICR(i2c));
+-
+-	return 0;
+-}
+-
+ /*
+  * PXA I2C send master code
+  * 1. Load master code to IDBR and send it.
+@@ -759,140 +730,6 @@ static int i2c_pxa_send_mastercode(struct pxa_i2c *i2c)
+ 	return (timeout == 0) ? I2C_RETRY : 0;
+ }
+ 
+-static int i2c_pxa_do_pio_xfer(struct pxa_i2c *i2c,
+-			       struct i2c_msg *msg, int num)
+-{
+-	unsigned long timeout = 500000; /* 5 seconds */
+-	int ret = 0;
+-
+-	ret = i2c_pxa_pio_set_master(i2c);
+-	if (ret)
+-		goto out;
+-
+-	i2c->msg = msg;
+-	i2c->msg_num = num;
+-	i2c->msg_idx = 0;
+-	i2c->msg_ptr = 0;
+-	i2c->irqlogidx = 0;
+-
+-	i2c_pxa_start_message(i2c);
+-
+-	while (i2c->msg_num > 0 && --timeout) {
+-		i2c_pxa_handler(0, i2c);
+-		udelay(10);
+-	}
+-
+-	i2c_pxa_stop_message(i2c);
+-
+-	/*
+-	 * We place the return code in i2c->msg_idx.
+-	 */
+-	ret = i2c->msg_idx;
+-
+-out:
+-	if (timeout == 0) {
+-		i2c_pxa_scream_blue_murder(i2c, "timeout");
+-		ret = I2C_RETRY;
+-	}
+-
+-	return ret;
+-}
+-
+-/*
+- * We are protected by the adapter bus mutex.
+- */
+-static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
+-{
+-	long timeout;
+-	int ret;
+-
+-	/*
+-	 * Wait for the bus to become free.
+-	 */
+-	ret = i2c_pxa_wait_bus_not_busy(i2c);
+-	if (ret) {
+-		dev_err(&i2c->adap.dev, "i2c_pxa: timeout waiting for bus free\n");
+-		goto out;
+-	}
+-
+-	/*
+-	 * Set master mode.
+-	 */
+-	ret = i2c_pxa_set_master(i2c);
+-	if (ret) {
+-		dev_err(&i2c->adap.dev, "i2c_pxa_set_master: error %d\n", ret);
+-		goto out;
+-	}
+-
+-	if (i2c->high_mode) {
+-		ret = i2c_pxa_send_mastercode(i2c);
+-		if (ret) {
+-			dev_err(&i2c->adap.dev, "i2c_pxa_send_mastercode timeout\n");
+-			goto out;
+-			}
+-	}
+-
+-	spin_lock_irq(&i2c->lock);
+-
+-	i2c->msg = msg;
+-	i2c->msg_num = num;
+-	i2c->msg_idx = 0;
+-	i2c->msg_ptr = 0;
+-	i2c->irqlogidx = 0;
+-
+-	i2c_pxa_start_message(i2c);
+-
+-	spin_unlock_irq(&i2c->lock);
+-
+-	/*
+-	 * The rest of the processing occurs in the interrupt handler.
+-	 */
+-	timeout = wait_event_timeout(i2c->wait, i2c->msg_num == 0, HZ * 5);
+-	i2c_pxa_stop_message(i2c);
+-
+-	/*
+-	 * We place the return code in i2c->msg_idx.
+-	 */
+-	ret = i2c->msg_idx;
+-
+-	if (!timeout && i2c->msg_num) {
+-		i2c_pxa_scream_blue_murder(i2c, "timeout");
+-		ret = I2C_RETRY;
+-	}
+-
+- out:
+-	return ret;
+-}
+-
+-static int i2c_pxa_pio_xfer(struct i2c_adapter *adap,
+-			    struct i2c_msg msgs[], int num)
+-{
+-	struct pxa_i2c *i2c = adap->algo_data;
+-	int ret, i;
+-
+-	/* If the I2C controller is disabled we need to reset it
+-	  (probably due to a suspend/resume destroying state). We do
+-	  this here as we can then avoid worrying about resuming the
+-	  controller before its users. */
+-	if (!(readl(_ICR(i2c)) & ICR_IUE))
+-		i2c_pxa_reset(i2c);
+-
+-	for (i = adap->retries; i >= 0; i--) {
+-		ret = i2c_pxa_do_pio_xfer(i2c, msgs, num);
+-		if (ret != I2C_RETRY)
+-			goto out;
+-
+-		if (i2c_debug)
+-			dev_dbg(&adap->dev, "Retrying transmission\n");
+-		udelay(100);
+-	}
+-	i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
+-	ret = -EREMOTEIO;
+- out:
+-	i2c_pxa_set_slave(i2c, ret);
+-	return ret;
+-}
+-
+ /*
+  * i2c_pxa_master_complete - complete the message and wake up.
+  */
+@@ -1099,6 +936,71 @@ static irqreturn_t i2c_pxa_handler(int this_irq, void *dev_id)
+ 	return IRQ_HANDLED;
+ }
+ 
++/*
++ * We are protected by the adapter bus mutex.
++ */
++static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
++{
++	long timeout;
++	int ret;
++
++	/*
++	 * Wait for the bus to become free.
++	 */
++	ret = i2c_pxa_wait_bus_not_busy(i2c);
++	if (ret) {
++		dev_err(&i2c->adap.dev, "i2c_pxa: timeout waiting for bus free\n");
++		goto out;
++	}
++
++	/*
++	 * Set master mode.
++	 */
++	ret = i2c_pxa_set_master(i2c);
++	if (ret) {
++		dev_err(&i2c->adap.dev, "i2c_pxa_set_master: error %d\n", ret);
++		goto out;
++	}
++
++	if (i2c->high_mode) {
++		ret = i2c_pxa_send_mastercode(i2c);
++		if (ret) {
++			dev_err(&i2c->adap.dev, "i2c_pxa_send_mastercode timeout\n");
++			goto out;
++			}
++	}
++
++	spin_lock_irq(&i2c->lock);
++
++	i2c->msg = msg;
++	i2c->msg_num = num;
++	i2c->msg_idx = 0;
++	i2c->msg_ptr = 0;
++	i2c->irqlogidx = 0;
++
++	i2c_pxa_start_message(i2c);
++
++	spin_unlock_irq(&i2c->lock);
++
++	/*
++	 * The rest of the processing occurs in the interrupt handler.
++	 */
++	timeout = wait_event_timeout(i2c->wait, i2c->msg_num == 0, HZ * 5);
++	i2c_pxa_stop_message(i2c);
++
++	/*
++	 * We place the return code in i2c->msg_idx.
++	 */
++	ret = i2c->msg_idx;
++
++	if (!timeout && i2c->msg_num) {
++		i2c_pxa_scream_blue_murder(i2c, "timeout");
++		ret = I2C_RETRY;
++	}
++
++ out:
++	return ret;
++}
+ 
+ static int i2c_pxa_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
+ {
+@@ -1132,6 +1034,103 @@ static const struct i2c_algorithm i2c_pxa_algorithm = {
+ 	.functionality	= i2c_pxa_functionality,
+ };
+ 
++/* Non-interrupt mode support */
++static int i2c_pxa_pio_set_master(struct pxa_i2c *i2c)
++{
++	/* make timeout the same as for interrupt based functions */
++	long timeout = 2 * DEF_TIMEOUT;
++
++	/*
++	 * Wait for the bus to become free.
++	 */
++	while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB)) {
++		udelay(1000);
++		show_state(i2c);
++	}
++
++	if (timeout < 0) {
++		show_state(i2c);
++		dev_err(&i2c->adap.dev,
++			"i2c_pxa: timeout waiting for bus free\n");
++		return I2C_RETRY;
++	}
++
++	/*
++	 * Set master mode.
++	 */
++	writel(readl(_ICR(i2c)) | ICR_SCLE, _ICR(i2c));
++
++	return 0;
++}
++
++static int i2c_pxa_do_pio_xfer(struct pxa_i2c *i2c,
++			       struct i2c_msg *msg, int num)
++{
++	unsigned long timeout = 500000; /* 5 seconds */
++	int ret = 0;
++
++	ret = i2c_pxa_pio_set_master(i2c);
++	if (ret)
++		goto out;
++
++	i2c->msg = msg;
++	i2c->msg_num = num;
++	i2c->msg_idx = 0;
++	i2c->msg_ptr = 0;
++	i2c->irqlogidx = 0;
++
++	i2c_pxa_start_message(i2c);
++
++	while (i2c->msg_num > 0 && --timeout) {
++		i2c_pxa_handler(0, i2c);
++		udelay(10);
++	}
++
++	i2c_pxa_stop_message(i2c);
++
++	/*
++	 * We place the return code in i2c->msg_idx.
++	 */
++	ret = i2c->msg_idx;
++
++out:
++	if (timeout == 0) {
++		i2c_pxa_scream_blue_murder(i2c, "timeout");
++		ret = I2C_RETRY;
++	}
++
++	return ret;
++}
++
++static int i2c_pxa_pio_xfer(struct i2c_adapter *adap,
++			    struct i2c_msg msgs[], int num)
++{
++	struct pxa_i2c *i2c = adap->algo_data;
++	int ret, i;
++
++	/* If the I2C controller is disabled we need to reset it
++	  (probably due to a suspend/resume destroying state). We do
++	  this here as we can then avoid worrying about resuming the
++	  controller before its users. */
++	if (!(readl(_ICR(i2c)) & ICR_IUE))
++		i2c_pxa_reset(i2c);
++
++	for (i = adap->retries; i >= 0; i--) {
++		ret = i2c_pxa_do_pio_xfer(i2c, msgs, num);
++		if (ret != I2C_RETRY)
++			goto out;
++
++		if (i2c_debug)
++			dev_dbg(&adap->dev, "Retrying transmission\n");
++		udelay(100);
++	}
++	i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
++	ret = -EREMOTEIO;
++ out:
++	i2c_pxa_set_slave(i2c, ret);
++	return ret;
++}
++
+ static const struct i2c_algorithm i2c_pxa_pio_algorithm = {
+ 	.master_xfer	= i2c_pxa_pio_xfer,
+ 	.functionality	= i2c_pxa_functionality,
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/807-v5.8-i2c-pxa-re-arrange-register-field-definitions.patch b/target/linux/generic/backport-5.4/807-v5.8-i2c-pxa-re-arrange-register-field-definitions.patch
new file mode 100644
index 000000000000..348da2a5f2f2
--- /dev/null
+++ b/target/linux/generic/backport-5.4/807-v5.8-i2c-pxa-re-arrange-register-field-definitions.patch
@@ -0,0 +1,166 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 05/17] i2c: pxa: re-arrange register field definitions
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Arrange the register field definitions to be grouped together, rather
+than the Armada-3700 definitions being separated from the rest of the
+definitions.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 113 ++++++++++++++++-------------------
+ 1 file changed, 53 insertions(+), 60 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index e5f00ae39861..ea96dfa6b9d5 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -33,6 +33,56 @@
+ #include <linux/platform_data/i2c-pxa.h>
+ #include <linux/slab.h>
+ 
++/* I2C register field definitions */
++#define ICR_START	(1 << 0)	   /* start bit */
++#define ICR_STOP	(1 << 1)	   /* stop bit */
++#define ICR_ACKNAK	(1 << 2)	   /* send ACK(0) or NAK(1) */
++#define ICR_TB		(1 << 3)	   /* transfer byte bit */
++#define ICR_MA		(1 << 4)	   /* master abort */
++#define ICR_SCLE	(1 << 5)	   /* master clock enable */
++#define ICR_IUE		(1 << 6)	   /* unit enable */
++#define ICR_GCD		(1 << 7)	   /* general call disable */
++#define ICR_ITEIE	(1 << 8)	   /* enable tx interrupts */
++#define ICR_IRFIE	(1 << 9)	   /* enable rx interrupts */
++#define ICR_BEIE	(1 << 10)	   /* enable bus error ints */
++#define ICR_SSDIE	(1 << 11)	   /* slave STOP detected int enable */
++#define ICR_ALDIE	(1 << 12)	   /* enable arbitration interrupt */
++#define ICR_SADIE	(1 << 13)	   /* slave address detected int enable */
++#define ICR_UR		(1 << 14)	   /* unit reset */
++#define ICR_FM		(1 << 15)	   /* fast mode */
++#define ICR_HS		(1 << 16)	   /* High Speed mode */
++#define ICR_A3700_FM	(1 << 16)	   /* fast mode for armada-3700 */
++#define ICR_A3700_HS	(1 << 17)	   /* high speed mode for armada-3700 */
++#define ICR_GPIOEN	(1 << 19)	   /* enable GPIO mode for SCL in HS */
++
++#define ISR_RWM		(1 << 0)	   /* read/write mode */
++#define ISR_ACKNAK	(1 << 1)	   /* ack/nak status */
++#define ISR_UB		(1 << 2)	   /* unit busy */
++#define ISR_IBB		(1 << 3)	   /* bus busy */
++#define ISR_SSD		(1 << 4)	   /* slave stop detected */
++#define ISR_ALD		(1 << 5)	   /* arbitration loss detected */
++#define ISR_ITE		(1 << 6)	   /* tx buffer empty */
++#define ISR_IRF		(1 << 7)	   /* rx buffer full */
++#define ISR_GCAD	(1 << 8)	   /* general call address detected */
++#define ISR_SAD		(1 << 9)	   /* slave address detected */
++#define ISR_BED		(1 << 10)	   /* bus error no ACK/NAK */
++
++#define ILCR_SLV_SHIFT		0
++#define ILCR_SLV_MASK		(0x1FF << ILCR_SLV_SHIFT)
++#define ILCR_FLV_SHIFT		9
++#define ILCR_FLV_MASK		(0x1FF << ILCR_FLV_SHIFT)
++#define ILCR_HLVL_SHIFT		18
++#define ILCR_HLVL_MASK		(0x1FF << ILCR_HLVL_SHIFT)
++#define ILCR_HLVH_SHIFT		27
++#define ILCR_HLVH_MASK		(0x1F << ILCR_HLVH_SHIFT)
++
++#define IWCR_CNT_SHIFT		0
++#define IWCR_CNT_MASK		(0x1F << IWCR_CNT_SHIFT)
++#define IWCR_HS_CNT1_SHIFT	5
++#define IWCR_HS_CNT1_MASK	(0x1F << IWCR_HS_CNT1_SHIFT)
++#define IWCR_HS_CNT2_SHIFT	10
++#define IWCR_HS_CNT2_MASK	(0x1F << IWCR_HS_CNT2_SHIFT)
++
+ struct pxa_reg_layout {
+ 	u32 ibmr;
+ 	u32 idbr;
+@@ -53,12 +103,7 @@ enum pxa_i2c_types {
+ 	REGS_A3700,
+ };
+ 
+-#define ICR_BUSMODE_FM	(1 << 16)	   /* shifted fast mode for armada-3700 */
+-#define ICR_BUSMODE_HS	(1 << 17)	   /* shifted high speed mode for armada-3700 */
+-
+-/*
+- * I2C registers definitions
+- */
++/* I2C register layout definitions */
+ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 	[REGS_PXA2XX] = {
+ 		.ibmr =	0x00,
+@@ -96,8 +141,8 @@ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 		.icr =	0x08,
+ 		.isr =	0x0c,
+ 		.isar =	0x10,
+-		.fm = ICR_BUSMODE_FM,
+-		.hs = ICR_BUSMODE_HS,
++		.fm = ICR_A3700_FM,
++		.hs = ICR_A3700_HS,
+ 	},
+ };
+ 
+@@ -111,58 +156,6 @@ static const struct platform_device_id i2c_pxa_id_table[] = {
+ };
+ MODULE_DEVICE_TABLE(platform, i2c_pxa_id_table);
+ 
+-/*
+- * I2C bit definitions
+- */
+-
+-#define ICR_START	(1 << 0)	   /* start bit */
+-#define ICR_STOP	(1 << 1)	   /* stop bit */
+-#define ICR_ACKNAK	(1 << 2)	   /* send ACK(0) or NAK(1) */
+-#define ICR_TB		(1 << 3)	   /* transfer byte bit */
+-#define ICR_MA		(1 << 4)	   /* master abort */
+-#define ICR_SCLE	(1 << 5)	   /* master clock enable */
+-#define ICR_IUE		(1 << 6)	   /* unit enable */
+-#define ICR_GCD		(1 << 7)	   /* general call disable */
+-#define ICR_ITEIE	(1 << 8)	   /* enable tx interrupts */
+-#define ICR_IRFIE	(1 << 9)	   /* enable rx interrupts */
+-#define ICR_BEIE	(1 << 10)	   /* enable bus error ints */
+-#define ICR_SSDIE	(1 << 11)	   /* slave STOP detected int enable */
+-#define ICR_ALDIE	(1 << 12)	   /* enable arbitration interrupt */
+-#define ICR_SADIE	(1 << 13)	   /* slave address detected int enable */
+-#define ICR_UR		(1 << 14)	   /* unit reset */
+-#define ICR_FM		(1 << 15)	   /* fast mode */
+-#define ICR_HS		(1 << 16)	   /* High Speed mode */
+-#define ICR_GPIOEN	(1 << 19)	   /* enable GPIO mode for SCL in HS */
+-
+-#define ISR_RWM		(1 << 0)	   /* read/write mode */
+-#define ISR_ACKNAK	(1 << 1)	   /* ack/nak status */
+-#define ISR_UB		(1 << 2)	   /* unit busy */
+-#define ISR_IBB		(1 << 3)	   /* bus busy */
+-#define ISR_SSD		(1 << 4)	   /* slave stop detected */
+-#define ISR_ALD		(1 << 5)	   /* arbitration loss detected */
+-#define ISR_ITE		(1 << 6)	   /* tx buffer empty */
+-#define ISR_IRF		(1 << 7)	   /* rx buffer full */
+-#define ISR_GCAD	(1 << 8)	   /* general call address detected */
+-#define ISR_SAD		(1 << 9)	   /* slave address detected */
+-#define ISR_BED		(1 << 10)	   /* bus error no ACK/NAK */
+-
+-/* bit field shift & mask */
+-#define ILCR_SLV_SHIFT		0
+-#define ILCR_SLV_MASK		(0x1FF << ILCR_SLV_SHIFT)
+-#define ILCR_FLV_SHIFT		9
+-#define ILCR_FLV_MASK		(0x1FF << ILCR_FLV_SHIFT)
+-#define ILCR_HLVL_SHIFT		18
+-#define ILCR_HLVL_MASK		(0x1FF << ILCR_HLVL_SHIFT)
+-#define ILCR_HLVH_SHIFT		27
+-#define ILCR_HLVH_MASK		(0x1F << ILCR_HLVH_SHIFT)
+-
+-#define IWCR_CNT_SHIFT		0
+-#define IWCR_CNT_MASK		(0x1F << IWCR_CNT_SHIFT)
+-#define IWCR_HS_CNT1_SHIFT	5
+-#define IWCR_HS_CNT1_MASK	(0x1F << IWCR_HS_CNT1_SHIFT)
+-#define IWCR_HS_CNT2_SHIFT	10
+-#define IWCR_HS_CNT2_MASK	(0x1F << IWCR_HS_CNT2_SHIFT)
+-
+ struct pxa_i2c {
+ 	spinlock_t		lock;
+ 	wait_queue_head_t	wait;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/808-v5.8-i2c-pxa-add-and-use-definitions-for-IBMR-register.patch b/target/linux/generic/backport-5.4/808-v5.8-i2c-pxa-add-and-use-definitions-for-IBMR-register.patch
new file mode 100644
index 000000000000..9d7c50164025
--- /dev/null
+++ b/target/linux/generic/backport-5.4/808-v5.8-i2c-pxa-add-and-use-definitions-for-IBMR-register.patch
@@ -0,0 +1,71 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 06/17] i2c: pxa: add and use definitions for IBMR register
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Add definitions for the bits in the IBMR register, and use them in the
+code. This improves readability.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 12 ++++++++----
+ 1 file changed, 8 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index ea96dfa6b9d5..b3286d7ab75d 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -34,6 +34,9 @@
+ #include <linux/slab.h>
+ 
+ /* I2C register field definitions */
++#define IBMR_SDAS	(1 << 0)
++#define IBMR_SCLS	(1 << 1)
++
+ #define ICR_START	(1 << 0)	   /* start bit */
+ #define ICR_STOP	(1 << 1)	   /* stop bit */
+ #define ICR_ACKNAK	(1 << 2)	   /* send ACK(0) or NAK(1) */
+@@ -335,7 +338,7 @@ static void i2c_pxa_abort(struct pxa_i2c *i2c)
+ 		return;
+ 	}
+ 
+-	while ((i > 0) && (readl(_IBMR(i2c)) & 0x1) == 0) {
++	while ((i > 0) && (readl(_IBMR(i2c)) & IBMR_SDAS) == 0) {
+ 		unsigned long icr = readl(_ICR(i2c));
+ 
+ 		icr &= ~ICR_START;
+@@ -390,7 +393,8 @@ static int i2c_pxa_wait_master(struct pxa_i2c *i2c)
+ 		 * quick check of the i2c lines themselves to ensure they've
+ 		 * gone high...
+ 		 */
+-		if ((readl(_ISR(i2c)) & (ISR_UB | ISR_IBB)) == 0 && readl(_IBMR(i2c)) == 3) {
++		if ((readl(_ISR(i2c)) & (ISR_UB | ISR_IBB)) == 0 &&
++		    readl(_IBMR(i2c)) == (IBMR_SCLS | IBMR_SDAS)) {
+ 			if (i2c_debug > 0)
+ 				dev_dbg(&i2c->adap.dev, "%s: done\n", __func__);
+ 			return 1;
+@@ -575,7 +579,7 @@ static void i2c_pxa_slave_start(struct pxa_i2c *i2c, u32 isr)
+ 	timeout = 0x10000;
+ 
+ 	while (1) {
+-		if ((readl(_IBMR(i2c)) & 2) == 2)
++		if ((readl(_IBMR(i2c)) & IBMR_SCLS) == IBMR_SCLS)
+ 			break;
+ 
+ 		timeout--;
+@@ -638,7 +642,7 @@ static void i2c_pxa_slave_start(struct pxa_i2c *i2c, u32 isr)
+ 	timeout = 0x10000;
+ 
+ 	while (1) {
+-		if ((readl(_IBMR(i2c)) & 2) == 2)
++		if ((readl(_IBMR(i2c)) & IBMR_SCLS) == IBMR_SCLS)
+ 			break;
+ 
+ 		timeout--;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/809-v5.8-i2c-pxa-always-set-fm-and-hs-members-for-each-type.patch b/target/linux/generic/backport-5.4/809-v5.8-i2c-pxa-always-set-fm-and-hs-members-for-each-type.patch
new file mode 100644
index 000000000000..2e98c7ba00bd
--- /dev/null
+++ b/target/linux/generic/backport-5.4/809-v5.8-i2c-pxa-always-set-fm-and-hs-members-for-each-type.patch
@@ -0,0 +1,71 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 07/17] i2c: pxa: always set fm and hs members for each type
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Always set the fm and hs members of struct pxa_reg_layout. These
+members are already taking space, we don't need code as well.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 12 ++++++++++--
+ 1 file changed, 10 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index b3286d7ab75d..05dbe6bf4633 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -114,6 +114,8 @@ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 		.icr =	0x10,
+ 		.isr =	0x18,
+ 		.isar =	0x20,
++		.fm = ICR_FM,
++		.hs = ICR_HS,
+ 	},
+ 	[REGS_PXA3XX] = {
+ 		.ibmr =	0x00,
+@@ -121,6 +123,8 @@ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 		.icr =	0x08,
+ 		.isr =	0x0c,
+ 		.isar =	0x10,
++		.fm = ICR_FM,
++		.hs = ICR_HS,
+ 	},
+ 	[REGS_CE4100] = {
+ 		.ibmr =	0x14,
+@@ -128,6 +132,8 @@ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 		.icr =	0x00,
+ 		.isr =	0x04,
+ 		/* no isar register */
++		.fm = ICR_FM,
++		.hs = ICR_HS,
+ 	},
+ 	[REGS_PXA910] = {
+ 		.ibmr = 0x00,
+@@ -137,6 +143,8 @@ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 		.isar = 0x20,
+ 		.ilcr = 0x28,
+ 		.iwcr = 0x30,
++		.fm = ICR_FM,
++		.hs = ICR_HS,
+ 	},
+ 	[REGS_A3700] = {
+ 		.ibmr =	0x00,
+@@ -1235,8 +1243,8 @@ static int i2c_pxa_probe(struct platform_device *dev)
+ 	i2c->reg_idbr = i2c->reg_base + pxa_reg_layout[i2c_type].idbr;
+ 	i2c->reg_icr = i2c->reg_base + pxa_reg_layout[i2c_type].icr;
+ 	i2c->reg_isr = i2c->reg_base + pxa_reg_layout[i2c_type].isr;
+-	i2c->fm_mask = pxa_reg_layout[i2c_type].fm ? : ICR_FM;
+-	i2c->hs_mask = pxa_reg_layout[i2c_type].hs ? : ICR_HS;
++	i2c->fm_mask = pxa_reg_layout[i2c_type].fm;
++	i2c->hs_mask = pxa_reg_layout[i2c_type].hs;
+ 
+ 	if (i2c_type != REGS_CE4100)
+ 		i2c->reg_isar = i2c->reg_base + pxa_reg_layout[i2c_type].isar;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/810-v5.8-i2c-pxa-move-private-definitions-to-i2c-pxa.c.patch b/target/linux/generic/backport-5.4/810-v5.8-i2c-pxa-move-private-definitions-to-i2c-pxa.c.patch
new file mode 100644
index 000000000000..a7bbdd954608
--- /dev/null
+++ b/target/linux/generic/backport-5.4/810-v5.8-i2c-pxa-move-private-definitions-to-i2c-pxa.c.patch
@@ -0,0 +1,135 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 08/17] i2c: pxa: move private definitions to i2c-pxa.c
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Move driver-private definitions out of the i2c-pxa.h platform data
+header file into the driver itself. Nothing outside of the driver
+makes use of these constants.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c          | 43 ++++++++++++++++++++++++
+ include/linux/platform_data/i2c-pxa.h | 48 ---------------------------
+ 2 files changed, 43 insertions(+), 48 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 05dbe6bf4633..482768a9fdd2 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -86,6 +86,49 @@
+ #define IWCR_HS_CNT2_SHIFT	10
+ #define IWCR_HS_CNT2_MASK	(0x1F << IWCR_HS_CNT2_SHIFT)
+ 
++/* need a longer timeout if we're dealing with the fact we may well be
++ * looking at a multi-master environment
++ */
++#define DEF_TIMEOUT             32
++
++#define BUS_ERROR               (-EREMOTEIO)
++#define XFER_NAKED              (-ECONNREFUSED)
++#define I2C_RETRY               (-2000) /* an error has occurred retry transmit */
++
++/* ICR initialize bit values
++ *
++ * 15 FM     0 (100 kHz operation)
++ * 14 UR     0 (No unit reset)
++ * 13 SADIE  0 (Disables the unit from interrupting on slave addresses
++ *              matching its slave address)
++ * 12 ALDIE  0 (Disables the unit from interrupt when it loses arbitration
++ *              in master mode)
++ * 11 SSDIE  0 (Disables interrupts from a slave stop detected, in slave mode)
++ * 10 BEIE   1 (Enable interrupts from detected bus errors, no ACK sent)
++ *  9 IRFIE  1 (Enable interrupts from full buffer received)
++ *  8 ITEIE  1 (Enables the I2C unit to interrupt when transmit buffer empty)
++ *  7 GCD    1 (Disables i2c unit response to general call messages as a slave)
++ *  6 IUE    0 (Disable unit until we change settings)
++ *  5 SCLE   1 (Enables the i2c clock output for master mode (drives SCL)
++ *  4 MA     0 (Only send stop with the ICR stop bit)
++ *  3 TB     0 (We are not transmitting a byte initially)
++ *  2 ACKNAK 0 (Send an ACK after the unit receives a byte)
++ *  1 STOP   0 (Do not send a STOP)
++ *  0 START  0 (Do not send a START)
++ */
++#define I2C_ICR_INIT	(ICR_BEIE | ICR_IRFIE | ICR_ITEIE | ICR_GCD | ICR_SCLE)
++
++/* I2C status register init values
++ *
++ * 10 BED    1 (Clear bus error detected)
++ *  9 SAD    1 (Clear slave address detected)
++ *  7 IRF    1 (Clear IDBR Receive Full)
++ *  6 ITE    1 (Clear IDBR Transmit Empty)
++ *  5 ALD    1 (Clear Arbitration Loss Detected)
++ *  4 SSD    1 (Clear Slave Stop Detected)
++ */
++#define I2C_ISR_INIT	0x7FF  /* status register init */
++
+ struct pxa_reg_layout {
+ 	u32 ibmr;
+ 	u32 idbr;
+diff --git a/include/linux/platform_data/i2c-pxa.h b/include/linux/platform_data/i2c-pxa.h
+index cb290092599c..5c08a6ff3444 100644
+--- a/include/linux/platform_data/i2c-pxa.h
++++ b/include/linux/platform_data/i2c-pxa.h
+@@ -7,54 +7,6 @@
+ #ifndef _I2C_PXA_H_
+ #define _I2C_PXA_H_
+ 
+-#if 0
+-#define DEF_TIMEOUT             3
+-#else
+-/* need a longer timeout if we're dealing with the fact we may well be
+- * looking at a multi-master environment
+-*/
+-#define DEF_TIMEOUT             32
+-#endif
+-
+-#define BUS_ERROR               (-EREMOTEIO)
+-#define XFER_NAKED              (-ECONNREFUSED)
+-#define I2C_RETRY               (-2000) /* an error has occurred retry transmit */
+-
+-/* ICR initialize bit values
+-*
+-*  15. FM       0 (100 Khz operation)
+-*  14. UR       0 (No unit reset)
+-*  13. SADIE    0 (Disables the unit from interrupting on slave addresses
+-*                                       matching its slave address)
+-*  12. ALDIE    0 (Disables the unit from interrupt when it loses arbitration
+-*                                       in master mode)
+-*  11. SSDIE    0 (Disables interrupts from a slave stop detected, in slave mode)
+-*  10. BEIE     1 (Enable interrupts from detected bus errors, no ACK sent)
+-*  9.  IRFIE    1 (Enable interrupts from full buffer received)
+-*  8.  ITEIE    1 (Enables the I2C unit to interrupt when transmit buffer empty)
+-*  7.  GCD      1 (Disables i2c unit response to general call messages as a slave)
+-*  6.  IUE      0 (Disable unit until we change settings)
+-*  5.  SCLE     1 (Enables the i2c clock output for master mode (drives SCL)
+-*  4.  MA       0 (Only send stop with the ICR stop bit)
+-*  3.  TB       0 (We are not transmitting a byte initially)
+-*  2.  ACKNAK   0 (Send an ACK after the unit receives a byte)
+-*  1.  STOP     0 (Do not send a STOP)
+-*  0.  START    0 (Do not send a START)
+-*
+-*/
+-#define I2C_ICR_INIT	(ICR_BEIE | ICR_IRFIE | ICR_ITEIE | ICR_GCD | ICR_SCLE)
+-
+-/* I2C status register init values
+- *
+- * 10. BED      1 (Clear bus error detected)
+- * 9.  SAD      1 (Clear slave address detected)
+- * 7.  IRF      1 (Clear IDBR Receive Full)
+- * 6.  ITE      1 (Clear IDBR Transmit Empty)
+- * 5.  ALD      1 (Clear Arbitration Loss Detected)
+- * 4.  SSD      1 (Clear Slave Stop Detected)
+- */
+-#define I2C_ISR_INIT	0x7FF  /* status register init */
+-
+ struct i2c_slave_client;
+ 
+ struct i2c_pxa_platform_data {
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/811-v5.8-i2c-pxa-move-DT-IDs-along-side-platform-IDs.patch b/target/linux/generic/backport-5.4/811-v5.8-i2c-pxa-move-DT-IDs-along-side-platform-IDs.patch
new file mode 100644
index 000000000000..3f1b96a8d6b9
--- /dev/null
+++ b/target/linux/generic/backport-5.4/811-v5.8-i2c-pxa-move-DT-IDs-along-side-platform-IDs.patch
@@ -0,0 +1,55 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 09/17] i2c: pxa: move DT IDs along side platform IDs
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Move the ID tables into one place, near the device dependent data.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 18 +++++++++---------
+ 1 file changed, 9 insertions(+), 9 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 482768a9fdd2..760a29fb6af5 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -200,6 +200,15 @@ static struct pxa_reg_layout pxa_reg_layout[] = {
+ 	},
+ };
+ 
++static const struct of_device_id i2c_pxa_dt_ids[] = {
++	{ .compatible = "mrvl,pxa-i2c", .data = (void *)REGS_PXA2XX },
++	{ .compatible = "mrvl,pwri2c", .data = (void *)REGS_PXA3XX },
++	{ .compatible = "mrvl,mmp-twsi", .data = (void *)REGS_PXA910 },
++	{ .compatible = "marvell,armada-3700-i2c", .data = (void *)REGS_A3700 },
++	{}
++};
++MODULE_DEVICE_TABLE(of, i2c_pxa_dt_ids);
++
+ static const struct platform_device_id i2c_pxa_id_table[] = {
+ 	{ "pxa2xx-i2c",		REGS_PXA2XX },
+ 	{ "pxa3xx-pwri2c",	REGS_PXA3XX },
+@@ -1184,15 +1193,6 @@ static const struct i2c_algorithm i2c_pxa_pio_algorithm = {
+ 	.functionality	= i2c_pxa_functionality,
+ };
+ 
+-static const struct of_device_id i2c_pxa_dt_ids[] = {
+-	{ .compatible = "mrvl,pxa-i2c", .data = (void *)REGS_PXA2XX },
+-	{ .compatible = "mrvl,pwri2c", .data = (void *)REGS_PXA3XX },
+-	{ .compatible = "mrvl,mmp-twsi", .data = (void *)REGS_PXA910 },
+-	{ .compatible = "marvell,armada-3700-i2c", .data = (void *)REGS_A3700 },
+-	{}
+-};
+-MODULE_DEVICE_TABLE(of, i2c_pxa_dt_ids);
+-
+ static int i2c_pxa_probe_dt(struct platform_device *pdev, struct pxa_i2c *i2c,
+ 			    enum pxa_i2c_types *i2c_types)
+ {
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/812-v5.8-i2c-pxa-fix-i2c_pxa_scream_blue_murder-debug-output.patch b/target/linux/generic/backport-5.4/812-v5.8-i2c-pxa-fix-i2c_pxa_scream_blue_murder-debug-output.patch
new file mode 100644
index 000000000000..6c912e625490
--- /dev/null
+++ b/target/linux/generic/backport-5.4/812-v5.8-i2c-pxa-fix-i2c_pxa_scream_blue_murder-debug-output.patch
@@ -0,0 +1,52 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 10/17] i2c: pxa: fix i2c_pxa_scream_blue_murder() debug output
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+The IRQ log output is supposed to appear on a single line.  However,
+commit 3a2dc1677b60 ("i2c: pxa: Update debug function to dump more info
+on error") resulted in it being printed one-entry-per-line, which is
+excessively long.
+
+Fixing this is not a trivial matter; using pr_cont() doesn't work as
+the previous dev_dbg() may not have been compiled in, or may be
+dynamic.
+
+Since the rest of this function output is at error level, and is also
+debug output, promote this to error level as well to avoid this
+problem.
+
+Reduce the number of always zero prefix digits to save screen real-
+estate.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 7 +++----
+ 1 file changed, 3 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 760a29fb6af5..f3a11050053c 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -364,11 +364,10 @@ static void i2c_pxa_scream_blue_murder(struct pxa_i2c *i2c, const char *why)
+ 	dev_err(dev, "IBMR: %08x IDBR: %08x ICR: %08x ISR: %08x\n",
+ 		readl(_IBMR(i2c)), readl(_IDBR(i2c)), readl(_ICR(i2c)),
+ 		readl(_ISR(i2c)));
+-	dev_dbg(dev, "log: ");
++	dev_err(dev, "log:");
+ 	for (i = 0; i < i2c->irqlogidx; i++)
+-		pr_debug("[%08x:%08x] ", i2c->isrlog[i], i2c->icrlog[i]);
+-
+-	pr_debug("\n");
++		pr_cont(" [%03x:%05x]", i2c->isrlog[i], i2c->icrlog[i]);
++	pr_cont("\n");
+ }
+ 
+ #else /* ifdef DEBUG */
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/813-v5.8-i2c-pxa-clean-up-decode_bits.patch b/target/linux/generic/backport-5.4/813-v5.8-i2c-pxa-clean-up-decode_bits.patch
new file mode 100644
index 000000000000..552630eaf7d7
--- /dev/null
+++ b/target/linux/generic/backport-5.4/813-v5.8-i2c-pxa-clean-up-decode_bits.patch
@@ -0,0 +1,58 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 11/17] i2c: pxa: clean up decode_bits()
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Clean up decode_bits() to use pr_cont(), and move the newline into the
+function rather than at its two callsites. Avoid printing an
+unnecessary space before the newline.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 7 +++----
+ 1 file changed, 3 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index f3a11050053c..b2c7765756e2 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -287,13 +287,14 @@ struct bits {
+ static inline void
+ decode_bits(const char *prefix, const struct bits *bits, int num, u32 val)
+ {
+-	printk("%s %08x: ", prefix, val);
++	printk("%s %08x:", prefix, val);
+ 	while (num--) {
+ 		const char *str = val & bits->mask ? bits->set : bits->unset;
+ 		if (str)
+-			printk("%s ", str);
++			pr_cont(" %s", str);
+ 		bits++;
+ 	}
++	pr_cont("\n");
+ }
+ 
+ static const struct bits isr_bits[] = {
+@@ -313,7 +314,6 @@ static const struct bits isr_bits[] = {
+ static void decode_ISR(unsigned int val)
+ {
+ 	decode_bits(KERN_DEBUG "ISR", isr_bits, ARRAY_SIZE(isr_bits), val);
+-	printk("\n");
+ }
+ 
+ static const struct bits icr_bits[] = {
+@@ -338,7 +338,6 @@ static const struct bits icr_bits[] = {
+ static void decode_ICR(unsigned int val)
+ {
+ 	decode_bits(KERN_DEBUG "ICR", icr_bits, ARRAY_SIZE(icr_bits), val);
+-	printk("\n");
+ }
+ #endif
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/814-v5.8-i2c-pxa-fix-i2c_pxa_wait_bus_not_busy-boundary-condi.patch b/target/linux/generic/backport-5.4/814-v5.8-i2c-pxa-fix-i2c_pxa_wait_bus_not_busy-boundary-condi.patch
new file mode 100644
index 000000000000..d5aded5479cb
--- /dev/null
+++ b/target/linux/generic/backport-5.4/814-v5.8-i2c-pxa-fix-i2c_pxa_wait_bus_not_busy-boundary-condi.patch
@@ -0,0 +1,58 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: linux-i2c@vger.kernel.org
+Subject: [PATCH 12/17] i2c: pxa: fix i2c_pxa_wait_bus_not_busy() boundary
+ condition
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Fix i2c_pxa_wait_bus_not_busy()'s boundary conditions, so that a
+coincidental success and timeout results in the function returning
+success.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 17 ++++++++++++-----
+ 1 file changed, 12 insertions(+), 5 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index b2c7765756e2..19505ffbb8f1 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -417,19 +417,26 @@ static void i2c_pxa_abort(struct pxa_i2c *i2c)
+ static int i2c_pxa_wait_bus_not_busy(struct pxa_i2c *i2c)
+ {
+ 	int timeout = DEF_TIMEOUT;
++	u32 isr;
+ 
+-	while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB)) {
+-		if ((readl(_ISR(i2c)) & ISR_SAD) != 0)
++	while (1) {
++		isr = readl(_ISR(i2c));
++		if (!(isr & (ISR_IBB | ISR_UB)))
++			return 0;
++
++		if (isr & ISR_SAD)
+ 			timeout += 4;
+ 
++		if (!timeout--)
++			break;
++
+ 		msleep(2);
+ 		show_state(i2c);
+ 	}
+ 
+-	if (timeout < 0)
+-		show_state(i2c);
++	show_state(i2c);
+ 
+-	return timeout < 0 ? I2C_RETRY : 0;
++	return I2C_RETRY;
+ }
+ 
+ static int i2c_pxa_wait_master(struct pxa_i2c *i2c)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/815-v5.8-i2c-pxa-consolidate-i2c_pxa_-xfer-implementations.patch b/target/linux/generic/backport-5.4/815-v5.8-i2c-pxa-consolidate-i2c_pxa_-xfer-implementations.patch
new file mode 100644
index 000000000000..f66759f48bef
--- /dev/null
+++ b/target/linux/generic/backport-5.4/815-v5.8-i2c-pxa-consolidate-i2c_pxa_-xfer-implementations.patch
@@ -0,0 +1,96 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 1/7] i2c: pxa: consolidate i2c_pxa_*xfer() implementations
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Most of i2c_pxa_pio_xfer() and i2c_pxa_xfer() are identical; the only
+differences are that i2c_pxa_pio_xfer() may reset the bus, and they
+use different underlying transfer functions. The retry loop is the
+same. Consolidate these two functions.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 36 ++++++++++++++++--------------------
+ 1 file changed, 16 insertions(+), 20 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index c1e50c0b9756..46f1cf97d955 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -1102,18 +1102,20 @@ static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
+ 	return ret;
+ }
+ 
+-static int i2c_pxa_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
++static int i2c_pxa_internal_xfer(struct pxa_i2c *i2c,
++				 struct i2c_msg *msgs, int num,
++				 int (*xfer)(struct pxa_i2c *,
++					     struct i2c_msg *, int num))
+ {
+-	struct pxa_i2c *i2c = adap->algo_data;
+ 	int ret, i;
+ 
+-	for (i = adap->retries; i >= 0; i--) {
+-		ret = i2c_pxa_do_xfer(i2c, msgs, num);
++	for (i = i2c->adap.retries; i >= 0; i--) {
++		ret = xfer(i2c, msgs, num);
+ 		if (ret != I2C_RETRY)
+ 			goto out;
+ 
+ 		if (i2c_debug)
+-			dev_dbg(&adap->dev, "Retrying transmission\n");
++			dev_dbg(&i2c->adap.dev, "Retrying transmission\n");
+ 		udelay(100);
+ 	}
+ 	i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
+@@ -1123,6 +1125,14 @@ static int i2c_pxa_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num
+ 	return ret;
+ }
+ 
++static int i2c_pxa_xfer(struct i2c_adapter *adap,
++			struct i2c_msg msgs[], int num)
++{
++	struct pxa_i2c *i2c = adap->algo_data;
++
++	return i2c_pxa_internal_xfer(i2c, msgs, num, i2c_pxa_do_xfer);
++}
++
+ static u32 i2c_pxa_functionality(struct i2c_adapter *adap)
+ {
+ 	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL |
+@@ -1210,7 +1220,6 @@ static int i2c_pxa_pio_xfer(struct i2c_adapter *adap,
+ 			    struct i2c_msg msgs[], int num)
+ {
+ 	struct pxa_i2c *i2c = adap->algo_data;
+-	int ret, i;
+ 
+ 	/* If the I2C controller is disabled we need to reset it
+ 	  (probably due to a suspend/resume destroying state). We do
+@@ -1219,20 +1228,7 @@ static int i2c_pxa_pio_xfer(struct i2c_adapter *adap,
+ 	if (!(readl(_ICR(i2c)) & ICR_IUE))
+ 		i2c_pxa_reset(i2c);
+ 
+-	for (i = adap->retries; i >= 0; i--) {
+-		ret = i2c_pxa_do_pio_xfer(i2c, msgs, num);
+-		if (ret != I2C_RETRY)
+-			goto out;
+-
+-		if (i2c_debug)
+-			dev_dbg(&adap->dev, "Retrying transmission\n");
+-		udelay(100);
+-	}
+-	i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
+-	ret = -EREMOTEIO;
+- out:
+-	i2c_pxa_set_slave(i2c, ret);
+-	return ret;
++	return i2c_pxa_internal_xfer(i2c, msgs, num, i2c_pxa_do_pio_xfer);
+ }
+ 
+ static const struct i2c_algorithm i2c_pxa_pio_algorithm = {
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/816-v5.8-i2c-pxa-avoid-complaints-with-non-responsive-slaves.patch b/target/linux/generic/backport-5.4/816-v5.8-i2c-pxa-avoid-complaints-with-non-responsive-slaves.patch
new file mode 100644
index 000000000000..308dba0fb9ae
--- /dev/null
+++ b/target/linux/generic/backport-5.4/816-v5.8-i2c-pxa-avoid-complaints-with-non-responsive-slaves.patch
@@ -0,0 +1,72 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 2/7] i2c: pxa: avoid complaints with non-responsive slaves
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Running i2cdetect on a PXA I2C adapter is very noisy; it complains
+whenever a slave fails to respond to the address cycle.  Since it is
+normal to probe for slaves in this way, we should not fill the kernel
+log.  This is especially true with SFP modules that take a while to
+respond on the I2C bus, and probing via the I2C bus is the only way to
+detect that they are ready.
+
+Fix this by changing the internal transfer return code from I2C_RETRY
+to a new NO_SLAVE code (mapped to -ENXIO, as per the I2C documentation
+for this condition, but we still return -EREMOTEIO to the I2C stack to
+maintain long established driver behaviour.)
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 12 ++++++++----
+ 1 file changed, 8 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 46f1cf97d955..f20f8b905793 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -90,6 +90,7 @@
+  */
+ #define DEF_TIMEOUT             32
+ 
++#define NO_SLAVE		(-ENXIO)
+ #define BUS_ERROR               (-EREMOTEIO)
+ #define XFER_NAKED              (-ECONNREFUSED)
+ #define I2C_RETRY               (-2000) /* an error has occurred retry transmit */
+@@ -881,7 +882,7 @@ static void i2c_pxa_irq_txempty(struct pxa_i2c *i2c, u32 isr)
+ 		 */
+ 		if (isr & ISR_ACKNAK) {
+ 			if (i2c->msg_ptr == 0 && i2c->msg_idx == 0)
+-				ret = I2C_RETRY;
++				ret = NO_SLAVE;
+ 			else
+ 				ret = XFER_NAKED;
+ 		}
+@@ -1109,16 +1110,19 @@ static int i2c_pxa_internal_xfer(struct pxa_i2c *i2c,
+ {
+ 	int ret, i;
+ 
+-	for (i = i2c->adap.retries; i >= 0; i--) {
++	for (i = 0; ; ) {
+ 		ret = xfer(i2c, msgs, num);
+-		if (ret != I2C_RETRY)
++		if (ret != I2C_RETRY && ret != NO_SLAVE)
+ 			goto out;
++		if (++i >= i2c->adap.retries)
++			break;
+ 
+ 		if (i2c_debug)
+ 			dev_dbg(&i2c->adap.dev, "Retrying transmission\n");
+ 		udelay(100);
+ 	}
+-	i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
++	if (ret != NO_SLAVE)
++		i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
+ 	ret = -EREMOTEIO;
+  out:
+ 	i2c_pxa_set_slave(i2c, ret);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/817-v5.8-i2c-pxa-ensure-timeout-messages-are-unique.patch b/target/linux/generic/backport-5.4/817-v5.8-i2c-pxa-ensure-timeout-messages-are-unique.patch
new file mode 100644
index 000000000000..39ca935ae934
--- /dev/null
+++ b/target/linux/generic/backport-5.4/817-v5.8-i2c-pxa-ensure-timeout-messages-are-unique.patch
@@ -0,0 +1,50 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 3/7] i2c: pxa: ensure timeout messages are unique
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Ensure that the various timeout messages can identify where in the code
+they were produced from to aid debugging.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index f20f8b905793..0becab239476 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -1095,7 +1095,7 @@ static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
+ 	ret = i2c->msg_idx;
+ 
+ 	if (!timeout && i2c->msg_num) {
+-		i2c_pxa_scream_blue_murder(i2c, "timeout");
++		i2c_pxa_scream_blue_murder(i2c, "timeout with active message");
+ 		ret = I2C_RETRY;
+ 	}
+ 
+@@ -1169,7 +1169,7 @@ static int i2c_pxa_pio_set_master(struct pxa_i2c *i2c)
+ 	if (timeout < 0) {
+ 		show_state(i2c);
+ 		dev_err(&i2c->adap.dev,
+-			"i2c_pxa: timeout waiting for bus free\n");
++			"i2c_pxa: timeout waiting for bus free (set_master)\n");
+ 		return I2C_RETRY;
+ 	}
+ 
+@@ -1213,7 +1213,7 @@ static int i2c_pxa_do_pio_xfer(struct pxa_i2c *i2c,
+ 
+ out:
+ 	if (timeout == 0) {
+-		i2c_pxa_scream_blue_murder(i2c, "timeout");
++		i2c_pxa_scream_blue_murder(i2c, "timeout (do_pio_xfer)");
+ 		ret = I2C_RETRY;
+ 	}
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/818-v5.8-i2c-pxa-remove-some-unnecessary-debug.patch b/target/linux/generic/backport-5.4/818-v5.8-i2c-pxa-remove-some-unnecessary-debug.patch
new file mode 100644
index 000000000000..4676d7721f4d
--- /dev/null
+++ b/target/linux/generic/backport-5.4/818-v5.8-i2c-pxa-remove-some-unnecessary-debug.patch
@@ -0,0 +1,39 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 4/7] i2c: pxa: remove some unnecessary debug
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Remove unnecessary show_state() in the loop inside
+i2c_pxa_pio_set_master(), which can be unnecessarily verbose.
+
+Remove the i2c_pxa_scream_blue_murder() in i2c_pxa_pio_xfer(), which
+will trigger if we are probing the I2C bus and a slave does not
+respond; this is a normal event, and not something to report.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 4 +---
+ 1 file changed, 1 insertion(+), 3 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 0becab239476..db739cce93ac 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -1161,10 +1161,8 @@ static int i2c_pxa_pio_set_master(struct pxa_i2c *i2c)
+ 	/*
+ 	 * Wait for the bus to become free.
+ 	 */
+-	while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB)) {
++	while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB))
+ 		udelay(1000);
+-		show_state(i2c);
+-	}
+ 
+ 	if (timeout < 0) {
+ 		show_state(i2c);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/819-v5.8-i2c-pxa-clear-all-master-action-bits-in-i2c_pxa_stop.patch b/target/linux/generic/backport-5.4/819-v5.8-i2c-pxa-clear-all-master-action-bits-in-i2c_pxa_stop.patch
new file mode 100644
index 000000000000..997670716f2f
--- /dev/null
+++ b/target/linux/generic/backport-5.4/819-v5.8-i2c-pxa-clear-all-master-action-bits-in-i2c_pxa_stop.patch
@@ -0,0 +1,43 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 5/7] i2c: pxa: clear all master action bits in
+ i2c_pxa_stop_message()
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+If we timeout during a message transfer, the control register may
+contain bits that cause an action to be set. Read-modify-writing the
+register leaving these bits set may trigger the hardware to attempt
+one of these actions unintentionally.
+
+Always clear these bits when cleaning up after a message or after
+a timeout.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 6 ++----
+ 1 file changed, 2 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index db739cce93ac..a72d07bdb793 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -795,11 +795,9 @@ static inline void i2c_pxa_stop_message(struct pxa_i2c *i2c)
+ {
+ 	u32 icr;
+ 
+-	/*
+-	 * Clear the STOP and ACK flags
+-	 */
++	/* Clear the START, STOP, ACK, TB and MA flags */
+ 	icr = readl(_ICR(i2c));
+-	icr &= ~(ICR_STOP | ICR_ACKNAK);
++	icr &= ~(ICR_START | ICR_STOP | ICR_ACKNAK | ICR_TB | ICR_MA);
+ 	writel(icr, _ICR(i2c));
+ }
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/820-v5.8-i2c-pxa-use-master-abort-for-device-probes.patch b/target/linux/generic/backport-5.4/820-v5.8-i2c-pxa-use-master-abort-for-device-probes.patch
new file mode 100644
index 000000000000..2fde9e7322ce
--- /dev/null
+++ b/target/linux/generic/backport-5.4/820-v5.8-i2c-pxa-use-master-abort-for-device-probes.patch
@@ -0,0 +1,40 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 6/7] i2c: pxa: use master-abort for device probes
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Use master-abort to send the stop condition after an address cycle
+rather than resetting the controller.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 10 ++--------
+ 1 file changed, 2 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index a72d07bdb793..0e194d6cd1b5 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -940,14 +940,8 @@ static void i2c_pxa_irq_txempty(struct pxa_i2c *i2c, u32 isr)
+ 		icr &= ~ICR_ALDIE;
+ 		icr |= ICR_START | ICR_TB;
+ 	} else {
+-		if (i2c->msg->len == 0) {
+-			/*
+-			 * Device probes have a message length of zero
+-			 * and need the bus to be reset before it can
+-			 * be used again.
+-			 */
+-			i2c_pxa_reset(i2c);
+-		}
++		if (i2c->msg->len == 0)
++			icr |= ICR_MA;
+ 		i2c_pxa_master_complete(i2c, 0);
+ 	}
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-5.4/821-v5.8-i2c-pxa-implement-generic-i2c-bus-recovery.patch b/target/linux/generic/backport-5.4/821-v5.8-i2c-pxa-implement-generic-i2c-bus-recovery.patch
new file mode 100644
index 000000000000..745cb6567c1b
--- /dev/null
+++ b/target/linux/generic/backport-5.4/821-v5.8-i2c-pxa-implement-generic-i2c-bus-recovery.patch
@@ -0,0 +1,290 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Subject: [PATCH 7/7] i2c: pxa: implement generic i2c bus recovery
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.
+
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/i2c/busses/i2c-pxa.c | 176 +++++++++++++++++++++++++++++++----
+ 1 file changed, 159 insertions(+), 17 deletions(-)
+
+diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
+index 0e194d6cd1b5..a7885b8b5031 100644
+--- a/drivers/i2c/busses/i2c-pxa.c
++++ b/drivers/i2c/busses/i2c-pxa.c
+@@ -20,6 +20,7 @@
+ #include <linux/delay.h>
+ #include <linux/err.h>
+ #include <linux/errno.h>
++#include <linux/gpio/consumer.h>
+ #include <linux/i2c.h>
+ #include <linux/init.h>
+ #include <linux/interrupt.h>
+@@ -28,6 +29,7 @@
+ #include <linux/module.h>
+ #include <linux/of.h>
+ #include <linux/of_device.h>
++#include <linux/pinctrl/consumer.h>
+ #include <linux/platform_device.h>
+ #include <linux/platform_data/i2c-pxa.h>
+ #include <linux/slab.h>
+@@ -260,6 +262,11 @@ struct pxa_i2c {
+ 	bool			highmode_enter;
+ 	u32			fm_mask;
+ 	u32			hs_mask;
++
++	struct i2c_bus_recovery_info recovery;
++	struct pinctrl		*pinctrl;
++	struct pinctrl_state	*pinctrl_default;
++	struct pinctrl_state	*pinctrl_recovery;
+ };
+ 
+ #define _IBMR(i2c)	((i2c)->reg_ibmr)
+@@ -559,13 +566,8 @@ static void i2c_pxa_set_slave(struct pxa_i2c *i2c, int errcode)
+ #define i2c_pxa_set_slave(i2c, err)	do { } while (0)
+ #endif
+ 
+-static void i2c_pxa_reset(struct pxa_i2c *i2c)
++static void i2c_pxa_do_reset(struct pxa_i2c *i2c)
+ {
+-	pr_debug("Resetting I2C Controller Unit\n");
+-
+-	/* abort any transfer currently under way */
+-	i2c_pxa_abort(i2c);
+-
+ 	/* reset according to 9.8 */
+ 	writel(ICR_UR, _ICR(i2c));
+ 	writel(I2C_ISR_INIT, _ISR(i2c));
+@@ -584,12 +586,25 @@ static void i2c_pxa_reset(struct pxa_i2c *i2c)
+ #endif
+ 
+ 	i2c_pxa_set_slave(i2c, 0);
++}
+ 
++static void i2c_pxa_enable(struct pxa_i2c *i2c)
++{
+ 	/* enable unit */
+ 	writel(readl(_ICR(i2c)) | ICR_IUE, _ICR(i2c));
+ 	udelay(100);
+ }
+ 
++static void i2c_pxa_reset(struct pxa_i2c *i2c)
++{
++	pr_debug("Resetting I2C Controller Unit\n");
++
++	/* abort any transfer currently under way */
++	i2c_pxa_abort(i2c);
++	i2c_pxa_do_reset(i2c);
++	i2c_pxa_enable(i2c);
++}
++
+ 
+ #ifdef CONFIG_I2C_PXA_SLAVE
+ /*
+@@ -1043,6 +1058,7 @@ static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
+ 	ret = i2c_pxa_wait_bus_not_busy(i2c);
+ 	if (ret) {
+ 		dev_err(&i2c->adap.dev, "i2c_pxa: timeout waiting for bus free\n");
++		i2c_recover_bus(&i2c->adap);
+ 		goto out;
+ 	}
+ 
+@@ -1088,6 +1104,7 @@ static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
+ 
+ 	if (!timeout && i2c->msg_num) {
+ 		i2c_pxa_scream_blue_murder(i2c, "timeout with active message");
++		i2c_recover_bus(&i2c->adap);
+ 		ret = I2C_RETRY;
+ 	}
+ 
+@@ -1277,6 +1294,129 @@ static int i2c_pxa_probe_pdata(struct platform_device *pdev,
+ 	return 0;
+ }
+ 
++static void i2c_pxa_prepare_recovery(struct i2c_adapter *adap)
++{
++	struct pxa_i2c *i2c = adap->algo_data;
++	u32 ibmr = readl(_IBMR(i2c));
++
++	/*
++	 * Program the GPIOs to reflect the current I2C bus state while
++	 * we transition to recovery; this avoids glitching the bus.
++	 */
++	gpiod_set_value(i2c->recovery.scl_gpiod, ibmr & IBMR_SCLS);
++	gpiod_set_value(i2c->recovery.sda_gpiod, ibmr & IBMR_SDAS);
++
++	WARN_ON(pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_recovery));
++}
++
++static void i2c_pxa_unprepare_recovery(struct i2c_adapter *adap)
++{
++	struct pxa_i2c *i2c = adap->algo_data;
++	u32 isr;
++
++	/*
++	 * The bus should now be free. Clear up the I2C controller before
++	 * handing control of the bus back to avoid the bus changing state.
++	 */
++	isr = readl(_ISR(i2c));
++	if (isr & (ISR_UB | ISR_IBB)) {
++		dev_dbg(&i2c->adap.dev,
++			"recovery: resetting controller, ISR=0x%08x\n", isr);
++		i2c_pxa_do_reset(i2c);
++	}
++
++	WARN_ON(pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_default));
++
++	dev_dbg(&i2c->adap.dev, "recovery: IBMR 0x%08x ISR 0x%08x\n",
++	        readl(_IBMR(i2c)), readl(_ISR(i2c)));
++
++	i2c_pxa_enable(i2c);
++}
++
++static int i2c_pxa_init_recovery(struct pxa_i2c *i2c)
++{
++	struct i2c_bus_recovery_info *bri = &i2c->recovery;
++	struct device *dev = i2c->adap.dev.parent;
++
++	/*
++	 * When slave mode is enabled, we are not the only master on the bus.
++	 * Bus recovery can only be performed when we are the master, which
++	 * we can't be certain of. Therefore, when slave mode is enabled, do
++	 * not configure bus recovery.
++	 */
++	if (IS_ENABLED(CONFIG_I2C_PXA_SLAVE))
++		return 0;
++
++	i2c->pinctrl = devm_pinctrl_get(dev);
++	if (IS_ERR(i2c->pinctrl))
++		return PTR_ERR(i2c->pinctrl);
++
++	if (!i2c->pinctrl)
++		return 0;
++
++	i2c->pinctrl_default = pinctrl_lookup_state(i2c->pinctrl,
++						    PINCTRL_STATE_DEFAULT);
++	i2c->pinctrl_recovery = pinctrl_lookup_state(i2c->pinctrl, "recovery");
++
++	if (IS_ERR(i2c->pinctrl_default) || IS_ERR(i2c->pinctrl_recovery)) {
++		dev_info(dev, "missing pinmux recovery information: %ld %ld\n",
++			 PTR_ERR(i2c->pinctrl_default),
++			 PTR_ERR(i2c->pinctrl_recovery));
++		return 0;
++	}
++
++	/*
++	 * Claiming GPIOs can influence the pinmux state, and may glitch the
++	 * I2C bus. Do this carefully.
++	 */
++	bri->scl_gpiod = devm_gpiod_get(dev, "scl", GPIOD_OUT_HIGH_OPEN_DRAIN);
++	if (bri->scl_gpiod == ERR_PTR(-EPROBE_DEFER))
++		return -EPROBE_DEFER;
++	if (IS_ERR(bri->scl_gpiod)) {
++		dev_info(dev, "missing scl gpio recovery information: %pe\n",
++			 bri->scl_gpiod);
++		return 0;
++	}
++
++	/*
++	 * We have SCL. Pull SCL low and wait a bit so that SDA glitches
++	 * have no effect.
++	 */
++	gpiod_direction_output(bri->scl_gpiod, 0);
++	udelay(10);
++	bri->sda_gpiod = devm_gpiod_get(dev, "sda", GPIOD_OUT_HIGH_OPEN_DRAIN);
++
++	/* Wait a bit in case of a SDA glitch, and then release SCL. */
++	udelay(10);
++	gpiod_direction_output(bri->scl_gpiod, 1);
++
++	if (bri->sda_gpiod == ERR_PTR(-EPROBE_DEFER))
++		return -EPROBE_DEFER;
++
++	if (IS_ERR(bri->sda_gpiod)) {
++		dev_info(dev, "missing sda gpio recovery information: %pe\n",
++			 bri->sda_gpiod);
++		return 0;
++	}
++
++	bri->prepare_recovery = i2c_pxa_prepare_recovery;
++	bri->unprepare_recovery = i2c_pxa_unprepare_recovery;
++	bri->recover_bus = i2c_generic_scl_recovery;
++
++	i2c->adap.bus_recovery_info = bri;
++
++	/*
++	 * Claiming GPIOs can change the pinmux state, which confuses the
++	 * pinctrl since pinctrl's idea of the current setting is unaffected
++	 * by the pinmux change caused by claiming the GPIO. Work around that
++	 * by switching pinctrl to the GPIO state here. We do it this way to
++	 * avoid glitching the I2C bus.
++	 */
++	pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_recovery);
++
++	return pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_default);
++}
++
+ static int i2c_pxa_probe(struct platform_device *dev)
+ {
+ 	struct i2c_pxa_platform_data *plat = dev_get_platdata(&dev->dev);
+@@ -1289,6 +1429,16 @@ static int i2c_pxa_probe(struct platform_device *dev)
+ 	if (!i2c)
+ 		return -ENOMEM;
+ 
++	/* Default adapter num to device id; i2c_pxa_probe_dt can override. */
++	i2c->adap.nr = dev->id;
++	i2c->adap.owner   = THIS_MODULE;
++	i2c->adap.retries = 5;
++	i2c->adap.algo_data = i2c;
++	i2c->adap.dev.parent = &dev->dev;
++#ifdef CONFIG_OF
++	i2c->adap.dev.of_node = dev->dev.of_node;
++#endif
++
+ 	res = platform_get_resource(dev, IORESOURCE_MEM, 0);
+ 	i2c->reg_base = devm_ioremap_resource(&dev->dev, res);
+ 	if (IS_ERR(i2c->reg_base))
+@@ -1298,8 +1448,9 @@ static int i2c_pxa_probe(struct platform_device *dev)
+ 	if (irq < 0)
+ 		return irq;
+ 
+-	/* Default adapter num to device id; i2c_pxa_probe_dt can override. */
+-	i2c->adap.nr = dev->id;
++	ret = i2c_pxa_init_recovery(i2c);
++	if (ret)
++		return ret;
+ 
+ 	ret = i2c_pxa_probe_dt(dev, i2c, &i2c_type);
+ 	if (ret > 0)
+@@ -1307,9 +1458,6 @@ static int i2c_pxa_probe(struct platform_device *dev)
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	i2c->adap.owner   = THIS_MODULE;
+-	i2c->adap.retries = 5;
+-
+ 	spin_lock_init(&i2c->lock);
+ 	init_waitqueue_head(&i2c->wait);
+ 
+@@ -1375,12 +1523,6 @@ static int i2c_pxa_probe(struct platform_device *dev)
+ 
+ 	i2c_pxa_reset(i2c);
+ 
+-	i2c->adap.algo_data = i2c;
+-	i2c->adap.dev.parent = &dev->dev;
+-#ifdef CONFIG_OF
+-	i2c->adap.dev.of_node = dev->dev.of_node;
+-#endif
+-
+ 	ret = i2c_add_numbered_adapter(&i2c->adap);
+ 	if (ret < 0)
+ 		goto ereqirq;
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
