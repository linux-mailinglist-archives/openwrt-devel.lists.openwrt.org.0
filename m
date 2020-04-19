Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357A11AFED8
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 01:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0Dm4S4DG8GiI23yihVN1pqyY922kSg9CEvjDIq2q0M=; b=Z+JBIfE3N00Pc+
	bereunh5b5QBbb+lnxmIdhq57u3VofeinBQPmxAlN04dOgKNjsjrryYWIh0VEunpTX+KUbWpJ4GGW
	N+umQXOH4mRPSVwwW+2HI+LjTZCfcwZee0Rwzj5+N+/rA8ax/GUDpqGsZRQISNT3dRPDe0560xdvB
	s6DuE8dBDoj5R1O6ig/dFmr/L+npF24uKCRUieTQ1i/W91qb/nznAxuQ2+/Z8Z4AuwXQ/Tzd+hokd
	j5dcE9oq6Pp+mM8sAgD3ARARjiRxI9dennIloEAPkTUjMGliZawA8/J5PELI8wvhAAocduOdJpxBB
	pboQL6Z0wEE4q1uTONkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQJ8N-0007pG-JJ; Sun, 19 Apr 2020 23:13:55 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQJ8G-0007o5-O1
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 23:13:50 +0000
Received: by mail-qt1-x842.google.com with SMTP id x2so7111662qtr.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 16:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fn7CQmh/MxucXuypPjfB68UXvUbq4uAbOdZDPPmoP7E=;
 b=K/nTIy5W8nwJD7i+esYR+10hU2uQgtXfHJu9lG8cDD7/JWdLdqOq5N6g7RF8XsOIHw
 kxJwbXyHgdUL9BaaCXbLdkn2HoHw//7L4MsWi6/g/ihdupDuEJq+t0UyPu5SvtoZi/LJ
 Ru4BLS8hfmwN09l8+CmPgdUEa2w61rKi9askqdVj3X0yFoGEz2alEMdJY8NeIDJKSE40
 hLMVSeS/GYxX40ghwU9+6HNSXdvMIjOcVM6SVPaP0n7ue+4jvFDdcSInuIN2rdoZ9wkE
 BNJseHkcdQK1P6CJc0Rkrw1PiQBNnmFIeZMWkB5tBeM2Dp6Ow5ld36ID0ac7xepGNRS1
 YI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fn7CQmh/MxucXuypPjfB68UXvUbq4uAbOdZDPPmoP7E=;
 b=efJkXzQRky9SUUzpG5sEHdiH69lM+4vCvT9sN9jRzKkWYFDpssCCCFArxyZuFOA5TP
 8v0IWPbCm8TqrJNmQG8MkTinbIsDAdthGbSgSa2P2U57GZdWlCiqTRuH8FgpJhWl7YWN
 7a4hDX+rGf7jIdQoBFNY58GHDYI0mYt4EW5KaYBswAlfd9XY5qkc/tG8Khkhm/ZL3txb
 OCd6y5yBCZSkwsp6qQuKJ3ra/+LgjGdw2xmnsKW6kduRFEew3leKTY3g7WYOzOj2z7Yh
 Flhgpvn2KGmSynCWJRimcaZZuZpZStsQfncCbKGQnOwEBlhLGrxkVZdKQg6nV8Pk1xzT
 PyAw==
X-Gm-Message-State: AGi0PuZ0VlSxt7Jvk26d43RuP6DWkv1W10vI1l4r/1USjNay/pjN5e5B
 tBzkYq7PX1CgXLtlRTKnvCBxR35VTQU=
X-Google-Smtp-Source: APiQypK8eE56iZp/+XX+j3zMJ6WwxSXBvuZfphPJkeJp4xdHFIMOIQJGi0Z/U5dEH0OYlcN67PE4CQ==
X-Received: by 2002:ac8:720f:: with SMTP id a15mr13112827qtp.207.1587338025729; 
 Sun, 19 Apr 2020 16:13:45 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e133sm4173650qkb.128.2020.04.19.16.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 16:13:45 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 20:12:49 -0300
Message-Id: <20200419231252.19853-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_161348_807584_ACAA16A4 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 0/3] build: update scripts/config to
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>, Jo-Philip Wich <jow@mein.io>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

After breaking the build bots for a couple of days, this is another
attempt to update scripts/config to linux kconfig-v5.6.  This time I've
spent some time testing it with the SDK, which is heavily dependent on
recursive dependencies.

While testing it, I found some minor bugs, which I've sent separate
patches to fix.  I've kept them out of this series, as they are
independent anyway.

