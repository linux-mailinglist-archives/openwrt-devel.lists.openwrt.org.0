Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE84A16EE9C
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 20:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FISAOoehhZflT4OMhgQO7wtus/BW0GWFbpiD1SM+nKs=; b=uI5gfnCnCPSzxr
	ez/sTuj+lR0Ggm4G97vhEiU6K2kG1paOklCxyM9OjcvovfYzUODFf6FRyIleVXYF7rJElDE1wHfNG
	X0qdHA75f88rHkH1vYIuQrCQFUG96uvtAwYdy2lX80QG02XOWJNsqq+XRIxHXVal0iGK0SAhOJAF5
	OEG4fn5gkWmcpzKG7iAXzuUxXeQeaL23CScMjIc0Bot04b6i78brjAmDdFwdCOWcljG9PHhR/+6sl
	EZvVtWyVMgYRp9YxlK/3ykRgnss9/6YvlVHVeW1K88dhA3DGYO6uTIkC0zalZ72CNtbQpiSY1xNgm
	G8qBnUCvdhdCKFuq2weA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fZH-0006Qu-LK; Tue, 25 Feb 2020 19:08:31 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fYu-0006CI-Mk
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 19:08:11 +0000
Received: (wp-smtpd smtp.tlen.pl 20575 invoked from network);
 25 Feb 2020 20:08:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1582657684; bh=n5LzCAD6Y+OPqBqN7KeUqydRxm/sdpC9HiavuD/NnU0=;
 h=From:To:Cc:Subject;
 b=j5qXoyTKreemhdAxr22inH37YdyKodU6dtnn7+Q7MOYINS1gSmw5LkYXc9uCrY+Hn
 x8JfrEByq1PgtXISMxu5vU+5cNH3yTnulnXndTMZ+9dyFXbamrNhTb5CTww6DLwZxh
 BuPI2qZk9YO9aXnccNcNO7+ocHBr69HWPfvunBG8=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Feb 2020 20:08:03 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Feb 2020 20:07:41 +0100
Message-Id: <20200225190741.113235-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225190741.113235-1-tomek_n@o2.pl>
References: <20200225190741.113235-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 2fa99de992ff3b89955d934c3aa940ba
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EaOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110809_089439_094C3CA8 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 6/6] layerscape: sysupgrade: require metadata
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
Cc: Mathew McBride <matt@traverse.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Require the image metadata check so no invalid image could be fed to
sysupgrade without force option.

Cc: Mathew McBride <matt@traverse.com.au>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/layerscape/base-files/lib/upgrade/platform.sh | 2 ++
 target/linux/layerscape/image/armv8_64b.mk                 | 1 +
 2 files changed, 3 insertions(+)

diff --git a/target/linux/layerscape/base-files/lib/upgrade/platform.sh b/target/linux/layerscape/base-files/lib/upgrade/platform.sh
index a2ee81cf3a..013023295b 100644
--- a/target/linux/layerscape/base-files/lib/upgrade/platform.sh
+++ b/target/linux/layerscape/base-files/lib/upgrade/platform.sh
@@ -6,6 +6,8 @@
 RAMFS_COPY_BIN="/usr/sbin/fw_printenv /usr/sbin/fw_setenv /usr/sbin/ubinfo /bin/echo"
 RAMFS_COPY_DATA="/etc/fw_env.config /var/lock/fw_printenv.lock"
 
+REQUIRE_IMAGE_METADATA=1
+
 platform_do_upgrade_traverse_nandubi() {
 	bootsys=$(fw_printenv bootsys | awk -F= '{{print $2}}')
 	newbootsys=2
diff --git a/target/linux/layerscape/image/armv8_64b.mk b/target/linux/layerscape/image/armv8_64b.mk
index bd7055b3ee..ff4846c9bf 100644
--- a/target/linux/layerscape/image/armv8_64b.mk
+++ b/target/linux/layerscape/image/armv8_64b.mk
@@ -291,5 +291,6 @@ define Device/traverse-ls1043
   IMAGE/root = append-rootfs
   IMAGE/sysupgrade.bin = sysupgrade-tar | append-metadata
   MKUBIFS_OPTS := -m 2048 -e 124KiB -c 4096
+  SUPPORTED_DEVICES := traverse,ls1043s traverse,ls1043v
 endef
 TARGET_DEVICES += traverse-ls1043
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
