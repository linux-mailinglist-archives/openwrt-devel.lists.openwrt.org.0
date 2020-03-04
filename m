Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1198179489
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 17:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=siw+EqqoC9hySwhfSIRRddt40ArEU9gldEC7Zp+MfLE=; b=V9WOEKxKNQ9LHS
	+ZWfXR4+ECdU5PtksWBOFYf9ThSdKAbjvFlOljrLXHvyxr+Y7D5SggT1x/cxoficBhRHsDLfa3cQ4
	dRofKEi4XsI4q6bfOpGEhUQ0FNJQ/mczGL7JB5JiJ4kHJkDyq3WBYpdPRM2rLGi0ffrsl7i+KqJZW
	K7fQOnwIEDxQxrspzsXUYKPO5yNXAeHqWVfloyBIbXcI0eB3TWQmX3fVJTxTxODij9Mg34URoQAni
	+H/Jq8o2P2KqWVopR8A24m4SkQ/muUpkt3GUBy8aaELcz9HF+t17l5Hytvts6sTz0MTJGaP5tuO3R
	1C3n6r/cyFKlLlJmk6Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WZp-0000Jp-Q3; Wed, 04 Mar 2020 16:08:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WZl-0000IH-6r
 for openwrt-devel@bombadil.infradead.org; Wed, 04 Mar 2020 16:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=hMplryMwKyvZ8jMH+96SoaLOVwjjrmZY6SRooKKfwaQ=; b=d72KVfCmnKuRdGq1m7faX/fJu1
 PiahDhg3MH1mfFKAVU+3mY4i0fVARIWxt/ln1uAQn9ERmHTEGHIiWR18GOOOV0pViMxpnUzPadFsB
 UFc5uh38BX1VwTEWvLFlovYuijXjf0zN8owZnYx8p1d2o5O6nIkUsWqTqUtU+drX4i30T0mDkIMtY
 5hsAuCnOAeUMdJANTy9lKOtTiTaGh8WAJXmFleXc8+YhGiEYkR4dOzlLOl1VKc15443qIU+XGhpgL
 /zLq1/rpxJjbmqSlMFDKsEkbpuhET/PDTx/LwOPjjYvglnEotKAj2Lnkj3xj3fA4r/aqLmGKWD3Bd
 oLVCA2uA==;
Received: from smtpbgsg3.qq.com ([54.179.177.220])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WZc-0007b4-6l
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 16:08:44 +0000
X-QQ-mid: bizesmtp24t1583338075tlb4nig8
Received: from P65xSA.lan (unknown [112.94.103.225])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 00:07:54 +0800 (CST)
X-QQ-SSF: 0140000000000060F4F0B00A0000000
X-QQ-FEAT: 6lgl61/JgtFF5g7YYchIDAB0Dk9OBgOzBfGrkZci+BPowo+NPYUjzHL5UEIZ8
 ZV9LHBL46cLq1WIrUj81oOKd7YYGNiBhZHvWISZx4SmEaWL4Etenhfs+kITP6VZz3RpqfMa
 /W3zu/rKpT/4/BJLqg6SQaxnXTEZDEIXTbHxnVF7592+3fydG4BFADLW6UpSdXo9kIhVTOX
 MBAR7S5LI9yja/+fP5jYQK9M0oC2pQDCGc697c2DK6oGAQcp3RmKFXlIJI7xjvJ4ugKYRkG
 xt9TWv7U0R4s3CvYTG4kFze2RVJphm7kY88V552rCWB0rbpXw8cwH7KDk=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Mar 2020 00:07:54 +0800
Message-Id: <20200304160754.9380-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.179.177.220 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ncurses: update to 6.2
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

Update ncurses to 6.2

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/libs/ncurses/Makefile                 |  6 +++---
 .../100-ncurses-5.6-20080112-urxvt.patch      |  2 +-
 .../101-ncurses-5.6-20080628-kbs.patch        | 20 +++++++++----------
 .../patches/102-ncurses-5.9-gcc-5.patch       |  2 +-
 .../patches/103-ncurses-ar-determinism.patch  |  4 ++--
 .../patches/200-fix_missing_include.patch     |  2 +-
 .../libs/ncurses/patches/900-terminfo.patch   |  2 +-
 7 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/package/libs/ncurses/Makefile b/package/libs/ncurses/Makefile
index e22eb2b893..cc1e960a0c 100644
--- a/package/libs/ncurses/Makefile
+++ b/package/libs/ncurses/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ncurses
-PKG_VERSION:=6.1
-PKG_RELEASE:=5
+PKG_VERSION:=6.2
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=@GNU/$(PKG_NAME)
-PKG_HASH:=aa057eeeb4a14d470101eff4597d5833dcef5965331be3528c08d99cebaa0d17
+PKG_HASH:=30306e0c76e0f9f1f0de987cf1c82a5c21e1ce6568b9227f7da5b71cbea86c9d
 
 PKG_LICENSE:=MIT
 PKG_LICENSE_FILES:=README
