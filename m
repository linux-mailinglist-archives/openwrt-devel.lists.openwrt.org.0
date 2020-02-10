Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEDA157ED3
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 16:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+3NSeQwA3V88c7ZsOAxJadNzLlTbo/ACf9Io520UUK8=; b=NPbtVX/8zFi7NIpof+nss8Ug7U
	lP3dFt7W1Jy1q8vFu5dRFPAaxdqq2rBdoLSn5HirdJrg6/ImsJRRTjyqg/auDeVUJUih7D5pwXouR
	5SfyvXBwqU6etDqbXfGF42qtUjt4iFXdzLmql6/aiGmumbvvU927juTs/JW48jGISNndJApBDwKze
	y//hJfRtcuHL8RH8xyH+iQHZz6xab+k+g5NJg5HTIUeHGWLhDuSHrKe+g0hSW0gqpDoNUbBl+UIb3
	hLoS0mwJNEs+XYnNEDko7PWljoGIFhLgSgDogASowsk76FRyVktnHjpaSEuZUYbXX9i7QHyWo2y5r
	UqWx67xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B4S-0000uw-1P; Mon, 10 Feb 2020 15:34:00 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B4I-0000tW-DQ
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 15:33:52 +0000
Received: (wp-smtpd smtp.tlen.pl 12110 invoked from network);
 10 Feb 2020 16:33:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1581348824; bh=W6EnYroMwvRxccCpYKqzMbaDgzd5r59c8GYEQvXIC+4=;
 h=From:To:Subject;
 b=e++jCdLTdLN9ZbaMtbi0w1w/6iJlSItlTv3QRRgqzeqKkcA5G9pWmVWkTGXC0MHHg
 D8isSNfUkhjtuF9MlYNX+ZSCRF3/Yfv+LWSr5JOmZoRiOMKjr8N5nByixlpuciyVfu
 UtQQq/qa5jAkNPDEcM92KDP+l0TZHg2I6OSEjEYY=
Received: from pub-15.183.29.194.multiplay.pl (HELO localhost.localdomain)
 (tomek_n@o2.pl@[194.29.183.15]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 10 Feb 2020 16:33:44 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Feb 2020 16:33:23 +0100
Message-Id: <20200210153327.3443-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210153327.3443-1-tomek_n@o2.pl>
References: <20200210153327.3443-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 5d59f86ab1e151f35d12baf8e4c31b03
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [4XPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073350_806133_1FD12E16 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 1/5] mvebu: image: keep global DTS_DIR
 intact
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

Don't rewrite global DTS_DIR, instead, use proper variable for
specifying devices dts directory. For consistency, also specify the
variable in default profile, as suggested by Adrian Schmutzler.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index aeabffdca2..d73f3e20fc 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -78,6 +78,7 @@ endef
 define Device/Default
   PROFILES := Default
   DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
+  DEVICE_DTS_DIR := $(DTS_DIR)
   BOARD_NAME = $$(DEVICE_DTS)
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | append-dtb | uImage none
@@ -93,7 +94,7 @@ DEVICE_VARS += BOOT_SCRIPT UBOOT
 
 define Device/Default-arm64
   BOOT_SCRIPT := generic-arm64
-  DTS_DIR := $(DTS_DIR)/marvell
+  DEVICE_DTS_DIR := $(DTS_DIR)/marvell
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   KERNEL_NAME := Image
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
