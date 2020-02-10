Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2E6157ED7
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 16:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pxirthpyrcHU6u6wLYV8EM9lPFBp43CFNF+KuHMvY7A=; b=TP8X/LfpFvHabPVqzdxYCg/Upb
	6c2yC0BC3bSa5eHWuVqSLCdVbP6V1CUoFXZMas7iFZPn5jL1KNVfuaT5U6npFYIX8kwjTVQeMu+sw
	0UaVQzHvQcn8dTkdTlbQ3jIpFQZK5OSBeQU7OiMJEtfKdu5lc1C/H3s1y3MlYHdTSB8pgH5snFld9
	h3L3QneF8SOFO2e/tthiUmKoz4NVthRlffegxdJ+7gYoFswviN7dyM76uvP8qEeDCNRRexxDs8cYx
	Qrsrs+6KVqzOTfhmg7Qtda3n69/ZEpLHQhVY+kcbff+nbh9+whK1ZGuFKe4yZ/9+uuEquzbpz/viy
	qTgs4dtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B4f-00018I-QN; Mon, 10 Feb 2020 15:34:13 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B4I-0000tY-De
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 15:33:52 +0000
Received: (wp-smtpd smtp.tlen.pl 20524 invoked from network);
 10 Feb 2020 16:33:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1581348826; bh=s65kXwid8zCxOuqTVJlX3eRj0HaEXM8ewqx4l79KZOs=;
 h=From:To:Subject;
 b=vsILVKkkGq4k5Ol5o9E9aeAqjT4AWoN0L58AYju+OqBIbpw+TW2/zLZsXv+ZLmHkP
 LE+nScMMGn4CRvgXIcam8yS9oGfEiudwkkf5rf4zt7DYZNUuxy6i1O0k0ssg+MqOtQ
 p4qVs+9PHDeCHajocg1/Ub78mzHolJPzzt1wCmXU=
Received: from pub-15.183.29.194.multiplay.pl (HELO localhost.localdomain)
 (tomek_n@o2.pl@[194.29.183.15]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 10 Feb 2020 16:33:46 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Feb 2020 16:33:27 +0100
Message-Id: <20200210153327.3443-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210153327.3443-1-tomek_n@o2.pl>
References: <20200210153327.3443-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: a466ea282927d6d8a53e9f26cf786bb1
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IWME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073350_810072_6442AB5D 
X-CRM114-Status: UNSURE (   6.34  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 5/5] uboot-mvebu: point to UBOOT_CONFIG
 when setting options
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
