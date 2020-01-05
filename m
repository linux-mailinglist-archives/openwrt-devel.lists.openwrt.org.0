Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B7B130935
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4FrKduQjUB24p44GmGPcYZV0jsH6A6jX5+2+xubH1Fs=; b=G3Eiuusp61QF2ceJB7VPifxW+O
	N5pJaDgZwEHOU2w82P3fvYBCaCEJvqbdkO0wddkMeaB1asg7omzNtGXjPg+6CfeMVpv22TMk/Ri2p
	yI5MH1TB4wz8VglbNJZ5XNsm3WqQlajMIK/2eVzS5Naj/BbxLXiGBRBhxcKuNyeOzE7xbC3jFfS3r
	+eSOcUx67PuhUn8DEH0mGi9RI6V0Lq87NLM+IPju3qbP7rRCz1DYurL3RDtm+k5JAHDgcz1WnQjnY
	WtWsxp80kJ8BWZwF7Oj3p/rHfSYd2LQ+jpVSjjBJGBqzgrheE8zHcIKDvYZOoFaHQX3iwg5BQW/+t
	TBVpK/oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io90o-0004Yu-4E; Sun, 05 Jan 2020 16:44:22 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io90c-0004Wx-Fa
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:44:13 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MiakT-1jJtK301VH-00fexh for <openwrt-devel@lists.openwrt.org>; Sun, 05
 Jan 2020 17:44:08 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 17:43:19 +0100
Message-Id: <20200105164319.4035-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200105164319.4035-1-freifunk@adrianschmutzler.de>
References: <20200105164319.4035-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:YrbcAFbj4Xb3T9YLHMcNY/MQieaq9PE7R0bTOQhKiQdGNGrZVn7
 LgvgbNnsqhQ5/i3mTp+TsFP3Pog645m4t+KBbIb6s1uysYhaU7XM/BHpOORPqse3dC2LTr3
 ELVr7pKm3+NbunTX4ayYbpghdDHRy3qUobH8tAmyDIpW1bbicO1EgNw8YAnq2M5yZVOUqEe
 HGvvABQhMLAdeH4R+S8kw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uX5E7NZx9JM=:BC0Axq0fO8c2QeutaQUaBo
 L/DDauNr6vAzXymf+Nfy11M8Tec0evcl6FUCvflDKCYcjWKZAGSIqqnQXrvh17jt/nBr3DYet
 tWn5+PMoPjYc8JO44ycq5oczaMJJELzfQR07+u82rg7P+Vds1U00M1zO8YSOfzI7FBChBxrI1
 dBu12x0ZNPnDZIYf9IYKU2AhNYBfqfPno+Y+IDV7FOkd05Mh056fg4eeG0Y8cE/HBKndzeaKT
 1wwryf6B5Z9NEFZQ2u8bVwFVaBaGo3ksjVn0umVv6MbFUr10yukEjnBwmL+s5/s+wMC2z6U++
 0be9T7oDQLG80Bo1ud+ShFSiS7sYNz5Yu96qNdrK8hDiSTqj0uIQP/4wQIndWXC+nRCkw5hBS
 N+UrwKdx+kQO4uwdyZ93M2ypNocMEvQKADD2z9LV9ZhOx9BkNisEp4GTaDb5CP/PYqyp8GYWM
 NMEG0sJywiyC6pUJqXBsk2N5VCPY37CIZQkexYHzXrX7/pz4sdzB4SzFMEcekMjFBBBZ6kt2D
 lQO8aw2/maX1Y76JHOlOq/uxPgHlT8oc/x+8dmB7nfnByi0JZlZxjlG5F2NDQfNWYkU97FWvV
 ZTRJh2zu0APpMBe9uc2inmxT8iMVDNsXeV3ZhK9FizAnhg4tUKCjs8QX5y5lg7DReDSrkNgXC
 Myi5OLe/yicAvqM0rMiVQq3hGXM7M+oFofrsKpxjO3BWb47XD6/tIAPlwuEMlyuSDl+hx3gJS
 wmWLddeD6pJrDgdbxvIEm90K//SqhiMNxQkBfXDLAtuFKniJ5PmpyHhql0FTq3/oRjBu4LpWm
 DFajZ/Z0V51svZcBN9+CD8rJRmfnshZ2R+8Ubwj8Gns4gazNGzGuS6cJU2nHgMa2G6waHhNy1
 hWlDRIBP+Z5Nu2jmwcPmbwZ5Qd5il+IMY11oww2Ro=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_084410_978514_6A86519A 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/5] kernel: remove obsolete kernel version
 switches
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

After kernel 4.9 has been removed, this removes all (now obsolete)
kernel version switches that deal with versions before 4.14.

Package kmod-crypto-iv is empty now and thus removed entirely.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/netfilter.mk                          | 26 +++++++--------
 .../linux/files/sysctl-tcp-bbr-k4_9.conf      |  5 ---
 package/kernel/linux/modules/block.mk         |  3 +-
 package/kernel/linux/modules/crypto.mk        | 32 +++++--------------
 package/kernel/linux/modules/fs.mk            |  2 +-
 package/kernel/linux/modules/iio.mk           |  6 ++--
 package/kernel/linux/modules/lib.mk           | 16 +++++-----
 package/kernel/linux/modules/netdevices.mk    |  4 +--
 package/kernel/linux/modules/netfilter.mk     |  2 +-
 package/kernel/linux/modules/netsupport.mk    | 22 ++++---------
 package/kernel/linux/modules/other.mk         | 20 ++++++------
 package/kernel/linux/modules/sound.mk         | 14 ++++----
 package/kernel/linux/modules/usb.mk           | 14 +++-----
 package/kernel/linux/modules/video.mk         |  4 +--
 package/kernel/linux/modules/w1.mk            |  2 +-
 package/kernel/linux/modules/wireless.mk      |  3 +-
 package/kernel/linux/modules/wpan.mk          |  5 ++-
 package/kernel/rtl8812au-ct/Makefile          |  2 +-
 18 files changed, 69 insertions(+), 113 deletions(-)
 delete mode 100644 package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf

