Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908241C6EBF
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 12:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mu3t3oQ0SDZJVwV5y0YfCFLU21/RBgq7dyzhG8ViJvI=; b=eykywzMtWjHYa+
	blMEQOeiqn2YEQGQYFIFgFDpy1krT9uVFD//KzFcn3pnB3vpG+Zt60+8nBziU0t3GEfgqIh4W63Je
	cU3blxSTCJu+/dmMiJurNRQkOMcp29Dh2+TWt3FfJ2an2yH7daYzSCxl5yvy4qiLMDPIyR402xA3t
	h5owMdW4c+7qQTm66UNSF4wZHJdJIpDcPVgw1AI5yooBqdF4dDtu3Nl3c34O7YVLksFN0UwWDeu7j
	RniG8PDKcPlhJB/cci9H8JmleVeZ7XVP16w2GG0RAieFPCgsCA5LOTPui0yOtwFQAs0YUOfYHKh+p
	csQHhdTrQQFemz0b/t/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHea-0002gV-JT; Wed, 06 May 2020 10:51:52 +0000
Received: from mail-m964.mail.126.com ([123.126.96.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHeR-0002ea-8t
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 10:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=awLk/hxlhiyWw5yqFO
 STBat3Mwgqp4PQIG1xbH4+VxY=; b=BmMYVnv96u6fQzOl+R9QdevqPgW6xqMzva
 dHtTUYLFs+3sob7P67RrDTTi49ETkbo3N3CUp1tGPmJ6C2LKyjPQ02nmqIRJc8BZ
 zn45oYFY6eMqg7nsFits6YNObmQ5YTnpQlG7oWBCYiifIUxeuJiHpWsAgFwtcxU+
 zHuHsVRtU=
Received: from localhost.localdomain (unknown [222.128.180.40])
 by smtp9 (Coremail) with SMTP id NeRpCgDHhnqylrJe+VCgMw--.1501S2;
 Wed, 06 May 2020 18:51:39 +0800 (CST)
From: zhangkaiheb@126.com
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 May 2020 10:51:17 +0000
Message-Id: <20200506105117.66929-1-zhangkaiheb@126.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: NeRpCgDHhnqylrJe+VCgMw--.1501S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tr4UKFykZF1rur1ruF17Jrb_yoW8WF4Dpw
 17JrZ8Jwn5JrZ7GayfGr1Dur1FqanYk398WasxJ34fCry2yw18t3ZFyF4UAasFvrWrG3Wf
 Gr1DCr42k3s7Z37anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRI1v-UUUUU=
X-Originating-IP: [222.128.180.40]
X-CM-SenderInfo: x2kd0wxndlxvbe6rjloofrz/1tbi8xsc-lpc4InGqwAAsI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_035143_743133_4ED52578 
X-CRM114-Status: UNSURE (   4.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.96.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhangkaiheb[at]126.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] add i40e netdevice configs
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
Cc: kai zhang <zhangkaiheb@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: kai zhang <zhangkaiheb@126.com>

Signed-off-by: kai zhang <zhangkaiheb@126.com>
---
 package/kernel/linux/modules/netdevices.mk | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/package/kernel/linux/modules/netdevices.mk b/package/kernel/linux/modules/netdevices.mk
index 6ea2f1df89..ce03ae998e 100644
--- a/package/kernel/linux/modules/netdevices.mk
+++ b/package/kernel/linux/modules/netdevices.mk
@@ -642,6 +642,38 @@ endef
 $(eval $(call KernelPackage,ixgbevf))
 
 
+define KernelPackage/i40e
+  SUBMENU:=$(NETWORK_DEVICES_MENU)
+  TITLE:=Intel(R) Ethernet Controller XL710 Family support
+  DEPENDS:=@PCI_SUPPORT +kmod-mdio +kmod-ptp
+  KCONFIG:=CONFIG_I40E
+  FILES:=$(LINUX_DIR)/drivers/net/ethernet/intel/i40e/i40e.ko
+  AUTOLOAD:=$(call AutoLoad,35,i40e)
+endef
+
+define KernelPackage/i40e/description
+ Kernel modules for Intel(R) Ethernet Controller XL710 Family support.
+endef
+
+$(eval $(call KernelPackage,i40e))
+
+
+define KernelPackage/i40evf
+  SUBMENU:=$(NETWORK_DEVICES_MENU)
+  TITLE:=Intel(R) Ethernet Adaptive Virtual Function support
+  DEPENDS:=@PCI_SUPPORT
+  KCONFIG:=CONFIG_I40EVF
+  FILES:=$(LINUX_DIR)/drivers/net/ethernet/intel/i40evf/i40evf.ko
+  AUTOLOAD:=$(call AutoLoad,35,i40evf)
+endef
+
+define KernelPackage/i40evf/description
+ Kernel modules for Intel(R) Ethernet Adaptive Virtual Function support.
+endef
+
+$(eval $(call KernelPackage,i40evf))
+
+
 define KernelPackage/b44
   TITLE:=Broadcom 44xx driver
   KCONFIG:=CONFIG_B44
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
