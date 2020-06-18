Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5011FEBB8
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 08:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ML4npf+9Yaqnsfgw4Hs2OV3g0E8lbZLGhvhihVDxkrs=; b=kM1CHL4g1RYufh
	MsxXytZ3PJRdY0HA0f5KKLuON5p8NlqGcmI/uux9RKQhJGepwsjJbEMy4xYvqMW+bKDjYlj7rSrc3
	wburVz3w0ensP3Q8FkrsVx1tnKxt4yy5wOWCO/hZ9/vVhFLeyjSHAd620RicFLEBg16xuSZhbs7q7
	EiTsYz9EVHNw0u+dezQ+Ox05N1rIguAwtn30B1aUICl7I269p/R7Ktmouvm7VNF4NwidfDq+SRdeO
	mV6NIboQDsABMjmdhmeF8YLpTux3volElMU2ybFB9er9JO9bTwW4gBDtvun/fp7UDbjD2SGkDY8E8
	QgAj/7/oTsYQSAHddt/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloNk-00069S-Li; Thu, 18 Jun 2020 06:50:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloNd-000695-SG
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 06:50:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id x6so4762048wrm.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 23:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VGnrxkrziTTTOlzsXm5yVf/YvW0kQBuu/gUGskxzEq0=;
 b=hZldL+dJ+8dTo5p8JEIwH14Q3MgoXaj7hLPyK+f2wctcs2+5tGi4nmZKVAOltLRtLi
 AdFe/BU9THj3PUe80jGyhD12gwoB8Fzzg51prNsZ1WKSXy4OYl9mtN+j6CCHHYgQDx3h
 ZoVjwOEI+WQMwJ3wkNUmQTdfcIg5WCH/to+r4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VGnrxkrziTTTOlzsXm5yVf/YvW0kQBuu/gUGskxzEq0=;
 b=VO15xG/5/dlzl8caDL1d35ZlE2T3NtweL4dyoIyu2PlpVqaP+GcIj/aPd9vFWq7akp
 i0rtja8HKBCD5X8ziO104lYgGuKib9n2fRUly8d2tXVLzM7e/qNn88DbEKDqvZiOOzmK
 R5eN0ogxURMjZC2xrdtQvU5XgP9F1XKKvRcycWBMtRTL7crU1UIluHj1vDIfnQwd9mwE
 xsdSUKs9mjJ/eWLM/9HOxWY5T/APvfCI5usXWyvu0PRmUsMcyiOuPb3uWL/KW+mgIZ7v
 eBHYZnaOY0J6Sa7Ri6OsVChVsMj2GUCji3fOtb16ug59OQ8UM3w8mQ8ppSCbO6eM78Lu
 3lxQ==
X-Gm-Message-State: AOAM530EAPiwLJPGjDZ3n1ldMUoEFZjvHxS/CQTt7PWs2bnWIoo3SHQO
 TIGOGDWb3liGBshc5SqK3oRoS5M+lnOsXw==
X-Google-Smtp-Source: ABdhPJy7vt88ONaYNUIZoB1VlJphZERUPRBA3IZdCzVuwPXDhZQTpS8eixi/0F9bkpKoiPYobJq3HA==
X-Received: by 2002:adf:feca:: with SMTP id q10mr2761952wrs.380.1592463031047; 
 Wed, 17 Jun 2020 23:50:31 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1227:c00::dc83])
 by smtp.gmail.com with ESMTPSA id w1sm2237061wmi.13.2020.06.17.23.50.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jun 2020 23:50:30 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jun 2020 07:50:15 +0100
Message-Id: <20200618065015.73096-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_235033_946452_F1512AC4 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kernel: bump 5.4 to 5.4.47
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

Refreshed patches.

Run tested: x86/64 (apu2)

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 include/kernel-version.mk                                   | 4 ++--
 ...653-spi-Force-CS_HIGH-if-GPIO-descriptors-are-used.patch | 4 ++--
 ...QUASH-spi-Demote-SPI_CS_HIGH-warning-to-KERN_DEBUG.patch | 2 +-
 .../825-v5.8-spi-rb4xx-null-pointer-bug-fix.patch           | 6 ++----
 ....8-spi-rb4xx-update-driver-to-be-device-tree-aware.patch | 6 ++----
 target/linux/generic/hack-5.4/221-module_exports.patch      | 2 +-
 target/linux/generic/hack-5.4/902-debloat_proc.patch        | 4 ++--
 .../generic/pending-5.4/203-kallsyms_uncompressed.patch     | 2 +-
 ...-allow-rejecting-with-source-address-failed-policy.patch | 2 +-
 ...c-sdhci-sdhci-msm-use-sdhci_set_clock-instead-of-s.patch | 2 +-
 .../linux/x86/patches-5.4/200-pcengines-apu2-reboot.patch   | 2 +-
 11 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/include/kernel-version.mk b/include/kernel-version.mk
