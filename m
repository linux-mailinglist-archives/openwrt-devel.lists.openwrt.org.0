Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A21D1408
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 15:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z8I5pgEczAVE4JlOZfvDR+YrC4S6G7IVl8sHnSeTBtc=; b=YUpRDeLW8N4aftuEILrgn2cUcD
	7vQN2cZBouZSsfEHb/Zr1D9JVLG/VUlNUSUgSnND38feby4gDGdN9wEKDsqGqJ7o7g2V+LX66gnKO
	LyORDwUk/upGFf7t/Ta7p+0ByxBMFRR7zyMkfxxMPXwJx4jqmHNys0zhw6loOMwqI8Mc3XujpKvJm
	IeA0i33Ik2smPKjVpS2y/MBsIMcrh7Xlgh5OK9A62J+QcBQAcvv585CDShXB7/gKwKo9uJDLEs9T7
	nRTStqRIC7wwW6ChIgmhggsQ4dbjOpcG/ePbCBgASEaZk+U8C94SB/NQmmQwPzJxeqYUrnq7plYIZ
	SUkocH4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr80-0004K8-5D; Wed, 13 May 2020 13:08:52 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr7q-0004It-8Z
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 13:08:44 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MnItm-1irn990Axo-00jGIL for <openwrt-devel@lists.openwrt.org>; Wed, 13
 May 2020 15:08:39 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 15:07:21 +0200
Message-Id: <20200513130721.49794-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
References: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:XUACa9UaPwqQSEWhK7w/drWQySAq9Gd52aj/gBnBA6Nsp/SKXUD
 5QcaAeSwBY0czbiLKgBFzP6TL0O40Uv7OFQQsQdNhrw1mrZhIkXum31TgFc1motnaCZKmWn
 0dY4DhGSmtAOtEcPR+jwIIRaNG7hyk2BsZoX0AbQXnLq/6CszniXFKn+/nsiGv7B8ksd2w8
 NIiq5ZUPjqPXEN3VyDFwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IYNL479ntPk=:ATUS8E+xpM+T0UwTUp0q1g
 yK7c6esywpIVEfX7tCXdVAt265rWTZUCC39zNLIn8dwGaA7f2RloxafNPXijKkySN73WLU+F+
 GturyukZ+7TO84o+TwdqLZRmFT044ktiM13i9Hf7Mxoffe1nywe/TlYe214RuJiG4eYlJySP+
 3HZ6NrQ0wrxUdUUxsXm+UaewgVCCO4GETqaCaRxnVmAPhNSi/KtfLHnzO5CJVGHhWtrhQPI3W
 cyiymjw6z2cJxepERsrC5lQbdk+hXHxvgnyD0D7vP7ZmC6N5KEAI6Go139nH8KbHXa1ZLpJuj
 BnYcP+4ouG7UBg9QpKjKhXe2UxSNalPeR54r6mu7tTupZ9fYPiQNYqJ+yt+7/Jg4rLHxFIJOn
 ffOdtqU2reHUW9u5ugW9Lwbot9Sl8zBpV7Y9e7rFUuawVIpGnH7YMkt1Iz9Uvj4x4kjW9Z/v0
 4dWZzXIGIzAJg76vWkOO5Rt3htJQdY9s7aKhV7/UL0XNwHS66awRiSSSFxVmlTdY1ZMVUByLi
 taEDUL0nfpihnjZuBhsat5HqqdGK4n1atWg8R2FHtzscZvLBdXYkwxPSBLzZlEKAk6uEKQJFM
 lqMSPjwaeI/71WcZDEPfqyYYMKAcuzC5XogjiQrz5Ih8tVigMfKk5qsSNuqdwwtYcoa9IlSak
 JiNEwjp+ksysrlYFgySZ/nc5c6tXPT7Qp6Tf5YLj/OP4cIzKq4LSVpTGmwjh1lLFi0famBTIz
 kZXwqpQUxGENNxpSbCiRhEmmbhWtKexRR0Yd6spslvVylmmsIBvOgTSaYsLuP34aag+wzPyiK
 9F9tqTceeDruyutewScdZoMzOofDH/drN+KlX3cyfMA3orgknEUZ1OnLS6pRE4qGYVZU+fI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060842_595752_27178876 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 4/4] lantiq: drop outdated kernel version
 switches from patches-5.4
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

This drops some ancient kernel version switches from patches on
lantiq target. The patch only adjusts the latest kernel 5.4, as
doing it a second time for an older kernel seems a waste of time
for a cosmetic change.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../0001-MIPS-lantiq-add-pcie-driver.patch     | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/target/linux/lantiq/patches-5.4/0001-MIPS-lantiq-add-pcie-driver.patch b/target/linux/lantiq/patches-5.4/0001-MIPS-lantiq-add-pcie-driver.patch
index bcd928aea9..bd02f0a9f4 100644
--- a/target/linux/lantiq/patches-5.4/0001-MIPS-lantiq-add-pcie-driver.patch
+++ b/target/linux/lantiq/patches-5.4/0001-MIPS-lantiq-add-pcie-driver.patch
@@ -185,7 +185,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
  }
 --- /dev/null
 +++ b/arch/mips/pci/ifxmips_pci_common.h
-@@ -0,0 +1,57 @@
+@@ -0,0 +1,53 @@
 +/******************************************************************************
 +**
 +** FILE NAME    : ifxmips_pci_common.h
@@ -226,11 +226,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +  \ingroup IFX_PCI_COM
 +  \brief PCI/PCIe bus driver common OS header file
 +*/
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,24)
-+#define IFX_PCI_CONST
-+#else
 +#define IFX_PCI_CONST const
-+#endif
 +#ifdef CONFIG_IFX_PCI
 +extern int ifx_pci_bios_map_irq(IFX_PCI_CONST struct pci_dev *dev, u8 slot, u8 pin);
 +extern int ifx_pci_bios_plat_dev_init(struct pci_dev *dev);
@@ -1340,7 +1336,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +
 --- /dev/null
 +++ b/arch/mips/pci/ifxmips_pcie.h
-@@ -0,0 +1,135 @@
+@@ -0,0 +1,131 @@
 +/******************************************************************************
 +**
 +** FILE NAME    : ifxmips_pcie.h
@@ -1394,10 +1390,6 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +    spin_unlock_irqrestore(&(lock), flags);  \
 +} while (0)
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,18)
-+#define IRQF_SHARED SA_SHIRQ
-+#endif
-+
 +#define PCIE_MSG_MSI        0x00000001
 +#define PCIE_MSG_ISR        0x00000002
 +#define PCIE_MSG_FIXUP      0x00000004
@@ -4174,7 +4166,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +EXPORT_SYMBOL(pcibios_1st_host_bus_nr);
 --- /dev/null
 +++ b/arch/mips/pci/pcie-lantiq.h
-@@ -0,0 +1,1305 @@
+@@ -0,0 +1,1301 @@
 +/******************************************************************************
 +**
 +** FILE NAME    : ifxmips_pcie_reg.h
@@ -5185,10 +5177,6 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +    spin_unlock_irqrestore(&(lock), flags);  \
 +} while (0)
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,18)
-+#define IRQF_SHARED SA_SHIRQ
-+#endif
-+
 +#define PCIE_MSG_MSI        0x00000001
 +#define PCIE_MSG_ISR        0x00000002
 +#define PCIE_MSG_FIXUP      0x00000004
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