diff --git a/package/libs/ncurses/patches/100-ncurses-5.6-20080112-urxvt.patch b/package/libs/ncurses/patches/100-ncurses-5.6-20080112-urxvt.patch
index ed7b2ee448..d654eb28f0 100644
--- a/package/libs/ncurses/patches/100-ncurses-5.6-20080112-urxvt.patch
+++ b/package/libs/ncurses/patches/100-ncurses-5.6-20080112-urxvt.patch
@@ -1,6 +1,6 @@
 --- a/misc/terminfo.src
 +++ b/misc/terminfo.src
-@@ -5875,6 +5875,172 @@ rxvt-cygwin-native|rxvt terminal emulato
+@@ -6145,6 +6145,172 @@ rxvt-cygwin-native|rxvt terminal emulato
  rxvt-16color|rxvt with 16 colors like aixterm,
  	ncv#32, use=ibm+16color, use=rxvt,
  
diff --git a/package/libs/ncurses/patches/101-ncurses-5.6-20080628-kbs.patch b/package/libs/ncurses/patches/101-ncurses-5.6-20080628-kbs.patch
index ebd6df2e91..835c0c53d6 100644
--- a/package/libs/ncurses/patches/101-ncurses-5.6-20080628-kbs.patch
+++ b/package/libs/ncurses/patches/101-ncurses-5.6-20080628-kbs.patch
@@ -1,14 +1,14 @@
 --- a/misc/terminfo.src
 +++ b/misc/terminfo.src
