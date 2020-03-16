Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5830D18693B
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 11:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7pvVWwBQDQOgMG8VCrPtYUUeB3tCB5h7eMI29mxsiX8=; b=c/nPe2KauLTZEU
	7ZLmu8ibLpRCTgbhZamhbIyUQm/fV/Gp32fDAQyceYPtLS8z/Hv832y3OrXWjD9ImwwV/2B6fyGaY
	oIgnJrSkPUHbQg73F2zbJzOO5DMp9E4AqlUzChPdG3gbnnyCGmLcXOywkB0jBNeO/wvpxG6EnB5XJ
	zLzl/42S0+zfEacv4fPlpBrk8ANAIo0t7sB2pLvUjH9TACLMQj8jm0mE2rJgtYZeZa+JZz6MrNOjr
	z7cqnbL51vUzd5PFuWWUx+eJXndMlHDK6DqcErM8ZfEDTEGgX7fxdQI8biWpuDBhMimwR/vkqPE6s
	9HA9dFM9n0l8m5HyIiKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDn7s-0002l4-Dz; Mon, 16 Mar 2020 10:37:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDn7j-0002fA-JL
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 10:37:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id b2so14263006wrj.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 03:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PmkMPKoVHokUqgTQ6rwZgC8AkQTSgsCxw++Pbjy2nN0=;
 b=jU0hXxWkngaiHVRYu8LtGCTn4VAsXUGZ2m/RWGTM4PVb9bYYYPFkR+0pdMIuINTQqE
 GILVsK5K5gNGfhA5UohA5JOvMmhhDXPWmThjONu7xg9jBYQ/JQHo/UwPZJmnpC8ouoCY
 i+WbkLTeUEIzGYav5MoYpxc4Fw9rNzhzGkNKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PmkMPKoVHokUqgTQ6rwZgC8AkQTSgsCxw++Pbjy2nN0=;
 b=fSX2M+IuYjtss87ixpfIMGEwHmDSWDnLd3V/4nHRRv8Ma+RFaCDpx7OeH2kgpLONQH
 hN8ffyBitqkTEE+ob8oRmvcpJmWQPZ0sQRYu06TCauXO28aJpsR1LcW9gKM7m7cHZvuv
 53n5+mKPEveRUFIV7Jwil7H88PjjaMDBrMZpm03hTm8cLdYe9+xbOFrx9ZyScKrXKd3m
 iVjNceZkeIpTkUywTczmLtmHHfMI6qFTninudAXvUzgKbrZhUKrPn/PVmOIXmbEcCPr3
 FcRy+F/nrkYnrRUIynqvhfPYSBFEg+lyMclzznG1EZNJAv2oCv0kY+bFsGhU5ic7RNln
 b1iQ==
X-Gm-Message-State: ANhLgQ2msv59c/PSdN8TxL57jVwGC7vdku2O/W7/oaFq6uKRhDh0FkTB
 0T01K4zjMzIo+ig7zhzQYbIL0yTWFLE=
X-Google-Smtp-Source: ADFU+vsevehWUsDFw4INsaRNMYei7V2qNKwpCgriYnxCTX5H/n1BlYmSP+EIydNWlJqeH2rvviKZ5A==
X-Received: by 2002:adf:ed0b:: with SMTP id a11mr17203466wro.78.1584355047636; 
 Mon, 16 Mar 2020 03:37:27 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id n186sm8821805wme.25.2020.03.16.03.37.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Mar 2020 03:37:26 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 10:37:02 +0000
Message-Id: <20200316103702.71147-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.1 (Apple Git-122.3)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_033731_644567_97AB2E5E 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] libnftnl: bump to 1.1.5
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Solve missing references to nftnl_set_list_lookup_byname when building
iptables with Nftables support enabled (CONFIG_IPTABLES_NFTABLES)

/Users/kevin/wrt/staging_dir/toolchain-x86_64_gcc-9.2.0_musl/lib/gcc/x86_64-openwrt-linux-musl/9.2.0/../../../../x86_64-openwrt-linux-musl/bin/ld: xtables_nft_multi-nft-bridge.o: in function `nft_bridge_parse_lookup':
nft-bridge.c:(.text.nft_bridge_parse_lookup+0xcd): undefined reference to `nftnl_set_list_lookup_byname'
/Users/kevin/wrt/staging_dir/toolchain-x86_64_gcc-9.2.0_musl/lib/gcc/x86_64-openwrt-linux-musl/9.2.0/../../../../x86_64-openwrt-linux-musl/bin/ld: xtables_nft_multi-nft-cache.o: in function `nftnl_set_list_cb':
nft-cache.c:(.text.nftnl_set_list_cb+0x80): undefined reference to `nftnl_set_list_lookup_byname'
/Users/kevin/wrt/staging_dir/toolchain-x86_64_gcc-9.2.0_musl/lib/gcc/x86_64-openwrt-linux-musl/9.2.0/../../../../x86_64-openwrt-linux-musl/bin/ld: xtables_nft_multi-nft-cache.o: in function `fetch_set_cache':
nft-cache.c:(.text.fetch_set_cache+0x10a): undefined reference to `nftnl_set_list_lookup_byname'
collect2: error: ld returned 1 exit status
make[6]: *** [xtables-nft-multi] Error 1
make[5]: *** [all] Error 2
make[4]: *** [all-recursive] Error 1
make[3]: *** [all] Error 2
make[2]: *** [/Users/kevin/wrt/build_dir/target-x86_64_musl/linux-x86_64/iptables-1.8.4/.built] Error 2
make[2]: Leaving directory `/Users/kevin/wrt/package/network/utils/iptables'

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 package/libs/libnftnl/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/libs/libnftnl/Makefile b/package/libs/libnftnl/Makefile
index 6b7d70c006..4c878f85f8 100644
--- a/package/libs/libnftnl/Makefile
+++ b/package/libs/libnftnl/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libnftnl
-PKG_VERSION:=1.1.4
+PKG_VERSION:=1.1.5
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=https://netfilter.org/projects/$(PKG_NAME)/files
-PKG_HASH:=c8c7988347adf261efac5bba59f8e5f995ffb65f247a88cc144e69620573ed20
+PKG_HASH:=66de4d05227c0a1a731c369b193010d18a05b1185c2735211e0ecf658eeb14f3
 PKG_MAINTAINER:=Steven Barth <steven@midlink.org>
 PKG_LICENSE:=GPL-2.0+
 
-- 
2.21.1 (Apple Git-122.3)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
