Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F411FFDB5
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 00:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/dbAhV+AX6NyWCeQyLysbLSD6r3OHLpcvw4Z9U7Eb/M=; b=XhC/QTc+IP8CXb
	imAaSeFgzWcSnqLeMQ7XaJjDll2c3oGNN9BkDJpDY6ZRAbqFkFymiCiN973lUJoy/YBxP8EaWVtxX
	8GgZ8I1/h9xCrwZIR0mwfUmJSGu/bi7HRR3ve4Tfeab0+Z1JD8lldLaNv6U98jSYodZxhruXc+dwB
	UiL2USD5peC3pYyYJ/BB+4bnWOIHB3WB0UB31Td5+68WYNjIHLjh3OcIbV+4KLY3QS57iztq1ApYv
	qtK3oaITh49VqtSuXQMVMQBeVgjxWRZ+Z0J8jXnbe/lZC4Kl/AK6XDz4H8yFaLZXHUadmW1+7w40W
	//E1TpxuhqTi/HcS7ydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm2gW-0000Cj-At; Thu, 18 Jun 2020 22:07:00 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm2gO-0008OF-7V
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 22:06:54 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 912DAFBDF3; Fri, 19 Jun 2020 00:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1592517977;
 bh=NACIgEdDO0DKyZAg8VB/b1+NXsHSsd9+MzVYQrAXlPM=;
 h=From:To:Subject:Date:From;
 b=HJH6wp4XM2pY/bIkyEj+bKjDfjR6D6lEVkGai4twbJzXhIqo50+C63RZSU5htAnqc
 csW9eyWwmYbngGOvw/JvA61hqd7zk9khfLxdACXXgw8MwirUMvEqaSlAf95hp9vELR
 NGojcXBkQQgSzQpDM4+zGIbYUVeWSx25HP3/mwz0=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id A6303FBDEF
 for <openwrt-devel@lists.openwrt.org>; Fri, 19 Jun 2020 00:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1592517972;
 bh=NACIgEdDO0DKyZAg8VB/b1+NXsHSsd9+MzVYQrAXlPM=;
 h=From:To:Subject:Date:From;
 b=TcJnAw9Q9hqRjIIixf6x5JdFkvLLoIo59biA/JXaEGE2N+NMtVjDEwxhL7I5WGByb
 kg00eC0+ifByvAcltifqVtEG54ABr9EIfsz32fOlv3e4Yf4G3nF74k82LGCWAzxNTf
 6iP5EHgrjZbMouxga2mNhu5eNaz2xkTyN9BnCT8A=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 19 Jun 2020 00:06:07 +0200
Message-Id: <20200618220607.5570-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.3 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_150652_555669_B0F6AEF3 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] [19.07] wireguard: bump to 1.0.20200611
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

This bump fixes breakage introduced by kernel commit 8ab8786f78c3fc930f9abf6d6d85e95567de4e1f,
which is part of the 4.14.181 kernel bump, and backported ip6_dst_lookup_flow to 4.14.
This breaks the older WireGuard version currently in 19.07.

For reference, the compilation error is the one below:

build_dir/target-x86_64_musl/linux-x86_64/wireguard-linux-compat-1.0.20200506/src/compat/compat.h:104:42: error: 'const struct ipv6_stub' has no member named 'ipv6_dst_lookup'; did you mean 'ipv6_dst_lookup_flow'?
 #define ipv6_dst_lookup_flow(a, b, c, d) ipv6_dst_lookup(a, b, &dst, c) + (void *)0 ?: dst

Changelogs below taken from the official release announcements.

== Changes since v1.0.20200506 ==

  This release aligns with the changes I sent to DaveM for 5.7-rc7 and were
  pushed to net.git about 45 minutes ago.
  
  * qemu: use newer iproute2 for gcc-10
  * qemu: add -fcommon for compiling ping with gcc-10
  
  These enable the test suite to compile with gcc-10.
  
  * noise: read preshared key while taking lock
  
  Matt noticed a benign data race when porting the Linux code to OpenBSD.
  
  * queueing: preserve flow hash across packet scrubbing
  * noise: separate receive counter from send counter
  
  WireGuard now works with fq_codel, cake, and other qdiscs that make use of
  skb->hash. This should significantly improve latency spikes related to
  buffer bloat. Here's a before and after graph from some data Toke measured:
  https://data.zx2c4.com/removal-of-buffer-bloat-in-wireguard.png
  
  * compat: support RHEL 8 as 8.2, drop 8.1 support
  * compat: support CentOS 8 explicitly
  * compat: RHEL7 backported the skb hash renamings
  
  The usual RHEL churn.
  
  * compat: backport renamed/missing skb hash members
  
  The new support for fq_codel and friends meant more backporting work.
  
  * compat: ip6_dst_lookup_flow was backported to 4.14, 4.9, and 4.4


== Changes since v1.0.20200611 ==

  * qemu: always use cbuild gcc rather than system gcc
  * qemu: remove -Werror in order to build ancient kernels better
  * qemu: patch kernels that rely on ancient make
  * qemu: force 2MB pages for binutils 2.31
  * qemu: use cbuild gcc for avx512 exclusion
  * qemu: add extra fill in idt handler for newer binutils
  * qemu: support fetching kernels for arbitrary URLs
  * qemu: patch in UTS_UBUNTU_RELEASE_ABI for Ubuntu detection
  * qemu: work around broken centos8 kernel
  * qemu: mark per_cpu_load_addr as static for gcc-10
  
  Our qemu test suite can now handle more kernels and more compilers. Scroll
  down to the bottom of https://www.wireguard.com/build-status/ to see the
  expanded array of kernels we now test against, including some distro kernels.
  
  * compat: widen breadth of integer constants
  * compat: widen breadth of memzero_explicit backport
  * compat: backport skb_scrub_packet to 3.11
  * compat: widen breadth of prandom_u32_max backport
  * compat: narrow the breadth of iptunnel_xmit backport
  * compat: backport iptunnel_xmit to 3.11
  
  With the expanded qemu test suite, it was possible to expand our list of
  mainline kernels, so the backport compat layer is now more precise.
  
  * compat: ubuntu appears to have backported ipv6_dst_lookup_flow
  * compat: bionic-hwe-5.0/disco kernel backported skb_reset_redirect and ipv6 flow
  
  Ubuntu kernels changed recently, so this ensures we can compile with the
  latest Ubuntu releases.
  
  * compat: remove stale suse support

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---

4.14.184 hasn't made its way into openwrt-19.07 yet but I bumped into this
ip6_dst_lookup_flow issue with the .184 bump in Koen's tree.

---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 69c9767b22..710038732b 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=1.0.20200506
+PKG_VERSION:=1.0.20200611
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=98a99f2b825a82d57a7213e666f1ee4f7cc02bddb09bf4908b4b09447a8f121e
+PKG_HASH:=9b0478c3b1f3a7b488916e632e2fcbb1383bb1a2ef294489858ce2ba1da3246d
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
