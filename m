Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07DC19FECC
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 22:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh86zRntJ8fd9JnNUKKfnbQr5kKvb+GMoB+u9/zEP+k=; b=JChdMdakAQtl9e
	LBxBaTjKnkqma+Vh8ogHcnsLhZKGH6HG22aJCvjjO7p5sbtrpWoy9t3m8P2Y27P3fEXhW1ORHqRLa
	tIQgnPhaktkVG0Wlve3d7nKbzoYsGDhMifmzW7Du8UpyMYMwOn0mW9IHkMmYxiKdOHDn01OKRBXSJ
	AhkuurM36vs3Hs6aA85z57vGrrvPo2dqND58LsRoeKc1Mzz48+Rt7xyHSpghLMsiG81RSx3+quECy
	SLQim9OtyuRxM0pJw4yIcCIKHTIKh3ofl3Cykm3/1k8Yifdx1PQ1AQ0kN9TYMPCVIjHwhd1cdGUXd
	ZThOMteveIj9QTGnAhow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLY5P-00041b-CQ; Mon, 06 Apr 2020 20:11:11 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLY52-0003pb-EF
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 20:10:49 +0000
Received: by mail-qt1-x842.google.com with SMTP id 14so914459qtp.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 13:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a7f39RGLa0uUK1DR86U7nllTGZGV7WCuJYiDcr+LZto=;
 b=pvetFLcxXjHtDSJxDqcoFxIG+XjnjNa4abJd/PzILf1o1sLSCHoUeF3b5rucZU16F0
 NO/jf11YooLUrmJOsSY8Aadz+Wxb/zk92ImhjGEF/IMVkxrRWzFnYns+kVjHKLULaxNo
 VSDtn0PSk8dgtiGYm/BFNG5JgFIbgHNEODSGASQTm4gmcqGoruOHHIdyJOTJXODqn3Oi
 bxb3VTpUb0jGPH28yTdpqDoRdxONGi7GO1vXWCV9bKJAkGsITSCdJX6yk5g/LGO9aMZJ
 J2Ds8Yw1tN8k8AVEnbux03fkwbXTowl4JA/kt/bLDgW5j8sqr5WhQRiEZlK0AfTK8Hci
 VNeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a7f39RGLa0uUK1DR86U7nllTGZGV7WCuJYiDcr+LZto=;
 b=D8ZItUIFPyeMXoAcaWs+DdiSfDizCeIq382aIt/AsEqukwHdA+RmNDqy1jgT+6nM3L
 FPmQHyvoo0xcjfi9M/Oiu50xx9aSg3t6pquyyF6P8+o//YgR0fy5pWbK6Mu2MQHSd79+
 7opdSL2Dkax6O4EpF+yquhrXPl2gEbmQthcvbvbeB5BbYeN4FePZa5qFCfuSf/PMV41b
 YjnriVSD0+N1m2EPBtzgBVQKah7Rf9gH0VoVw+FGYjyuJfHh3qVr3QkQCZSD8Y0IG5Dp
 GHnjmXHKzWaj/djhN8kTfUOgM+tchnfezxCHUZLwg8E4t5A5wTbXF6lUc/f/xy23M2KD
 +ZAQ==
X-Gm-Message-State: AGi0PuYWAqEUJVSI7A+278Q5sezPBLpDgrY88OZ44MH/0jYygonsGPc4
 rb3OkcyotKobffaVhbO4mRM2+NjavXU=
X-Google-Smtp-Source: APiQypIo/R03eiLZxkFbXZC1bxFoMkDsKFPitb0jHJLYFoGXWMaVSuBAdsSGOvFB5VyfydxnSmlTGg==
X-Received: by 2002:ac8:7c85:: with SMTP id y5mr1358874qtv.56.1586203846942;
 Mon, 06 Apr 2020 13:10:46 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id c6sm13446543qkg.88.2020.04.06.13.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 13:10:46 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 17:10:31 -0300
Message-Id: <20200406201036.19144-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200406201036.19144-1-cotequeiroz@gmail.com>
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_131048_472578_A7259EF3 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/6] kernel: add @IPV6 dependency to ipv6
 modules
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

