Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F7E9AC8
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 12:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJ5VwvRBhD/cKoYSzisnBY8hdaj385sUJl+wrIYHdKs=; b=bzGj5QlHwMxPQG
	k3CTcoNQ7+YKEbmDeC/fD0tuvmD9hzSL45GNJq9ZCusWjj/RLjKXFWziYEkVUFOwbAeSx9mG+GrQ0
	UuDM69pqo3K/PbFMv6RzEbIdI0IMO1LuyrfZeOpX7rQ/7N7G8TAn/vs0gDvH9cMdg6txzW+ykVug0
	M5vtDSyWbI4U1Dei3gkpAY1zMWoGaj9PyM/vYU/lRMLaKT3fVBrP/8HBeYHVqq0G/1D7FwuCgcSLo
	WLSoDmA/RkF8knRg4c7S4fdgSkvyRzSjbAOJvJqrdt6KrVwolqnpyUM8oGfBc/+ZKCuoGMR645vgg
	oppFBlCth+xyZcWXaPsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPm9P-0000qc-QH; Wed, 30 Oct 2019 11:28:31 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPm8w-0000fX-Ea
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 11:28:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From;
 bh=Hc1bqNKOD+7HapCPZeN5YxdCOghT6MLfMX9TCjmPIiI=; 
 b=ishTndAyPFhE3AdRmXSHcQkk8qJJP3M1HkbQFYyM1OyfVEpvDu9MqVlD+wT/0UmN8hqVy3IvtwFwU+MYn7Nig04sL33aopc6O+2NuO/qp/m7JqtUIxvjWZG2dkVWgAPhZP+HvIDRxeSnnA1FYq2fBguDe4JuVgfUiGYe4t6e7z8=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 30 Oct 2019 12:27:25 +0100
Message-Id: <20191030112726.13106-3-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030112726.13106-1-daniel@dd-wrt.com>
References: <20191030112726.13106-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:819:5a9a:5145:d03a
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iPm8B-000189-CU
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:819:5a9a:5145:d03a]
 (helo=lappi.newmedia-net.de)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iPm8B-000189-CU; Wed, 30 Oct 2019 12:27:16 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_042803_193814_B7EB18FF 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] ipq40xx: mtd m25p80: fix hang on device
 shutdown
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 .../401-mtd-m25p80-fix-shutdown-hang.patch    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch

diff --git a/target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch b/target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch
new file mode 100644
index 0000000000..779f7ec4af
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/401-mtd-m25p80-fix-shutdown-hang.patch
@@ -0,0 +1,21 @@
+diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
+index 270d3c95..39f90436 100644
+--- a/drivers/mtd/devices/m25p80.c
++++ b/drivers/mtd/devices/m25p80.c
+@@ -256,9 +256,16 @@ static int m25p_remove(struct spi_mem *spimem)
+ static void m25p_shutdown(struct spi_mem *spimem)
+ {
+ 	struct m25p *flash = spi_mem_get_drvdata(spimem);
++	u8 command[1];
++
++	command[0] = 0x66;
++	spi_write(spimem->spi, command, 1);
++	command[0] = 0x99;
++	spi_write(spimem->spi, command, 1);
+
+ 	spi_nor_restore(&flash->spi_nor);
+ }
++
+ /*
+  * Do NOT add to this array without reading the following:
+  *
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
