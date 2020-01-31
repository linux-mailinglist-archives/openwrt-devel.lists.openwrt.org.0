Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C882614F018
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pxirthpyrcHU6u6wLYV8EM9lPFBp43CFNF+KuHMvY7A=; b=GKXeb9aRkSJyy8Ws6sNJDx4lQF
	OaeZbdIVLgR0BoOFtCtsG0ctSimgiG+pW4q1zQOTg6iHKk+u7n3+21Bp1XRdagZgFF7WfxhzNhPAq
	/2YpMLuimf3t5Txn5GSEwNwhgFnZxIomwBO6rqeneuOKmNV2QtSLOhbEx5/aq5XcWW2Y/PKOK2tuO
	PQRUqCq3OekmpqIhRIYvQatHcU6Fn5oFk5mdc5iYRtn5fNOKz4t+rTcGMFYVrHlQUIlIt8HqfToko
	C3+Tqoy7JaMBcXSAiaM+Owg25EGmfAcq5y8mvHoEg7mdx4QF2AF/2prFbfiLdrG2/z6yGulfRWhlp
	G1U6CLiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYXL-0008SN-UR; Fri, 31 Jan 2020 15:48:51 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVg-0006Ts-IV
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:47:11 +0000
Received: (wp-smtpd smtp.tlen.pl 10835 invoked from network);
 31 Jan 2020 16:47:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485626; bh=s65kXwid8zCxOuqTVJlX3eRj0HaEXM8ewqx4l79KZOs=;
 h=From:To:Subject;
 b=WaJOWQ1v+W0SwQ/bnmw8sEx4TZEXA1NcmJRtMF8lbOO9TDRcUFpwv5F5VE3OGraTe
 TFBs9uL9cgVjP8XhZ8aJ9wadgCQFN4SPBuMus8ZMU9MlY7BG8+A9OWbK1seB94jond
 0Diof0/DgZAmo4jLjzK829Z+GTqyZntlzDlO7I50=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:47:06 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:20 +0100
Message-Id: <20200131154620.25773-9-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: e4db8a7011ab864b278e5b4cb08a1986
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [oaOi]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074708_795685_598456CF 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 8/8] uboot-mvebu: point to UBOOT_CONFIG when
 setting options
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

The BUILD_VARIANT might differ from UBOOT_CONFIG, so point to a file we
are actually changing. Being here let's call 'Build/Configure/U-Boot'
definition, instead of definig the same command. This'll be more future
proof, if U-Boot configuration procedure will change.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-mvebu/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/boot/uboot-mvebu/Makefile b/package/boot/uboot-mvebu/Makefile
index d171daa717..029018b414 100644
--- a/package/boot/uboot-mvebu/Makefile
+++ b/package/boot/uboot-mvebu/Makefile
@@ -42,11 +42,11 @@ UBOOT_TARGETS:= \
 Build/Exports:=$(Host/Exports)
 
 define Build/Configure
-	# enable additional options beyond clearfog_defconfig
-	echo CONFIG_NET_RANDOM_ETHADDR=y >> $(PKG_BUILD_DIR)/configs/$(BUILD_VARIANT)_defconfig
-	echo CONFIG_CMD_SETEXPR=y >> $(PKG_BUILD_DIR)/configs/$(BUILD_VARIANT)_defconfig
+	# enable additional options beyond <device>_defconfig
+	echo CONFIG_NET_RANDOM_ETHADDR=y >> $(PKG_BUILD_DIR)/configs/$(UBOOT_CONFIG)_defconfig
+	echo CONFIG_CMD_SETEXPR=y >> $(PKG_BUILD_DIR)/configs/$(UBOOT_CONFIG)_defconfig
 
-	+$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) $(UBOOT_CONFIGURE_VARS) $(UBOOT_CONFIG)_config
+	$(call Build/Configure/U-Boot)
 endef
 
 define Build/InstallDev
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
