Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD8B19FECB
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 22:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GnxtmwSx7ICpysQLhsJL64qBSf4bu0yVGsJNkgbCesQ=; b=W8oMoaw7nA/yKB
	t/m4Uy9gx0EVdudyqlq9zANRnhybsh+SpFgSd5MoOOkhwkdqbOZavVLknZEVSQq3RS/+U0aUUbjqX
	wprWH9AJOFC0rCRc2498mbb8Y5y0vhkPXtbEGi2L2Fwr9uW5GbOSKuFWYYtCbSHvPeDkgdFIpfC4w
	we+3u2pHzP6a4NPi+OdS/lNIpJAgHCDEGBzb8kch/j7mXtn9tUklIygqcQh4LIuaMDRKgNJXUYKD7
	J2esOu1YddwbVRkfpjhvwteLCgObSv4rQdheLqN09Ymo4HPKw1Y0D0PKC3pKYwX51ka9BOji5/EL2
	IFBrCnZFnSjtaRQanJQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLY5B-0003q9-LJ; Mon, 06 Apr 2020 20:10:57 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLY51-0003oy-3L
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 20:10:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id s30so907543qth.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 13:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0vzchGOcC0Aj9zpWwDAHaeS2AtYE0TdHGPenRn0ZQLM=;
 b=bteSU6YhmSPS1/+ylWi2cQ0wcwrvyiK+YX//+xJSP/5Uvx/JAAZIF5nYlqvd5Elqye
 EJzT7rGv0VGtGDsJ3QnmrLSIJSZcQ0MMghrr1YJI5zSj+fRCPppoOhpkqZZ2GPfIfXwo
 XUFzaDoTbLvq7+GNkoZ2NOB+Nvh040gJq2TqrWHQ4rah5jPbrg+ToBrir67QVsX5RHfG
 tPp3q7nUwmvs427+bNZpCEOeQ943pAwNi7ErMDH6chRTZ83+6GzfdjXXuFVuTR6GQUT5
 51LWoFI1HeRfKEUwRf1wamDa9rH9t3UbgM5U77JBxXN6P/1QXF/b1GddXwxE5QvsRpRc
 TQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0vzchGOcC0Aj9zpWwDAHaeS2AtYE0TdHGPenRn0ZQLM=;
 b=dLtw8tdLrg5IkV/ZxKR/InKyZDm9GVy74u5Keb9tCAhIs3+lmbp4ChkGKmLPRnrYNJ
 aIX06t/Wj4+Op3/kxaOdzQAWw+5khYqnIFd3i+T2fnN779LMNhZYk4oRmfw2kdWXrjt2
 65KWutG2uQGxjpz9EApahH+1B+pdtp8wfpRE+0gUZLF5cBshlvgjxgi1cHTsYvhJkx5S
 ipOF3oGLDi8Jyw/kylIdxb8w/STOqGjBIG9jV7jwtx3R3rRNxpOBReT+1YfphdzGbQy1
 DWwGWXLQuu5to1zdlHuTpF2AgU7cHUxd38Cv3f5kj8xYhDVOpC9B45DoLTphi6QAgjjy
 CwYg==
X-Gm-Message-State: AGi0PuZK8bIB0Ij8QqXZnhwNPDfKE+5+oUu9sp/zqDf18T0VAukLhfpx
 7WejC1IASYUOjeN7r7bKMuSJ3JOowqE=
X-Google-Smtp-Source: APiQypLgtf+5iVUF2ICDRl9I9fzfRdjm7d8KKYiVJeWOM9vCQZk6EA1n731PcbENNKwf0tgeAIDttA==
X-Received: by 2002:aed:2442:: with SMTP id s2mr1309388qtc.153.1586203844976; 
 Mon, 06 Apr 2020 13:10:44 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id c6sm13446543qkg.88.2020.04.06.13.10.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 13:10:44 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 17:10:30 -0300
Message-Id: <20200406201036.19144-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_131047_166354_0C95C002 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/6] build: update scritps/config to
 kconfig-v5.6
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TLDR: You can't review this by only looking at the patches.

This series updates scripts/config to tag 'kconfig-v5.6' of
git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild

The Good Stuff:
===============

