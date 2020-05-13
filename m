Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12231D1EED
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 21:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rS6D3G4TECbCA/F2LGihSPaLWArtpdqm7ZoEquPBHpA=; b=msWqQalm0M/gZ/
	gMNw7NOH4wVgI5d0TGVSmW5rEzFylIgKnvpgn+yzJRGifx3xflXSZ1hEN8ujuHtR6G9+OBLJBsOm1
	3c9BPVwLUc+CblMtAB84G5l1MXzjyF0UoZxOcwbl7e7UvGJvVgSGOUBCH52qgrW6wYaYEoCCvK4rc
	jzLClNO48S6qq7XGeYYJL+HTOH4+ExyHwV8G3gD6fYo/CmXqjjYmclZ35H4Qz+6Emx13gsO9ftN04
	PdqSLcKVrkrk7edKH4DLVy6PXXEQbqM8TWcd0FxKgPg0FoNKaq5LrZbAQTTzf6IfCRcFcII6WaAqg
	Ey70RRcM2j+z/sdE+tZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYww0-0007sj-1O; Wed, 13 May 2020 19:20:52 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwvf-0007hq-25
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 19:20:32 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 5E96C251F1;
 Wed, 13 May 2020 21:20:24 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 21:19:43 +0200
Message-Id: <cover.1589396871.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122031_252693_1EBBFADD 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/2] Switch to zstd for kernel debuginfo
 compression
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
Cc: mschiffer@universe-factory.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

We are looking into enabling CONFIG_COLLECT_KERNEL_DEBUG by default for
Gluona [1], but at the moment the increase in build time is prohibitive
for a fast development cycle: the bzip2 compression takes  18s on my
notebook, 15s on a more powerful machine - more than 10% of the total
incremental build time for a single device!

As it turns out, bzip2 is very far from state-of-the-art nowadays - I
was able to reduce the compression time to 1~2s and make the resulting
archive smaller at the same time by using zstd instead. See patch 2/2
for my benchmark results using different compression tools.

zstd has been available in major distros for a while now (at least
Debian oldstable), so making use of the resulting artifact should be
possible as easily as before. Direct support via the tar command was
added in GNU tar 1.31, release January 2019.


[1] https://github.com/freifunk-gluon/gluon/pull/1971


Matthias Schiffer (2):
  tools: add zstd
  build: compress kernel debuginfo using zstd

 include/kernel-build.mk                       |  2 +-
 tools/Makefile                                |  1 +
 tools/zstd/Makefile                           | 20 ++++++
 ...re-portable-header-prefix-usage-1987.patch | 61 +++++++++++++++++++
 4 files changed, 83 insertions(+), 1 deletion(-)
 create mode 100644 tools/zstd/Makefile
 create mode 100644 tools/zstd/patches/0001-build-issue-More-portable-header-prefix-usage-1987.patch

-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
