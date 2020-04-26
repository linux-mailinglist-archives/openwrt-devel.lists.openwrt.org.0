Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD1A1B901B
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 14:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bjJM01qfd4iALbtcz3EaTj7Eq/hlD1Mu9ORvBpR91Fg=; b=FFiolFM1x2zxe8PjtLH05uFOb
	fYHkPIUHNO6rR59fk1Cbkb2ybbj+uqB7k/JH2s/MM3UY7KH59nvv3WiffIjQq2yTipPGc/3Nz1GAI
	+fkR6VZUq+lEWJnUFuovKjihIcmruwyS+f0aenIrI5AZwb+lq+O1J2JFR1UQ0/VWkuH5TSgkm/c5N
	SgY0KFT/3iLo0YVRPiDOZT9gG7aBr2CWMpS8kMo8rHdVivXUNHPKU5ap/rfo9IPQkU0CkzYVTuOzs
	oG69eYinsBp3im3/l960Umt60ekcT5CbJ9Zuy0FuKc5h2Eon3T9rKJHGhpTqlnkYo4x8g9Qp/6ld7
	KcVBDr4QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgcm-0006rc-SN; Sun, 26 Apr 2020 12:43:08 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jSgcf-0006qi-K1
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 12:43:03 +0000
Received: from [IPv6:2003:e5:3f43:4500:d595:715e:b3b2:c9f2]
 (p200300E53F434500D595715EB3B2C9F2.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f43:4500:d595:715e:b3b2:c9f2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B5CD723557;
 Sun, 26 Apr 2020 14:42:53 +0200 (CEST)
To: Szabolcs Hubai <szab.hu@gmail.com>
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
From: David Bauer <mail@david-bauer.net>
Message-ID: <2fe5c461-85b5-4cc0-60ed-a240a367497f@david-bauer.net>
Date: Sun, 26 Apr 2020 14:42:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200419184911.5249-2-szab.hu@gmail.com>
Content-Type: multipart/mixed; boundary="------------1F6E4B3150DB6DD0B6177332"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_054301_812606_53DB6039 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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
Cc: openwrt-devel@lists.openwrt.org
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------1F6E4B3150DB6DD0B6177332
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Szabolcs,

On 4/19/20 8:49 PM, Szabolcs Hubai wrote:
> -  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
> +  LOADER_TYPE := bin
> +  KERNEL := kernel-bin | append-dtb | lzma | loader-kernel | \
> +  relocate-kernel | lzma -a0 | uImage lzma

Sorry for going over this one more time. Is there a specific reason
to pack the resulting uImage using lzma? Also the lzma-loader relocates 
itself afaik, so relocate-kernel shouldn't be necessary when using our 
own loader (i might be wrong here).

Could you try the attached patch on your device?

Best wishes
David

--------------1F6E4B3150DB6DD0B6177332
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-ramips-mt7621-use-LZMA-loader-for-DIR-860L.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-ramips-mt7621-use-LZMA-loader-for-DIR-860L.patch"

From 84171d1f3fcecbf1c377fe1ad51b8087808f05c2 Mon Sep 17 00:00:00 2001
From: David Bauer <mail@david-bauer.net>
Date: Sun, 26 Apr 2020 14:41:55 +0200
Subject: [PATCH] ramips-mt7621: use LZMA loader for DIR-860L

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ramips/image/mt7621.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index d5527cd98d..012996ea8a 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -216,9 +216,9 @@ TARGET_DEVICES += buffalo_wsr-600dhp
 
 define Device/dlink_dir-860l-b1
   $(Device/seama)
+  $(Device/uimage-lzma-loader)
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
-  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-860L
-- 
2.26.1


--------------1F6E4B3150DB6DD0B6177332
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------1F6E4B3150DB6DD0B6177332--

