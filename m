Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EAC113FD2
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Dec 2019 12:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZfqK1KXgLli/edNnOl4zysHVy/1zIQ93BbyrhFTauU=; b=oEEZsA+G4tddYo
	SvKknboLSKaj3cggTu09fAXT6XA9QaYicWtm2YjdqqxCOGg3hQybdmeNuNsJDtcCkr7SL99R/my98
	h2GRYGEKJSZPSx0z7Ra33lrGYcdw3ttL57X+lP7jeBeRwAqlIADO5ylcT1vmjtmk4UnrrO8HTujzW
	vu0EZK4ti4Grs6kgDYyYz7XSpdGOWpH6DqkaLZbQhbpAKMGNmUpwfqdwaocQx+GsHUgngEbSaegLm
	QbrQ4BXWWstfOfXAVcnvzm7xB/B6PHVACtSDo85sSWHTqQMzkoE2rnws5qVGlVBjMyyTE8Qa0wC+o
	fStyVJAopGb9VhtkvXeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icorX-0007fN-7p; Thu, 05 Dec 2019 10:59:59 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icorP-0007eu-IN
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 10:59:53 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 1132c4e9;
 Thu, 5 Dec 2019 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=YYMbBmBgVcTGDyh8645dcRv2bsA=; b=h4Od/UHya4FtvhgG+83F
 MSq+kM0/J9PYejq29MvqAK7/95vsk+UblY9UTK/CbZwa0rgLBfucWtTVfenzsOuZ
 cX5DEz8OQlEg0BaRtJTdepRWLIu6XU+traW4OzzdshYwkwa1VcJEa3OMQixr0h+s
 8WjrihZ2sBZLxSnar5lsi/HJGRAyrKq7ujO8SMLRRszz7BP1Y7rwmlejEE7/CfYu
 u46VnA2TPyyjjxEXlGqlv0ULanzN19TWknXxl4Dh9Hb1WTXOOVqjompqsPDMx8uR
 6LOPIl3SQzYywlSrXn1UWYVAAnKbn8NPW/vOZ0lt8zX+T+pu2bKPzsAC1VJCG2zH
 yg==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 6f950053
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Thu, 5 Dec 2019 10:04:52 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Dec 2019 11:59:41 +0100
Message-Id: <20191205105941.12181-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_025951_749674_87B9975A 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 0.0.20191205
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

* wg-quick: linux: suppress error when finding unused table

This fixes a spurious warning messages seen with recent versions of iproute2
and kernels.

* wg-quick: linux: ensure postdown hooks execute
* wg-quick: linux: have remove_iptables return true
* wg-quick: linux: iptables-* -w is not widely supported

Adding in iptables had some hiccups. For the record, I'm very unhappy about
having to put any firewalling code into wg-quick(8). We'll of course need to
support nftables too at some point if this continues. I'm investigating with
upstream the possibility of adding a sysctl to patch the issue that iptables
is handling now, so hopefully at somepoint down the line we'll be able to shed
this dependency once again.

* send: use kfree_skb_list
* device: prepare skb_list_walk_safe for upstreaming
* send: avoid touching skb->{next,prev} directly

Suggestions from LKML.

* ipc: make sure userspace communication frees wgdevice

Free things properly on error paths.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index ea34b75..7aac556 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20191127
+PKG_VERSION:=0.0.20191205
 PKG_RELEASE:=1
 
 PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=7d4e80a6f84564d4826dd05da2b59e8d17645072c0345d0fc0d197be176c3d06
+PKG_HASH:=4de4c0efa35f8eb170c27a0bc8977e5c0634b8e19c03915d03218cc88bb0adbe
 
 PKG_LICENSE:=GPL-2.0 Apache-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