diff --git a/include/netfilter.mk b/include/netfilter.mk
index 009f3502ee..d06ace8e49 100644
--- a/include/netfilter.mk
+++ b/include/netfilter.mk
@@ -185,7 +185,7 @@ $(eval $(call nf_add,IPT_IPV6_EXTRA,CONFIG_IP6_NF_MATCH_RT, $(P_V6)ip6t_rt))
 
 # kernel only
 $(eval $(if $(NF_KMOD),$(call nf_add,NF_NAT,CONFIG_NF_NAT, $(P_XT)nf_nat),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NF_NAT,CONFIG_NF_NAT_REDIRECT, $(P_XT)nf_nat_redirect, ge 3.19.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NF_NAT,CONFIG_NF_NAT_REDIRECT, $(P_XT)nf_nat_redirect),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NF_NAT,CONFIG_NF_NAT_IPV4, $(P_V4)nf_nat_ipv4),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NF_NAT,CONFIG_NF_NAT_MASQUERADE_IPV4, $(P_V4)nf_nat_masquerade_ipv4, lt 4.18),))
 
@@ -261,8 +261,8 @@ $(eval $(call nf_add,IPT_DEBUG,CONFIG_NETFILTER_XT_TARGET_TRACE, $(P_XT)xt_TRACE
 # tproxy
 
 $(eval $(call nf_add,IPT_TPROXY,CONFIG_NETFILTER_XT_MATCH_SOCKET, $(P_XT)xt_socket))
-$(eval $(call nf_add,IPT_TPROXY,CONFIG_NF_SOCKET_IPV4, $(P_V4)nf_socket_ipv4, ge 4.10))
-$(eval $(call nf_add,IPT_TPROXY,CONFIG_NF_SOCKET_IPV6, $(P_V6)nf_socket_ipv6, ge 4.10))
+$(eval $(call nf_add,IPT_TPROXY,CONFIG_NF_SOCKET_IPV4, $(P_V4)nf_socket_ipv4))
+$(eval $(call nf_add,IPT_TPROXY,CONFIG_NF_SOCKET_IPV6, $(P_V6)nf_socket_ipv6))
 $(eval $(call nf_add,IPT_TPROXY,CONFIG_NETFILTER_XT_TARGET_TPROXY, $(P_XT)xt_TPROXY))
 $(eval $(call nf_add,IPT_TPROXY,CONFIG_NF_TPROXY_IPV4, $(P_V4)nf_tproxy_ipv4, ge 4.18))
 $(eval $(call nf_add,IPT_TPROXY,CONFIG_NF_TPROXY_IPV6, $(P_V6)nf_tproxy_ipv6, ge 4.18))
@@ -273,8 +273,8 @@ $(eval $(call nf_add,IPT_LED,CONFIG_NETFILTER_XT_TARGET_LED, $(P_XT)xt_LED))
 # tee
 
 $(eval $(call nf_add,IPT_TEE,CONFIG_NETFILTER_XT_TARGET_TEE, $(P_XT)xt_TEE))
-$(eval $(if $(NF_KMOD),$(call nf_add,IPT_TEE,CONFIG_NF_DUP_IPV4, $(P_V4)nf_dup_ipv4, ge 4.3),))
-$(eval $(if $(NF_KMOD),$(call nf_add,IPT_TEE,CONFIG_NF_DUP_IPV6, $(P_V6)nf_dup_ipv6, ge 4.3),))
+$(eval $(if $(NF_KMOD),$(call nf_add,IPT_TEE,CONFIG_NF_DUP_IPV4, $(P_V4)nf_dup_ipv4),))
+$(eval $(if $(NF_KMOD),$(call nf_add,IPT_TEE,CONFIG_NF_DUP_IPV6, $(P_V6)nf_dup_ipv6),))
 
 # u32
 
@@ -338,12 +338,10 @@ $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES, $(P_XT)nf_tables
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_INET, $(P_XT)nf_tables_inet, lt 4.17),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_EXTHDR, $(P_XT)nft_exthdr),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_META, $(P_XT)nft_meta),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_NUMGEN, $(P_XT)nft_numgen, ge 4.9.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_NUMGEN, $(P_XT)nft_numgen),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_CT, $(P_XT)nft_ct),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_RBTREE, $(P_XT)nft_set_rbtree, ge 4.9.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_RBTREE, $(P_XT)nft_rbtree, lt 4.9.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_HASH, $(P_XT)nft_set_hash, ge 4.9.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_HASH, $(P_XT)nft_hash, lt 4.9.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_RBTREE, $(P_XT)nft_set_rbtree),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_SET_HASH, $(P_XT)nft_set_hash),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_COUNTER, $(P_XT)nft_counter),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_LOG, $(P_XT)nft_log),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_LIMIT, $(P_XT)nft_limit),))
@@ -353,8 +351,8 @@ $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_IPV4, $(P_V4)nf_t
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_CHAIN_ROUTE_IPV4, $(P_V4)nft_chain_route_ipv4),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NF_TABLES_IPV6, $(P_V6)nf_tables_ipv6, lt 4.17),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_CHAIN_ROUTE_IPV6, $(P_V6)nft_chain_route_ipv6),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_REDIR, $(P_XT)nft_redir, ge 3.19.0),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_QUOTA, $(P_XT)nft_quota, ge 4.9.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_REDIR, $(P_XT)nft_redir),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_CORE,CONFIG_NFT_QUOTA, $(P_XT)nft_quota),))
 
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_ARP,CONFIG_NF_TABLES_ARP, $(P_V4)nf_tables_arp, lt 4.17),))
 
@@ -364,11 +362,11 @@ $(eval $(if $(NF_KMOD),$(call nf_add,NFT_BRIDGE,CONFIG_NFT_BRIDGE_REJECT, $(P_EB
 
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_NAT, $(P_XT)nft_nat),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_CHAIN_NAT_IPV4, $(P_V4)nft_chain_nat_ipv4),))
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_REDIR_IPV4, $(P_V4)nft_redir_ipv4, ge 3.19.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_REDIR_IPV4, $(P_V4)nft_redir_ipv4),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_MASQ, $(P_XT)nft_masq),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT,CONFIG_NFT_MASQ_IPV4, $(P_V4)nft_masq_ipv4),))
 
