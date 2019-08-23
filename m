Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F319AA5B
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 10:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejHMUM5AlQ7d4EkktG1mbx7/zxhHqn74ohuFulqifeI=; b=PeexYl9ZMGzQ1p
	vcUB5V3eAqvYOiFXEvHHjO3JxwO+k4pAoYC6RddNezVBN8YsM+L3/M1y5bKChwm+iNuRdXlzGYTg1
	IB8g6RWeVNnp0d2IintTC79VrSFuVwv0+HOJRsOOGUvVhjSVPNdGYwfqs6A2rc43gucFa6YUknlKr
	+bL+SjSCUQfgGlRKBtY97zYZzi/Qc1hes7mcFeWed/g0sLAlp28n5i+yM/aoc02VEUQWp6NA+ZnmB
	c+v1ySDRuJCnAtofMnqq1OCaxHUI9TCZIi541XK+zL/fIyP/gp/jeohW3SuOntiB9yiUqRqcLHhkz
	dvoHu63lBaH7+kL49n3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14yD-00036B-0z; Fri, 23 Aug 2019 08:30:53 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14y5-00035h-A2
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 08:30:46 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id ABBE8FF80B;
 Fri, 23 Aug 2019 08:30:33 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 22 Aug 2019 22:30:10 -1000
Message-Id: <20190823083009.10602-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_013045_501438_4EA503DD 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: add generic subtarget
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

Same game as for 853e4dd3062df7cb5704b15d6af6730e3194b571. Add generic
to the filenames.

CC: Hauke Mehrtens <hauke@hauke-m.de>

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/bcm53xx/Makefile          | 1 +
 target/linux/bcm53xx/generic/target.mk | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 target/linux/bcm53xx/generic/target.mk

diff --git a/target/linux/bcm53xx/Makefile b/target/linux/bcm53xx/Makefile
index 4171a04ee4..6c19263fdf 100644
--- a/target/linux/bcm53xx/Makefile
+++ b/target/linux/bcm53xx/Makefile
@@ -12,6 +12,7 @@ BOARDNAME:=Broadcom BCM47xx/53xx (ARM)
 FEATURES:=squashfs nand usb pci pcie gpio
 MAINTAINER:=Hauke Mehrtens <hauke@hauke-m.de>
 CPU_TYPE:=cortex-a9
+SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.14
 KERNEL_TESTING_PATCHVER := 4.19
diff --git a/target/linux/bcm53xx/generic/target.mk b/target/linux/bcm53xx/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/bcm53xx/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
-- 
2.23.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
