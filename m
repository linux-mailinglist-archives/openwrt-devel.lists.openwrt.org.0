Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72A31AF485
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 22:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QcOqAlNFp4ghc7hOVUwhlZr7MFkfBDJSBC9YGAk47zc=; b=fldzgNnwGEBnyd
	RNsn2Hromf3LxugzzMA72btO2hrWi5nKztaQ2WELQNCCobtG7yXaJyjhUHM3GC6xqHKjq0ajtzVsw
	qAgLNLBplvwXdYp039bPYMY83c9KWFrCD6TlD/3SBLzyzFk8TKQjOaUZUx9cFVMcdwAUah+deGnjD
	3JGnM+QD/M/TzrhTBAvlEPyTiAbaF/h2mYUA0J1K6p3vZuLoddP1v9uUCoo3+XlU4IpXoWqOQFWwL
	IuH3draOcLcwZpb/uHXEeFoI5FlK2vKbfX/Mza5ugZcxyt/IH4Z1WiMaWnLmxRKhyuuWA6tCSZ/Sr
	2CU5YZ+y1wpMYWxdbo9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPtp8-0006Z5-5i; Sat, 18 Apr 2020 20:12:22 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPtp1-0006YB-3E
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 20:12:16 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1jPtoh-0000Bw-SP
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 22:11:57 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1jPtoh-00078x-Fi
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 22:11:55 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Apr 2020 22:11:55 +0200
Message-ID: <4082642.HFx9K4o6oR@strike>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Hi, I was just building a master-branch for x86-generic and
 got following error: make[5]: Entering directory
 '/mnt/local/btrfs/build/freifunk/ffberlin/
 firmware/openwrt/build_dir/toolchain-i386_pentium4_gcc-8.4.0_musl/
 linux-5.4.28'
 INSTALL /mnt/local/btrfs/build/freifunk/ffberlin [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_131215_283385_B078055F 
X-CRM114-Status: UNSURE (   0.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] linux5.4: build-dependency to rsync
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

Hi,

I was just building a master-branch for x86-generic and got following error:

make[5]: Entering directory '/mnt/local/btrfs/build/freifunk/ffberlin/
firmware/openwrt/build_dir/toolchain-i386_pentium4_gcc-8.4.0_musl/
linux-5.4.28'
  INSTALL /mnt/local/btrfs/build/freifunk/ffberlin/firmware/openwrt/build_dir/
toolchain-i386_pentium4_gcc-8.4.0_musl/linux-dev//include
/bin/sh: 1: rsync: not found
make[5]: *** [Makefile:1186: headers_install] Error 127
make[5]: Leaving directory '/mnt/local/btrfs/build/freifunk/ffberlin/firmware/
openwrt/build_dir/toolchain-i386_pentium4_gcc-8.4.0_musl/linux-5.4.28'
make[4]: *** [Makefile:108: /mnt/local/btrfs/build/freifunk/ffberlin/firmware/
openwrt/build_dir/toolchain-i386_pentium4_gcc-8.4.0_musl/
linux-5.4.28/.configured] Error 2
make[4]: Leaving directory '/mnt/local/btrfs/build/freifunk/ffberlin/firmware/
openwrt/toolchain/kernel-headers'
time: toolchain/kernel-headers/compile#1.46#0.83#2.26


In https://github.com/torvalds/linux/commit/59b2bd05f5f4d the call to rsync 
was added. I think we have the 2 options:
* use host-command (changing the build-requirements)
* compile it ourself (like we do with zip: ad8c2d6099a7da51)

What's the prefered way?

Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
