Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A7C1199
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 19:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tD1bW8i1P7lSnXYubnqk7oWtY9ImpQcBQy1TgwoU3ak=; b=UgICmkGLxh9BqV
	y++5/C73WUaQpUgmmjiQUrzDHXxFTteC9Yz86XT2f0xlqAxRBWkmP0mCL3z5cXtU0HTfQS30VNvjY
	6wvMu1I2wDqFfGgjtygPi7OOpPlf73NlSFd9S+9N2dVdJ2eFvFBXhRDweip32vhCGVrlKw9Kg6uL/
	mDWCp4PsMArO/TZGOPRNyMvqcVODglMPef0T3MUQBnKq3N87qVMs1eD++k2yuevcvq3JT2J/gsIS8
	aIvpPmVBnCdLSkJ5jGR6a1UJXPpdFiS5nVeXFMJQ5Nw0nVq9eRTCuKZDvcMqXwCGXWZXAKIr6cI8t
	/EUbkekCDUFqXUeae16Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEGhr-0006Tb-FK; Sat, 28 Sep 2019 17:40:31 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEGha-0006Lu-Qd
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 17:40:16 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id A78B03DEE5;
 Sat, 28 Sep 2019 10:40:11 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Sep 2019 10:39:58 -0700
Message-Id: <20190928173958.20199-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190928173958.20199-1-lede@allycomm.com>
References: <20190928173958.20199-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_104014_902079_85BB3ADD 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: Restore GL.iNet
 GL-AR300M-Lite first-boot connectivity
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

The relationship between GMAC0 and GMAC1 and the kernel devices
eth0 and eth1 was reversed for many ath79 devices by commit 8dde11d521
ath79: dts: drop "simple-mfd" for gmacs in SoC dtsi

The GL-AR300M-Lite is a single-port device, with the "LAN" port of the
GL-AR300M board unpopulated and its sole port now referenced as eth1,
as a result of commit 8dde11d521. The device was unreachable on
first boot or fresh config.

By changing &eth1 (GMAC1) to an MFD, GMAC0 is able to associate with
the phy and is known by the kernel as "eth0".

Thanks to Chuanhong Guo for the suggestion of "simple-mfd"

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
index fba08e4295..e29af5411d 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
@@ -7,7 +7,11 @@
 	model = "GL.iNet GL-AR300M-Lite";
 };
 
-// GL-AR300M-Lite has different LED colors than the non-Lite version
+// "Disable" unpopulated GMAC1
+
+&eth1 {
+	compatible = "syscon", "simple-mfd";
+};
 
 &led_status {
 	label = "gl-ar300m-lite:red:status";
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
