Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55CB134F76
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 23:38:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQvOy9U0jfZN9yYsudiG5cQBwJtopeN7QsUrERGoRAc=; b=OeEQ37pd8sPgmw
	8dOXW3thDeQjjrgKvqtFnadQqxZjs6YQEv9QvDKqPZQ0ZW/aRQUct07b/s0bZ5FY527RIVcP5O53d
	up61qV02BbYc1KIzMh2usJSC76a29OCDTwZA+ERaZGpBjcEFdiVRm0lXUkJwXV6W4i0AdazGVmaNp
	GjYKlns/QiHtqwLH80kmGIQulWzK25kuI3WANta9R0m0DeW46VRg+QVTGDbAWFqLtJu771LT+I6+G
	5gIe0WXbbMiyoI8cnqtnzqlWuJaPmn8nk4Q6V01VKEJV6yxmBPdkEb3gldhAl3vXjU0E24+L8l0Qg
	Ut3h/zb/7K5ZjcfUn4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJxm-0002Wn-O7; Wed, 08 Jan 2020 22:38:06 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJxV-0002Bx-Ep
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 22:37:50 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 51867d37;
 Wed, 8 Jan 2020 21:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding; s=mail; bh=vbuKHE4sJHPnKPqkcfLwOoq0N
 8E=; b=xnm8VZKWRNcYq4V1jymzU8w3+x3xycac0aryPposEogcOSURCvfCoLMYN
 Kimb7onj+bNoMMQS+bX7H2K3uW/f3gOlCMIHVHujjIrlUZKmi3MZMmXJPctv7OXj
 q31nQlGCl7SYpg7GvVeVPiltLJjFsmARWpH5c1VJLZzVVN5ESJZIBMAtUEwVp9ff
 gzVkTuZKUS7PFjseoHOXRvgZMU6nKE0WRmV+MgCstr3VZ70HniV96BBGmDCuGE/I
 JGpiUZijJe1z6Da77R1n+mDvt8MzBZ6hjegRNCXbUveV4WVfU6GAn1Ymld1KLIji
 FYbPYiQ8FyRy2xwI95l4Ralo9zwJQ==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id c04cad12
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 8 Jan 2020 21:38:24 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Jan 2020 17:37:41 -0500
Message-Id: <20200108223741.487861-2-Jason@zx2c4.com>
In-Reply-To: <20200108223741.487861-1-Jason@zx2c4.com>
References: <20200108223741.487861-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_143749_568431_97E20427 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] wireguard-tools: bump to 1.0.20200102
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

* systemd: update documentation URL
* global: bump copyright

Usual house keeping.

* Makefile: DEBUG_TOOLS -> DEBUG and document
* Makefile: port static analysis check
* dns-hatchet: adjust path for new repo layout
* Makefile: rework automatic version.h mangling

These are some important-ish cleanups for downstream package maintainers that
should make packaging this a lot smoother.

* man: add documentation about removing explicit listen-port

Documentation improvement.

* wg-quick: linux: quote ifname for nft

This should fix issues with weirdly named ifnames and odd versions of nft(8).

* fuzz: find bugs in the config syntax parser
* fuzz: find bugs when parsing uapi input

These are two fuzzers that have been laying around without a repo for a while.
Perhaps somebody with enough compute power will find bugs with them.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/utils/wireguard-tools/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
index 2f6d307..afde98a 100644
--- a/package/network/utils/wireguard-tools/Makefile
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard-tools
 
-PKG_VERSION:=1.0.20191226
+PKG_VERSION:=1.0.20200102
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
-PKG_HASH:=aa8af0fdc9872d369d8c890a84dbc2a2466b55795dccd5b47721b2d97644b04f
+PKG_HASH:=547cd1c2f8dca904faac9e8d3964f1ef956c24bb12e3498da88dde95243c7f08
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