-$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_REDIR_IPV6, $(P_V6)nft_redir_ipv6, ge 3.19.0),))
+$(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_REDIR_IPV6, $(P_V6)nft_redir_ipv6),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_CHAIN_NAT_IPV6, $(P_V6)nft_chain_nat_ipv6),))
 $(eval $(if $(NF_KMOD),$(call nf_add,NFT_NAT6,CONFIG_NFT_MASQ_IPV6, $(P_V6)nft_masq_ipv6),))
 
diff --git a/package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf b/package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf
deleted file mode 100644
index 2f63b72888..0000000000
--- a/package/kernel/linux/files/sysctl-tcp-bbr-k4_9.conf
+++ /dev/null
@@ -1,5 +0,0 @@
-# Do not edit, changes to this file will be lost on upgrades
-# /etc/sysctl.conf can be used to customize sysctl settings
-
-net.ipv4.tcp_congestion_control=bbr
-net.core.default_qdisc=fq
diff --git a/package/kernel/linux/modules/block.mk b/package/kernel/linux/modules/block.mk
index c486a433c2..5530931db4 100644
--- a/package/kernel/linux/modules/block.mk
+++ b/package/kernel/linux/modules/block.mk
@@ -209,7 +209,6 @@ $(eval $(call KernelPackage,block2mtd))
 define KernelPackage/dax
   SUBMENU:=$(BLOCK_MENU)
   TITLE:=DAX: direct access to differentiated memory
-  DEPENDS:=@!LINUX_4_9
   KCONFIG:=CONFIG_DAX
   FILES:=$(LINUX_DIR)/drivers/dax/dax.ko
 endef
@@ -220,7 +219,7 @@ $(eval $(call KernelPackage,dax))
 define KernelPackage/dm
   SUBMENU:=$(BLOCK_MENU)
   TITLE:=Device Mapper
-  DEPENDS:=+kmod-crypto-manager +!LINUX_4_9:kmod-dax
+  DEPENDS:=+kmod-crypto-manager +kmod-dax
   # All the "=n" are unnecessary, they're only there
   # to stop the config from asking the question.
   # MIRROR is M because I've needed it for pvmove.
diff --git a/package/kernel/linux/modules/crypto.mk b/package/kernel/linux/modules/crypto.mk
index 9e647eb18f..26873b404a 100644
--- a/package/kernel/linux/modules/crypto.mk
+++ b/package/kernel/linux/modules/crypto.mk
@@ -110,8 +110,8 @@ define KernelPackage/crypto-crc32
   DEPENDS:=+kmod-crypto-hash
   KCONFIG:=CONFIG_CRYPTO_CRC32
   HIDDEN:=1
-  FILES:=$(LINUX_DIR)/crypto/crc32_generic.ko@ge4.9
-  AUTOLOAD:=$(call AutoLoad,04,crc32_generic@ge4.9,1)
+  FILES:=$(LINUX_DIR)/crypto/crc32_generic.ko
+  AUTOLOAD:=$(call AutoLoad,04,crc32_generic,1)
   $(call AddDepends/crypto)
 endef
 
@@ -132,7 +132,7 @@ $(eval $(call KernelPackage,crypto-crc32c))
 
 define KernelPackage/crypto-ctr
   TITLE:=Counter Mode CryptoAPI module
-  DEPENDS:=+kmod-crypto-manager +kmod-crypto-seqiv +kmod-crypto-iv
+  DEPENDS:=+kmod-crypto-manager +kmod-crypto-seqiv
   KCONFIG:=CONFIG_CRYPTO_CTR
   FILES:=$(LINUX_DIR)/crypto/ctr.ko
   AUTOLOAD:=$(call AutoLoad,09,ctr)
@@ -156,7 +156,7 @@ $(eval $(call KernelPackage,crypto-cts))
 
 define KernelPackage/crypto-deflate
   TITLE:=Deflate compression CryptoAPI module
-  DEPENDS:=+kmod-lib-zlib-inflate +kmod-lib-zlib-deflate +!LINUX_4_9:kmod-crypto-acompress
+  DEPENDS:=+kmod-lib-zlib-inflate +kmod-lib-zlib-deflate +kmod-crypto-acompress
   KCONFIG:=CONFIG_CRYPTO_DEFLATE
   FILES:=$(LINUX_DIR)/crypto/deflate.ko
   AUTOLOAD:=$(call AutoLoad,09,deflate)
@@ -297,7 +297,7 @@ $(eval $(call KernelPackage,crypto-hmac))
 
 define KernelPackage/crypto-hw-ccp
   TITLE:=AMD Cryptographic Coprocessor
-  DEPENDS:=+kmod-crypto-authenc +kmod-crypto-hash +kmod-crypto-manager +kmod-random-core +kmod-crypto-sha1 +kmod-crypto-sha256 +!LINUX_4_9:kmod-crypto-rsa
+  DEPENDS:=+kmod-crypto-authenc +kmod-crypto-hash +kmod-crypto-manager +kmod-random-core +kmod-crypto-sha1 +kmod-crypto-sha256 +kmod-crypto-rsa
   KCONFIG:= \
 	CONFIG_CRYPTO_HW=y \
 	CONFIG_CRYPTO_DEV_CCP=y \
@@ -403,21 +403,6 @@ endef
 $(eval $(call KernelPackage,crypto-hw-talitos))
 
 
-define KernelPackage/crypto-iv
-  TITLE:=CryptoAPI initialization vectors
-  DEPENDS:=+kmod-crypto-manager +kmod-crypto-rng +kmod-crypto-wq
-  KCONFIG:= CONFIG_CRYPTO_BLKCIPHER2
-  HIDDEN:=1
-  FILES:= \
-	$(LINUX_DIR)/crypto/eseqiv.ko@lt4.9 \
-	$(LINUX_DIR)/crypto/chainiv.ko@lt4.9
-  AUTOLOAD:=$(call AutoLoad,10,eseqiv chainiv)
-  $(call AddDepends/crypto)
-endef
-
-$(eval $(call KernelPackage,crypto-iv))
-
-
 define KernelPackage/crypto-kpp
   TITLE:=Key-agreement Protocol Primitives
   KCONFIG:=CONFIG_CRYPTO_KPP
