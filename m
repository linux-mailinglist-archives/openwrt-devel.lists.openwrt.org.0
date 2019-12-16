Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B6B1205C1
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 13:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w51wDe83/hIr4rbBHrln30pFuWYgXQzF++/5u6xmdMY=; b=JuHA+rUk394fpHqShzrmUZkVMR
	7aHk8FibtWNh9rgK2gVNWtoBTSGiIA+AQ0rr1PZGaF2rI6udRnuTWJhz8+ExBGVIqQz2b+JbcSABl
	CM2qXt73a6SbklWz1w48sr1DBYrBqgo2Um9PDJGXQ8GygUnX3E8cEgZdoY5xLGrQytvzdKSTqeWSh
	W7nq8LCV7QO53cqT/X59u7GT6XogO2GpNLQW75sJZuIdYEVrd0VRGVBeQmudL+9cqZJVbO47C1Prb
	OzwiIgH2RoaUOttn+Ev0BrtM+U/EgWfg6NiJ4QtFP1kUzEcKedupyBjIss08heIil+LinTpuV/Tcx
	TDJIMTIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpWJ-0000Aa-Nu; Mon, 16 Dec 2019 12:30:39 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpW9-00008y-Fi
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 12:30:31 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MQMi7-1iKTHU2rMv-00MJ7i for <openwrt-devel@lists.openwrt.org>; Mon, 16
 Dec 2019 13:30:25 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 13:28:15 +0100
Message-Id: <20191216122817.22628-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
References: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:uFkwcw4llLUb2Wu2BJb/jlFjq+FRGdemJLmwou8klXxPxlBbLWh
 aVkTVvITY2PnXbbO6xsxp3rWDmj0USkFvk+sP1r9fsjGhDWspjYT6UqIt6O9hRUTBGNbr31
 Wv6EEqh+OJfcqIznNh5sRl9pJGNT2TUSvdGCDIqAUTpwgpmyX3dKiBmVfAEtx5JYT2n9bAI
 ioeUQyA4C7gERP58oz54A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Uc514XcM31g=:vAYLwxji8AbPNeRYo/WZUZ
 OrNUeCcgYCFp/GHqbtN22NHCZWm9Zfl+z9IG5DQf+5JnncOSGhGelrB9R5c1nM5lGsU3AcPnt
 vRlXhBkrlRicOS+s5BPsqu9a+c7U+byQiMe96oM1sGo/fqO1zLptLArGAbIbY2U4aWFdS/2Oe
 nnoOSs/elBFjS4da73XpHn2lV+P+vF8lpbuBmI98JJ1jtussdjB/4veDKZZEYcLRlxAF09ii9
 hbCgjo1xo7AJ6GvxlSjccMbeQ4qtVmcBui+oZ/34KRbfhXBYGFrPdJh6OwDQ8/tMyFpv1Fsb+
 T7/hmlFFSZdpgiqUe6aKUBE7R2X0yX/uKh+YBKgkLnfDE5KwPxz/E5KZqhOuyG/vzF4hs+73E
 echuJjWf8b6z8dsB7a/ruwz5RJCv6IDpVEfU17WFFQkVHyNwqBblzM4YVK2KtTE763S1EfoO4
 05/qUhlOaKgHaF54jsi5RgC/Ogz5Jj9L1I5OJTZR070C54PJ2UXQeAV0MYvZcfCAHoxWvOivY
 3FlifvFOAM1AwWLZH15ebhTgi644orCQsuIJGXFjukyAJ/MLk+GRuKpmNKCWMGth1eidZPXdV
 t884SMkjx+hogpNyxARuAqI5ZvKuDUlnaiGWUbQQJa7GxevzsfnNJSLj0xggOG8YZpcKsouBX
 qC30C5JrCzfdxIwHXOuQ49LU7VQJkFo3nPnrlbdAuOQkaBtpw+rOixFjMD6XWGfCkRHB2fMyT
 08HQ4y5bk/IxAwwiEn+MQSketWBCpolok0Cs/SDZzBNguBubnkhBkjrnXLOfDa6hROLfjabcg
 fo9ytcVd6lVeC7POiM/epQwuToKcGdZKj0RME4hOS29uIeR39xpCtPOpwrEftNcjHMax7ZFpg
 IfARmhDt942g1cHfpDv9WkCSwkKRxmXJWR36Oay+Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043029_819427_21D4C60F 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/4] build: image: add SOC device variable
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

This add the device variable SOC and adds it to DEFAULT_DEVICE_VARS.

It is supposed to replace target-specific SOC variables like ATH_SOC
and thus unify variable names.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/image.mk | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/image.mk b/include/image.mk
index 8592c19b99..26da4d6819 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -420,6 +420,7 @@ define Device/Init
   DEVICE_DTS :=
   DEVICE_DTS_CONFIG :=
   DEVICE_DTS_DIR :=
+  SOC :=
 
   BOARD_NAME :=
   UIMAGE_NAME :=
@@ -437,7 +438,7 @@ DEFAULT_DEVICE_VARS := \
   DEVICE_NAME KERNEL KERNEL_INITRAMFS KERNEL_INITRAMFS_IMAGE KERNEL_SIZE \
   CMDLINE UBOOTENV_IN_UBI KERNEL_IN_UBI BLOCKSIZE PAGESIZE SUBPAGESIZE \
   VID_HDR_OFFSET UBINIZE_OPTS UBINIZE_PARTS MKUBIFS_OPTS DEVICE_DTS \
-  DEVICE_DTS_CONFIG DEVICE_DTS_DIR BOARD_NAME UIMAGE_NAME SUPPORTED_DEVICES \
+  DEVICE_DTS_CONFIG DEVICE_DTS_DIR SOC BOARD_NAME UIMAGE_NAME SUPPORTED_DEVICES \
   IMAGE_METADATA KERNEL_ENTRY KERNEL_LOADADDR UBOOT_PATH DEVICE_VENDOR \
   DEVICE_MODEL DEVICE_VARIANT \
   DEVICE_ALT0_VENDOR DEVICE_ALT0_MODEL DEVICE_ALT0_VARIANT \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
