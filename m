Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEBE1440BC
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 16:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUN7Hm03leGbbTKNAeHQ5MsJFue7wBSKXyp5OJ9XdQU=; b=AbEUo/9C9kf/Jv
	3NefrZjwPjAbX23cz9YkZgMVa46kIlkIyvJvRWAlCMWZol/W8ITdO6Z1wkhUUetfQLSrIwTObo4mY
	IfaCRmMtPh4TCGaVX2TVasZm/1BldPC4ErE+5ZkaimJ2/rn2a7ArHC1fRK6VKXeoZlRrTOqVtorut
	0zFnk2THg+5n0Oq8RaFlZH7z1BonJvgu6vn6MWVad6io7YQ0uFX6dKoH5tzELpUkjG2w8fj5jg1l/
	cEfB2y3ylhqhY7FZXjdb5CoyGgwbZVXO9U2ssU/G1v7+VBKxX7A/IoX2VH9VYj9BphQ1NXlxgeOVZ
	T+BtnNVPGT6BEGXqKfHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvgn-0002PU-2U; Tue, 21 Jan 2020 15:43:37 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvgN-0002EH-Gt
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 15:43:16 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id cbd929e1;
 Tue, 21 Jan 2020 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding; s=mail; bh=bXN9X/RYL5WBPOl/8fW9HlgqG
 BA=; b=q8l13SqV1R8Mnpwdm805FQgVrnyebTM0ejsxZMBBt+pOdv1hCvzExuVEp
 LV2d6LFS7X5Q9Vsn7UbScItD5AhoiikYjJyFTsOPjFKoe+idI3KnVkKmUA3HACq+
 7uPUjSWfIHxMjt9BYXISgwR26oBQk4DZQlLguIITZytlu9FJwmM5vBPGemkRMo9x
 EeplY01xNI7xQ+nD0SQPXpZDyR0+XM0oXH8ytGCSWj/p8qJdj6uNGdopJCVimVdX
 Nn41cnearW5gKwUOQ+udjU5D30jCWM7T9HZO+qLxbKW0qEVekjEKF4yWAksKdpz+
 k0WawTsnkMbDDAKfRvZm9H1vPFd6A==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id cc298d14
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Tue, 21 Jan 2020 14:42:07 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 16:42:58 +0100
Message-Id: <20200121154258.1165421-2-Jason@zx2c4.com>
In-Reply-To: <20200121154258.1165421-1-Jason@zx2c4.com>
References: <20200121154258.1165421-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_074311_631661_20564F02 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] wireguard-tools: bump to 1.0.20200121
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

* Makefile: remove pwd from compile output
* Makefile: add standard 'all' target
* Makefile: evaluate git version lazily

Quality of life improvements for packagers.

* ipc: simplify inflatable buffer and add fuzzer
* fuzz: add generic command argument fuzzer
* fuzz: add set and setconf fuzzers

More fuzzers and a slicker string list implementation. These fuzzers now find
themselves configuring wireguard interfaces from scratch after several million
mutations, which is fun to watch.

* netlink: make sure to clear return value when trying again

Prior, if a dump was interrupted by a concurrent set operation, we'd try
again, but forget to reset an error flag, so we'd keep trying again forever.
Now we do the right thing and succeed when we succeed.

* Makefile: sort inputs to linker so that build is reproducible

Earlier versions of make(1) passed GLOB_NOSORT to glob(3), resulting in the
linker receiving its inputs in a filesystem-dependent order. This screwed up
reproducible builds.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/utils/wireguard-tools/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index afde98a..4203045 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard-tools
 
-PKG_VERSION:=1.0.20200102
+PKG_VERSION:=1.0.20200121
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
-PKG_HASH:=547cd1c2f8dca904faac9e8d3964f1ef956c24bb12e3498da88dde95243c7f08
+PKG_HASH:=15bfdbdbecbd3870ced9a7e68286c871bfcb2071d165f113808081f2e428faa3
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
