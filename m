Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9281A44C9
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 11:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A7LlnFcaq/Oy9sSsHxbsuiizf1O+jGsYpUwpTGK8OXU=; b=hjuCdEKI58hH62
	JcgnGJ9XRQBDEbcGPgJ/yn9ANBiuRTuMxPjnZrqvCrH2EAEyUwlirEnLBbofc0S5YbG/aXFxDg5PH
	U/vtbWFePGlJH1VXMn7v/tefeHSYOQUdT70pDloLDAk709nex0OzhBIRck1iSSgm4bY60AdorDNxQ
	NNrByxtb0Vg+mQn6DBZnibX6OoyeXmOA4Lv51g08/naIKmORDd0+qzTErudf+6Lpyjd/odd/N+Gic
	BSt0ddEl51jyUARAyHBkgsXHGeFYsJiB1iBr6Eb3tIZWCAkcVdOFlAJDtBbtTph1ZpWgqXFUQlFid
	3SiLFJOyWoBK/BSt/rHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqOJ-0004QK-Iu; Fri, 10 Apr 2020 09:56:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqO5-0004HJ-1b
 for openwrt-devel@bombadil.infradead.org; Fri, 10 Apr 2020 09:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=izrMjbwJ60WtzNI9+ZqUjdWVKpX0jM5ROSEnTaIwg6c=; b=wHaqG4R01vwCOBAuvsMTjxlpll
 usC5B0LMIzLUjmxTExBaN6E5rDvDNFFAo/aguAEJR/WIxbwBiClbEG6+uuSOE4BDGa1g+vYJymKhX
 yW+x/HK2A+PibJrG21uMZkamjmIT9XQ+sKvvrSNsrWhrZhp4ffbXelWxr5LPD1fPSp+LQilQMJ9ju
 eEBdlbq50mdV++c3RaZmZnbSqYH5uiwynhVoh3P6nW74zHM8qiH3nSdXXJBG16bFkbnZZqepZjRA0
 RJPN858FVryy1Je8HUeX45tEGQA2YKWAnNC/3dCuyJF4e7/Id8wh0Q2waCZfzoV7InYy3QB922FO3
 Y6r2QzVg==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqO0-0003nR-Kc
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 09:55:47 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8E13E240017;
 Fri, 10 Apr 2020 09:55:03 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Apr 2020 23:54:52 -1000
Message-Id: <20200410095451.1942207-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_105545_080900_375B6B96 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] x86: append metadata to combined images
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

Now that the x86 target uses the new image generation code we can also
attach metadata to the created images.

As currently the `SUPPORTED_DEVICES` list is empty, no JSON metadata is
attached, however the signing happens in the same step.

This results in signature verification for x86 images.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/image/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 7a474e7a6e..77516a4a9d 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -113,15 +113,15 @@ endef
 DEVICE_VARS += GRUB2_VARIANT
 define Device/Default
   ARTIFACT/image.iso := grub-config iso | iso
-  IMAGE/combined.img := grub-config pc | combined | grub-install
-  IMAGE/combined.img.gz := grub-config pc | combined | grub-install | gzip
+  IMAGE/combined.img := grub-config pc | combined | grub-install | append-metadata
+  IMAGE/combined.img.gz := grub-config pc | combined | grub-install | gzip | append-metadata
   IMAGE/combined.vdi := grub-config pc | combined | grub-install | qemu-image vdi
   IMAGE/combined.vmdk := grub-config pc | combined | grub-install | qemu-image vmdk
   IMAGE/rootfs.img := append-rootfs
   IMAGE/rootfs.img.gz := append-rootfs | gzip
   ARTIFACT/image-efi.iso := grub-config iso | iso efi
-  IMAGE/combined-efi.img := grub-config efi | combined efi | grub-install efi
-  IMAGE/combined-efi.img.gz := grub-config efi | combined efi | grub-install efi | gzip
+  IMAGE/combined-efi.img := grub-config efi | combined efi | grub-install efi | append-metadata
+  IMAGE/combined-efi.img.gz := grub-config efi | combined efi | grub-install efi | gzip | append-metadata
   IMAGE/combined-efi.vdi := grub-config efi | combined efi | grub-install efi | qemu-image vdi
   IMAGE/combined-efi.vmdk := grub-config efi | combined efi | grub-install efi | qemu-image vmdk
   ifeq ($(CONFIG_TARGET_IMAGES_GZIP),y)
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