index fa62ccbe2a..f69b8977c5 100644
--- a/include/kernel-version.mk
+++ b/include/kernel-version.mk
@@ -8,11 +8,11 @@ endif
 
 LINUX_VERSION-4.14 = .180
 LINUX_VERSION-4.19 = .123
-LINUX_VERSION-5.4 = .46
+LINUX_VERSION-5.4 = .47
 
 LINUX_KERNEL_HASH-4.14.180 = 444ef973d9b6a6ea174e4a9086f0aea980d8575d13302e431ad688f22e27ed0e
 LINUX_KERNEL_HASH-4.19.123 = a79914d31a8d8c6b0e2bb0f2b143d615fe8a6c4dd2e0f36e97aa20efd69a993f
-LINUX_KERNEL_HASH-5.4.46 = 30074ff2f1a2498da391fad73fc0efaa2256416a08fff8835069b1c59ab31b8e
+LINUX_KERNEL_HASH-5.4.47 = 970b9d393d9a8d45eafdec9c6ab0d9880c20c703eeb9b0ac409892c8bc418d6c
 
 remove_uri_prefix=$(subst git://,,$(subst http://,,$(subst https://,,$(1))))
 sanitize_uri=$(call qstrip,$(subst @,_,$(subst :,_,$(subst .,_,$(subst -,_,$(subst /,_,$(1)))))))
diff --git a/target/linux/bcm27xx/patches-5.4/950-0653-spi-Force-CS_HIGH-if-GPIO-descriptors-are-used.patch b/target/linux/bcm27xx/patches-5.4/950-0653-spi-Force-CS_HIGH-if-GPIO-descriptors-are-used.patch
index 43d10486de..9c090a0597 100644
--- a/target/linux/bcm27xx/patches-5.4/950-0653-spi-Force-CS_HIGH-if-GPIO-descriptors-are-used.patch
+++ b/target/linux/bcm27xx/patches-5.4/950-0653-spi-Force-CS_HIGH-if-GPIO-descriptors-are-used.patch
@@ -23,7 +23,7 @@ Signed-off-by: Phil Elwell <phil@raspberrypi.com>
 
 --- a/drivers/spi/spi.c
 +++ b/drivers/spi/spi.c
-@@ -3032,6 +3032,7 @@ static int __spi_validate_bits_per_word(
+@@ -3033,6 +3033,7 @@ static int __spi_validate_bits_per_word(
   */
  int spi_setup(struct spi_device *spi)
  {
@@ -31,7 +31,7 @@ Signed-off-by: Phil Elwell <phil@raspberrypi.com>
  	unsigned	bad_bits, ugly_bits;
  	int		status;
  
-@@ -3049,6 +3050,14 @@ int spi_setup(struct spi_device *spi)
+@@ -3050,6 +3051,14 @@ int spi_setup(struct spi_device *spi)
  		(SPI_TX_DUAL | SPI_TX_QUAD | SPI_TX_OCTAL |
  		 SPI_RX_DUAL | SPI_RX_QUAD | SPI_RX_OCTAL)))
  		return -EINVAL;
diff --git a/target/linux/bcm27xx/patches-5.4/950-0697-SQUASH-spi-Demote-SPI_CS_HIGH-warning-to-KERN_DEBUG.patch b/target/linux/bcm27xx/patches-5.4/950-0697-SQUASH-spi-Demote-SPI_CS_HIGH-warning-to-KERN_DEBUG.patch
index 2be5524a07..617873ce42 100644
--- a/target/linux/bcm27xx/patches-5.4/950-0697-SQUASH-spi-Demote-SPI_CS_HIGH-warning-to-KERN_DEBUG.patch
+++ b/target/linux/bcm27xx/patches-5.4/950-0697-SQUASH-spi-Demote-SPI_CS_HIGH-warning-to-KERN_DEBUG.patch
@@ -15,7 +15,7 @@ Signed-off-by: Phil Elwell <phil@raspberrypi.com>
 
 --- a/drivers/spi/spi.c
 +++ b/drivers/spi/spi.c
-@@ -3044,8 +3044,8 @@ int spi_setup(struct spi_device *spi)
+@@ -3045,8 +3045,8 @@ int spi_setup(struct spi_device *spi)
  
  	if (ctlr->use_gpio_descriptors && ctlr->cs_gpiods &&
  	    ctlr->cs_gpiods[spi->chip_select] && !(spi->mode & SPI_CS_HIGH)) {
diff --git a/target/linux/generic/backport-5.4/825-v5.8-spi-rb4xx-null-pointer-bug-fix.patch b/target/linux/generic/backport-5.4/825-v5.8-spi-rb4xx-null-pointer-bug-fix.patch
index 5d762c571c..71e26d50da 100644
--- a/target/linux/generic/backport-5.4/825-v5.8-spi-rb4xx-null-pointer-bug-fix.patch
+++ b/target/linux/generic/backport-5.4/825-v5.8-spi-rb4xx-null-pointer-bug-fix.patch
@@ -20,11 +20,9 @@ Signed-off-by: Christopher Hill <ch6574@gmail.com>
  drivers/spi/spi-rb4xx.c | 10 +++++-----
  1 file changed, 5 insertions(+), 5 deletions(-)
 
-diff --git a/drivers/spi/spi-rb4xx.c b/drivers/spi/spi-rb4xx.c
-index 4c9620e0d18c..17e1a77dc132 100644
 --- a/drivers/spi/spi-rb4xx.c
 +++ b/drivers/spi/spi-rb4xx.c
-@@ -158,6 +158,11 @@ static int rb4xx_spi_probe(struct platform_device *pdev)
+@@ -158,6 +158,11 @@ static int rb4xx_spi_probe(struct platfo
  	master->transfer_one = rb4xx_transfer_one;
  	master->set_cs = rb4xx_set_cs;
  
@@ -36,7 +34,7 @@ index 4c9620e0d18c..17e1a77dc132 100644
  	err = devm_spi_register_master(&pdev->dev, master);
  	if (err) {
  		dev_err(&pdev->dev, "failed to register SPI master\n");
-@@ -168,11 +173,6 @@ static int rb4xx_spi_probe(struct platform_device *pdev)
+@@ -168,11 +173,6 @@ static int rb4xx_spi_probe(struct platfo
  	if (err)
  		return err;
  
diff --git a/target/linux/generic/backport-5.4/826-v5.8-spi-rb4xx-update-driver-to-be-device-tree-aware.patch b/target/linux/generic/backport-5.4/826-v5.8-spi-rb4xx-update-driver-to-be-device-tree-aware.patch
index 0340c934d8..0ce4f2bb35 100644
--- a/target/linux/generic/backport-5.4/826-v5.8-spi-rb4xx-update-driver-to-be-device-tree-aware.patch
+++ b/target/linux/generic/backport-5.4/826-v5.8-spi-rb4xx-update-driver-to-be-device-tree-aware.patch
@@ -21,8 +21,6 @@ Signed-off-by: Christopher Hill <ch6574@gmail.com>
  drivers/spi/spi-rb4xx.c | 9 +++++++++
  1 file changed, 9 insertions(+)
 
-diff --git a/drivers/spi/spi-rb4xx.c b/drivers/spi/spi-rb4xx.c
-index 17e1a77dc132..8aa51beb4ff3 100644
 --- a/drivers/spi/spi-rb4xx.c
 +++ b/drivers/spi/spi-rb4xx.c
 @@ -14,6 +14,7 @@
@@ -33,7 +31,7 @@ index 17e1a77dc132..8aa51beb4ff3 100644
  
  #include <asm/mach-ath79/ar71xx_regs.h>
  
-@@ -150,6 +151,7 @@ static int rb4xx_spi_probe(struct platform_device *pdev)
+@@ -150,6 +151,7 @@ static int rb4xx_spi_probe(struct platfo
  	if (IS_ERR(ahb_clk))
  		return PTR_ERR(ahb_clk);
  
@@ -41,7 +39,7 @@ index 17e1a77dc132..8aa51beb4ff3 100644
  	master->bus_num = 0;
  	master->num_chipselect = 3;
  	master->mode_bits = SPI_TX_DUAL;
-@@ -188,11 +190,18 @@ static int rb4xx_spi_remove(struct platform_device *pdev)
+@@ -188,11 +190,18 @@ static int rb4xx_spi_remove(struct platf
  	return 0;
  }
  
diff --git a/target/linux/generic/hack-5.4/221-module_exports.patch b/target/linux/generic/hack-5.4/221-module_exports.patch
index ecddc0fbc1..00802bb401 100644
--- a/target/linux/generic/hack-5.4/221-module_exports.patch
+++ b/target/linux/generic/hack-5.4/221-module_exports.patch
@@ -56,7 +56,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  	}								\
  									\
  	/* __*init sections */						\
-@@ -865,6 +875,8 @@
+@@ -881,6 +891,8 @@
  	EXIT_TEXT							\
  	EXIT_DATA							\
  	EXIT_CALL							\
diff --git a/target/linux/generic/hack-5.4/902-debloat_proc.patch b/target/linux/generic/hack-5.4/902-debloat_proc.patch
index d2acd40e19..2a1106e2a9 100644
--- a/target/linux/generic/hack-5.4/902-debloat_proc.patch
+++ b/target/linux/generic/hack-5.4/902-debloat_proc.patch
@@ -341,7 +341,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  
 --- a/net/ipv4/fib_trie.c
 +++ b/net/ipv4/fib_trie.c
-@@ -2844,11 +2844,13 @@ static const struct seq_operations fib_r
+@@ -2847,11 +2847,13 @@ static const struct seq_operations fib_r
  
  int __net_init fib_proc_init(struct net *net)
  {
@@ -357,7 +357,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  			fib_triestat_seq_show, NULL))
  		goto out2;
  
-@@ -2859,17 +2861,21 @@ int __net_init fib_proc_init(struct net
+@@ -2862,17 +2864,21 @@ int __net_init fib_proc_init(struct net
  	return 0;
  
  out3:
diff --git a/target/linux/generic/pending-5.4/203-kallsyms_uncompressed.patch b/target/linux/generic/pending-5.4/203-kallsyms_uncompressed.patch
index c977b377b7..c4c13b9695 100644
--- a/target/linux/generic/pending-5.4/203-kallsyms_uncompressed.patch
+++ b/target/linux/generic/pending-5.4/203-kallsyms_uncompressed.patch
@@ -106,7 +106,7 @@ Signed-off-by: Felix Fietkau <nbd@nbd.name>
  		}
 --- a/scripts/link-vmlinux.sh
 +++ b/scripts/link-vmlinux.sh
-@@ -164,6 +164,10 @@ kallsyms()
+@@ -160,6 +160,10 @@ kallsyms()
  		kallsymopt="${kallsymopt} --base-relative"
  	fi
  
diff --git a/target/linux/generic/pending-5.4/670-ipv6-allow-rejecting-with-source-address-failed-policy.patch b/target/linux/generic/pending-5.4/670-ipv6-allow-rejecting-with-source-address-failed-policy.patch
index 4029bb0433..766abc7489 100644
--- a/target/linux/generic/pending-5.4/670-ipv6-allow-rejecting-with-source-address-failed-policy.patch
+++ b/target/linux/generic/pending-5.4/670-ipv6-allow-rejecting-with-source-address-failed-policy.patch
@@ -66,7 +66,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  static void rt_fibinfo_free(struct rtable __rcu **rtp)
 --- a/net/ipv4/fib_trie.c
 +++ b/net/ipv4/fib_trie.c
-@@ -2592,6 +2592,7 @@ static const char *const rtn_type_names[
+@@ -2595,6 +2595,7 @@ static const char *const rtn_type_names[
  	[RTN_THROW] = "THROW",
  	[RTN_NAT] = "NAT",
  	[RTN_XRESOLVE] = "XRESOLVE",
diff --git a/target/linux/ipq40xx/patches-5.4/400-mmc-sdhci-sdhci-msm-use-sdhci_set_clock-instead-of-s.patch b/target/linux/ipq40xx/patches-5.4/400-mmc-sdhci-sdhci-msm-use-sdhci_set_clock-instead-of-s.patch
index 72ec2e9b0d..cf5c44e687 100644
--- a/target/linux/ipq40xx/patches-5.4/400-mmc-sdhci-sdhci-msm-use-sdhci_set_clock-instead-of-s.patch
+++ b/target/linux/ipq40xx/patches-5.4/400-mmc-sdhci-sdhci-msm-use-sdhci_set_clock-instead-of-s.patch
@@ -14,7 +14,7 @@ Signed-off-by: Robert Marko <robimarko@gmail.com>
 
 --- a/drivers/mmc/host/sdhci-msm.c
 +++ b/drivers/mmc/host/sdhci-msm.c
-@@ -1724,7 +1724,7 @@ MODULE_DEVICE_TABLE(of, sdhci_msm_dt_mat
+@@ -1730,7 +1730,7 @@ MODULE_DEVICE_TABLE(of, sdhci_msm_dt_mat
  
  static const struct sdhci_ops sdhci_msm_ops = {
  	.reset = sdhci_reset,
diff --git a/target/linux/x86/patches-5.4/200-pcengines-apu2-reboot.patch b/target/linux/x86/patches-5.4/200-pcengines-apu2-reboot.patch
index 1426140183..bc57806c74 100644
--- a/target/linux/x86/patches-5.4/200-pcengines-apu2-reboot.patch
+++ b/target/linux/x86/patches-5.4/200-pcengines-apu2-reboot.patch
@@ -1,6 +1,6 @@
 --- a/arch/x86/kernel/reboot.c
 +++ b/arch/x86/kernel/reboot.c
-@@ -469,6 +469,16 @@ static const struct dmi_system_id reboot
+@@ -477,6 +477,16 @@ static const struct dmi_system_id reboot
  		},
  	},
  
-- 
2.24.3 (Apple Git-128)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
