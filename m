Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BEBDCEA
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Apr 2019 09:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mx1U3fNeBUV5bvt+EkgP2KzL9cXjyNUfhd7DkG1nXGQ=; b=GJ8K9Xr0/PRqFLO08QIMEf/1O
	fZVb4DRHXzOXWyFh46Sq3swK3O1VMHxGhp/eTVQV4UOMoS6UaaAdwcK99ggsIO2j+RwB3Muqy697g
	GwPPHsKenim/qSYMLOR4q+FbvdKzVBLVwaXk+lFzMJpyf6aGX64RTa62XEmZf9drsZdVhulqLI1qo
	dXJqiPCNkYue+Goq9DsxbF2TYwhaySDwOvNl20EtDQaWgcHPOhM2OSmhDLuw6U05qedjC8sI9dr2g
	6dogoqkYh2o5pz3beem18DW1N9WSMd50888fP12WV69CQOJFrMJ4OjBgO3C5uBRorHESiBehnETl+
	lKSs/uDqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0nT-0007Sg-6S; Mon, 29 Apr 2019 07:33:55 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0nM-0007Rf-2n
 for openwrt-devel@lists.openwrt.org; Mon, 29 Apr 2019 07:33:50 +0000
Received: from JKLETSKY-MBP15.local (184-23-189-67.vpn.dynamic.sonic.net
 [184.23.189.67])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 95BA526C70;
 Mon, 29 Apr 2019 00:33:45 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <eb859404-cd9f-d340-7426-e3d58fa5d4cd@wagsky.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <0dabc393-f4a4-5676-4318-0042f10889fe@allycomm.com>
Date: Mon, 29 Apr 2019 08:33:44 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <eb859404-cd9f-d340-7426-e3d58fa5d4cd@wagsky.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_003348_119881_A999C5BC 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Remove NAND targets as no
 available drivers
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
Content-Type: multipart/mixed; boundary="===============2266415539282555887=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============2266415539282555887==
Content-Type: multipart/alternative;
 boundary="------------89F6785AB714428779DFA857"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------89F6785AB714428779DFA857
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Updating this patch as likely still valuable for v19

WIP on master edited for Linux 4.19 and ath79 spi-nand suggests that
support will be possible after ath79 master moves to Linux 4.19

Jeff



 From 7bd39bc01d8b0a03e796268f06f99b5a65fc353a Mon Sep 17 00:00:00 2001
From: Jeff Kletsky <git-commits@allycomm.com>
Date: Mon, 28 Jan 2019 08:25:52 -0800
Subject: [PATCH] ath79: Remove NAND targets as no available drivers

At this time, there are no drivers for NAND flash for ath79.

Remove the only present ath79 NAND target, GL.iNet AR300M,
as it will not boot due to lack of a suitable NAND driver.

 From openwrt-devel on 2019-01-25

   The upstream SPI NAND framework is available in 4.19.

   As for raw nand driver for AR9344/QCA9558, the ar934x-nfc driver
   isn't ported to ath79 yet.

 From https://github.com/openwrt/openwrt/pull/1428 on 2018-11-26

   (In reference to patches trying to support the GL.iNet AR300M NAND
    without using the spi-nand as it not present in Kernel 4.14)

   Please re-spin the patch as soon as we have kernel 4.19 support. The
   approach was already NAK'ed upstream and I don't see much gain in
   adding the hack if the next major kernel in OpenWrt will provide a
   suitable solution.
---
  target/linux/ath79/image/nand.mk | 15 ++-------------
  1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index eee419194b..91873ef007 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,13 +1,2 @@
-define Device/glinet_gl-ar300m-nand
-  ATH_SOC := qca9531
-  DEVICE_TITLE := GL-AR300M (NAND)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 2048k
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  VID_HDR_OFFSET := 512
-  IMAGES += factory.ubi
-  IMAGE/sysupgrade.bin := sysupgrade-tar
-  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-endef
-TARGET_DEVICES += glinet_gl-ar300m-nand
+# No NAND drivers available for the ath79 target at this time
+# (January, 2019)
-- 
2.11.0



--------------89F6785AB714428779DFA857
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>Updating this patch as likely still valuable for v19

WIP on master edited for Linux 4.19 and ath79 spi-nand suggests that
support will be possible after ath79 master moves to Linux 4.19

Jeff



From 7bd39bc01d8b0a03e796268f06f99b5a65fc353a Mon Sep 17 00:00:00 2001
From: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>
Date: Mon, 28 Jan 2019 08:25:52 -0800
Subject: [PATCH] ath79: Remove NAND targets as no available drivers

At this time, there are no drivers for NAND flash for ath79.

Remove the only present ath79 NAND target, GL.iNet AR300M,
as it will not boot due to lack of a suitable NAND driver.

From openwrt-devel on 2019-01-25

  The upstream SPI NAND framework is available in 4.19.

  As for raw nand driver for AR9344/QCA9558, the ar934x-nfc driver
  isn't ported to ath79 yet.

From <a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/1428">https://github.com/openwrt/openwrt/pull/1428</a> on 2018-11-26

  (In reference to patches trying to support the GL.iNet AR300M NAND
   without using the spi-nand as it not present in Kernel 4.14)

  Please re-spin the patch as soon as we have kernel 4.19 support. The
  approach was already NAK'ed upstream and I don't see much gain in
  adding the hack if the next major kernel in OpenWrt will provide a
  suitable solution.
---
 target/linux/ath79/image/nand.mk | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index eee419194b..91873ef007 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,13 +1,2 @@
-define Device/glinet_gl-ar300m-nand
-  ATH_SOC := qca9531
-  DEVICE_TITLE := GL-AR300M (NAND)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 2048k
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  VID_HDR_OFFSET := 512
-  IMAGES += factory.ubi
-  IMAGE/sysupgrade.bin := sysupgrade-tar
-  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-endef
-TARGET_DEVICES += glinet_gl-ar300m-nand
+# No NAND drivers available for the ath79 target at this time
+# (January, 2019)
-- 
2.11.0


</pre>
  </body>
</html>

--------------89F6785AB714428779DFA857--


--===============2266415539282555887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2266415539282555887==--