-@@ -4327,6 +4327,7 @@ xterm-xfree86|xterm terminal emulator (X
+@@ -4513,6 +4513,7 @@ xterm-xfree86|xterm terminal emulator (X
  # This version reflects the current xterm features.
  xterm-new|modern xterm terminal emulator,
  	npc,
 +	kbs=\177,
- 	indn=\E[%p1%dS, kb2=\EOE, kcbt=\E[Z, kent=\EOM,
- 	rin=\E[%p1%dT, use=ansi+rep, use=ecma+strikeout,
+ 	kcbt=\E[Z, kent=\EOM, use=ecma+index, use=ansi+rep,
+ 	use=ecma+strikeout, use=xterm+keypad, use=vt420+lrmm,
  	use=xterm+sm+1006, use=xterm+pcfkeys, use=xterm+tmux,
-@@ -5703,6 +5704,7 @@ mlterm-256color|mlterm 3.0 with xterm 25
+@@ -5943,6 +5944,7 @@ mlterm-256color|mlterm 3.0 with xterm 25
  rxvt-basic|rxvt terminal base (X Window System),
  	OTbs, am, bce, eo, mir, msgr, xenl, xon, XT,
  	cols#80, it#8, lines#24,
@@ -16,16 +16,16 @@
  	acsc=``aaffggjjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~,
  	bel=^G, blink=\E[5m, bold=\E[1m, civis=\E[?25l,
  	clear=\E[H\E[2J, cnorm=\E[?25h, cr=\r,
-@@ -5713,7 +5715,7 @@ rxvt-basic|rxvt terminal base (X Window
+@@ -5953,7 +5955,7 @@ rxvt-basic|rxvt terminal base (X Window
  	enacs=\E(B\E)0, flash=\E[?5h$<100/>\E[?5l, home=\E[H,
- 	ht=^I, hts=\EH, ich=\E[%p1%d@, ich1=\E[@, il=\E[%p1%dL,
- 	il1=\E[L, ind=\n, is1=\E[?47l\E=\E[?1l,
+ 	ht=^I, hts=\EH, ich=\E[%p1%d@, il=\E[%p1%dL, il1=\E[L,
+ 	ind=\n, is1=\E[?47l\E=\E[?1l,
 -	is2=\E[r\E[m\E[2J\E[H\E[?7h\E[?1;3;4;6l\E[4l, kbs=^H,
 +	is2=\E[r\E[m\E[2J\E[H\E[?7h\E[?1;3;4;6l\E[4l,
  	kcbt=\E[Z, kmous=\E[M, rc=\E8, rev=\E[7m, ri=\EM, rmacs=^O,
  	rmcup=\E[2J\E[?47l\E8, rmir=\E[4l, rmkx=\E>, rmso=\E[27m,
  	rmul=\E[24m,
-@@ -6883,6 +6885,7 @@ dumb-emacs-ansi|Emacs dumb terminal with
+@@ -7454,6 +7456,7 @@ dumb-emacs-ansi|Emacs dumb terminal with
  screen|VT 100/ANSI X3.64 virtual terminal,
  	OTbs, OTpt, am, km, mir, msgr, xenl, G0,
  	colors#8, cols#80, it#8, lines#24, ncv@, pairs#64, U8#1,
@@ -33,7 +33,7 @@
  	acsc=++\,\,--..00``aaffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxy
  	     yzz{{||}}~~,
  	bel=^G, blink=\E[5m, bold=\E[1m, cbt=\E[Z, civis=\E[?25l,
-@@ -6894,7 +6897,7 @@ screen|VT 100/ANSI X3.64 virtual termina
+@@ -7465,7 +7468,7 @@ screen|VT 100/ANSI X3.64 virtual termina
  	dl=\E[%p1%dM, dl1=\E[M, ed=\E[J, el=\E[K, el1=\E[1K,
  	enacs=\E(B\E)0, flash=\Eg, home=\E[H, hpa=\E[%i%p1%dG,
  	ht=^I, hts=\EH, ich=\E[%p1%d@, il=\E[%p1%dL, il1=\E[L,
@@ -42,7 +42,7 @@
  	kcub1=\EOD, kcud1=\EOB, kcuf1=\EOC, kcuu1=\EOA,
  	kdch1=\E[3~, kend=\E[4~, kf1=\EOP, kf10=\E[21~,
  	kf11=\E[23~, kf12=\E[24~, kf2=\EOQ, kf3=\EOR, kf4=\EOS,
-@@ -7023,6 +7026,7 @@ screen.xterm-r6|screen customized for X1
+@@ -7594,6 +7597,7 @@ screen.xterm-r6|screen customized for X1
  # on Solaris because Sun's curses implementation gets confused.
  screen.teraterm|disable ncv in teraterm,
  	ncv#127,
diff --git a/package/libs/ncurses/patches/102-ncurses-5.9-gcc-5.patch b/package/libs/ncurses/patches/102-ncurses-5.9-gcc-5.patch
index b84fcb965c..972b64977d 100644
--- a/package/libs/ncurses/patches/102-ncurses-5.9-gcc-5.patch
+++ b/package/libs/ncurses/patches/102-ncurses-5.9-gcc-5.patch
@@ -15,7 +15,7 @@ Subject: [PATCH] ncurses 5.9 - patch 20141206
 
 --- a/ncurses/base/MKlib_gen.sh
 +++ b/ncurses/base/MKlib_gen.sh
-@@ -505,11 +505,22 @@ sed -n -f $ED1 \
+@@ -502,11 +502,22 @@ sed -n -f $ED1 \
  	-e 's/gen_$//' \
  	-e 's/  / /g' >>$TMP
  
diff --git a/package/libs/ncurses/patches/103-ncurses-ar-determinism.patch b/package/libs/ncurses/patches/103-ncurses-ar-determinism.patch
index d4c8f11703..1bfa93e3aa 100644
--- a/package/libs/ncurses/patches/103-ncurses-ar-determinism.patch
+++ b/package/libs/ncurses/patches/103-ncurses-ar-determinism.patch
@@ -1,6 +1,6 @@
 --- a/aclocal.m4
 +++ b/aclocal.m4
-@@ -451,7 +451,7 @@ AC_REQUIRE([CF_PROG_AR])
+@@ -454,7 +454,7 @@ AC_REQUIRE([CF_PROG_AR])
  
  AC_CACHE_CHECK(for options to update archives, cf_cv_ar_flags,[
  	cf_cv_ar_flags=unknown
@@ -11,7 +11,7 @@
  		# check if $ARFLAGS already contains this choice
 --- a/configure
 +++ b/configure
-@@ -4503,7 +4503,7 @@ if test "${cf_cv_ar_flags+set}" = set; t
+@@ -4751,7 +4751,7 @@ if test "${cf_cv_ar_flags+set}" = set; t
  else
  
  	cf_cv_ar_flags=unknown
diff --git a/package/libs/ncurses/patches/200-fix_missing_include.patch b/package/libs/ncurses/patches/200-fix_missing_include.patch
index 4616c4fb70..3c4a0d13a7 100644
--- a/package/libs/ncurses/patches/200-fix_missing_include.patch
+++ b/package/libs/ncurses/patches/200-fix_missing_include.patch
@@ -1,6 +1,6 @@
 --- a/ncurses/curses.priv.h
 +++ b/ncurses/curses.priv.h
-@@ -55,6 +55,11 @@ extern "C" {
+@@ -56,6 +56,11 @@ extern "C" {
  
  #include <ncurses_cfg.h>
  
diff --git a/package/libs/ncurses/patches/900-terminfo.patch b/package/libs/ncurses/patches/900-terminfo.patch
index 645b7ad90e..3c37183f28 100644
--- a/package/libs/ncurses/patches/900-terminfo.patch
+++ b/package/libs/ncurses/patches/900-terminfo.patch
@@ -1,6 +1,6 @@
 --- a/misc/terminfo.src
 +++ b/misc/terminfo.src
-@@ -5563,12 +5563,11 @@ konsole-xf3x|KDE console window with key
+@@ -5802,12 +5802,11 @@ konsole-xf3x|KDE console window with key
  # The value for kbs (see konsole-vt100) reflects local customization rather
  # than the settings used for XFree86 xterm.
  konsole-xf4x|KDE console window with keyboard for XFree86 4.x xterm,
-- 
2.25.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
