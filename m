Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC0362ABC
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 23:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/b4aO0IyPR8La7HqzQYk8jGQ6HJ4qpGWnpWMQIw6xhs=; b=BeRw3GOu5nzlyn
	m3Is1ju9QuxniW78RSmnwLKpdLoD7wyEuBSwhlO5IsS7Rf31QyL8A/DF7M3lp640B9QtKBHVrSxEA
	d5k6JejHJ3gP60Zabv1ZSGv0nVSi2i393rPyW596oIBSSCfId4rJdNyYVEeeIJRpBhmGpqd+ULGyT
	GuHhpWA/30OXb5OnDIc31WkDWCYMjoE9cNN3gO5hgLHy011fdL276FuWh+Y2AArg0yYaClb4IuTAQ
	MDRZqPDTJOadmypZLY4Dtr7qVeloV4qlrkQ35EH5jfefRTQToiogm5QjdLmqmQoJdKOUlvttoLfR4
	3fq2Fkf25u8xtUYmShZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkay0-0008FP-Np; Mon, 08 Jul 2019 21:14:33 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkaxf-0008E9-SC
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 21:14:13 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MY64R-1i0qnK1imr-00YV0q for <openwrt-devel@lists.openwrt.org>; Mon, 08
 Jul 2019 23:14:07 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jul 2019 23:14:03 +0200
Message-Id: <20190708211404.56961-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Vizd/1d9CaQFhbEo52RQTNhbfZZNlSm+jtbE2GTt8i6T5mVZ1gr
 inVN5wx2QC7cTRJnkr9uf53589ayo8x3LnISFGG+9TitQkqMxgtwVITPTEo4MHDOsKRRYxz
 2p/CAgC6WOkRCjglcI12bFyEi8AjeBA/MBexTmLRPPwRTgHbyuKUwQ1Y+jkmDjRuW+Iy0d9
 MzFsbaJCNfLLA0ekdz1Yg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nIyACyosHXQ=:V+al6vmN76mLHy0iYJ6f2z
 5a45jsfiz242XBTX3IEs46cAQVKNla3S26NcUFace/v5yE2ynfz0STGPa8ESuJt5TI35J/gf7
 wcKpEOguhpdy+gkFtr8bZFiR+KqvYGAhozYfFLWHwEnYIL+rUJb1AC0uhsIAaYuWFOugIqKS3
 aTaBvtIKJ+sRD3UqnESHgrkZR/xkojwbEx081tzNWDunvkihtpeWlNJQ43Tzbal8vvzHQnUsf
 R60UGBPPkmx2in3RtpbiPOEGaZolSJEzX4/h8aL7IGCxFewervcQ/f/eW12oVavg3Tvn2VK04
 z7SqFU0dUlGD5jaofHK5WOnkWN34DxMY3MpSpAWfL21UFCjwY01Ih07a8IuQvkKoEp/bXM87s
 Ap+JNpRegkH9EOa/DE+SYn2FabB5cGFiVGj66NtEEqJtLzCLrCjm4ll7pG6mSuendkL3bXAZQ
 gq7/X6IkMu2eQKyTxEB8Mruqhed1fm7pZ28tFxnP30eHFBMII63+GNADXpWrwVwHFf+vSM//z
 UIGdhWrkyNYb+ZVlWwFYWK2xXkqksDrCvHe8l/P1/BeayjuL+ERpZADXki5qKCIyXGEH2yTO3
 VCrDF75PTCtmZIpaD7AQNJZcJ/dC4wPiG1nMRm5Tdv1rThbWqESd+DU2SmfcfBBF4L4FRdFBf
 Ie7F33KhZo8a2cMu/AM/gHdcddJq1mCIrMeicgBOfzyxOKAHvGRe5hDYJXoBASK7RKdxg7EmN
 g24VX4vOcBJiQjdZ/HUUZNsGXm40b2hOZY684SCDbzVc4tKZgFcDS6eDrfY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141412_208962_89BBDE25 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] rb532: Fix missing DEVICE_TITLE
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

This fixes the collection of target info during build, where the
device title for rb532/nand is just empty:
tmp/.config-target.in:44925:warning: leading whitespace ignored
tmp/.config-target.in:123738:warning: leading whitespace ignored
tmp/.config-target.in:123786:warning: leading whitespace ignored

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/rb532/image/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/rb532/image/Makefile b/target/linux/rb532/image/Makefile
index 615c9bd265..1558bf56d8 100644
--- a/target/linux/rb532/image/Makefile
+++ b/target/linux/rb532/image/Makefile
@@ -38,6 +38,7 @@ endef
 define Device/nand
   CMDLINE := ubi.mtd=1 ubi.block=0,rootfs root=/dev/ubiblock0_1
   BOARD_NAME := rb532
+  DEVICE_TITLE := rb532 NAND
   SUPPORTED_DEVICES := rb532
   KERNEL_INITRAMFS := append-kernel | patch-cmdline | lzma | lzma-loader-elf
   KERNEL := $$(KERNEL_INITRAMFS) | kernel2minor -s 2048 -i 0 -c
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