The thing that motivated me to make this update was the change in
displaying which dependents are forcing a package to be selected.  Try
to figure out what is forcing alsa libs to be built-in, with the current
way they are displayed:

  Selected by: PACKAGE_classpath [=n] && AUDIO_SUPPORT [=y] || PACKAGE_libao [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_libffmpeg-full [=m] && AUDIO_SUPPORT [=y] && (!\
PACKAGE_libx264 [=n] || BUILD_PATENTED [=n]) || PACKAGE_gst1-mod-alsa [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_asterisk16-chan-alsa [=n] && PACKAGE_asterisk16 [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_baresip-mod-alsa [=n] && AUDIO_SUPPORT [=y] && \
PACKAGE_baresip [=n] || PACKAGE_freeswitch-stable-mod-alsa [=n] && \
PACKAGE_freeswitch-stable [=n] && AUDIO_SUPPORT [=y] || PACKAGE_yate-mod-alsachan [=n] && \
AUDIO_SUPPORT [=y] && PACKAGE_yate [=n] || PACKAGE_alsa-utils [=y] && AUDIO_SUPPORT [=y] || \
PACKAGE_alsa-utils-seq [=n] && AUDIO_SUPPORT [=y] || PACKAGE_alsa-utils-tests [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_forked-daapd [=m] && (!PACKAGE_libx264 [=n] || \
BUILD_PATENTED [=n]) && AUDIO_SUPPORT [=y] || PACKAGE_ices [=n] && AUDIO_SUPPORT [=y] || \
PACKAGE_madplay-alsa [=n] && AUDIO_SUPPORT [=y] || PACKAGE_moc [=n] && AUDIO_SUPPORT [=y]\
 || PACKAGE_mpd-avahi-service [=n] && AUDIO_SUPPORT [=y] || PACKAGE_mpd-full [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_mpd-mini [=n] && AUDIO_SUPPORT [=y] || PACKAGE_mpg123 [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_portaudio [=n] && AUDIO_SUPPORT [=y] || \
PACKAGE_pulseaudio-daemon [=n] && AUDIO_SUPPORT [=y] || PACKAGE_pulseaudio-daemon-avahi [=n]\
 && AUDIO_SUPPORT [=y] || PACKAGE_shairport-sync-mbedtls [=n] && AUDIO_SUPPORT [=y] || \
PACKAGE_shairport-sync-mini [=n] && AUDIO_SUPPORT [=y] || \
PACKAGE_shairport-sync-openssl [=n] && AUDIO_SUPPORT [=y] || PACKAGE_sox [=n] && \
AUDIO_SUPPORT [=y] || PACKAGE_squeezelite-full [=n] && AUDIO_SUPPORT [=y] || \
PACKAGE_squeezelite-mini [=n] && AUDIO_SUPPORT [=y]

This is the new display, much easier:

Selected by [y]:
  - PACKAGE_alsa-utils [=y] && AUDIO_SUPPORT [=y]
Selected by [m]:
  - PACKAGE_libffmpeg-full [=m] && (!PACKAGE_libx264 [=n] || BUILD_PATENTED [=n]) && \
AUDIO_SUPPORT [=y]
  - PACKAGE_forked-daapd [=m] && AUDIO_SUPPORT [=y] && (!PACKAGE_libx264 [=n] || \
BUILD_PATENTED [=n])
Selected by [n]:
  - PACKAGE_classpath [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_libao [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_gst1-mod-alsa [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_asterisk16-chan-alsa [=n] && PACKAGE_asterisk16 [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_baresip-mod-alsa [=n] && AUDIO_SUPPORT [=y] && PACKAGE_baresip [=n]
  - PACKAGE_freeswitch-stable-mod-alsa [=n] && PACKAGE_freeswitch-stable [=n] && \
AUDIO_SUPPORT [=y]
  - PACKAGE_yate-mod-alsachan [=n] && AUDIO_SUPPORT [=y] && PACKAGE_yate [=n]
  - PACKAGE_alsa-utils-seq [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_alsa-utils-tests [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_ices [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_madplay-alsa [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_moc [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_mpd-avahi-service [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_mpd-full [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_mpd-mini [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_mpg123 [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_portaudio [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_pulseaudio-daemon [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_pulseaudio-daemon-avahi [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_shairport-sync-mbedtls [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_shairport-sync-mini [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_shairport-sync-openssl [=n] && AUDIO_SUPPORT [=y]
  - PACKAGE_sox [=n] && AUDIO_SUPPORT [=y]


Reviewing this Series:
======================

In order to make reviews possible, I've published a list of commits that
I've assembled, to get from upstream commit 2bce77b9f8c9 to the current
openwrt scripts/config.  The commits are listed here:
https://github.com/cotequeiroz/linux/commits/openwrt-b2c55d50f8/scripts/kconfig

Then, I've rebased these changes to the current upstream kconfig, and
reverted/adapted some upstream changes to make the new version work with
openwrt:
https://github.com/cotequeiroz/linux/commits/openwrt/scripts/kconfig

I suggest to create a repository for it within the openwrt
infrastructure, to ease future upgrades.  I could maintain it, if there
is a need for a maintainer.

Changes from Upstream:
======================

The following is a comparative list of commits I used to get from
upstream to the openwrt versions (current, and newly proposed):

 = remove kernel configuration targets
 < remove gettext support			- removed upstream
 > remove tests					- added upstream
 = remove gconf files
 = remove nconf files
 = Makefile adjustments
 = don't use yydebug unless YYDEBUG is on
 = add wildcard file include feature
 = remove useless file
 = adjust menuconfig help text
 = force config reset when target changes
 = Add gitignore files
 = use default file in conf --all*config
 = remove override: reassigning symbol warn
 = conf: allow writing to a different file
 < zconf.gperf: remove problematic prototype	- gperf was dropped
 = conf: allow reading an input file
 = handle select on symbol with unmet deps
 < apply kconfig: fix relational operators for bool and tristate symbols
						- this was a backport
 < Change conf.c remove compiler warnings	- gone with gettext drop
 < refresh *_shipped files			- done at build time now
 = Add README file with summary of changes
 < adjust help message to openwrt HEAD		} changes needed to
 < use openwrt auxiliary build files		} achieve 100% match
 < add deprecated 'depends' syntax		} with current openwrt
 < use openwrt *_shipped files			} version
 > Revert "kconfig: Warn if there is more than one help text"
 > Revert "kconfig: only write '# CONFIG_FOO is not set' for visible
           symbols"
 > don't write files to $(TOPDIR)/include
 > Revert "kconfig: stop supporting '.' and '/' in unquoted words"
 > allow to warn when seeing recursive dep

Commits marked with '=' are common in both versions; '<' are commits
only present in the current openwrt version, and '>' are commits added
to the proposed new config.

About removed commits (<):
==========================

gettext support was dropped upstream, as well as use of gperf, and
pregenerated '_shipped' C files.  The relational operators fix was a
backport, and the compiler warnings disappeared with gettext removal.

The 3 commits that follow the README change are cosmetic/minor changes
that I made to get an 'empty diff' against current scripts/config.
The deprecated 'depends' syntax is no longer used and can be safely
dropped.

As for the commits added in the new version (>):
================================================

The warning about more than one help text is there to handle the few
packages in the feeds that use a little hack to be able to show one text
in the menuconfig help command, and another, shorter version to be shown
by 'opkg'.  A second 'help' definition, done inside Package/foo/config,
is the one shown by menuconfig, while Package/foo/description will be
the text saved in the final ipkg file.  Since this was done with a
purpose, I decided to let it stay.  It can be removed nonetheless, and
it's only a warning being shown.

The '# CONFIG_FOO' revert is needed for busybox to write its own .config
file from openwrt main .config.  If the symbols are pruned, busybox will
fail to build because it will understand that missing 'choice' values
are new configuration symbols, and then will ask for the choice
(automatically answering 'n' won't work).

The $(TOPDIR)/include change is there because Linux needs header files
there, and we don't.  Rather than reverting the commits, which may give
us future rebase work, I chose to exit the function earlier, keeping the
code mostly intact.

Support for '.' and '/' in symbol names is needed in a few cases, and I
did not feel that I needed to make rename changes to targets/packages
that I don't fully grasp.  It can (should?) be done later, then this can
be dropped.

Recursive dependency changed from warning to error upstream:
============================================================

The recursive dependency warning needs some more thought.  I first
wanted to go with upstream, and just call it an error.  When I was
running a final test after a rebase, it ended up biting me.  It picked
up an existing recursive dep that was not showing up in the old version.
After spending some brainpower (git bisect will not help much, since the
commit that errors out is not necessarily the culprit, and it wasn't
this time).  There were many module packages 'select'ing ipv6 modules
without 'depend'ing on @IPV6.  So I've included a commit adding the
dependency to resolve the problem.  Note that I've only looked at
'package/kernel/linux/modules', and they were enough to make it build
again.

I've softened my approach and added an option to have conf built to only
warn on a recursive dep by compiling with make WARN_RECURSIVE_DEP=1, but
kept the upstream behavior of considering it an error by default.

Note that conf will not be automatically rebuilt if the flag changes.
You must either run 'make config-clean' before calling make again
with/without WARN_RECURSIVE_DEP=1, and that make 'WARN_RECURSIVE_DEP=0'
will not build it without the warning!  Ci bots would certainly benefit
from the new behavior, while buildbots _may_ want to be run with a
warning only, although a failure will make mistakes more visible--no
flag on master, WARN_RECURSIVE_DEP=1 for stable builds?.

Other commits included in the series:
=====================================

Besides the aforementioned commit to resolve recursive dependencies,
there were some upstream changes that require openwrt adjustments, such
as the need to quote 'source' filenames:  busybox needed to be adapted.

Also, unmet dependencies are handled a bit differently now, and
RTC_SUPPORT in target/Config.in, which was defined as tristate, and
depended on 'm' (meaning its value should be only 'm' or 'n'), but ended
up being selected by feature rtc.  Old config version would write it as
RTC_SUPPORT=y; new version would do RTC_SUPPORT=n.  However, RTC_SUPPORT
does not even need to be m, so I've made it a plain bool in a separate
commit.

Also, I've simplified the way the related *config targets are built in
include/toplevel.mk by using pattern rules, adding '-O2' to CFLAGS'
while at it.

Cheers,

Eneas

Eneas U de Queiroz (6):
  kernel: add @IPV6 dependency to ipv6 modules
  busybox: quote 'source' filenames in Config.in
  build: define RTC_SUPPORT as a bool
  build: simplify building *config targets
  build: scripts/config - update to kconfig-v5.6
  build: add option to warn on recursive dependency

 include/toplevel.mk                           |   15 +-
 package/kernel/linux/modules/netfilter.mk     |   13 +-
 package/kernel/linux/modules/netsupport.mk    |    6 +-
 package/utils/busybox/config/Config.in        |   44 +-
 .../utils/busybox/config/networking/Config.in |    2 +-
 .../utils/busybox/config/util-linux/Config.in |    2 +-
 scripts/config/.gitignore                     |   35 +-
 scripts/config/Makefile                       |  182 +-
 scripts/config/README                         |   27 +-
 scripts/config/conf.c                         |  248 +-
 scripts/config/confdata.c                     |  533 ++--
 scripts/config/expr.c                         |  216 +-
 scripts/config/expr.h                         |  110 +-
 scripts/config/images.c                       |   34 +-
 scripts/config/images.h                       |   33 +
 scripts/config/{zconf.l => lexer.l}           |  340 ++-
 scripts/config/list.h                         |    1 +
 scripts/config/lkc.h                          |   58 +-
 scripts/config/lkc_proto.h                    |   21 +-
 scripts/config/lxdialog/.gitignore            |    2 -
 scripts/config/lxdialog/check-lxdialog.sh     |   91 -
 scripts/config/lxdialog/checklist.c           |   19 +-
 scripts/config/lxdialog/dialog.h              |   23 +-
 scripts/config/lxdialog/inputbox.c            |   22 +-
 scripts/config/lxdialog/menubox.c             |   25 +-
 scripts/config/lxdialog/textbox.c             |   17 +-
 scripts/config/lxdialog/util.c                |   15 +-
 scripts/config/lxdialog/yesno.c               |   19 +-
 scripts/config/mconf-cfg.sh                   |   50 +
 scripts/config/mconf.c                        |  179 +-
 scripts/config/menu.c                         |  451 ++-
 scripts/config/{zconf.y => parser.y}          |  429 ++-
 scripts/config/preprocess.c                   |  575 ++++
 scripts/config/qconf-cfg.sh                   |   32 +
 scripts/config/qconf.cc                       |  174 +-
 scripts/config/qconf.h                        |    3 +-
 scripts/config/symbol.c                       |  268 +-
 scripts/config/util.c                         |   86 +-
 scripts/config/zconf.gperf                    |   49 -
 scripts/config/zconf.hash.c_shipped           |  250 --
 scripts/config/zconf.lex.c_shipped            | 2533 -----------------
 scripts/config/zconf.tab.c_shipped            | 2478 ----------------
 target/Config.in                              |    3 +-
 43 files changed, 2700 insertions(+), 7013 deletions(-)
 create mode 100644 scripts/config/images.h
 rename scripts/config/{zconf.l => lexer.l} (50%)
 delete mode 100644 scripts/config/lxdialog/.gitignore
 delete mode 100644 scripts/config/lxdialog/check-lxdialog.sh
 create mode 100755 scripts/config/mconf-cfg.sh
 rename scripts/config/{zconf.y => parser.y} (64%)
 create mode 100644 scripts/config/preprocess.c
 create mode 100755 scripts/config/qconf-cfg.sh
 delete mode 100644 scripts/config/zconf.gperf
 delete mode 100644 scripts/config/zconf.hash.c_shipped
 delete mode 100644 scripts/config/zconf.lex.c_shipped
 delete mode 100644 scripts/config/zconf.tab.c_shipped


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
