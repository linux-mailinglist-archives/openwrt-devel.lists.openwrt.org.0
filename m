Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1611AEA0A
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 07:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o6aIHaD7pgyE0tChflBYTO7DmnafxIQI8ZEIOykOIAw=; b=NnmlBZe4xi1Kwu
	RHi4kMfiV4Thm0xlPgTM9gNyf6djFNauS9RmjJWfOmU5CojRrWlz4A9Hlv6fYVLPoR1B1++dY1zSY
	Ugw6OHTCSw4CLwIT5GgKEXKIiXa8pPOWW0oe6JNX0yQ5UELTsnkFr0w9cTYKxrxYZfVx+uTlyPcie
	qO0YFOpsPQ0Qcds5DwPMIXKdb23t7IObxHPrNzwSmmv1RWcOSGBQxv1Fn0bNdTtqD/gjWRjGI5lht
	fhPVPswecNdlYnG6PrEvBVxUJ4poPtTUJEK1BoELKrDZ+xyQfEeLtGSYGUBmZtkzp9d7rwHTEj1C3
	G0QDBnS4/s1o5iPn4kAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPgDo-0001ke-3K; Sat, 18 Apr 2020 05:40:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPgDg-0001jz-Qg
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 05:40:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id u9so2126352pfm.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 22:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aWcrjVPNXffalojxmPTooK2qg1BAZLnN4LiFCFtoyZo=;
 b=pozan6Mx9aA3y6rxunVOiIHMKOxGyJLy+ngHH753jDq4I9TtJoBeTmpf+aNuVenTds
 1BWRvoINhOW51dS0hFXslc5dfjIllu0BjxIHylyHV7bQ/5brK+aCih7yY1vlYR0SML0l
 Kp9k3EhPcI7Oysev+CdEUa+e0uCNEYC72QkW17TZEqsJ15UanATWhgcqw1p87ef686x2
 GTHpE5z2b8s1hxDl2zLS9RVpjk9lLLT+qJVUS51L5RsZD2cGS8J5vu7TT7O9uYRAQhCJ
 e7UBr13ZLLbGw+/w3Q7Y4RcdJEC52H1uImWDUqBosrVKOZ9Sb9nFxVbRUekOt3q9eYj7
 ZVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aWcrjVPNXffalojxmPTooK2qg1BAZLnN4LiFCFtoyZo=;
 b=qHuUdRX66/gwHmHAfXwUOwaYYPGLRhSTvNGqh89PMlACb6/aMPs7+TVmethgDyOdp+
 VIHZNUOjyupP5D8e09lz74iVqEHkMwsCW/3D10iEXLKZ46SFkcKMpzk0SYYGPHmJE7V/
 /aQF37O5TQC/iTjXemkYnWgVEIV4vv7GoL1teCHb01Pwes9enVkjpFzdTBUaY0Hv123T
 uG+cuTaezYU2CQ8sZ7fz7xJJJgW+4WCeA+N0vLXatPO0pvmUbNWu94hl946EBwZvD1dN
 RiuYBOw43OAH0ZQr19hzWVHocZ97XzoVShaKVJinlgjCJyuSCqxwXlAgGsJ2VWiBavSs
 dWmg==
X-Gm-Message-State: AGi0PuY5OGV4NMufnCumZLqfviHI0a2lE33/uzb1IW377+TsvLIht5fV
 cFi5SjFF3FSZD+dLujuyti2yOFyXR1U=
X-Google-Smtp-Source: APiQypJnWXkXwRQEE+dLBkbEYtxm5pbGqlq3BR42ky2iwlEVY6qvM9pn3LKYdDMSWWEf7T0OG+Ls9A==
X-Received: by 2002:a63:a351:: with SMTP id v17mr6242558pgn.351.1587188447061; 
 Fri, 17 Apr 2020 22:40:47 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id 36sm19845031pgs.70.2020.04.17.22.40.46
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 22:40:46 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Apr 2020 22:40:45 -0700
Message-Id: <20200418054045.635809-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_224048_889909_2B02DBB7 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mt7621: add two extra pcie patches
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

