Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C4CE211A
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 18:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VhUni/v9xEaZ7ujMwG8jqNYWtF6oJnGoEtg2lnCT/o=; b=MgjJn98++oN0uU
	FybHSw+FFY2+ttQd6oeED9Z6oKZB/cNwDxXH1VIn71bk5sKooZEJ25T03kvTMZnHA6d9th0ARLBXS
	S7qg9lR8fSfT74Hns6V0FEDiOB1lL0vx5GVZCyUasC78ONGgs13GGWAPEecbGYGsYgxVCarL0dRFa
	kTeMZH1alhFxIpJP5jMGWbzaY99ELBy3CbBp+ujSVgw/dztsC0HRxZKmD2AjfGevm9THhG0C+5CiB
	SVMNoUzjgWMeJ5DS5KSiE9kv+1cmEYGWgQaqnIdd1jO9yb59J2Bc47OzzkKM47/H/f0WWf73aGRz6
	fih8ZZkukvKzFHSSGM5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJv0-0001Zm-Tk; Wed, 23 Oct 2019 16:55:30 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJut-0001ZC-U0
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 16:55:25 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 246B559485;
 Wed, 23 Oct 2019 09:55:17 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 09:55:02 -0700
Message-Id: <20191023165502.25906-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023165502.25906-1-lede@allycomm.com>
References: <20191023165502.25906-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095523_968259_9A987900 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: GL-AR750S: Add I2C Support
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

The GL-AR750S has an internal header for I2C.

Provide DTS definitions for the i2c-gpio driver.

The I2C drivers; kmod-i2c-core, kmod-i2c-gpio
consume ~20 kB of flash and can be loaded as modules,

Default clock measured ~11.2 ms period, ~89 kHz

The board has well-labeled (unpopulated) headers for serial and I2C
along the front edge of the board (the edge with the LEDs). Looking
from the top, rear of the unit (behind Ethernet jacks)

  -------------------------------------------
       5G_LED        2G_LED      PWR_LED

                 O O O O O O O

                 3 S S G T R G
                 V C D N X X N
                 3 L A D     D

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
index 24198e8043..4f65b2d2e2 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
@@ -63,6 +63,13 @@
 		};
 	};
 
+	i2c: i2c {
+		compatible = "i2c-gpio";
+
+		sda-gpios = <&gpio  5 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio 21 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+	};
+
 	usb_vbus: regulator-usb-vbus {
 		compatible = "regulator-fixed";
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