@@ -656,11 +641,10 @@ define KernelPackage/crypto-rng
 	CONFIG_CRYPTO_JITTERENTROPY \
 	CONFIG_CRYPTO_RNG2
   FILES:= \
-	$(LINUX_DIR)/crypto/drbg.ko@ge4.2 \
-	$(LINUX_DIR)/crypto/jitterentropy_rng.ko@ge4.2 \
-	$(LINUX_DIR)/crypto/krng.ko@lt4.2 \
+	$(LINUX_DIR)/crypto/drbg.ko \
+	$(LINUX_DIR)/crypto/jitterentropy_rng.ko \
 	$(LINUX_DIR)/crypto/rng.ko
-  AUTOLOAD:=$(call AutoLoad,09,drbg@ge4.2 jitterentropy_rng@ge4.2 krng@lt4.2 rng)
+  AUTOLOAD:=$(call AutoLoad,09,drbg jitterentropy_rng rng)
   $(call AddDepends/crypto)
 endef
 
diff --git a/package/kernel/linux/modules/fs.mk b/package/kernel/linux/modules/fs.mk
index 3ffe82cbe8..8709bdcbb1 100644
--- a/package/kernel/linux/modules/fs.mk
+++ b/package/kernel/linux/modules/fs.mk
@@ -68,7 +68,7 @@ $(eval $(call KernelPackage,fs-autofs4))
 define KernelPackage/fs-btrfs
   SUBMENU:=$(FS_MENU)
   TITLE:=BTRFS filesystem support
-  DEPENDS:=+kmod-lib-crc32c +kmod-lib-lzo +kmod-lib-zlib-inflate +kmod-lib-zlib-deflate +kmod-lib-raid6 +kmod-lib-xor +!LINUX_4_9:kmod-lib-zstd
+  DEPENDS:=+kmod-lib-crc32c +kmod-lib-lzo +kmod-lib-zlib-inflate +kmod-lib-zlib-deflate +kmod-lib-raid6 +kmod-lib-xor +kmod-lib-zstd
   KCONFIG:=\
 	CONFIG_BTRFS_FS \
 	CONFIG_BTRFS_FS_POSIX_ACL=n \
diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index 1ec3c968d3..ce6705a59a 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -17,10 +17,8 @@ define KernelPackage/iio-core
 	CONFIG_IIO_TRIGGERED_BUFFER
   FILES:= \
 	$(LINUX_DIR)/drivers/iio/industrialio.ko \
-	$(if $(CONFIG_IIO_TRIGGERED_BUFFER),$(LINUX_DIR)/drivers/iio/industrialio-triggered-buffer.ko@lt4.4) \
-	$(if $(CONFIG_IIO_TRIGGERED_BUFFER),$(LINUX_DIR)/drivers/iio/buffer/industrialio-triggered-buffer.ko@ge4.4) \
-	$(LINUX_DIR)/drivers/iio/kfifo_buf.ko@lt4.4 \
-	$(LINUX_DIR)/drivers/iio/buffer/kfifo_buf.ko@ge4.4
+	$(if $(CONFIG_IIO_TRIGGERED_BUFFER),$(LINUX_DIR)/drivers/iio/buffer/industrialio-triggered-buffer.ko) \
+	$(LINUX_DIR)/drivers/iio/buffer/kfifo_buf.ko
   AUTOLOAD:=$(call AutoLoad,55,industrialio kfifo_buf industrialio-triggered-buffer)
 endef
 
diff --git a/package/kernel/linux/modules/lib.mk b/package/kernel/linux/modules/lib.mk
index 3e5a12e926..2aeaf2a858 100644
--- a/package/kernel/linux/modules/lib.mk
+++ b/package/kernel/linux/modules/lib.mk
@@ -101,17 +101,17 @@ $(eval $(call KernelPackage,lib-crc32c))
 define KernelPackage/lib-lzo
   SUBMENU:=$(LIB_MENU)
   TITLE:=LZO support
-  DEPENDS:=+!LINUX_4_9:kmod-crypto-acompress
+  DEPENDS:=+kmod-crypto-acompress
   KCONFIG:= \
-	CONFIG_CRYPTO_LZO@ge4.9 \
+	CONFIG_CRYPTO_LZO \
 	CONFIG_LZO_COMPRESS \
 	CONFIG_LZO_DECOMPRESS
   HIDDEN:=1
   FILES:= \
-	$(LINUX_DIR)/crypto/lzo.ko@ge4.9 \
+	$(LINUX_DIR)/crypto/lzo.ko \
 	$(LINUX_DIR)/lib/lzo/lzo_compress.ko \
 	$(LINUX_DIR)/lib/lzo/lzo_decompress.ko
-  AUTOLOAD:=$(call AutoProbe,lzo@ge4.9 lzo_compress lzo_decompress)
+  AUTOLOAD:=$(call AutoProbe,lzo lzo_compress lzo_decompress)
 endef
 
 define KernelPackage/lib-lzo/description
@@ -146,17 +146,17 @@ $(eval $(call KernelPackage,lib-zstd))
 define KernelPackage/lib-lz4
   SUBMENU:=$(LIB_MENU)
   TITLE:=LZ4 support
-  DEPENDS:=+!LINUX_4_9:kmod-crypto-acompress
+  DEPENDS:=+kmod-crypto-acompress
   HIDDEN:=1
   KCONFIG:= \
-	CONFIG_CRYPTO_LZ4@ge4.9 \
+	CONFIG_CRYPTO_LZ4 \
 	CONFIG_LZ4_COMPRESS \
 	CONFIG_LZ4_DECOMPRESS
   FILES:= \
-	$(LINUX_DIR)/crypto/lz4.ko@ge4.9 \
+	$(LINUX_DIR)/crypto/lz4.ko \
 	$(LINUX_DIR)/lib/lz4/lz4_compress.ko \
 	$(LINUX_DIR)/lib/lz4/lz4_decompress.ko