These fix behavior with several devices where pcie0 is not connected.

Funny enough, these commits actually revert behavior to the original
driver.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/ramips/dts/mt7621.dtsi           |   9 +-
 ...perly-power-off-dual-ported-pcie-phy.patch |  70 ++++++++
 ...t7621-pci-fix-pcie-interrupt-mapping.patch | 161 ++++++++++++++++++
 3 files changed, 235 insertions(+), 5 deletions(-)
 create mode 100644 target/linux/ramips/patches-5.4/0120-staging-mt7621-pci-properly-power-off-dual-ported-pcie-phy.patch
 create mode 100644 target/linux/ramips/patches-5.4/0121-staging-mt7621-pci-fix-pcie-interrupt-mapping.patch

diff --git a/target/linux/ramips/dts/mt7621.dtsi b/target/linux/ramips/dts/mt7621.dtsi
index 63befa1fdc..78979dc420 100644
--- a/target/linux/ramips/dts/mt7621.dtsi
+++ b/target/linux/ramips/dts/mt7621.dtsi
@@ -568,11 +568,10 @@
 			0x01000000 0 0x00000000 0x1e160000 0 0x00010000 /* io space */
 		>;
 
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0xF0000 0 0 1>;
-		interrupt-map = <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
-				<0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH
+				GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
+				GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
 
 		status = "disabled";
 
