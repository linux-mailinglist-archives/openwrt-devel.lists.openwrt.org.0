Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF46D1A73D7
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 08:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ONTyrkzAR+LSWINnj6Jexkqs5vXQpuRH+vcw/HMZu8s=; b=OiSoyhamNd7x6w
	KwOszIr5Ro5aeShfmyG4MLGZ6VOYISlB53ukwrXgZseHskHC2kZ0m3WyAp3x2nLXpa4u78XlwufA4
	ziqM6vU6Z0LFf2xyOQISZATPaO0nQo+C7D/ANJ84mPUSJ7Q0qvWaFG8WuCMuOTwphacSxvH2YfQIj
	6hjpt91ZVVrXXgY7MeoIWyW/LsQc1mA0zLCldCniDW8y+e6/yosipy4Xq0mV5TZv7gPtKetrtM9Xq
	o1IZecTCo5ZYIXZehcXBsKKqzzggukGlq7msKvWBDRTlzYeBhPryTTUJMi3ogAS97Oq/z6xkiTPbM
	pgxpO0S0JY9CW96LiHbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFJs-0003ek-Nf; Tue, 14 Apr 2020 06:45:16 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFJi-0002bA-8F
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 06:45:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id t4so4297431plq.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Apr 2020 23:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zLEm3jSSdtB7T0euajr6DrN/wMB/MG8XXndl5vZMmfs=;
 b=dUfhzTBOtqB54vsUHlyEIHV7nlY0aCGnGvwnaMgsstzkJ1/o6AN/zbCGrKv8IT987H
 SXNdsCk29areRRxffb03tBzTFlnapbMTKvik+U6YJ++zRkpdMYFHXvCUc87ibFblGMNS
 7fijXW3uqRfMB21rCRkvjsGJjhMktAbW8QfdHHaLSGHeYBk0ai9G12ynH5scEloPgees
 M/ytMB2l+kmyOkgxXQVHYcgf5arGzGOMG1SdfCkfb1Tuov7iMpZGGwMjfVDErxoTCX3Z
 GltbU5Sv7ey8tdegyI7eTIQJoEa7bvg9kmACPAcbL9EjsXH0hROnAvdIhPKE9S/PfBxp
 slwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zLEm3jSSdtB7T0euajr6DrN/wMB/MG8XXndl5vZMmfs=;
 b=BIBox0OMZjBR1V5ou/5bS5gSBeb/6dcZ+WDWWzGz01jCyXhwAbgyigx/zPyAfdAnsx
 BAgkQPnOFXHYM8gtT4nUj2Fmh14wvJH7bKU3EtXwPTuqQ6WnmeZPk9II9WTVAthXtdR7
 VQIi0193RjqzETlgWaKEAho0XMDWPN1KyDdT7fPFWXCd7lo2zDxnmKGhThyShHb2KpMP
 LjjBYERD5GOvpsBgAYQVak5ciyIzEDIrEFuQvpvLV1iTIPFguv8CUl2CACti1hs6IOGI
 k4bsK/V7iemrf6WiBDPxyWjNvSezqO/N3koQGbI3nsnFNL7R8kE48VGdowTmsW7VULXz
 ZnIA==
X-Gm-Message-State: AGi0PuZalY0X7UoOVPqftuv61ZxA+sofCZm/0vzXwwXq6RPbGn3JG3KC
 Ytsv7IQd9w2j7r9N1pBIptYr9UZG
X-Google-Smtp-Source: APiQypKVbXy6/9dYfKpnh4f9p37YKDOYKi5BH805J1d9eMul8V1quURAE3BSN4lxmy80Nr3l0nLWkA==
X-Received: by 2002:a17:90a:e642:: with SMTP id
 ep2mr17182327pjb.188.1586846704207; 
 Mon, 13 Apr 2020 23:45:04 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:96c:f352:6dc2:a636:d638:6ad2])
 by smtp.gmail.com with ESMTPSA id o3sm9320597pgk.21.2020.04.13.23.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 23:45:03 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 14:44:38 +0800
Message-Id: <20200414064438.1172618-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_234506_330826_4625BCD3 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for all
 devices
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

With current kernel reaching 5MB uncompressed, several devices failed
to boot. They either fails on lzma decompression or ends up with a
corrupted kernel image. We already faced this problem two years ago
and it was solved by limiting LZMA dictionary size. Our own lzma-loader
extracts data without this limit just fine and lifting this limit saves
15KB kernel space when compressed.
mediatek u-boot 1.1.3 comes with support for uncompressed uimage by
default and ideally no vendor bother to remove this support.
This commit uses uncompressed uimage with lzma-loader for all mt7621
devices with default kernel template.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

D-Link DIR-860L B1 needs a different loader implementation and isn't
covered by this patch.
Please help testing this patch on top of current master:
75f19deb3a ramips: define image recipe for uncompressed uimage with loader
1. If your device fails to boot after 5.4 switch for mt7621:
     Is the problem fixed by this patch?
2. Other devices:
     Does this patch break your router?

Thanks in advance!

 target/linux/ramips/image/Makefile  | 4 ++++
 target/linux/ramips/image/mt7621.mk | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index a966ba4349..1fb37d7c6c 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -27,7 +27,11 @@ LOADER_PLATFORM := $(ldrplatform-y)
 KERNEL_DTB = kernel-bin | append-dtb | lzma
 define Device/Default
   PROFILES = Default
+ifeq ($(SUBTARGET),mt7621)
+  $(Device/uimage-lzma-loader)
+else
   KERNEL := $(KERNEL_DTB) | uImage lzma
+endif
   SOC := $(DEFAULT_SOC)
   DEVICE_DTS_DIR := ../dts
   DEVICE_DTS = $$(SOC)_$(1)
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 8980ff70d4..942308c29a 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -6,7 +6,6 @@ include ./common-tp-link.mk
 
 DEFAULT_SOC := mt7621
 
-KERNEL_DTB += -d21
 DEVICE_VARS += UIMAGE_MAGIC SERCOMM_HWNAME
 
 # The OEM webinterface expects an kernel with initramfs which has the uImage
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