-  AUTOLOAD:=$(call AutoProbe,lz4@ge4.9 lz4_compress lz4_decompress)
+  AUTOLOAD:=$(call AutoProbe,lz4 lz4_compress lz4_decompress)
 endef
 
 define KernelPackage/lib-lz4/description
diff --git a/package/kernel/linux/modules/netdevices.mk b/package/kernel/linux/modules/netdevices.mk
index 5f8d767679..deaa3c3abc 100644
--- a/package/kernel/linux/modules/netdevices.mk
+++ b/package/kernel/linux/modules/netdevices.mk
@@ -712,7 +712,7 @@ define KernelPackage/tg3
   TITLE:=Broadcom Tigon3 Gigabit Ethernet
   KCONFIG:=CONFIG_TIGON3 \
 	CONFIG_TIGON3_HWMON=n
-  DEPENDS:=+!TARGET_brcm47xx:kmod-libphy +LINUX_4_9:kmod-hwmon-core +kmod-ptp
+  DEPENDS:=+!TARGET_brcm47xx:kmod-libphy +kmod-ptp
   SUBMENU:=$(NETWORK_DEVICES_MENU)
   FILES:=$(LINUX_DIR)/drivers/net/ethernet/broadcom/tg3.ko
   AUTOLOAD:=$(call AutoLoad,19,tg3,1)
@@ -928,7 +928,7 @@ define KernelPackage/of-mdio
   DEPENDS:=+kmod-libphy
   KCONFIG:=CONFIG_OF_MDIO
   FILES:= \
-	$(LINUX_DIR)/drivers/net/phy/fixed_phy.ko@ge4.9 \
+	$(LINUX_DIR)/drivers/net/phy/fixed_phy.ko \
 	$(LINUX_DIR)/drivers/of/of_mdio.ko
   AUTOLOAD:=$(call AutoLoad,41,of_mdio)
 endef
diff --git a/package/kernel/linux/modules/netfilter.mk b/package/kernel/linux/modules/netfilter.mk
index cc4c5ecb2a..3ecbf868c2 100644
--- a/package/kernel/linux/modules/netfilter.mk
+++ b/package/kernel/linux/modules/netfilter.mk
@@ -152,7 +152,7 @@ define KernelPackage/nf-flow
 	CONFIG_NETFILTER_INGRESS=y \
 	CONFIG_NF_FLOW_TABLE \
 	CONFIG_NF_FLOW_TABLE_HW
-  DEPENDS:=+kmod-nf-conntrack @!LINUX_4_9
+  DEPENDS:=+kmod-nf-conntrack
   FILES:= \
 	$(LINUX_DIR)/net/netfilter/nf_flow_table.ko \
 	$(LINUX_DIR)/net/netfilter/nf_flow_table_hw.ko
diff --git a/package/kernel/linux/modules/netsupport.mk b/package/kernel/linux/modules/netsupport.mk
index 7d8a57d11a..3656441650 100644
--- a/package/kernel/linux/modules/netsupport.mk
+++ b/package/kernel/linux/modules/netsupport.mk
@@ -115,8 +115,7 @@ define KernelPackage/geneve
 	+IPV6:kmod-udptunnel6
   KCONFIG:=CONFIG_GENEVE
   FILES:= \
-	$(LINUX_DIR)/net/ipv4/geneve.ko@le4.1 \
-	$(LINUX_DIR)/drivers/net/geneve.ko@ge4.2
+	$(LINUX_DIR)/drivers/net/geneve.ko
   AUTOLOAD:=$(call AutoLoad,13,geneve)
 endef
 
@@ -133,7 +132,7 @@ define KernelPackage/nsh
   TITLE:=Network Service Header (NSH) protocol
   DEPENDS:=
   KCONFIG:=CONFIG_NET_NSH
-  FILES:=$(LINUX_DIR)/net/nsh/nsh.ko@ge4.14
+  FILES:=$(LINUX_DIR)/net/nsh/nsh.ko
   AUTOLOAD:=$(call AutoLoad,13,nsh)
 endef
 
@@ -247,7 +246,7 @@ define KernelPackage/ipsec
   DEPENDS:= \
 	+kmod-crypto-authenc +kmod-crypto-cbc +kmod-crypto-deflate \
 	+kmod-crypto-des +kmod-crypto-echainiv +kmod-crypto-hmac \
-	+kmod-crypto-iv +kmod-crypto-md5 +kmod-crypto-sha1
+	+kmod-crypto-md5 +kmod-crypto-sha1
   KCONFIG:= \
 	CONFIG_NET_KEY \
 	CONFIG_XFRM_USER \
@@ -403,7 +402,7 @@ $(eval $(call KernelPackage,ip6-vti))
 define KernelPackage/xfrm-interface
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=IPsec XFRM Interface
-  DEPENDS:=+kmod-ipsec4 +kmod-ipsec6 @!LINUX_4_14 @!LINUX_4_9
+  DEPENDS:=+kmod-ipsec4 +kmod-ipsec6 @!LINUX_4_14
   KCONFIG:=CONFIG_XFRM_INTERFACE
   FILES:=$(LINUX_DIR)/net/xfrm/xfrm_interface.ko
   AUTOLOAD:=$(call AutoProbe,xfrm_interface)
@@ -935,7 +934,6 @@ $(eval $(call KernelPackage,sched))
 define KernelPackage/tcp-bbr
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=BBR TCP congestion control
-  DEPENDS:=+LINUX_4_9:kmod-sched
   KCONFIG:= \
 	CONFIG_TCP_CONG_ADVANCED=y \
 	CONFIG_TCP_CONG_BBR
@@ -949,11 +947,7 @@ define KernelPackage/tcp-bbr/description
  For kernel 4.13+, TCP internal pacing is implemented as fallback.
 endef
 
-ifdef CONFIG_LINUX_4_9
-  TCP_BBR_SYSCTL_CONF:=sysctl-tcp-bbr-k4_9.conf
-else
-  TCP_BBR_SYSCTL_CONF:=sysctl-tcp-bbr.conf
-endif
+TCP_BBR_SYSCTL_CONF:=sysctl-tcp-bbr.conf
 
 define KernelPackage/tcp-bbr/install
 	$(INSTALL_DIR) $(1)/etc/sysctl.d
