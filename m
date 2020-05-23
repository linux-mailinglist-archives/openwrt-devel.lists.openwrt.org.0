Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85E1DFACE
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 21:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q4Hmc0cPR8pXdFMTTW2zLE15Qv5y00SdiGebO6vjnu0=; b=sQa+frWaZwHYas
	ze6PCBFxdrr3e5Oey6XDwYy93l5N19Sy3qaT/YTomajqmOT/F+149Qspnj400Flwb5OzleCSD4L3O
	+0UymTE+xrluSb1pr46ZXNuK06yVVJxVKoGgXVxnv0ZDmLt/+Jr3Zz4COHhvXnOMdshxzadP0pUbm
	ex+MaqLu3aAmgKY+uR4NgVeFkkEmfV6FRoCiMXmK64J/OCT86pOlswmpW1698yOl0zaGNQ52EIAdS
	45Qt96DxWgam6MG433Ni81tEXTQZpT/a3rjiP8oUOSWp2rMhMcIFSKvOMoHw6AEMdJfs5GV2SRauM
	ygLCIstNDM2rzR3SzSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcaF9-00065U-KD; Sat, 23 May 2020 19:55:39 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcaF2-00064Q-Qt
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 19:55:34 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 0F684264A9;
 Sat, 23 May 2020 21:55:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 21:55:19 +0200
Message-Id: <cover.1590262714.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_125533_019253_8F1543B2 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/2] musl: fix locking synchronization bug
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This imports the proposed patch series [2] for the critical locking
synchronization bug recently found in musl [1].

As [3] recommends, this is done in 2 steps: The first patch contains only
the bugfix itself, which should be safe to backport to 19.07 and older
right away. Note that the issue doesn't seem to hit older OpenWrt
releases in practice - it was discovered due to frequent crashes of
fastd in Gluon since we updated to OpenWrt 19.07 - so a new 18.06.x
release seems not as urgent as 19.07.x.

The second patch contains the rest of the patch series, which is:

- a fix for a related, but less critical bug
- a small optimization related to the fixes
- a fixed version of the lock-skipping to restore a potential
  performance regression caused by the first patch for programs that are
  singlethreaded most of the time.

I propose to apply the full series to OpenWrt master, as there are no
obvious issues, and the performance regression fix can get better
testing this way.

I have also pushed this to my staging tree [4].


[1] https://www.openwall.com/lists/musl/2020/05/22/3
[2] https://www.openwall.com/lists/musl/2020/05/22/10
[3] https://twitter.com/musllibc/status/1263955586540089344
[4] https://git.openwrt.org/?p=openwrt/staging/neoraider.git;a=summary


Matthias Schiffer (2):
  musl: fix locking synchronization bug
  musl: restore lock skipping for mostly-singlethreaded programs, and
    related patches

 ...ist-unlink-in-pthread_exit-after-all.patch | 51 +++++++++++
 ...hreads_minus_1-as-relaxed-atomic-for.patch | 69 ++++++++++++++
 ...own-size-of-some-libc-struct-members.patch | 25 ++++++
 ...pping-for-processes-that-return-to-s.patch | 90 +++++++++++++++++++
 4 files changed, 235 insertions(+)
 create mode 100644 toolchain/musl/patches/500-0001-reorder-thread-list-unlink-in-pthread_exit-after-all.patch
 create mode 100644 toolchain/musl/patches/500-0002-don-t-use-libc.threads_minus_1-as-relaxed-atomic-for.patch
 create mode 100644 toolchain/musl/patches/500-0003-cut-down-size-of-some-libc-struct-members.patch
 create mode 100644 toolchain/musl/patches/500-0004-restore-lock-skipping-for-processes-that-return-to-s.patch

-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