I've changed the default behavior to treat them as warnings, not errors.
Instead of a compile-time choice, I've added a command-line option to
scripts/config/conf, --fatalrecursive, to error out when detecing a
recursive dependency.  The option is activated in openwrt by running
make with RECURSIVE_DEP_IS_ERROR=1.

Another change from v2 was that the commit handling the selection of a
module from a bool, 9bfa6971ae ("scripts/config: properly handle select
on symbols with unmet direct dependencies"), which was not done right in
v2, was properly fixed here.

The commits to get from upstream kconfig-v5.6 to the openwrt version
here can be seen at
https://github.com/cotequeiroz/linux/commits/openwrt/scripts/kconfig

The last commit of this series is optional.  Previously, ldir had
included leftover temporary files from previous version to .gitignore,
so git would not complain about untracked files.  I took that one step
further and added them to make config-clean.  I do intend this to be
temporary, to be reverted before the next branch, and  added comments
to the affected lines as a reminder.

I don't have the resources to do a full buildbot setup, but I've used
jow's suggested simpler way of testing it with the SDK.  I've compared
the output of the failed run with the v2 of this patch applied, from the
bots and with the SDK, and the errors do appear to be the same.

I've tested this with a self-compiled SKD for ath79, and compared the
resulting .config files against master at 508462a399.  I've also used
several config.buildinfo from snapshots of different targets on full 
build root.  I used this to compare the generated .config files:
  diff -I '^\(# end of.*\)\?$' openwrt.{old,new}/.config
The new version adds '# end of <menu>' comments, which are being
ignored.

While working with the SDK, I've applied a previously submitted patch
("sdk: add OpenWrt branding to menuconfig & .config")
https://patchwork.ozlabs.org/project/openwrt/patch/20200418214931.24983-1-cotequeiroz@gmail.com/
so that the titles of the .config files would match.

I also tested the behavior of menuconfig when selecting multiple
targets, to ensure the selection of a module from a bool was working as
intended.

Eneas U de Queiroz (3):
  build: scripts/config - update to kconfig-v5.6
  build: add option to treat recursive deps as error
  build: have config-clean deal with old temp files

 include/toplevel.mk                           |   13 +-
 scripts/config/.gitignore                     |   34 +-
 scripts/config/Makefile                       |  177 +-
 scripts/config/README                         |   29 +-
 scripts/config/conf.c                         |  255 +-
 scripts/config/confdata.c                     |  533 +-
 scripts/config/expr.c                         |  216 +-
 scripts/config/expr.h                         |  110 +-
 scripts/config/images.c                       |   34 +-
 scripts/config/images.h                       |   33 +
 scripts/config/{zconf.l => lexer.l}           |  340 +-
 scripts/config/lexer.lex.c                    | 4499 +++++++++++++++++
 scripts/config/list.h                         |    1 +
 scripts/config/lkc.h                          |   59 +-
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
 scripts/config/menu.c                         |  451 +-
 .../{zconf.tab.c_shipped => parser.tab.c}     |  939 ++--
 scripts/config/parser.tab.h                   |  129 +
 scripts/config/{zconf.y => parser.y}          |  429 +-
 scripts/config/preprocess.c                   |  575 +++
 scripts/config/qconf-cfg.sh                   |   32 +
 scripts/config/qconf.cc                       |  174 +-
 scripts/config/qconf.h                        |    3 +-
 scripts/config/symbol.c                       |  272 +-
 scripts/config/util.c                         |   86 +-
 scripts/config/zconf.gperf                    |   49 -
 scripts/config/zconf.hash.c_shipped           |  250 -
 scripts/config/zconf.lex.c_shipped            | 2533 ----------
 39 files changed, 7782 insertions(+), 4956 deletions(-)
 create mode 100644 scripts/config/images.h
 rename scripts/config/{zconf.l => lexer.l} (50%)
 create mode 100644 scripts/config/lexer.lex.c
 delete mode 100644 scripts/config/lxdialog/.gitignore
 delete mode 100644 scripts/config/lxdialog/check-lxdialog.sh
 create mode 100755 scripts/config/mconf-cfg.sh
 rename scripts/config/{zconf.tab.c_shipped => parser.tab.c} (73%)
 create mode 100644 scripts/config/parser.tab.h
 rename scripts/config/{zconf.y => parser.y} (64%)
 create mode 100644 scripts/config/preprocess.c
 create mode 100755 scripts/config/qconf-cfg.sh
 delete mode 100644 scripts/config/zconf.gperf
 delete mode 100644 scripts/config/zconf.hash.c_shipped
 delete mode 100644 scripts/config/zconf.lex.c_shipped


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