@@ -1135,10 +1129,8 @@ define KernelPackage/rxrpc
 	CONFIG_RXKAD=m \
 	CONFIG_AF_RXRPC_DEBUG=n
   FILES:= \
-	$(LINUX_DIR)/net/rxrpc/af-rxrpc.ko@lt4.11 \
-	$(LINUX_DIR)/net/rxrpc/rxrpc.ko@ge4.11 \
-	$(LINUX_DIR)/net/rxrpc/rxkad.ko@lt4.7
-  AUTOLOAD:=$(call AutoLoad,30,rxkad@lt4.7 af-rxrpc.ko@lt4.11 rxrpc.ko@ge4.11)
+	$(LINUX_DIR)/net/rxrpc/rxrpc.ko
+  AUTOLOAD:=$(call AutoLoad,30,rxrpc.ko)
   DEPENDS:= +kmod-crypto-manager +kmod-crypto-pcbc +kmod-crypto-fcrypt
 endef
 
diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 0ffaac2014..3ba9bdb82c 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -30,7 +30,7 @@ $(eval $(call KernelPackage,6lowpan))
 define KernelPackage/bluetooth
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Bluetooth support
-  DEPENDS:=@USB_SUPPORT +kmod-usb-core +kmod-crypto-hash +kmod-crypto-ecb +kmod-lib-crc16 +kmod-hid +kmod-crypto-cmac +kmod-regmap-core +!LINUX_4_9:kmod-crypto-ecdh
+  DEPENDS:=@USB_SUPPORT +kmod-usb-core +kmod-crypto-hash +kmod-crypto-ecb +kmod-lib-crc16 +kmod-hid +kmod-crypto-cmac +kmod-regmap-core +kmod-crypto-ecdh
   KCONFIG:= \
 	CONFIG_BT \
 	CONFIG_BT_BREDR=y \
@@ -144,7 +144,7 @@ define KernelPackage/nvmem
   TITLE:=Non Volatile Memory support
   KCONFIG:=CONFIG_NVMEM
   HIDDEN:=1
-  FILES:=$(LINUX_DIR)/drivers/nvmem/nvmem_core.ko@ge4.9
+  FILES:=$(LINUX_DIR)/drivers/nvmem/nvmem_core.ko
 endef
 
 define KernelPackage/nvmem/description
@@ -219,14 +219,13 @@ $(eval $(call KernelPackage,gpio-dev))
 define KernelPackage/gpio-mcp23s08
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Microchip MCP23xxx I/O expander
-  DEPENDS:=@GPIO_SUPPORT +kmod-i2c-core +!LINUX_4_9:kmod-regmap-i2c
+  DEPENDS:=@GPIO_SUPPORT +kmod-i2c-core +kmod-regmap-i2c
   KCONFIG:= \
 	CONFIG_GPIO_MCP23S08 \
 	CONFIG_PINCTRL_MCP23S08
   FILES:= \
-	$(LINUX_DIR)/drivers/gpio/gpio-mcp23s08.ko@lt4.13 \
-	$(LINUX_DIR)/drivers/pinctrl/pinctrl-mcp23s08.ko@ge4.13
-  AUTOLOAD:=$(call AutoLoad,40,gpio-mcp23s08@lt4.13 pinctrl-mcp23s08@ge4.13)
+	$(LINUX_DIR)/drivers/pinctrl/pinctrl-mcp23s08.ko
+  AUTOLOAD:=$(call AutoLoad,40,pinctrl-mcp23s08)
 endef
 
 define KernelPackage/gpio-mcp23s08/description
@@ -349,8 +348,7 @@ define KernelPackage/mmc
 	CONFIG_SDIO_UART=n
   FILES:= \
 	$(LINUX_DIR)/drivers/mmc/core/mmc_core.ko \
-	$(LINUX_DIR)/drivers/mmc/card/mmc_block.ko@lt4.10 \
-	$(LINUX_DIR)/drivers/mmc/core/mmc_block.ko@ge4.10
+	$(LINUX_DIR)/drivers/mmc/core/mmc_block.ko
   AUTOLOAD:=$(call AutoProbe,mmc_core mmc_block,1)
 endef
 
@@ -476,7 +474,7 @@ define KernelPackage/rtc-ds1307
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Dallas/Maxim DS1307 (and compatible) RTC support
   DEFAULT:=m if ALL_KMODS && RTC_SUPPORT
-  DEPENDS:=+kmod-i2c-core +!LINUX_4_9:kmod-regmap-i2c +!LINUX_4_9:kmod-hwmon-core
+  DEPENDS:=+kmod-i2c-core +kmod-regmap-i2c +kmod-hwmon-core
   KCONFIG:=CONFIG_RTC_DRV_DS1307 \
 	CONFIG_RTC_CLASS=y
   FILES:=$(LINUX_DIR)/drivers/rtc/rtc-ds1307.ko
@@ -734,8 +732,8 @@ define KernelPackage/serial-8250
 	CONFIG_SERIAL_8250_RSA=n
   FILES:= \
 	$(LINUX_DIR)/drivers/tty/serial/8250/8250.ko \
-	$(LINUX_DIR)/drivers/tty/serial/8250/8250_base.ko@ge4.4 \
-	$(if $(CONFIG_PCI),$(LINUX_DIR)/drivers/tty/serial/8250/8250_pci.ko@ge4.4)
+	$(LINUX_DIR)/drivers/tty/serial/8250/8250_base.ko \
+	$(if $(CONFIG_PCI),$(LINUX_DIR)/drivers/tty/serial/8250/8250_pci.ko)
   AUTOLOAD:=$(call AutoProbe,8250 8250_base 8250_pci)
 endef
 
