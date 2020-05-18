Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2821D79A3
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 15:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0Yrn0+csCRZIy/iNgOWKayq7b3OPQGMH4LqaR3HpnVc=; b=IPW
	A2jrh4/jak1d40pejUI9k2QjyYS3kYFcDD4EMn6a19SQzC6FFKaV5sLiVwpqxeemmuBJnt5e+USp5
	d/Bz/ycbQr0mx7masl30m4YtL1gf27Cd6g5FqSg92R+uqUBn+CpzV4JMvPE9si0dJLyX5t9UKcmb/
	CFlzUqEsLwnueds+MepoNpT2L3HwKicIlSM5VofpSTTUOijJaLA3ZlmWIP+C4ZcAOhHoaS6aEFG5a
	QeUIAMCiF5P4Gy+jyOl9Ns7Pa3ZFoQeiEldcbMY8040/0OPzuiInwsiEZs7qmR8ADaf0+LqtvRLrf
	NSxDk1CD/jWFC3xkkig8Rr+AuL1rv6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafi5-0007yj-Ac; Mon, 18 May 2020 13:21:37 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafhy-0007yQ-R5
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 13:21:32 +0000
Received: by mail-lf1-x12a.google.com with SMTP id x27so7900327lfg.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 06:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=SBOgeASeH1YfskQbiPGpMLAW9jm+1f3NOz3qFAQdiB0=;
 b=JJMNCAzx8DCbVREooW68Mx6zelRG3bzexXEhixOlxs+CChcTdAie5S2maTorntsvgX
 vpzYdsHkc52d7UU88H5yKTjKw32npiXoJS9+pr7euZwkQCG/4s65DlgrbV9Gt8CaAdC+
 CF0YnSfinwmX0ZeawLlRXjjAxEO4bGLi/qt7LGHHLhPq5pHnBi448fq1uQF5cXQz6ZGd
 Rgci38lnBeU7/hsYfHYu4OMHg+l4W+oHGz16c6+ByKJxEN+XKnQtjYXo2aDwlAj6B7Pa
 VBXvGba/RryEoLKhIEV31AABoOx5f77bNqj8cSL7hn7irJk5AHvOxHLRKofX8cl9+8ey
 4d2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SBOgeASeH1YfskQbiPGpMLAW9jm+1f3NOz3qFAQdiB0=;
 b=H7uy5liUcZyiyjXnXtbLGQC/t6WYXzbKMEpfE9uRsXRuvt3xh7sgfJKIw1KM4z7sny
 dJhv75YmYaeP7Zm+BkVgFKskekwjv9T/rIYFaVOD3igpGQmo7LcXY2loCYJAemVSn7F7
 ynTWi1PflmBl9O9ggiG4IcepZWpsOM1xDvaUYxfT5w2SBpiYviclC/YpTJZHhWQQcFeA
 BIpLE3bp7XlxZjroJid9Ih9764rppvdBckHgxmZrN0Ht19B6BpsIbrtWJJJ0mWoX8PnV
 RjaqShB23I1lIMnsGA2zqknvt3n03pnKFjCEe/mlrF4lwUmHXTOqJOqK6VBmdM7CDZvl
 Tz2A==
X-Gm-Message-State: AOAM530nA3QcujAE/FTp/pKk8Tva/VsCSRDL3wpMUKtbJh2uh8xHEV+u
 OoQm7sU2C6XKKfW5SxEqt+Ie3qIaTZXAyMv2IG9dwvhLuV8=
X-Google-Smtp-Source: ABdhPJyf6DIAtJjp3LkZQMLfpbaJhRfdwakWQKR1zZ6a1P3z80i2CQmaOohIq94P4u0S1IaY+f/iF0gU+WCfm48/Hnw=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr7315443lfn.21.1589808088800; 
 Mon, 18 May 2020 06:21:28 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 15:21:17 +0200
Message-ID: <CACRpkdb+PmywmKtM8EhObO9WsqYfQ548zdOFx_we=8Tq0NoKgQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_062130_884007_3C573EE2 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Snag when building perl
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

I get the following build error when building Openwrt on a Fedora 32
host:

make[4]: Entering directory
'/home/linus/src/openwrt/build_dir/hostpkg/perl/perl-5.28.1'
cc -fstack-protector-strong -L/usr/local/lib -o miniperl \
    opmini.o perlmini.o  gv.o toke.o perly.o pad.o regcomp.o dump.o
util.o mg.o reentr.o mro_core.o keywords.o hv.o av.o run.o pp_hot.o
sv.o pp.o scope.o pp_ctl.o pp_sys.o doop.o doio.o regexec.o utf8.o
taint.o deb.o universal.o globals.o perlio.o perlapi.o numeric.o
mathoms.o locale.o pp_pack.o pp_sort.o caretx.o dquote.o time64.o
miniperlmain.o  -lpthread -ldl -lm -lcrypt -lutil -lc
./miniperl -w -Ilib -I. -Idist/Exporter/lib -MExporter -e '<?>' || sh
-c 'echo >&2 Failed to build miniperl.  Please run make minitest; exit
1'
Attempt to free unreferenced scalar: SV 0x1239030.
/bin/sh: line 1: 39203 Segmentation fault      (core dumped)
./miniperl -w -Ilib -I. -Idist/Exporter/lib -MExporter -e '<?>'
Failed to build miniperl. Please run make minitest
make[4]: *** [makefile:365: lib/buildcustomize.pl] Error 1

Has anyone seen something like this and could tell me what I'm doining
wrong?

Since the snapshots keep coming out I suspect a problem with my
host system :/

I tried make dirclean && make clean but same problem persists.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
