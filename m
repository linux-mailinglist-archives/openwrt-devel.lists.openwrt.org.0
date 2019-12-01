Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8DF10E238
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Dec 2019 15:36:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UmgO8ZAUfVbZHd6/huYNZx4HYDtOSMIJhIJmlZWz2LQ=; b=YElOSf/jHkeKB8
	+FJea+4Y51D1KoXm7GCEjW37R8RflPfxNuiDZFjn3iAE4yISTRxabMf+OOXN/IbUAJ2LVPKPTvx0u
	Zh+uz/LL0uHA4Pl/0pxBU4G1E3pIV09WXZ8nIXOWiCLxj4hVcSc3yIuWOex3CC/ktlnKv12Q59eRt
	d7cAmkiguxsLioxp0mUyWUdnWNc5ucchA9Tph6dl6Tw2yn3lZWJTLP2CijDjZgZq+5RvsQmKymV8R
	EpfBaTczQkem3AwOvwLKHwi/Ro/6IdwEFrzyWu/kvp1TIVKim/PlkDee1widBIPWnySy0QemsO8Xq
	iqWSSztHqGhfwochuXsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibQKZ-0003Ee-36; Sun, 01 Dec 2019 14:36:11 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibQKR-0003E2-20
 for openwrt-devel@lists.openwrt.org; Sun, 01 Dec 2019 14:36:04 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 3F750FA2A5; Sun,  1 Dec 2019 15:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1575210945;
 bh=o/6KuPl9bUVn20GOyHGtuZl5oBXJuWT7fXXj6MGY994=;
 h=From:To:Subject:Date:From;
 b=l81W0mQ7NfkpWXk2SIsP2hlFe8Zob7IgvmdbFiUfhGZp1xQCLYSjAYV78JnHsnJ1g
 TYa/jtw2xX2ul0MF++kVcEkReRHainQlexJmL4ByAfVeVKbeLy6oQHd4OwaPkIq+4U
 CFs83pjBNfI2WiNWPb2e2J1QfAx61Or76xpDXPUs=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 028FCFA2A3
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Dec 2019 15:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1575210943;
 bh=o/6KuPl9bUVn20GOyHGtuZl5oBXJuWT7fXXj6MGY994=;
 h=From:To:Subject:Date:From;
 b=lelfZtG5gJpz+vqzzQsoRhJNLC3Uf67Y3oIfb1Y4FdZctPHSHZT0XdhNuVjP656GI
 vYHaVEKyjXYS1ns4GNJKzA8RZUhcu8GYpPu0L4pAFK93yCKH0HVEsuIJ713naj+Y3+
 BIvXDnf8Y5OvhnTIrlWuvkRKBsOr/ZbnvHK8B8aM=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Dec 2019 15:33:16 +0100
Message-Id: <20191201143316.7641-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_063603_265618_679428B0 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] amd64-microcode: update to 20191021
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

* New microcode update packages from AMD upstream (20191021):
    + New Microcodes:
      sig 0x00830f10, patch id 0x08301025, 2019-07-11
    + Updated Microcodes:
      sig 0x00800f12, patch id 0x08001250, 2019-04-16
      sig 0x00800f82, patch id 0x0800820d, 2019-04-16

* New microcode update packages from AMD upstream (20181128)
    + New Microcodes:
      sig 0x00800f82, patch id 0x0800820b, 2018-06-20

This patch incorporates both the 20181128 and 20191021 updates.
Changelog copied from the debian package changelogs.

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 package/firmware/amd64-microcode/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/firmware/amd64-microcode/Makefile b/package/firmware/amd64-microcode/Makefile
index 4fd3d04610..9d562c1b59 100644
--- a/package/firmware/amd64-microcode/Makefile
+++ b/package/firmware/amd64-microcode/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=amd64-microcode
-PKG_VERSION:=20180524
+PKG_VERSION:=20191021
 PKG_RELEASE:=1
 
 PKG_SOURCE:=amd64-microcode_3.$(PKG_VERSION).$(PKG_RELEASE).tar.xz
 PKG_SOURCE_URL:=http://ftp.debian.org/debian/pool/non-free/a/amd64-microcode/
-PKG_HASH:=7c389c357c242e7161f6872bf4e12011a71e4c0683f06fb1bcfad650a78bf0a9
+PKG_HASH:=3c289cf6f8a761e1232de17f47bb4e05a9d2739ad8e6ccb643f71ddc08ba61f2
 PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-3.$(PKG_VERSION).$(PKG_RELEASE)
 
 PKG_LICENSE_FILE:=LICENSE.amd-ucode
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