IPv6 modules should all depend on @IPV6, to avoid circular dependencies
problems, especially if they select a module that depends on IPV6 as
well.  In theory, if a package A depends on IPV6, any package doing
'select A' (DEPENDS+= A) should also depend on IPV6; otherwise selecting
A will fail.  Sometimes the build system is forgiving this, but
eventually, and unexpectedly, it may blow up on some other commit.

Alternatively one can conditionally add IPv6 dependencies only if
CONFIG_IPV6 is selected: (DEPENDS+= +IPV6:package6).

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 package/kernel/linux/modules/netfilter.mk  | 13 ++++++++-----
 package/kernel/linux/modules/netsupport.mk |  6 +++---
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/package/kernel/linux/modules/netfilter.mk b/package/kernel/linux/modules/netfilter.mk
index 4f31fa8b18..5a3d490173 100644
--- a/package/kernel/linux/modules/netfilter.mk
+++ b/package/kernel/linux/modules/netfilter.mk
@@ -137,7 +137,7 @@ define KernelPackage/nf-nat6
   SUBMENU:=$(NF_MENU)
   TITLE:=Netfilter IPV6-NAT
   KCONFIG:=$(KCONFIG_NF_NAT6)
-  DEPENDS:=+kmod-nf-conntrack6 +kmod-nf-nat
+  DEPENDS:=@IPV6 +kmod-nf-conntrack6 +kmod-nf-nat
   FILES:=$(foreach mod,$(NF_NAT6-m),$(LINUX_DIR)/net/$(mod).ko)
   AUTOLOAD:=$(call AutoProbe,$(notdir $(NF_NAT6-m)))
 endef
@@ -471,6 +471,7 @@ $(eval $(call KernelPackage,ipt-raw))
 
 define KernelPackage/ipt-raw6
   TITLE:=Netfilter IPv6 raw table support
+  DEPENDS:=@IPV6
   KCONFIG:=CONFIG_IP6_NF_RAW
   FILES:=$(LINUX_DIR)/net/ipv6/netfilter/ip6table_raw.ko
   AUTOLOAD:=$(call AutoProbe,ip6table_raw)
@@ -482,6 +483,7 @@ $(eval $(call KernelPackage,ipt-raw6))
 
 define KernelPackage/ipt-nat6
   TITLE:=IPv6 NAT targets
+  DEPENDS:=@IPV6
   KCONFIG:=$(KCONFIG_IPT_NAT6)
   FILES:=$(foreach mod,$(IPT_NAT6-m),$(LINUX_DIR)/net/$(mod).ko)
   AUTOLOAD:=$(call AutoLoad,43,$(notdir $(IPT_NAT6-m)))
@@ -806,7 +808,7 @@ $(eval $(call KernelPackage,ipt-physdev))
 define KernelPackage/ip6tables
   SUBMENU:=$(NF_MENU)
   TITLE:=IPv6 modules
-  DEPENDS:=+kmod-nf-reject6 +kmod-nf-ipt6 +kmod-ipt-core
+  DEPENDS:=@IPV6 +kmod-nf-reject6 +kmod-nf-ipt6 +kmod-ipt-core
   KCONFIG:=$(KCONFIG_IPT_IPV6)
   FILES:=$(foreach mod,$(IPT_IPV6-m),$(LINUX_DIR)/net/$(mod).ko)
   AUTOLOAD:=$(call AutoLoad,42,$(notdir $(IPT_IPV6-m)))
@@ -821,7 +823,7 @@ $(eval $(call KernelPackage,ip6tables))
 define KernelPackage/ip6tables-extra
   SUBMENU:=$(NF_MENU)
   TITLE:=Extra IPv6 modules
-  DEPENDS:=+kmod-ip6tables
+  DEPENDS:=@IPV6 +kmod-ip6tables
   KCONFIG:=$(KCONFIG_IPT_IPV6_EXTRA)
   FILES:=$(foreach mod,$(IPT_IPV6_EXTRA-m),$(LINUX_DIR)/net/$(mod).ko)
   AUTOLOAD:=$(call AutoLoad,43,$(notdir $(IPT_IPV6_EXTRA-m)))
