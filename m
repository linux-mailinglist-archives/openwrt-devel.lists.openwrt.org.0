Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECB4131C1F
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 00:11:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s3PIG0ui2P2lkPe/bVzd6zfKrAcbRXUipqSN26OizHg=; b=p0u8dQvMUJ0t0VKacc8nc9TwEl
	npMEU1XDBy3kJOYZnfcRsbR5ROyP3yLpDD/XU7XG/BJZRIn5C5+AJKZrk04X7qbbRKYVeAuJwTOMZ
	mOegXwj2JrbaKEjJJ+rhQYYoMaXzjjnrWeU6enj/kGG7pzX39Uq+DaOEqpWI6aYLX0G2hDY88YDvt
	pyEGpJda2y2t+h2nedwJm7piFxR/NKIuPwSUxwvluzBpH+slpsJRdGnLxtiqP6CM7UHIltyuTzD5E
	1zHf1tMUjg+vCLSti+Nn/E2xVIObAP8eezaFm+ANNoHn5/3v1jhw5aAdxnvi1AV0JKiUwTbSgjtoI
	AHcTbP7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobX9-0002A8-0H; Mon, 06 Jan 2020 23:11:39 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobWy-000294-63
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 23:11:29 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Ml6i2-1jZiSb2tvI-00lW5t for <openwrt-devel@lists.openwrt.org>; Tue, 07
 Jan 2020 00:11:21 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Jan 2020 00:10:37 +0100
Message-Id: <20200106231037.22460-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200106231037.22460-1-freifunk@adrianschmutzler.de>
References: <20200106231037.22460-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wA4vrA8Aby/n/7qnuBbOWtM1lZkx5pIzrBSuelknzIWe1htxzGw
 4LHyI5fjnucZG1lH1KkLep6AkQQVhj6xalNTviRowgl+md5HwbKijeNQlTxlwgb7df0xOLl
 R22fR1NDRs2mqaTXul+/GVQ+8nTfuotsfDeZCMWtJxrkFBiTveQaDsoIO82SPlYiZk4E8Hl
 1hGKwtGtjGH1MTm/jMN/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lSS0TzTSCY4=:3LUKjLvgBSnU+SF5Hjpn0b
 hULns9FkcP/nc96ILG+35LZE04aYd7iNhIjpuaU64b2Zu5T9RraWfjjuGxZXApHSgM46n3Pte
 O0OHMhe91n4z9efAWvmZEFDAitwURd8W0ocAkHrZ2hmYLeNM43FoJ42tMBbnFnZaFN2D2DqSm
 w8edhgRRt4cBEgV2nHLhyjNelWCAGK7sfTQg88EEyO3wVmjnYjK7IPx0Yk7MDYbuzTs1hNlOU
 H3vetO6ZrEoxMViVrvWDyNmXnGyqRFm3B4ky0WMPLEFFHi8xBUe7xXHinVsRgYwT5gLFlppSZ
 fYs8QMdyUR+ovhShGfZGe4Ph8tumLFZFuVKT7oH+gkK1Iu7wkC0EDzhY1+wKH8GMeutUpZDvH
 d3Y94UED1fFx8ZL5d8SmMwprwCCkQmCjmRKBKWwTG7VA5cYOZgax8A9Xbo7d7bRVBibZ5jFTW
 qEL1srZ2/8sIGxltWS2WgxoasStor1JVuYU/+QorGxSDZscip8ln0DWZz4ctUb4aXYntTIrpq
 Fz1uQoTiAhzzpvKkY/WErGC3eax8L/i5fnenXP/+8SNJm90srF26smPwpzlfPLmLQN0JU2KJh
 P8qGGtoiDpVrFXvp31EEk5zbTc939/EPZwFj6Ry0koIuNxbagEV7/WvmjtVW9vvgS1Ks48ThM
 kk34mP3cSRgkA0u1Kff8MrdYVluzN5gDqaQF5j9zLf7V5AIIM9yqfLOp6rr5yuNKC98Guml3f
 Aoai+2pekbaEe2Xxj5XgBgl2QkuXlyVi6M2F8I/riiX+jSFwDxKIp87tl3wP1o1gEWP3OiX6t
 ZyXVYpYk1vwYSq2eVQtb5tDD6SQBnHh2J3gweQDp5qnU5tgNw2ssvMi+JWNrv0HkQigouwSFs
 EAyPMs0UdmPKsopOjCiMe1CIdScyXAcgbZRFR4BW8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_151128_516660_5795F8CA 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: remove unused
 Build/mktplinkfw-combined
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

Build/mktplinkfw-combined is not used anywhere, so remove it.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/common-tp-link.mk | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index 1c7ff0e567..fa396bbb42 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -1,17 +1,6 @@
 DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT TPLINK_HEADER_VERSION
 DEVICE_VARS += TPLINK_BOARD_NAME TPLINK_BOARD_ID
 
-# mktplinkfw-combined
-#
-# -c combined image
-define Build/mktplinkfw-combined
-	$(STAGING_DIR_HOST)/bin/mktplinkfw \
-		-H $(TPLINK_HWID) -W $(TPLINK_HWREV) -F $(TPLINK_FLASHLAYOUT) \
-		-N OpenWrt -V $(REVISION) $(1) -m $(TPLINK_HEADER_VERSION) \
-		-k $@ -o $@.new -s -S -c
-	@mv $@.new $@
-endef
-
 define Build/uImageArcher
 	mkimage -A $(LINUX_KARCH) \
 		-O linux -T kernel -C $(1) -a $(KERNEL_LOADADDR) \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
