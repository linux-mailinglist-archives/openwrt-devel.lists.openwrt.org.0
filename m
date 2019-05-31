Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF80F31306
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 18:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p/v/2YIaLsWmrNr2ZVNgFt1FZp1yaFCoMGIrnAgkFgk=; b=XVGtDqudGjiRDA
	qYMsy08uU9O6w31nwQFDqF9equbl0FxEuOhEAXaDEQRlou5456sgEWl8jZA8hr9H8XAS46Pc01V/V
	qDGU5oVCVq3i+0kz8OiTt7ht0S7HCO/AgKfbb5E6fc56/0r1RvtH5pToXJcS7CohLWiUaE8fw2a4G
	XJDAImI1r/z3cpioRTBH43qhOmtpmwV7pbecIZT6cW06cOB4/KfUiPNCLvJ3WIBcQkKvAIWRiwv+w
	MjhiPYDNWOC5EMjyjLx0w0k4ueMgjpe9/8xvkHPULZlYtKg/vm1wiXqIeNSxr5UNfAlVVtdK2c6Qz
	pIVcCd1Na3B7mwrnErLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkk0-0003Es-By; Fri, 31 May 2019 16:50:52 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkjs-0003E8-SZ
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 16:50:46 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 318a1501;
 Fri, 31 May 2019 16:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=5MiH7xKcljEut59bBB2apaLNix8=; b=dagf+J7xyPWDPPGErSoM
 9gjY0m+DYqFOghQ6GH1solCzDJ/4X9aYSTbYZ3ZumLyulpBGNA/wbHCsWf0R4y3w
 Pukwi1aWEr33Y0w7MNJIu36NaIymMd8LazliphE77XPoRZmuzal3D/oQUYF3tLSf
 x8lPTqP+EFDPuMWrWwy3ce8hjKsNK54AObXmJ2Bw5GpR8C2atTx31I6LtZka8ZSM
 SKkc+1KjxVKxYlb/+SLeULc50LAZBTqGPFMlyPC98BKoY6YntvnPtCpDAqFC1sH2
 NxUr1PDGYNxQPSSillwX7RgvusJLPJbyolF9Ni9kkjE8qr9O3iuJYqvsY1Y27ZD8
 iw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id a1cb9912
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 31 May 2019 16:19:55 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 May 2019 18:50:33 +0200
Message-Id: <20190531165033.20290-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_095045_140791_5DD89871 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20190531
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

* tools: add wincompat layer to wg(8)

Consistent with a lot of the Windows work we've been doing this last cycle,
wg(8) now supports the WireGuard for Windows app by talking through a named
pipe. You can compile this as `PLATFORM=windows make -C src/tools` with mingw.
Because programming things for Windows is pretty ugly, we've done this via a
separate standalone wincompat layer, so that we don't pollute our pretty *nix
utility.

* compat: udp_tunnel: force cast sk_data_ready

This is a hack to work around broken Android kernel wrapper scripts.

* wg-quick: freebsd: workaround SIOCGIFSTATUS race in FreeBSD kernel

FreeBSD had a number of kernel race conditions, some of which we can vaguely
work around. These are in the process of being fixed upstream, but probably
people won't update for a while.

* wg-quick: make darwin and freebsd path search strict like linux

Correctness.

* socket: set ignore_df=1 on xmit

This was intended from early on but didn't work on IPv6 without the ignore_df
flag. It allows sending fragments over IPv6.

* qemu: use newer iproute2 and kernel
* qemu: build iproute2 with libmnl support
* qemu: do not check for alignment with ubsan

The QEMU build system has been improved to compile newer versions. Linking
against libmnl gives us better error messages. As well, enabling the alignment
check on x86 UBSAN isn't realistic.

* wg-quick: look up existing routes properly
* wg-quick: specify protocol to ip(8), because of inconsistencies

The route inclusion check was wrong prior, and Linux 5.1 made it break
entirely. This makes a better invocation of `ip route show match`.

* netlink: use new strict length types in policy for 5.2
* kbuild: account for recent upstream changes
* zinc: arm64: use cpu_get_elf_hwcap accessor for 5.2

The usual churn of changes required for the upcoming 5.2.

* timers: add jitter on ack failure reinitiation

Correctness tweak in the timer system.

* blake2s,chacha: latency tweak
* blake2s: shorten ssse3 loop

In every odd-numbered round, instead of operating over the state
    x00 x01 x02 x03
    x05 x06 x07 x04
    x10 x11 x08 x09
    x15 x12 x13 x14
we operate over the rotated state
    x03 x00 x01 x02
    x04 x05 x06 x07
    x09 x10 x11 x08
    x14 x15 x12 x13
The advantage here is that this requires no changes to the 'x04 x05 x06 x07'
row, which is in the critical path. This results in a noticeable latency
improvement of roughly R cycles, for R diagonal rounds in the primitive. As
well, the blake2s AVX implementation is now SSSE3 and considerably shorter.

* tools: allow setting WG_ENDPOINT_RESOLUTION_RETRIES

System integrators can now specify things like
WG_ENDPOINT_RESOLUTION_RETRIES=infinity when building wg(8)-based init
scripts and services, or 0, or any other integer.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index c04762b..e3471d0 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20190406
+PKG_VERSION:=0.0.20190531
 PKG_RELEASE:=1
 
 PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=2f06f3adf70b95e74a7736a22dcf6e9ef623b311a15b7d55b5474e57c3d0415b
+PKG_HASH:=8b0280322ec4c46fd1a786af4db0c4d0c600053542c4563582baac478e4127b1
 
 PKG_LICENSE:=GPL-2.0 Apache-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