@@ -911,6 +913,7 @@ $(eval $(call KernelPackage,ebtables-ipv4))
 
 define KernelPackage/ebtables-ipv6
   TITLE:=ebtables: IPv6 support
+  DEPENDS:=@IPV6
   FILES:=$(foreach mod,$(EBTABLES_IP6-m),$(LINUX_DIR)/net/$(mod).ko)
   KCONFIG:=$(KCONFIG_EBTABLES_IP6)
   AUTOLOAD:=$(call AutoProbe,$(notdir $(EBTABLES_IP6-m)))
@@ -1049,7 +1052,7 @@ $(eval $(call KernelPackage,ipt-rpfilter))
 define KernelPackage/nft-core
   SUBMENU:=$(NF_MENU)
   TITLE:=Netfilter nf_tables support
-  DEPENDS:=+kmod-nfnetlink +kmod-nf-reject +kmod-nf-reject6 +kmod-nf-conntrack6 +LINUX_5_4:kmod-nf-nat
+  DEPENDS:=+kmod-nfnetlink +kmod-nf-reject +IPV6:kmod-nf-reject6 +IPV6:kmod-nf-conntrack6 +LINUX_5_4:kmod-nf-nat
   FILES:=$(foreach mod,$(NFT_CORE-m),$(LINUX_DIR)/net/$(mod).ko)
   AUTOLOAD:=$(call AutoProbe,$(notdir $(NFT_CORE-m)))
   KCONFIG:= \
@@ -1106,7 +1109,7 @@ $(eval $(call KernelPackage,nft-nat))
 define KernelPackage/nft-offload
   SUBMENU:=$(NF_MENU)
   TITLE:=Netfilter nf_tables routing/NAT offload support
-  DEPENDS:=+kmod-nf-flow +kmod-nft-nat
+  DEPENDS:=@IPV6 +kmod-nf-flow +kmod-nft-nat
   KCONFIG:= \
 	CONFIG_NF_FLOW_TABLE_INET \
 	CONFIG_NF_FLOW_TABLE_IPV4 \
diff --git a/package/kernel/linux/modules/netsupport.mk b/package/kernel/linux/modules/netsupport.mk
index ca25138571..487d29b073 100644
--- a/package/kernel/linux/modules/netsupport.mk
+++ b/package/kernel/linux/modules/netsupport.mk
@@ -318,7 +318,7 @@ IPSEC6-m += $(ifeq ($$(strip $$(call CompareKernelPatchVer,$$(KERNEL_PATCHVER),l
 define KernelPackage/ipsec6
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=IPsec related modules (IPv6)
-  DEPENDS:=kmod-ipsec +kmod-iptunnel6
+  DEPENDS:=@IPV6 kmod-ipsec +kmod-iptunnel6
   KCONFIG:= \
 	CONFIG_INET6_AH \
 	CONFIG_INET6_ESP \
@@ -383,7 +383,7 @@ $(eval $(call KernelPackage,ip-vti))
 define KernelPackage/ip6-vti
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=IPv6 VTI (Virtual Tunnel Interface)
-  DEPENDS:=+kmod-iptunnel +kmod-ip6-tunnel +kmod-ipsec6
+  DEPENDS:=@IPV6 +kmod-iptunnel +kmod-ip6-tunnel +kmod-ipsec6
   KCONFIG:=CONFIG_IPV6_VTI
   FILES:=$(LINUX_DIR)/net/ipv6/ip6_vti.ko
   AUTOLOAD:=$(call AutoLoad,33,ip6_vti)
@@ -399,7 +399,7 @@ $(eval $(call KernelPackage,ip6-vti))
 define KernelPackage/xfrm-interface
   SUBMENU:=$(NETWORK_SUPPORT_MENU)
   TITLE:=IPsec XFRM Interface
-  DEPENDS:=+kmod-ipsec4 +kmod-ipsec6 @!LINUX_4_14
+  DEPENDS:=+kmod-ipsec4 +@IPV6:kmod-ipsec6 @!LINUX_4_14
   KCONFIG:=CONFIG_XFRM_INTERFACE
   FILES:=$(LINUX_DIR)/net/xfrm/xfrm_interface.ko
   AUTOLOAD:=$(call AutoProbe,xfrm_interface)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
