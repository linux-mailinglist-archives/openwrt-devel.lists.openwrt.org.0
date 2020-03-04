Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A0C179BE2
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 23:42:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UZX7Mcca4dqu5vXZiahje5Gt1SICAEsTZ6UnruFyyeo=; b=p9Disi40xK8RHT
	QLWOLJJ5MrCp4DKoKSS4GZzQKgpVFHl2NjPEi5sStU6aYap22RCUHWLGYptHobv6PvoU3Ts1eJadC
	wOTy+R47b3ydfVdLREjv540zeHNoK9b5rmEj+wmyleA+v5ToVncZrwWDl1Xi7hemnJ35uvcMBNIi2
	1lprViFRkzNyuLoJHgddG73ilMauaHgzNr7nGByp5EK7yWGRb0D2kP9l8MJqcoAO4H73fQ1kyI23H
	d+NIcqxLwA+LqqYRmxT+isGmsToXi/AYyHvzp96yeS4LMaFX8AT3hDu01vpIEez8go2mWLB8WCR0x
	J4K4KJeJav1kCNBYL+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9cif-0002Nc-4k; Wed, 04 Mar 2020 22:42:25 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ciZ-0002ND-OP
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 22:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583361732;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=9ETE99FUNvCy+RxTE4yDUUQ8OyIL/yQrIs7VH3qN5kQ=;
 b=pWYxAhjbH8ElRT2ClVF8g5sZHKgtho6CQqAi6W/0ENyBbemzmtckv3qZU4bnIbd1gc
 W/ciIvSlXMJmosJ7b58qQZJ5wDtHbkscvLViBYwy5LKOpP6hw82Wnf3UFwAAmJbTPKiC
 1kTMz/kx9/DnXwJenndmfMroRVO07DnRRJbOuQGtBwkggh+mSNIuMQtjAma2EYMgAjBN
 CmhT56rAeDHraQ/cgSJLAs6et9Mx77tZ6Hq+vE3hlWOjKxsDdaWDOp/9flsx+/QaNzzR
 eeoAdBpy2XTo7uvDF1x/s0lBhK2j2wXdYn9ZpWz9MaTArIWQPPVf4I/gwAXgX64QMHB+
 LN/Q==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MvCO4XzP+xUjBOnrNgGpUmNL4vWpeO4GmM63Q=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 46.2.0 AUTH)
 with ESMTPSA id Q06422w24MgBRgH
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 4 Mar 2020 23:42:11 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 10745156C1F;
 Wed,  4 Mar 2020 23:42:11 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Mar 2020 23:42:02 +0100
Message-Id: <20200304224202.6691-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_144220_383962_D742B4EE 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] uboot-envtools: mxs: add support for olimex,
 imx23-olinuxino
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add ubootenv uci config for Olimex OLinuXino boards.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 package/boot/uboot-envtools/Makefile  | 2 +-
 package/boot/uboot-envtools/files/mxs | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/package/boot/uboot-envtools/Makefile b/package/boot/uboot-envtools/Makefile
index 1c6b789716..49d57e69bd 100644
--- a/package/boot/uboot-envtools/Makefile
+++ b/package/boot/uboot-envtools/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=uboot-envtools
 PKG_DISTNAME:=u-boot
 PKG_VERSION:=2019.07
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_VERSION).tar.xz
diff --git a/package/boot/uboot-envtools/files/mxs b/package/boot/uboot-envtools/files/mxs
index ecfb5de162..e087d60783 100644
--- a/package/boot/uboot-envtools/files/mxs
+++ b/package/boot/uboot-envtools/files/mxs
@@ -17,6 +17,9 @@ i2se,duckbill)
 	ubootenv_add_uci_config "/dev/mmcblk0" "0x20000" "0x20000"
 	ubootenv_add_uci_config "/dev/mmcblk0" "0x40000" "0x20000"
 	;;
+olimex,imx23-olinuxino)
+	ubootenv_add_uci_config "/dev/mmcblk0" "0x40000" "0x4000"
+	;;
 esac
 
 config_load ubootenv
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
