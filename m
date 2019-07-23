Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B370F78
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 05:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4EjHicc4BEsniSNgu6dW1czff/Vu0Z2vCnH91lAMlHE=; b=H1KX+J3CEHsDvY
	lAGltC/DHbMFrIDhFqJst856PpY6Uc0epKSK9OsdmSyWbOH9efncDmYBiApUe7EDbhV+bCM13wI1z
	fd+YxlxLaCwyietWxcFg5/TjhEHTlfesTvhP1ZHobKhc70NnqZi11haXFhTKQyA5evS9giDoct1rW
	QbTjDraV5fBgq9J5YqQvREAQNy09t4mRitRy04WWsSZczcL52jYkROSbRnzhpDlWDo/QlzKQGgLyg
	Hn3U/744ixHhftgSjph8wKnVF/5h3rmH4PPU+2rjB+seq3xUYl7LKzksLsBp05kdC30Iic7ZTAZBW
	WlK3eordybZoa5QTYB9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpl49-0001EW-Tu; Tue, 23 Jul 2019 03:02:14 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpl3e-0001E6-Ia
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 03:01:44 +0000
Received: by mail-pl1-x630.google.com with SMTP id c2so19962598plz.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 22 Jul 2019 20:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=LrokTUYKauTsMvcr68LcxTNspMaF8jmNOiLUmuO4T9s=;
 b=Hp6w8NdCl3ptapI8UDAdyPXsWkrewLCuJAhaH/OtOt+IKyHazD2xwsRrGpWM3XiLBc
 fYJZfXiFMUABJ7XWyua3M9hwGIrQvtrbJZ2wQtFUo7HhnsoWZ6KJkkBqYj9BxBBXGNq6
 nDAd1ATO9Fk3WdqxeewAt6558I/jgOXOzOnHPSp4KBM0c8rpRoEPMpy2SsXi4Om+h0N4
 Dc9G2pQ70TB/P79DjgsJRLuLfuT/CuiERHzXpui/XJde5d5/CPYFfMP1WQHVTnZyGCsO
 HqQjN/0GooPL2UzyFfJ2KnYfD5eJecYcqYvA4GMCLuBm858VLsjqlmC2w1aYA0/VL5Jz
 97gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=LrokTUYKauTsMvcr68LcxTNspMaF8jmNOiLUmuO4T9s=;
 b=LNGlCvNLBWsz6mb9UiETocrt5qL4v3WVxSh/XGKdCYoVFtwVDFRzX4zhOMugljwgDW
 zSlmcZ8aWd2yUH/IJL1R4FEeFQ0axnzHczxvW3nWZqe4VlrTRUVoSSHFLg6MIJfgHhKk
 +KuoqvMYWltR6FoNFp/aMDJ6OLd/nOLPyFlheAu77AjfqH64aKz4JrtKQetHWCrp3nm+
 i/6dLcotZvOnrCMdp8wL4V/11zoVIK/6KW3Ao8QmQ1+S8RyXnC7uahIP4rmQnsZ0667d
 GPi0o4zFMsFGF3JaKqhaz954URJQ6jKzkOUjjbJikc+yPVAbhXsxrjMkA15xqrMrucAO
 C3kg==
X-Gm-Message-State: APjAAAVJhx0UQCSFwn5SKsR88xXiydINFGC+sMbEo5dEg7EG+6oXg8bk
 UhxBJhooCTmUR7/Qye/oFqLTY5P1rfw=
X-Google-Smtp-Source: APXvYqzEmBY1lLWXT9rQgwpH73hE3BfNeM1e4va0WPPUMsThps9ZWHr0gzng/xIzurxHjVa0CQSPVg==
X-Received: by 2002:a17:902:bc83:: with SMTP id
 bb3mr80028801plb.56.1563850900640; 
 Mon, 22 Jul 2019 20:01:40 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id x26sm55424764pfq.69.2019.07.22.20.01.39
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 20:01:39 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 22 Jul 2019 20:01:38 -0700
Message-Id: <20190723030138.12976-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_200142_641220_1158E629 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH-18.06] omcproxy: fix compilation on
 little-endian CPUs
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Eneas U de Queiroz <cote2004-github@yahoo.com>

Don't use cpu_to_be32 outside of a function.

Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
---
 Please backport to 18.06
 https://downloads.openwrt.org/releases/faillogs-18.06/arm_cortex-a9_vfpv3/base/omcproxy/compile.txt
 package/network/services/omcproxy/Makefile    |  2 +-
 ...-use-cpu_to_be32-outside-of-function.patch | 35 +++++++++++++++++++
 2 files changed, 36 insertions(+), 1 deletion(-)
 create mode 100644 package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch

diff --git a/package/network/services/omcproxy/Makefile b/package/network/services/omcproxy/Makefile
index 28de833a1c..e121fa0b23 100644
--- a/package/network/services/omcproxy/Makefile
+++ b/package/network/services/omcproxy/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=omcproxy
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 PKG_SOURCE_URL:=https://github.com/sbyx/omcproxy.git
 PKG_SOURCE_PROTO:=git
diff --git a/package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch b/package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch
new file mode 100644
index 0000000000..d71315b60e
--- /dev/null
+++ b/package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch
@@ -0,0 +1,35 @@
+From 721064f2eb1dabe5bda63dcaff249b73ab891e6c Mon Sep 17 00:00:00 2001
+From: Eneas U de Queiroz <cote2004-github@yahoo.com>
+Date: Fri, 14 Dec 2018 15:13:41 -0200
+Subject: [PATCH] mrib.c: don't use cpu_to_be32 outside of function
+
+cpu_to_be32 is not a constant, so it can't be used outside of a
+function.
+
+Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
+
+--- a/src/mrib.c
++++ b/src/mrib.c
+@@ -21,6 +21,7 @@
+ #include <stdio.h>
+ #include <string.h>
+ #include <stdlib.h>
++#include <endian.h>
+ #include <sys/socket.h>
+ #include <sys/ioctl.h>
+ #include <unistd.h>
+@@ -54,7 +55,13 @@ struct mrib_iface {
+ 	struct uloop_timeout timer;
+ };
+ 
+-static uint32_t ipv4_rtr_alert = cpu_to_be32(0x94040000);
++/* we can't use cpu_to_be32 outside a function */
++#if __BYTE_ORDER == __BIG_ENDIAN
++static uint32_t ipv4_rtr_alert = 0x94040000;
++#else
++static uint32_t ipv4_rtr_alert = 0x00000494;
++#endif
++
+ static struct {
+ 	struct ip6_hbh hdr;
+ 	struct ip6_opt_router rt;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
