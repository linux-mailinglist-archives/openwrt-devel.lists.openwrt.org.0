Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B589A16336C
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Feb 2020 21:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EaqGJoByTOTN1ll6lqBnqK5+eKs7Im7PpkMYdO7N3oQ=; b=rgyvGAzpYSKfaO
	VpbVZ6OyrME4OYwDAnPZbANbaGG7kFc/LZ2AtOhc1HkTINfS9ZZS4jm0AP+NRrJD1SegZSo3Q4n2u
	z65P9acyzE6Gt2/+t8YrKjog4Xc4JaJKVQ0OiI8ISPO1m4JMDGOxFGUq7hzYwyriJwPRLGwLStO1A
	5FB5fZSGnVN2saAZ5QVVrhLimg3/F1/2FMuELHdXjKO9CnGv4i8HHePxcdoYWAsWmJqm6ySK23Iz2
	q0jIUjDECYeTDcED8/QWjEMZhnBNYJX/SNyC+K0cKZ3qISoy1/OH4pbnJgltjM/QY+qFa2f5iF8aO
	gxwY6u77i51iMjdevzqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j49n0-0002lY-2C; Tue, 18 Feb 2020 20:48:18 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j49mt-0002l8-4I
 for openwrt-devel@lists.openwrt.org; Tue, 18 Feb 2020 20:48:12 +0000
Received: by mail-qk1-x72c.google.com with SMTP id p7so20927747qkh.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Feb 2020 12:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5pcA06FyLvJhEfZQ+LULizq5fAx4nWoUF8astVkrUI0=;
 b=KROLZqHraDhSgqok/x/0004+WYXQYxftt47G9I9XiyMnnJRDP4H4PViPucnD7BVPjK
 Un4+brBk/kxVNJIzyAZ1SXVfxL1Ut3e7F1Gqz/IY3BHf07+zCBDuL10bR/3q0QaSAiqC
 p3ErIP4HPeShfkWLxqqoWUSKu4OxdKpaL5dbeMeO9uCi8stg0SMWyXx0KE32rYhopsgg
 EX5IeccBUjAl0nbUulewptyhFgvDD4R9CeVgaIU1JHC0Dbs5bYxM14RQCNSyyRX7AW0j
 ZNCuepJj6t2XMuLUOLLYHeBAErwKbbRqvSdjIUJpDyAfhYJMfXxo/k7DlR7wVhX44ZcX
 szDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5pcA06FyLvJhEfZQ+LULizq5fAx4nWoUF8astVkrUI0=;
 b=gMmLdTnVcOgch8H2wTOInTmdS+fiugw7e2r2r++mKCN2Wsw6xvhwgxulY6uHbvRpAS
 Ys+BzK8mdpqmufeD35fsWGYQ+KzZml1fCwPAGw4jeqnbbURoLNXuTNZzFNPgCLRsJYxf
 ZIqkm9IWQfyE1GGJzdMW4IhswI2TCAeepE46mLOmNHecTlW86rHM7RddzM2AgHysK/64
 8+qLyykxzyCWQVmOb0aNuZZW6+BANQdLqx2sT3IJigE9Zcc2drAjWlisZaFwkd0VCpdG
 WIYkl/MONSUMr23N/UAagTHcJ++iPZCC7RxNwXPt3nKobMpyXVB6E3N5G/P70XZeTQ5C
 w4bQ==
X-Gm-Message-State: APjAAAXRvNSEIBjJGKqGuHn/+3r8lcAz4bFuSRuOw8JhrJ4yXAGelkdN
 LD/FWNlUvnJMswMoDn2Bc6Hpgbal
X-Google-Smtp-Source: APXvYqwQKC5J5sTIfhkalqBAY6EsqKV7iabE5tc1/zI+26ChChwjgbJ+ZpA/mup035NtOfvIWgICsg==
X-Received: by 2002:a05:620a:13a7:: with SMTP id
 m7mr20505576qki.500.1582058888971; 
 Tue, 18 Feb 2020 12:48:08 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id u12sm2491199qtj.84.2020.02.18.12.48.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 12:48:08 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 18 Feb 2020 17:47:20 -0300
Message-Id: <20200218204721.20942-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_124811_172331_FF4473DD 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kernel: avoid underscore in *6lowpan
 package names
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Packages kmod-bluetooth_6lowpan and kmod-ieee802154_6lowpan contain an
underscore in the package name.  This causes problems in package/install
because when building a list of package files to install offline using
opkg, it uses a wildcard of the form $(dir)/$(pkg)_*.ipk.

If you were to select kmod-bluetooth=y, but kmod-bluetooth_6lowpan=m,
the latter would be picked up by that wildcard, and make package/install
would fail:

Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies
 * for kmod-bluetooth_6lowpan:
 *      kmod-6lowpan
 * opkg_install_cmd: Cannot install package kmod-bluetooth_6lowpan.

Changing the wildcard pattern is not trivial, and there may be other
places in the build system making this assumption about the package name
format.

Using a dash in place of the underscore avoids the issue.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index d3e062743d..c412ba4d1a 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -84,7 +84,7 @@ endef
 $(eval $(call KernelPackage,ath3k))
 
 
-define KernelPackage/bluetooth_6lowpan
+define KernelPackage/bluetooth-6lowpan
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Bluetooth 6LoWPAN support
   DEPENDS:=+kmod-6lowpan +kmod-bluetooth
@@ -93,11 +93,11 @@ define KernelPackage/bluetooth_6lowpan
   AUTOLOAD:=$(call AutoProbe,bluetooth_6lowpan)
 endef
 
-define KernelPackage/bluetooth_6lowpan/description
+define KernelPackage/bluetooth-6lowpan/description
  Kernel support for 6LoWPAN over Bluetooth Low Energy devices
 endef
 
-$(eval $(call KernelPackage,bluetooth_6lowpan))
+$(eval $(call KernelPackage,bluetooth-6lowpan))
 
 
 define KernelPackage/btmrvl
diff --git a/package/kernel/linux/modules/wpan.mk b/package/kernel/linux/modules/wpan.mk
index b9e9fa5699..053fa1e4bf 100644
--- a/package/kernel/linux/modules/wpan.mk
+++ b/package/kernel/linux/modules/wpan.mk
@@ -116,7 +116,7 @@ endef
 
 $(eval $(call KernelPackage,cc2520))
 
-define KernelPackage/ieee802154_6lowpan
+define KernelPackage/ieee802154-6lowpan
   SUBMENU:=$(WPAN_MENU)
   TITLE:= 6LoWPAN support over IEEE-802.15.4
   DEPENDS:=+kmod-6lowpan +kmod-ieee802154
@@ -126,8 +126,8 @@ define KernelPackage/ieee802154_6lowpan
   AUTOLOAD:=$(call AutoLoad,91,ieee802154_6lowpan)
 endef
 
-define KernelPackage/ieee802154_6lowpan/description
+define KernelPackage/ieee802154-6lowpan/description
  IPv6 compression over IEEE 802.15.4
 endef
 
-$(eval $(call KernelPackage,ieee802154_6lowpan))
+$(eval $(call KernelPackage,ieee802154-6lowpan))

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
