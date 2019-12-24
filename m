Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FDA12A428
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 22:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur3Xp4EjApKO46I1X1tis5dNow/BsjGINYyKj2rPej8=; b=I+eJlYKwkBlvm9
	G/Zh8U9lbrHEYD7XLpUsN9tCXn5D7V2CbxHVgc1L2h9oA1k+yCnmAWrHDUMwCKNzFD+hWLaYJaIU9
	c1/IhGOnsqcPkx+UCwPvV8kM8QkHOba2lq4Z3cEYlqMnZ3+sGkVxyctVuvtcl5ViQoXdb1u4Zpz8L
	kyPJKXUe1Ofx56CwBNY8mhmNIU1p8hrfkuXACeBpzNf3ZoodeMTVwEgDNfMKt+ZlsAgm/ybkb1U7C
	o4h45Vk3XiHsmJsdZ9DGIuor34EHGm5/RGOFMtbI3H2CmLtagqDL/n47EPhkfVbtiR+Zz5G3aREOC
	f9yzqUtUyBGTsHMwlLKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijrM9-00075u-85; Tue, 24 Dec 2019 21:04:41 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijrM0-00075c-1U
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 21:04:33 +0000
Received: by mail-lf1-x136.google.com with SMTP id b15so15803176lfc.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 13:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=34nS94ArQ2f0qT2UCw/e3n2VSNIDA8F7GcLqI3qGbwI=;
 b=Kcvr/CFq7HZDCPAU3B6T6XI6SchYIU531+z/za+Ij58ig3HCEpqTcj/XhTCCAW+sa0
 Gu9IKBTLrjYJoR6dr8axGU+AKSUdssONXtIn+XUz6k7LsHn9kt2afmeJmEOlDEcwmKz0
 xgYe2sLhagsH+xgKu5MebgRGIxfz3EkMMKXCSJgMVYniuZ3IhTWHvWbtpbE9fsTwKk9c
 JK+LSqFm6DbZnV/HWdPviSR94tjmwFEgMcSE6foOGwDZRa5tA8sntUygLNcmx1Qxpfyb
 KTiTZgM/CckK9NyM6aL6Hwx/aixcDw9IrK/6Uku5wL0hsn7fuTdi0HZmBWWRpo75yPhz
 Dz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=34nS94ArQ2f0qT2UCw/e3n2VSNIDA8F7GcLqI3qGbwI=;
 b=rdpdKdHT5CRDPPBsfaHE03sicb7mylSXheCb6XoaXrwlL6JWHXhYUh73EMJ2Ih1tFg
 +l347hNISYTqriv9S8KayjGjZMtVX2GNNPWvd2UOMCqLlBxdV1rIH+MBK3Z7MFTP8cqW
 YmOycWa5gqIWNMNVU2UCgm7Fh6qohXoiQPTIbrNfghQsAlgxP20uUYMPHI1qSrFc0fb3
 F8QTymc2WBa2j+Cqo7n3Swy24sKN5nyQFYVcpwNFvSdBQYcb6rVYscitshf4n+9982am
 PwUqNVl/uo0GhPiaDyJ+YJlgHKtxmVqW44/291j966I2GDBYAZ85R35wbsRRbAlGdMKx
 Kt1w==
X-Gm-Message-State: APjAAAXnHWQzUpBNqJo6Pky+jZlQvF9QycgrZV1mWpdofmkFOLt7afef
 KdQNlU5NYfFx7zdt7isGm7w9uxTU
X-Google-Smtp-Source: APXvYqxgHB3Q7Zlw6FSXPOLEB08FFPHxj1O7AVQ/MQUNKeuT2UE7IVuFv/eMPrWQHZj2Gez/TUP+Tw==
X-Received: by 2002:a05:6512:488:: with SMTP id
 v8mr20637780lfq.173.1577221468769; 
 Tue, 24 Dec 2019 13:04:28 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id l21sm10598457lfh.74.2019.12.24.13.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 13:04:28 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBOL4PcV015293; Wed, 25 Dec 2019 00:04:26 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBOL4OjL015292;
 Wed, 25 Dec 2019 00:04:24 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Dec 2019 00:02:24 +0300
Message-Id: <20191224210224.15245-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <bb008c3d-eab0-2ca5-6a42-23c854e2c431@gmail.com>
References: <bb008c3d-eab0-2ca5-6a42-23c854e2c431@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_130432_085121_026EC0D0 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2] ath79: tp-link: use
 ath10k-ct-smallbuffers for 64 MiB devices
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
Cc: Paul Fertser <fercerpav@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 target/linux/ath79/image/generic-tp-link.mk | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 8a030492c5..97c4bb9441 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -195,8 +195,8 @@ define Device/tplink_archer-d50-v1
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := Archer D50
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct \
-	ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport \
+	kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-D50-V1
   IMAGE_SIZE := 7808k
   TPLINK_HWID := 0xC1200001
@@ -366,7 +366,7 @@ define Device/tplink_re450-v2
   IMAGE_SIZE := 6016k
   DEVICE_MODEL := RE450
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0x0
   TPLINK_HWREV := 0
   TPLINK_BOARD_ID := RE450-V2
@@ -576,8 +576,9 @@ define Device/tplink_tl-wr902ac-v1
   SOC := qca9531
   DEVICE_MODEL := TL-WR902AC
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct \
-	ath10k-firmware-qca9887-ct -swconfig -uboot-envtools
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport \
+	kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct \
+	-swconfig -uboot-envtools
   TPLINK_BOARD_ID := TL-WR902AC-V1
   IMAGE_SIZE := 7360k
   TPLINK_HWID := 0x0
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
