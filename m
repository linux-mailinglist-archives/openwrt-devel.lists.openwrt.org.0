Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1397D87E45
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 17:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fYICBnx3U7R7cxAliXom348LAtdakadL1x2w6PT8pUA=; b=smsKu7KhVxUuZG
	mBuRevFzxEf9pK31U/1/xTNFnwKOwNQ4O2tc9AUIRADg6UxSctMe9Hpev1V+bV1zxopzXViSxV2bf
	4YScc14fNKHi04pWQKlZkfljC6vqOx+BhI9HWmgAOSKaluPqU48cPRDgmxQ540Doj1wkxEc/lp1pR
	sSudXxCXk9k69WcB9pe0M41tMhArBK9CpHSBUcQzQ2so1lhlJGGwuHqnokzDZ8YPOVMB9xIcAQeC5
	xQhRiR96uuhXHqu+fwQLUCCPOaOKub/iIOUwO/Gs9dJqyWpyVnpitPOuhgoQL8SMxasnskFjaKDjw
	DpmBPab85zoR6AhkpBMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw70j-0004df-OG; Fri, 09 Aug 2019 15:40:57 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw70b-0004cn-7h
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 15:40:50 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MtObA-1iAu000ERC-00un8F for <openwrt-devel@lists.openwrt.org>; Fri, 09
 Aug 2019 17:40:46 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 17:40:42 +0200
Message-Id: <20190809154042.4116-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:kSHUOHPAs6rCaoGmiMlHRjQFL9joauQXzCknxdwYkf+bMt1JMJ7
 l/3xni5oo/JDg2XYNzQYZGMnzoPKfsRt1M1QGMosCubDv03vbUyfoPSfRCfDFC6z0rYOdeT
 TXZFvSsY+NITtdRBb3KYCkJ60RmBOHKtwy8dMHeRaRbhLbvwQxBcB0DnxDPwoRl4e8jJYs0
 /oHQhzeVn+oZSwnsRxy0Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gHi1NqEVqIc=:HSxvs53ziezIHLa4rPyPNo
 q+34mFihtQBt9nGDQyLK4oIMwRMv/4xfFDDvXXAiD8cPN1l1Y7vzs27Ba5i4Nn2bspsDk/zuF
 KAu5JA7oCmgrqdTdXCFdalh64H+I1DxkGumwWCXAH78R2y8TXb0VzvX5/eJVfIIQWMOg8KsD/
 mqUuFHhrkhRVwJ5OuUQf0IdrK/1bn9Vq0RJdi5iuoxjngLNpd0LGhq5O4nH1hCSUlamRsBurq
 bmemy8AfwvY7J0Bm4bPFpWR7FikcXfGMs4hhvy9MBEQyLfWXpm0gybviZq0AAKDxoF6LrbZrO
 Bh6RMKX9zQWKNI5jodNnhpnb3ZJQVt8VbBv43Po3Q545Rwhg9uMqPZEgz8FBk6OPK4KvO/NaW
 dEsgRLJwTA/LN1E+wSwHoYuKH+dwdrIWkl77jV1DepPFrEte7WLMVBAUrIkMHK3+IRezUfyA2
 RZ5ZA3re24q7gWDudGaKXcfrjFLI4gzPHv4vPN8U8VDrYy9aF69iTnUuSIUQ2CsPGrB74NaOJ
 Wf2xHgY3zRmis/8PVxAo3tpSsx6Sgs1avOPqUoYRmAWX5cL4hQaNqElnZZSWBaVBXeWbF6ZCx
 dsb8g4UH08u7SnWW7JRHgCgSsKQnJNTjtmRv5+ES1esXfN4/6KQ/YI5iNcqA8RHUETaruppaq
 rJ42UP5+pwaDi3dR4kMinefGDpPzw/8AKbXmXEcmV5FFUNf5DBEbGrqfTA1Z/tnGRYevMB9Vu
 fzNN13eovtWRVIhbiQleSLz09dUvk/07D055LUt19RDH8klzmF/ecBe5sSE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_084049_565962_414685F3 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: add missing IMAGE_SIZE for Comfast
 WR650AC v1/v2
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

When adding support in 9ed272fe9500 ("ath79: add support for
Comfast WR650AC v1/v2"), IMAGE_SIZE has not been added to device
definition.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/generic.mk | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index f9b6c1b450..5c8826b927 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -282,6 +282,7 @@ define Device/comfast_cf-wr650ac-v1
   DEVICE_MODEL := CF-WR650AC
   DEVICE_VARIANT := v1
   DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  IMAGE_SIZE := 16128k
 endef
 TARGET_DEVICES += comfast_cf-wr650ac-v1
 
@@ -291,6 +292,7 @@ define Device/comfast_cf-wr650ac-v2
   DEVICE_MODEL := CF-WR650AC
   DEVICE_VARIANT := v2
   DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  IMAGE_SIZE := 16000k
 endef
 TARGET_DEVICES += comfast_cf-wr650ac-v2
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
