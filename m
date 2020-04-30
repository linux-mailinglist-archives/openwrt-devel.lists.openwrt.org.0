Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B281BEF6B
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 06:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NG39EjIFLSA+lEhxxaU1NzwZe+QQNgbn5L8WhXecZPw=; b=KyzWJ3GiJoDml2
	5F4Mmx5iGucd1aGSWtODgxmOaeuDit8pwb+DDC4k2QgfOU3gJq8e+4DrQxFrvjSjph7F6SZV8N2XF
	ucxPOsbbmFy+YthuFuDNvcSKKf9NPv7KfuCISdxSzAz3MHD+1shOV4CJX36XPKblJVsZnrdbBizuB
	/IqNExPr7TPaoMG2HzTrHJYRKNO5HGorhVk0RrETN0PMpWg/RzMPFyIZQwir3TtPEVjNJwvhOxYOV
	Rn9aQEnpWcXZbgtGNvRmZSIxtd1mh6H9m6+Jevqube/xu/Dx/t8fpFoquf80683FKLTXkgN1gIGj0
	DQNJ2D9++fSBrpgqbRlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU1A2-0005Rd-Rj; Thu, 30 Apr 2020 04:50:58 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU19u-0005Q2-3z
 for openwrt-devel@lists.openwrt.org; Thu, 30 Apr 2020 04:50:52 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id aedef3f9;
 Thu, 30 Apr 2020 04:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=cu14MoD3FTdLuncySu1eQS4JhUI=; b=TZuWL0tSQDRl+lqFdl6Z
 eOlmhY4Am+vC5NayKJx1SbWaOzTaOw075krqj1xvG32auBGFOHMN3oTKpT/riHLU
 7itHLS0+M1m5aJST3p08dVq5L+iHBWgyZYc3PvScfwBa4KGN50T7CUr+j6KhtD8s
 Txan11bX4y8RNDx4xJBxA08ZYOje1gnY/nIMqAQ8T5oh1IOk7dr1qCM+z0COqyB5
 fU/APrviixBU387bFaOCrPnn6eULU/WiTxjCWVmm9mMU9dB4gHHZL62pI9lNi5Kk
 y2u6F+xSXtqR2IOUSYL6E6JIPaqT3SSoH9XarJttu8tRlpqdPLzZDcvJtg2b1kfA
 fw==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 03693b66
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Thu, 30 Apr 2020 04:38:55 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Apr 2020 22:50:40 -0600
Message-Id: <20200430045040.1008675-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_215050_516184_792334D8 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 1.0.20200429
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

* compat: support latest suse 15.1 and 15.2
* compat: support RHEL 7.8's faulty siphash backport
* compat: error out if bc is missing
* compat: backport hsiphash_1u32 for tests

We now have improved support for RHEL 7.8, SUSE 15.[12], and Ubuntu 16.04.

* compat: include sch_generic.h header for skb_reset_tc

A fix for a compiler error on kernels with weird configs.

* compat: import latest fixes for ptr_ring
* compat: don't assume READ_ONCE barriers on old kernels
* compat: kvmalloc_array is not required anyway

ptr_ring.h from upstream was imported, with compat modifications, to our
compat layer, to receive the latest fixes.

* compat: prefix icmp[v6]_ndo_send with __compat

Some distros that backported icmp[v6]_ndo_send still try to build the compat
module in some corner case circumstances, resulting in errors.  Work around
this with the usual __compat games.

* compat: ip6_dst_lookup_flow was backported to 3.16.83
* compat: ip6_dst_lookup_flow was backported to 4.19.119

Greg and Ben backported the ip6_dst_lookup_flow patches to stable kernels,
causing breaking in our compat module, which these changes fix.

* git: add gitattributes so tarball doesn't have gitignore files

Distros won't need to clean this up manually now.

* crypto: do not export symbols

These don't do anything and only increased file size.

* queueing: cleanup ptr_ring in error path of packet_queue_init

Sultan Alsawaf reported a memory leak on an error path.

* main: mark as in-tree

Now that we're upstream, there's no need to set the taint flag.

* receive: use tunnel helpers for decapsulating ECN markings

ECN markings are now decapsulated using RFC6040 instead of the old RFC3168.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 2d8a766..f57cb9f 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=1.0.20200401
+PKG_VERSION:=1.0.20200429
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=7dfb4a8315e1d6ae406ff32d01c496175df558dd65968a19e5222d02c7cfb77a
+PKG_HASH:=c0050a94c33c195d4129a75ab4dca05ba021c5265e40fce8b2dfda7d7055cda2
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
