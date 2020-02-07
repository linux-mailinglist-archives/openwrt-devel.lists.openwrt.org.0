Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE07D1557C2
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 13:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4J/cidBNJXwoKxBSUPdy0+rN86ErIcdCuBNOiCjQhBI=; b=XbnQRBHl4HSH/I
	hcGrJdNa76XUarjVzrnGdJdmMBif0ihhf0EJEnNak3Ewb3K+omMnGB4iQUtu8jbCs6IfTFM0KnULv
	ov11Z527ncwKsyO41iKmUAsT6WxlQsJ5UexiN5DspJt5+Mb66nnUKQvdUuUUvfe37sL3scfY/gqbX
	ynkx0dZWXYzUqMlJZ3NC6zNeD/imC1LmJbc/cucCRSZR+dX/hpeEYC5AX9QTeYTeuI+lW6nty12CC
	ACSzHWk8cA0jNPBfCXWcxhng3wWEBenzneZ4eVOGc4OxpPYuDcghkSucgP/QRFhafzSrWh8qBdT3B
	sqBJ10ms2OK0SBVJ75QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02lR-0005kt-Tw; Fri, 07 Feb 2020 12:29:41 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02j5-0003k1-G8
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 12:27:18 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 5284d4b8;
 Fri, 7 Feb 2020 12:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=pIri95rN8qVQYivNLz30l995pQs=; b=hGaJTIb55RhTHEYDuv8l
 jAMHVmt5+iGyu9Qw7ztXR9VE/sALIxnZIjDUGS25qsK+2ZBz7xi5tpIkFnveiqmW
 tkuPicWIqButrDR47u6gnTwmNcUbhHUZsPWYQJH965t668QpmUHaqqtVSF9Jzpd1
 T2TiDns3PZaBH4pPGrsqnVvK6cHDaRihTtAc0FLdiIfy7zKd9ODxiInrDYJgEuyh
 x15jHf9XMpC1YFUf1TICY/r9ISWJEIMTP4x5i1j+81Vq4TQCJs16iUqyP4fbINCd
 GQWUOQgM0AKHYzNkJ+MDiBxDh7Fw4BEtR+sIWaT2Un4W8IrTJE2090uEGdRPogwE
 /g==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 22d7ebec
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 7 Feb 2020 12:25:58 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  7 Feb 2020 13:27:05 +0100
Message-Id: <20200207122705.1584820-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_042715_866613_83F00308 
X-CRM114-Status: GOOD (  11.90  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] wireguard-tools: bump to 1.0.20200206
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

* wg-quick: android: split uids into multiple commands

Newer android's ndc implementations have limits on uid size, so we have to
break these into several lists.

* man: document dynamic debug trick for Linux

This comes up occasionally, so it may be useful to mention its
possibility in the man page. At least the Arch Linux and Ubuntu kernels
support dynamic debugging, so this advice will at least help somebody. So that
you don't have to go digging into the commit, this adds this helpful tidbit
to the man page for getting debug logs on Linux:

 # modprobe wireguard && echo module wireguard +p > /sys/kernel/debug/dynamic_debug/control

* extract-{handshakes,keys}: rework for upstream kernel

These tools will now use the source code from the running kernel instead of
from the old monolithic repo. Essential for the functioning of Wireshark.

* netlink: remove libmnl requirement

We no longer require libmnl. It turns out that inlining the small subset of
libmnl that we actually use results in a smaller binary than the overhead of
linking to the external library. And we intend to gradually morph this code
into something domain specific as a libwg emerges. Performance has also
increased, thanks to the inliner. On all platforms, wg(8) only needs a normal
libc. Compile time on my system is still less than one second. So all in all
we have: smaller binary, zero dependencies, faster performance.

Packagers should no longer have their wireguard-tools package depend on
libmnl.

* embeddable-wg-library: use newer string_list
* netlink: don't pretend that sysconf isn't a function

Small cleanups.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/utils/wireguard-tools/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index 4203045..b2b71ce 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard-tools
 
-PKG_VERSION:=1.0.20200121
+PKG_VERSION:=1.0.20200206
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
-PKG_HASH:=15bfdbdbecbd3870ced9a7e68286c871bfcb2071d165f113808081f2e428faa3
+PKG_HASH:=f5207248c6a3c3e3bfc9ab30b91c1897b00802ed861e1f9faaed873366078c64
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
@@ -33,7 +33,7 @@ MAKE_VARS += PLATFORM=linux
 define Package/wireguard-tools
   $(call Package/wireguard/Default)
   TITLE:=WireGuard userspace control program (wg)
-  DEPENDS:=+libmnl +ip
+  DEPENDS:=+ip
 endef
 
 define Package/wireguard-tools/description
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