diff --git a/package/kernel/linux/modules/sound.mk b/package/kernel/linux/modules/sound.mk
index aa7eb72756..8cea4c4a7b 100644
--- a/package/kernel/linux/modules/sound.mk
+++ b/package/kernel/linux/modules/sound.mk
@@ -24,8 +24,7 @@ SOUNDCORE_FILES ?= \
 	$(LINUX_DIR)/sound/soundcore.ko \
 	$(LINUX_DIR)/sound/core/snd.ko \
 	$(LINUX_DIR)/sound/core/snd-hwdep.ko \
-	$(LINUX_DIR)/sound/core/seq/snd-seq-device.ko@lt4.13 \
-	$(LINUX_DIR)/sound/core/snd-seq-device.ko@ge4.13 \
+	$(LINUX_DIR)/sound/core/snd-seq-device.ko \
 	$(LINUX_DIR)/sound/core/snd-rawmidi.ko \
 	$(LINUX_DIR)/sound/core/snd-timer.ko \
 	$(LINUX_DIR)/sound/core/snd-pcm.ko \
@@ -292,17 +291,17 @@ define KernelPackage/sound-hda-core
   SUBMENU:=$(SOUND_MENU)
   TITLE:=HD Audio Sound Core Support
   KCONFIG:= \
-	CONFIG_SND_HDA_CORE@ge4.1 \
+	CONFIG_SND_HDA_CORE \
 	CONFIG_SND_HDA_HWDEP=y \
 	CONFIG_SND_HDA_RECONFIG=n \
 	CONFIG_SND_HDA_INPUT_BEEP=n \
 	CONFIG_SND_HDA_PATCH_LOADER=n \
 	CONFIG_SND_HDA_GENERIC
   FILES:= \
-	$(LINUX_DIR)/sound/hda/snd-hda-core.ko@ge4.1 \
+	$(LINUX_DIR)/sound/hda/snd-hda-core.ko \
 	$(LINUX_DIR)/sound/pci/hda/snd-hda-codec.ko \
 	$(LINUX_DIR)/sound/pci/hda/snd-hda-codec-generic.ko
-  AUTOLOAD:=$(call AutoProbe,snd-hda-core@ge4.1 snd-hda-codec snd-hda-codec-generic)
+  AUTOLOAD:=$(call AutoProbe,snd-hda-core snd-hda-codec snd-hda-codec-generic)
   $(call AddDepends/sound,+kmod-regmap-core)
 endef
 
@@ -507,9 +506,8 @@ define KernelPackage/sound-hda-intel
 	CONFIG_SOUND_PCI \
 	CONFIG_SND_HDA_INTEL
   FILES:= \
-	$(LINUX_DIR)/sound/pci/hda/snd-hda-intel.ko \
-	$(LINUX_DIR)/sound/pci/hda/snd-hda-controller.ko@lt4.4
-  AUTOLOAD:=$(call AutoProbe,snd-hda-controller@lt4.4 snd-hda-intel)
+	$(LINUX_DIR)/sound/pci/hda/snd-hda-intel.ko
+  AUTOLOAD:=$(call AutoProbe,snd-hda-intel)
   $(call AddDepends/sound,kmod-sound-hda-core)
 endef
 
diff --git a/package/kernel/linux/modules/usb.mk b/package/kernel/linux/modules/usb.mk
index a95528a176..30be6221b7 100644
--- a/package/kernel/linux/modules/usb.mk
+++ b/package/kernel/linux/modules/usb.mk
@@ -75,8 +75,7 @@ define KernelPackage/usb-phy-qcom-dwc3
   DEPENDS:=@(TARGET_ipq40xx||TARGET_ipq806x)
   KCONFIG:= CONFIG_PHY_QCOM_DWC3
   FILES:= \
-    $(LINUX_DIR)/drivers/phy/phy-qcom-dwc3.ko@lt4.13 \
-    $(LINUX_DIR)/drivers/phy/qualcomm/phy-qcom-dwc3.ko@ge4.13
+    $(LINUX_DIR)/drivers/phy/qualcomm/phy-qcom-dwc3.ko
   AUTOLOAD:=$(call AutoLoad,45,phy-qcom-dwc3,1)
   $(call AddDepends/usb)
 endef
@@ -442,9 +441,8 @@ define KernelPackage/usb-dwc2
 	CONFIG_USB_DWC2_TRACK_MISSED_SOFS=n \
 	CONFIG_USB_DWC2_DEBUG_PERIODIC=n
   FILES:= \
-	$(LINUX_DIR)/drivers/usb/dwc2/dwc2.ko \
-	$(LINUX_DIR)/drivers/usb/dwc2/dwc2_platform.ko@lt4.3
-  AUTOLOAD:=$(call AutoLoad,54,dwc2 dwc2_platform@lt4.3,1)
+	$(LINUX_DIR)/drivers/usb/dwc2/dwc2.ko
+  AUTOLOAD:=$(call AutoLoad,54,dwc2,1)
   $(call AddDepends/usb)
 endef
 
@@ -1604,8 +1602,7 @@ define KernelPackage/usb-chipidea
 	CONFIG_USB_CHIPIDEA_UDC=y \
 	CONFIG_USB_CHIPIDEA_DEBUG=y
   FILES:= \
-	$(LINUX_DIR)/drivers/extcon/extcon.ko@lt4.9 \
-	$(LINUX_DIR)/drivers/extcon/extcon-core.ko@ge4.9 \
+	$(LINUX_DIR)/drivers/extcon/extcon-core.ko \
 	$(LINUX_DIR)/drivers/usb/chipidea/ci_hdrc.ko \
 	$(LINUX_DIR)/drivers/usb/common/ulpi.ko@ge4.18
   AUTOLOAD:=$(call AutoLoad,39,ci_hdrc,1)
@@ -1629,8 +1626,7 @@ define KernelPackage/usb-chipidea2
 	CONFIG_USB_CHIPIDEA_UDC=y \
 	CONFIG_USB_CHIPIDEA_DEBUG=y
   FILES:= \
-	$(LINUX_DIR)/drivers/extcon/extcon.ko@lt4.9 \
-	$(LINUX_DIR)/drivers/extcon/extcon-core.ko@ge4.9 \
+	$(LINUX_DIR)/drivers/extcon/extcon-core.ko \
 	$(LINUX_DIR)/drivers/usb/chipidea/ci_hdrc_usb2.ko
   AUTOLOAD:=$(call AutoLoad,39,ci_hdrc_usb2,1)
   $(call AddDepends/usb)
