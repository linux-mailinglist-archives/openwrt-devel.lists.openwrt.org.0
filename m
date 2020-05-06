Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623A11C7AF4
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 22:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7pXbyFcW4AnoMwMcpJMoPn+KzgZI9RB01yl+vr7un6g=; b=s/EF7OHG6pdxCmIrp8+YryUKJx
	lPpLo/744InCQAJPJEECdO3oM40gGe+GRCmFc4FS+u24sqDUDl0QBX5aqWsDFTMZ2VIXTLFchom0X
	XXU17V0D4Tho2RdG2iNWe5YTUOPaTv/XGlG8v1+oadWO+AJbugVXyq3KCV5wWnSelc3kCIqlmxMXF
	dAeDSrOfGXClIIJ5a92LEKwWXKZeMzTBONHf3T23waq6VQ+h3YehucrvRcGfKqcGEeD315CuKFm2j
	xcdba0WUVTrLxQOv/Ekq3E/djj7dvfSSQxE2qhtldn+iSPDb+gBmjoQHpaQ9O+9jH6VJBrjqxD2jz
	u6UCyWOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQN7-00034K-AI; Wed, 06 May 2020 20:10:25 +0000
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 May 2020 22:03:55 +0200
MIME-Version: 1.0
Message-ID: <mailman.10417.1588795819.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] kernel: Add kmod-sch-cake-virtual package
 to resolve dependency errors
Content-Type: multipart/mixed; boundary="===============2694191788782687083=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2694191788782687083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2694191788782687083==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.toke.dk ([45.145.95.4])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQMz-0000tS-FD
	for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 20:10:19 +0000
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1588795450; bh=Zl8pUoO+4nJDmhRJzHxfCZEVGldQQwJT6zEtKQfFf4c=;
	h=From:To:Cc:Subject:Date:From;
	b=QpzNGHVYtw/QjsCs6RSRMcTYw7wSWmEMes0CNjsWUDk20Eo3T9dMC/uQKMJqINYjQ
	 ic0TTx4a8x/NX/6CGmcx8Kt6jMPijv6gEVTCskAvIWdcD0o/ZwiiEItvVBd/C48Ut0
	 F7pxsv2qacOtkKLQQQhOwCp8t25CFcx5FV4Zn3/cPB5SVqbJHl+jEDDlDmbVKtMr3n
	 9FfwRKT7xPdt9+iIeXDRTI0AdikQptoD0l5mowH6jHybUYxoSRTf4PcGtICuF6icsM
	 0K9GF5V7ybAa6UPiHuYPADodZRlRe3VnYNdA3jLCGJ/EpfNgsODufAcz8boVL5D4/V
	 PKsTEEd3A4WKg==
To: openwrt-devel@lists.openwrt.org
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Subject: [PATCH] kernel: Add kmod-sch-cake-virtual package to resolve dependency errors
Date: Wed,  6 May 2020 22:03:55 +0200
Message-Id: <20200506200355.926305-1-toke@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_131017_820624_A6AB0F3A 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

As reported in https://github.com/openwrt/packages/issues/12072, the
imagebuilder fails due to a dependency resolution error when the userspace
packages are built using a target that has a different kernel version than
that which is being run. To resolve this, add a virtual kernel package with
the conditional dependency currently used in sqm-scripts. The idea is to
move the sqm-scripts dependency to this virtual package, which hopefully
should be consistent with the actual kernel module being built.

Signed-off-by: Toke Høiland-Jørgensen <toke@toke.dk>
---
 package/kernel/kmod-sched-cake-oot/Makefile | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/package/kernel/kmod-sched-cake-oot/Makefile b/package/kernel/kmod-sched-cake-oot/Makefile
index 963681c1fb..5a9e1099a4 100644
--- a/package/kernel/kmod-sched-cake-oot/Makefile
+++ b/package/kernel/kmod-sched-cake-oot/Makefile
@@ -29,14 +29,26 @@ define KernelPackage/sched-cake-oot
   DEPENDS:=@LINUX_4_14 +kmod-sched-core +kmod-ipt-conntrack
 endef
 
+define KernelPackage/sched-cake-virtual
+  SUBMENU:=Network Support
+  TITLE:=Virtual package for sched-cake
+  URL:=https://github.com/dtaht/sch_cake
+  DEPENDS:=+!LINUX_4_14:kmod-sched-cake +LINUX_4_14:kmod-sched-cake-oot
+endef
+
 include $(INCLUDE_DIR)/kernel-defaults.mk
 
-define KernelPackage/sched-cake/description
+define KernelPackage/sched-cake-oot/description
   O(ut) O(f) T(ree) Common Applications Kept Enhanced fq_codel/blue derived shaper
 endef
 
+define KernelPackage/sched-cake-virtual/description
+  Virtual package for resolving sch_cake dependencies
+endef
+
 define Build/Compile
 	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)" modules
 endef
 
 $(eval $(call KernelPackage,sched-cake-oot))
+$(eval $(call KernelPackage,sched-cake-virtual))
-- 
2.26.2



--===============2694191788782687083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2694191788782687083==--
