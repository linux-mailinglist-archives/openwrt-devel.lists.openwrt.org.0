Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04CDF5C5
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 21:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ghKsU43P2arGRb7RsuD32dIAlEkdksntaKC2CBG1EC8=; b=BGGYQakOWil85K0Du3CStHqYI5
	4OKCqPIeDwWqjE5BDRHx1U8EE2DZ4DeDkqfVZv6ZYwISKgwu+RKi8oVatHtq8FFF5Qtg3478pROm3
	DFKu9kEREmIMAUYzfNp87UUTLCySzPYK1/8vEqySAL2y/qRpVONU2XBlo8P657otxd8gfZHmoUxFt
	J3vn9oct2bnC1k6EeFKQOIX46PtWaANYcrFnwroyAskvqzghiF2cvXlRWsfg9mzg1FIg00gOYFS0E
	PHaEkZo+L1uXrHaQfnqWRJgEGOWkXDPMVLR/1dwdOSUy+7QGegAPkHZV3ScZ1KAHKLqTOzxyXZOfy
	bGoRLArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMd7T-0006Fc-HR; Mon, 21 Oct 2019 19:13:31 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iMd7M-0006Es-Df
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 19:13:26 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F06A500D386FEAACE2D188F.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f06:a500:d386:feaa:ce2d:188f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 316D1225E4
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 21:13:19 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 21:13:08 +0200
Message-Id: <20191021191308.16311-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191021191308.16311-1-mail@david-bauer.net>
References: <20191021191308.16311-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_121324_609930_CAA2EA3C 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] firmware: add Realtek
 RTL8822BE/RTL8822CE firmware
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

This commit adds packages for the Realtek RTl8822BE/RTL8822CE firmware
to be used with the rtw88 driver.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/firmware/linux-firmware/realtek.mk | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/package/firmware/linux-firmware/realtek.mk b/package/firmware/linux-firmware/realtek.mk
index 3c0476e039..87a11c0779 100644
--- a/package/firmware/linux-firmware/realtek.mk
+++ b/package/firmware/linux-firmware/realtek.mk
@@ -86,3 +86,18 @@ define Package/rtl8821ae-firmware/install
 	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8821aefw_wowlan.bin $(1)/lib/firmware/rtlwifi
 endef
 $(eval $(call BuildPackage,rtl8821ae-firmware))
+
+Package/rtl8822be-firmware = $(call Package/firmware-default,RealTek RTL8822BE firmware)
+define Package/rtl8822be-firmware/install
+	$(INSTALL_DIR) $(1)/lib/firmware/rtw88
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtw88/rtw8822b_fw.bin $(1)/lib/firmware/rtw88
+endef
+$(eval $(call BuildPackage,rtl8822be-firmware))
+
+Package/rtl8822ce-firmware = $(call Package/firmware-default,RealTek RTL8822CE firmware)
+define Package/rtl8822ce-firmware/install
+	$(INSTALL_DIR) $(1)/lib/firmware/rtw88
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtw88/rtw8822c_fw.bin $(1)/lib/firmware/rtw88
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtw88/rtw8822c_wow_fw.bin $(1)/lib/firmware/rtw88
+endef
+$(eval $(call BuildPackage,rtl8822ce-firmware))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
