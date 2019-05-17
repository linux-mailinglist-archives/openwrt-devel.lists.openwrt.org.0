Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72A421616
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 11:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fc33LCHG0mBE4UAECyzqwoCc0f6hQy3i8NXK3ayRnQo=; b=TxSpEUwX4UcJ8K
	KVzBFwS6ETGmRZRu1Mx+Y/Ecc1met1jiNtqJ2syh1AS15Fb+CEef7WQVfVCTR9rUfJbljU2qyYGTX
	4vb7mYoxwxFYCxi/bfRGDX0G9l400buJdwU9zvSX3TKyVZYwfZyOV/07Xj61K/g+ULVelUYT5FZdR
	8kcUvnM85TA3GVgRIfGdRkLKjugS7ocqiip1r15YkoW+HYE3JzdCMuO75Ql3LpuKBbWq4DMWbc/XR
	GsmMBM87bTxspdJcVEUN6RLA8pJU2scaAZ5Sgo4k+KX/Kk7Rbtt1+k6/Ltz7tFUA1PNvLLjyLN7zU
	JmLqUrvKFWOkMCtZfsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYxf-0004su-IN; Fri, 17 May 2019 09:15:31 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYxS-0004Ne-I2
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 09:15:21 +0000
X-Originating-IP: 95.90.180.177
Received: from dawn.lan (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id DB8C76000C;
 Fri, 17 May 2019 09:15:01 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 May 2019 11:14:46 +0200
Message-Id: <20190517091446.11260-2-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517091446.11260-1-mail@aparcar.org>
References: <20190517091446.11260-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_021518_825405_636CD439 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] iptables.c: lock the xtables.lock
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Alexander Couzens <lynxis@fe80.eu>, Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Alexander Couzens <lynxis@fe80.eu>

When using fw3 together with other applications or scripts a race
conditions might occur. When fw3 is preparing the new tables, another
application can use the executable `iptables` which modifies the
kernel-tables.  libxtables will notify this and fails when fw3 is
committing the changes resulting in a failed firewall.

Now waits in a while loop until the lock is gone, activate the lock
itself and applies changes.

To reproduce the bug the following two scripts should run in parrallel,
after a few seconds the latter stop and leaves a broken firewall:

    while true; do iptables -N locking; done

and

    while [ "$(iptables -w -L OUTPUT | wc -l)" -gt 2 ]; do fw3 reload; done

The following message will appear

        Warning: iptc_commit(): Resource temporarily unavailable

and connectivity is gone.

Tested in an LXC and Qemu container.

Signed-off-by: Alexander Couzens <lynxis@fe80.eu>
[fixed waiting for unlock and commit message]
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 iptables.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/iptables.c b/iptables.c
index a095621..559fe7d 100644
--- a/iptables.c
+++ b/iptables.c
@@ -55,6 +55,8 @@
 
 #include "iptables.h"
 
+#define XT_LOCK_NAME "/var/run/xtables.lock"
+static int xt_lock_fd = -1;
 
 struct fw3_ipt_rule {
 	struct fw3_ipt_handle *h;
@@ -168,6 +170,11 @@ fw3_ipt_open(enum fw3_family family, enum fw3_table table)
 
 	xtables_init();
 
+	while (!fw3_lock_path(&xt_lock_fd, XT_LOCK_NAME)) {
+		warn("Currently busy xtables.lock - wait 1 second");
+		sleep(1);
+	}
+
 	if (family == FW3_FAMILY_V6)
 	{
 #ifndef DISABLE_IPV6
@@ -192,6 +199,7 @@ fw3_ipt_open(enum fw3_family family, enum fw3_table table)
 	if (!h->handle)
 	{
 		free(h);
+		fw3_unlock_path(&xt_lock_fd, XT_LOCK_NAME);
 		return NULL;
 	}
 
@@ -561,6 +569,7 @@ fw3_ipt_commit(struct fw3_ipt_handle *h)
 void
 fw3_ipt_close(struct fw3_ipt_handle *h)
 {
+	fw3_unlock_path(&xt_lock_fd, XT_LOCK_NAME);
 	free(h);
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