diff --git a/package/kernel/linux/modules/video.mk b/package/kernel/linux/modules/video.mk
index 232dbd1d34..f726d0ef03 100644
--- a/package/kernel/linux/modules/video.mk
+++ b/package/kernel/linux/modules/video.mk
@@ -187,7 +187,7 @@ define KernelPackage/fb-tft
   SUBMENU:=$(VIDEO_MENU)
   TITLE:=Support for small TFT LCD display modules
   DEPENDS:= \
-	  @GPIO_SUPPORT @!LINUX_4_9 +kmod-backlight \
+	  @GPIO_SUPPORT +kmod-backlight \
 	  +kmod-fb +kmod-fb-sys-fops +kmod-fb-sys-ram +kmod-spi-bitbang
   KCONFIG:= \
        CONFIG_FB_BACKLIGHT=y \
@@ -447,7 +447,7 @@ define KernelPackage/video-videobuf2
 	$(LINUX_DIR)/drivers/media/common/videobuf2/videobuf2-v4l2.ko@ge4.16 \
 	$(LINUX_DIR)/drivers/media/common/videobuf2/videobuf2-memops.ko@ge4.16 \
 	$(LINUX_DIR)/drivers/media/common/videobuf2/videobuf2-vmalloc.ko@ge4.16
-  AUTOLOAD:=$(call AutoLoad,65,videobuf2-core videobuf-v4l2@ge4.4 videobuf2-memops videobuf2-vmalloc)
+  AUTOLOAD:=$(call AutoLoad,65,videobuf2-core videobuf-v4l2 videobuf2-memops videobuf2-vmalloc)
   $(call AddDepends/video)
 endef
 
diff --git a/package/kernel/linux/modules/w1.mk b/package/kernel/linux/modules/w1.mk
index 5055d78a18..6ac7458e42 100644
--- a/package/kernel/linux/modules/w1.mk
+++ b/package/kernel/linux/modules/w1.mk
@@ -14,7 +14,7 @@ define KernelPackage/w1
   TITLE:=Dallas's 1-wire support
   KCONFIG:=CONFIG_W1
   FILES:=$(LINUX_DIR)/drivers/w1/wire.ko
-  DEPENDS:=+!LINUX_4_9:kmod-hwmon-core
+  DEPENDS:=+kmod-hwmon-core
 endef
 
 define KernelPackage/w1/description
diff --git a/package/kernel/linux/modules/wireless.mk b/package/kernel/linux/modules/wireless.mk
index 72e2bf477b..f7a40ba10a 100644
--- a/package/kernel/linux/modules/wireless.mk
+++ b/package/kernel/linux/modules/wireless.mk
@@ -13,8 +13,7 @@ define KernelPackage/net-prism54
   DEPENDS:=@PCI_SUPPORT +@DRIVER_WEXT_SUPPORT +prism54-firmware
   KCONFIG:=CONFIG_PRISM54
   FILES:= \
-	$(LINUX_DIR)/drivers/net/wireless/prism54/prism54.ko@lt4.5 \
-	$(LINUX_DIR)/drivers/net/wireless/intersil/prism54/prism54.ko@ge4.5
+	$(LINUX_DIR)/drivers/net/wireless/intersil/prism54/prism54.ko
   AUTOLOAD:=$(call AutoProbe,prism54)
 endef
 
diff --git a/package/kernel/linux/modules/wpan.mk b/package/kernel/linux/modules/wpan.mk
index 1e986ee0ca..b9e9fa5699 100644
--- a/package/kernel/linux/modules/wpan.mk
+++ b/package/kernel/linux/modules/wpan.mk
@@ -15,7 +15,7 @@ define KernelPackage/ieee802154
 	CONFIG_IEEE802154_NL802154_EXPERIMENTAL=n
   FILES:= \
 	$(LINUX_DIR)/net/ieee802154/ieee802154.ko \
-	$(LINUX_DIR)/net/ieee802154/ieee802154_socket.ko@ge4.0
+	$(LINUX_DIR)/net/ieee802154/ieee802154_socket.ko
   AUTOLOAD:=$(call AutoLoad,90,ieee802154 ieee802154_socket)
 endef
 
@@ -122,8 +122,7 @@ define KernelPackage/ieee802154_6lowpan
   DEPENDS:=+kmod-6lowpan +kmod-ieee802154
   KCONFIG:=CONFIG_IEEE802154_6LOWPAN
   FILES:= \
-	$(LINUX_DIR)/net/ieee802154/6lowpan/ieee802154_6lowpan.ko@ge4.0 \
-	$(LINUX_DIR)/net/ieee802154/ieee802154_6lowpan.ko@lt4.0
+	$(LINUX_DIR)/net/ieee802154/6lowpan/ieee802154_6lowpan.ko
   AUTOLOAD:=$(call AutoLoad,91,ieee802154_6lowpan)
 endef
 
diff --git a/package/kernel/rtl8812au-ct/Makefile b/package/kernel/rtl8812au-ct/Makefile
index c68ae499d4..2d7cfebd54 100644
--- a/package/kernel/rtl8812au-ct/Makefile
+++ b/package/kernel/rtl8812au-ct/Makefile
@@ -24,7 +24,7 @@ include $(INCLUDE_DIR)/package.mk
 define KernelPackage/rtl8812au-ct
   SUBMENU:=Wireless Drivers
   TITLE:=Driver for Realtek 8812 AU devices comfast 912-ac, etc
-  DEPENDS:=+kmod-cfg80211 +kmod-usb-core +@DRIVER_11N_SUPPORT +@DRIVER_11AC_SUPPORT @!LINUX_4_9
+  DEPENDS:=+kmod-cfg80211 +kmod-usb-core +@DRIVER_11N_SUPPORT +@DRIVER_11AC_SUPPORT
   FILES:=\
 	$(PKG_BUILD_DIR)/rtl8812au.ko
   AUTOLOAD:=$(call AutoProbe,rtl8812au)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
