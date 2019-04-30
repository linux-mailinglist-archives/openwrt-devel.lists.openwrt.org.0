Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DABFD54
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 17:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SmsCxs4Htjyohs9r3JNDvUI+cJV21UgmsO4vxFcgDRU=; b=Q9Bh+e8c53Oq+U
	52cdRYdWu8HiPfq7csa+7eJTNl0i4506ULz4hoa2GQRblKsx8ILIo3Rg7dXRgDXX1F0oiH/rkoDX8
	MDLCpnwgmC6WCJblhW8WEBlgofXczLwXnihfYSxfUgdwo+ms1uG2FrzRLeVmTjQrH5HZpsAjersho
	VSwvFq5ANp/UNR35wgCl7tUpY5L3Y5KDXJ74C4O2saOEMeZ3iwH1hXhunzRY5Mn64PmDhMxCvzGW3
	X5eQCZsuY4Zi9NmClyG7jE8L88IaLRtz9XnHhr5O0zi8h9g+A+PUC906cPNoupjwWcapZ+l74ntqw
	CfCboCbxjKl2FsrbRnWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLV9j-0000qO-Tf; Tue, 30 Apr 2019 15:58:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLV9e-0000q1-EC
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 15:58:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id a9so21651459wrp.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 30 Apr 2019 08:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6xhFrqFkhhEAw3E+pOuQ9OXbxCoQP2E7RtuswjjoHbs=;
 b=bnPteJZkLA5KzhKcJrvtAoGnNVRgU6+tmuVRqkXpVytLogSrboKxaRqbvU9deGt4lr
 g+7KfPA8GxFS+iCFK/gJeS2ubWorFqd2FHGCgeHphs0YNzA+uY3f4S0i/6O2RjnljsLo
 iUcJcw5/EWG6RPHmVw0NQTViHHDTSmUzifyZKt7XBdoW6zDztEDpMdcg6Xoi5dDe84bT
 MtHLa4DbnvRygy+h73rMV7slwC1Dt0g3Vi9R4bA6H10Zn0D0TYuXIhNi0MuGkKVuF2Ot
 xbzfI/ZmF4QLOt9+VdRITJYTcWBF4NIIO2yegLK8MGMEvyBGpiz2zpqD0vNmMO1yESv2
 YxXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6xhFrqFkhhEAw3E+pOuQ9OXbxCoQP2E7RtuswjjoHbs=;
 b=t6BYxLyb9lCUKTm/SbmuId//Bzh8/h6kE0uK/DENexHyZz5/CS27KUwZ1w1H7YKwTR
 /GLfKwhu5qyMTD9bH+kQlDaKQ5retl+Rz/Hya/nefdK1+B9Ff+SexZhmaVCerdDgdq9e
 rqGug9MfB6TaDtGyJjZ4TyT3MZ95hXPXguWpODK9EpI+Kl8CS0OCHpuyXn375q+VlT1l
 WJfKdo6hWFH8UiDBZ0rqWppRu6Comg7blMvgXuTx9H9FJmsX8XpoA1lrKi2lF0NIjBRh
 0XRiVJrNmIKMborLtRmEqKuxRsX5tRH8pVWhfk4pwfxStHp8M0c+TDY5SllNEBLW9kJR
 6Z3A==
X-Gm-Message-State: APjAAAWdH9iC8iU3r7LvYJKEIYMm243obdNrfSRi3vP+EWwldQ1P+Nq1
 aFXWFafm1mmVxP7+QGP3GEqRHVCe
X-Google-Smtp-Source: APXvYqwzLcB94aBErs1ckwzk1oUqnzsDRfoJpTCmPz9hOLO362Q1scHNKOMJ9p8Ld5tkfac4xIlzWA==
X-Received: by 2002:a5d:4989:: with SMTP id r9mr22282825wrq.173.1556639927706; 
 Tue, 30 Apr 2019 08:58:47 -0700 (PDT)
Received: from localhost.localdomain (93-143-251-80.adsl.net.t-com.hr.
 [93.143.251.80])
 by smtp.gmail.com with ESMTPSA id 62sm17261351wrl.55.2019.04.30.08.58.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 08:58:47 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 30 Apr 2019 17:58:42 +0200
Message-Id: <20190430155842.12765-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_085850_497984_7A542DF9 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] kernel: iio: Fix BMP280 Auto probing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently Auto probing for BMP/BME280 does not work because kernel
module name in the call is not correct.
Package name was used instead of kernel module name.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/kernel/linux/modules/iio.mk | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index 44a4806b34..639dc054f3 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -152,7 +152,7 @@ define KernelPackage/iio-bmp280-i2c
   DEPENDS:=+kmod-iio-bmp280 +kmod-i2c-core +kmod-regmap-i2c
   KCONFIG:=CONFIG_BMP280_I2C
   FILES:=$(LINUX_DIR)/drivers/iio/pressure/bmp280-i2c.ko
-  AUTOLOAD:=$(call AutoProbe,iio-bmp280-i2c)
+  AUTOLOAD:=$(call AutoProbe,bmp280-i2c)
 endef
 define KernelPackage/iio-bmp280-i2c/description
  This driver adds support for Bosch Sensortec's digital pressure and
@@ -168,7 +168,7 @@ define KernelPackage/iio-bmp280-spi
   DEPENDS:=+kmod-iio-bmp280 +kmod-spi-bitbang
   KCONFIG:=CONFIG_BMP280_SPI
   FILES:=$(LINUX_DIR)/drivers/iio/pressure/bmp280-spi.ko
-  AUTOLOAD:=$(call AutoProbe,iio-bmp280-spi)
+  AUTOLOAD:=$(call AutoProbe,bmp280-spi)
 endef
 define KernelPackage/iio-bmp280-spi/description
  This driver adds support for Bosch Sensortec's digital pressure and
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
