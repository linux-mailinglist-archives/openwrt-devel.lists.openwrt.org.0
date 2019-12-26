Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3F312ACA4
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 15:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H8tywk8WWvqnlGQQm1CXTJRgxHVOG7zBc4jAHv1r8BQ=; b=nHLClBJqc3bwpkRhnk4ZjmY2kj
	+t4FwSW0upwq7oNdB0wauk4EYe9iQq2BTokXAxTXvpwBnDN7BgJb+s8msrzEUPBGVw8TvD0ghBoF4
	SqPKPyMIUkp1i4FwjCwh5wHt0+27r12gXgQjvqBPF1x5LQ/CUyr9ArDD4EFAdcYidFGvKew4iQClU
	I94o7goL2IUbdjC0Ez7GCJXM++bqOagt08iTEPhA/aNIv6kni6tKccP7MSWyvC9RwNeNDaa8JfzW9
	fAVBTxOUARWyiGoW5GI4t6RMu805QORLfd1oxW4fUbx5oozrJe8YMPbETH7cpfdJjZe8ZEKgLe9i1
	ydmAfOhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikThd-0008No-B4; Thu, 26 Dec 2019 14:01:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTgI-00066B-E9
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 14:00:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1E2ED3EE8;
 Thu, 26 Dec 2019 14:59:57 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id bba6849b;
 Thu, 26 Dec 2019 14:59:46 +0100 (CET)
Date: Thu, 26 Dec 2019 14:59:46 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20191226135946.GA70184@meh.true.cz>
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
 <b3d98fd9-34a0-31cc-c4ce-c311bcec3d38@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3d98fd9-34a0-31cc-c4ce-c311bcec3d38@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_060002_847544_A46E1BF0 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: [OpenWrt-Devel] OpenWrt GitLab CI details [Was: Re: [PATCH] use
 strncpy instead of strcpy]
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2019-12-26 13:49:46]:

Hi,

I really needed to use latest GCC 10 in order to see that warning/error, I was
unable to get those warnings locally with glibc and clang-9/clang-10 and
gcc-9.

> Please also use a toolchian with glibc when compiling in CI.

I'm not sure if I understand this properly, but I'll try to shed some light
into the CI stuff.

Default CI pipeline[1] has currently following 5 jobs:

 1. build with Atheros ATH79 SDK (out of tree)
 2. build with Freescale i.MX 6 SDK (out of tree)
 3. build with MIPS Malta CoreLV BE SDK (out of tree)
 4. build with Marvell Armada Cortex A-53 SDK (out of tree)
 5. various native checks

where the first 4 jobs are using target SDK, so musl libc.

The 5th job is "various native checks" which is using Docker image[2] based on
Debian testing which comes with gcc-9 by default, then adds gcc-7 and gcc-8
and clang-9 from apt.llvm.org (clang-10 is currently unusable as it's still
missing libFuzzer dependencies[3]) to the compiler mix.

So the CI in this native checks[4] job runs `make ci-native-checks` which
translates into following[5]:

 * make ci-native-scan-build   (build with clang's static analyzer)
 * make ci-native-cppcheck     (build with cppcheck static analyzer)
 * make ci-native-build        (build with gcc 7 8 9 and clang 9)

So this should be using the standard and possibly some decent glibc. The last
`ci-native-build` make target also runs unit tests (under Valgrind and various
sanitizers) and libFuzzer based fuzzing where available (under Clang only).

I know, that it makes no sense to have CI if it's not available directly on
the developer's machine as well, so I've tried hard to make it as easy as
possible[6], so for example following steps allows running of the above
mentioned "native" CI checks in libubox locally inside Docker container:

 git clone git://git.openwrt.org/project/libubox.git && cd libubox
 wget -q https://gitlab.com/ynezz/openwrt-ci/raw/master/Makefile -O Makefile.ci
 make ci-prepare -f Makefile.ci
 docker run --rm --tty --interactive --volume $(pwd):/home/build/openwrt \
 	registry.gitlab.com/ynezz/openwrt-ci/native-testing:latest \
 	make ci-native-checks -f Makefile.ci

 (BTW this Docker container is not necessary, just convenient, otherwise one
  would need to provide all the build and compiler dependencies manually)

FYI I've also added short how-to "Example of adding CI support to fstools
project"[7] which should help anyone interested in adding CI support to the
remaining OpenWrt C projects.

As always, any questions/suggestions more then welcome.

1. https://gitlab.com/ynezz/openwrt-ci/blob/master/openwrt-ci/gitlab/pipeline.yml
2. https://gitlab.com/ynezz/openwrt-ci/blob/master/docker/Dockerfile
3. https://bugs.llvm.org/show_bug.cgi?id=44196
4. https://gitlab.com/ynezz/openwrt-ci/blob/master/openwrt-ci/gitlab/main.yml#L35
5. https://gitlab.com/ynezz/openwrt-ci/blob/master/openwrt-ci/native-build.mk#L26
6. https://gitlab.com/ynezz/openwrt-ci#usage-example
7. https://gitlab.com/ynezz/openwrt-ci/-/wikis/Example-of-adding-CI-support-to-fstools-project

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