diff --git a/target/linux/ramips/patches-5.4/0120-staging-mt7621-pci-properly-power-off-dual-ported-pcie-phy.patch b/target/linux/ramips/patches-5.4/0120-staging-mt7621-pci-properly-power-off-dual-ported-pcie-phy.patch
new file mode 100644
index 0000000000..22a5181bec
--- /dev/null
+++ b/target/linux/ramips/patches-5.4/0120-staging-mt7621-pci-properly-power-off-dual-ported-pcie-phy.patch
@@ -0,0 +1,70 @@
+From 5fcded5e857cf66c9592e4be28c4dab4520c9177 Mon Sep 17 00:00:00 2001
+From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+Date: Thu, 9 Apr 2020 13:16:52 +0200
+Subject: [PATCH] staging: mt7621-pci: properly power off dual-ported pcie phy
+
+Pcie phy for pcie0 and pcie1 is shared using a dual ported
+one. Current code was assuming that if nothing is connected
+in pcie0 it won't be also nothing connected in pcie1. This
+assumtion is wrong for some devices such us 'Mikrotik rbm33g'
+and 'ZyXEL LTE3301-PLUS' where only connecting a card to the
+second bus on the phy is possible. For such devices kernel
+hangs in the same point because of the wrong poweroff of the
+phy getting the following trace:
+
+mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (dual port = 1)
+mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (dual port = 0)
+mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
+mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
+mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
+[hangs]
+
+The wrong assumption is located in the 'mt7621_pcie_init_ports'
+function where we are just making a power off of the phy for
+slots 0 and 2 if nothing is connected in them. Hence, only
+poweroff the phy if nothing is connected in both slot 0 and
+slot 1 avoiding the kernel to hang.
+
+Fixes: 5737cfe87a9c ("staging: mt7621-pci: avoid to poweroff the phy for slot one")
+Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+Link: https://lore.kernel.org/r/20200409111652.30964-1-sergio.paracuellos@gmail.com
+Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
+---
+ drivers/staging/mt7621-pci/pci-mt7621.c | 12 ++++++++++--
+ 1 file changed, 10 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
+index f58e3a51fc71..b9d460a9c041 100644
+--- a/drivers/staging/mt7621-pci/pci-mt7621.c
++++ b/drivers/staging/mt7621-pci/pci-mt7621.c
+@@ -502,17 +502,25 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
+ 
+ 	mt7621_pcie_reset_ep_deassert(pcie);
+ 
++	tmp = NULL;
+ 	list_for_each_entry(port, &pcie->ports, list) {
+ 		u32 slot = port->slot;
+ 
+ 		if (!mt7621_pcie_port_is_linkup(port)) {
+ 			dev_err(dev, "pcie%d no card, disable it (RST & CLK)\n",
+ 				slot);
+-			if (slot != 1)
+-				phy_power_off(port->phy);
+ 			mt7621_control_assert(port);
+ 			mt7621_pcie_port_clk_disable(port);
+ 			port->enabled = false;
++
++			if (slot == 0) {
++				tmp = port;
++				continue;
++			}
++
++			if (slot == 1 && tmp && !tmp->enabled)
++				phy_power_off(tmp->phy);
++
+ 		}
+ 	}
+ }
+-- 
+2.25.2
+
diff --git a/target/linux/ramips/patches-5.4/0121-staging-mt7621-pci-fix-pcie-interrupt-mapping.patch b/target/linux/ramips/patches-5.4/0121-staging-mt7621-pci-fix-pcie-interrupt-mapping.patch
new file mode 100644
index 0000000000..a6e628b2c8
--- /dev/null
+++ b/target/linux/ramips/patches-5.4/0121-staging-mt7621-pci-fix-pcie-interrupt-mapping.patch
@@ -0,0 +1,161 @@
+From fab6710e4c51f4eb622f95a08322ab5fdbe3f295 Mon Sep 17 00:00:00 2001
+From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+Date: Mon, 13 Apr 2020 07:59:42 +0200
+Subject: [PATCH] staging: mt7621-pci: fix PCIe interrupt mapping
+
+MT7621 has three assigned interrupts for the pcie. This
+interrupts should properly being mapped taking into account
+which devices are finally connected in which bus according
+to link status. So the irq mappings should be as follows
+according to link status (three bits indicating which devices
+are link up):
+
+* For PCIe Bus 1 slot 0:
+  - status = 0x2 || status = 0x6 => IRQ = pcie1_irq (24).
+  - status = 0x4 => IRQ = pcie2_irq (25).
+  - default => IRQ = pcie0_irq (23).
+* For PCIe Bus 2 slot 0:
+  - status = 0x5 || status = 0x6 => IRQ = pcie2_irq (25).
+  - default => IRQ = pcie1_irq (24).
+* For PCIe Bus 2 slot 1:
+  - status = 0x5 || status = 0x6 => IRQ = pcie2_irq (25).
+  - default => IRQ = pcie1_irq (24).
+* For PCIe Bus 3 any slot:
+  - default => IRQ = pcie2_irq (25).
+
+Because of this, the function 'of_irq_parse_and_map_pci' cannot
+be used and we need to change device tree information from using
+the 'interrupt-map' and 'interrupt-map-mask' properties into an
+'interrupts' property to be able to get irq information from the
+ports using the 'platform_get_irq' and storing an 'irq-map' into
+the pcie driver data node to properly map correct irq using a
+new 'mt7621_map_irq' function where this map will be read and the
+correct irq returned.
+
+Fixes: 46d093124df4 ("staging: mt7621-pci: improve interrupt mapping")
+Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+Link: https://lore.kernel.org/r/20200413055942.2714-1-sergio.paracuellos@gmail.com
+Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
+---
+ drivers/staging/mt7621-pci/pci-mt7621.c | 36 +++++++++++++++++++++++--
+ 1 file changed, 34 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
+index b9d460a9c041..36207243a71b 100644
+--- a/drivers/staging/mt7621-pci/pci-mt7621.c
++++ b/drivers/staging/mt7621-pci/pci-mt7621.c
+@@ -97,6 +97,7 @@
+  * @pcie_rst: pointer to port reset control
+  * @gpio_rst: gpio reset
+  * @slot: port slot
++ * @irq: GIC irq
+  * @enabled: indicates if port is enabled
+  */
+ struct mt7621_pcie_port {
+@@ -107,6 +108,7 @@ struct mt7621_pcie_port {
+ 	struct reset_control *pcie_rst;
+ 	struct gpio_desc *gpio_rst;
+ 	u32 slot;
++	int irq;
+ 	bool enabled;
+ };
+ 
+@@ -120,6 +122,7 @@ struct mt7621_pcie_port {
+  * @dev: Pointer to PCIe device
+  * @io_map_base: virtual memory base address for io
+  * @ports: pointer to PCIe port information
++ * @irq_map: irq mapping info according pcie link status
+  * @resets_inverted: depends on chip revision
+  * reset lines are inverted.
+  */
+@@ -135,6 +138,7 @@ struct mt7621_pcie {
+ 	} offset;
+ 	unsigned long io_map_base;
+ 	struct list_head ports;
++	int irq_map[PCIE_P2P_MAX];
+ 	bool resets_inverted;
+ };
+ 
+@@ -279,6 +283,16 @@ static void setup_cm_memory_region(struct mt7621_pcie *pcie)
+ 	}
+ }
+ 
++static int mt7621_map_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
++{
++	struct mt7621_pcie *pcie = pdev->bus->sysdata;
++	struct device *dev = pcie->dev;
++	int irq = pcie->irq_map[slot];
++
++	dev_info(dev, "bus=%d slot=%d irq=%d\n", pdev->bus->number, slot, irq);
++	return irq;
++}
++
+ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
+ {
+ 	struct device *dev = pcie->dev;
+@@ -330,6 +344,7 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
+ {
+ 	struct mt7621_pcie_port *port;
+ 	struct device *dev = pcie->dev;
++	struct platform_device *pdev = to_platform_device(dev);
+ 	struct device_node *pnode = dev->of_node;
+ 	struct resource regs;
+ 	char name[10];
+@@ -371,6 +386,12 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
+ 	port->slot = slot;
+ 	port->pcie = pcie;
+ 
++	port->irq = platform_get_irq(pdev, slot);
++	if (port->irq < 0) {
++		dev_err(dev, "Failed to get IRQ for PCIe%d\n", slot);
++		return -ENXIO;
++	}
++
+ 	INIT_LIST_HEAD(&port->list);
+ 	list_add_tail(&port->list, &pcie->ports);
+ 
+@@ -585,13 +606,15 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
+ {
+ 	u32 pcie_link_status = 0;
+ 	u32 n;
+-	int i;
++	int i = 0;
+ 	u32 p2p_br_devnum[PCIE_P2P_MAX];
++	int irqs[PCIE_P2P_MAX];
+ 	struct mt7621_pcie_port *port;
+ 
+ 	list_for_each_entry(port, &pcie->ports, list) {
+ 		u32 slot = port->slot;
+ 
++		irqs[i++] = port->irq;
+ 		if (port->enabled)
+ 			pcie_link_status |= BIT(slot);
+ 	}
+@@ -614,6 +637,15 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
+ 		 (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
+ 		 (p2p_br_devnum[2] << PCIE_P2P_BR_DEVNUM2_SHIFT));
+ 
++	/* Assign IRQs */
++	n = 0;
++	for (i = 0; i < PCIE_P2P_MAX; i++)
++		if (pcie_link_status & BIT(i))
++			pcie->irq_map[n++] = irqs[i];
++
++	for (i = n; i < PCIE_P2P_MAX; i++)
++		pcie->irq_map[i] = -1;
++
+ 	return 0;
+ }
+ 
+@@ -638,7 +670,7 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host,
+ 	host->busnr = pcie->busn.start;
+ 	host->dev.parent = pcie->dev;
+ 	host->ops = &mt7621_pci_ops;
+-	host->map_irq = of_irq_parse_and_map_pci;
++	host->map_irq = mt7621_map_irq;
+ 	host->swizzle_irq = pci_common_swizzle;
+ 	host->sysdata = pcie;
+ 
+-- 
+2.25.2
+
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
