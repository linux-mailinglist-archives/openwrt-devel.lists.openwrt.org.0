Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F72212A100
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 13:04:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQHt325g0I/Mf3L3VTMjMr5nX1DLNSOBCcNdJsyQ/aY=; b=O8HVBSQnbZQHsd
	uzhGjancMNcrNG0KZzRqM823jOnoLAdiWIQXpxqQTZNRAzNrgbwFxUJ71AZhQKDRVLGVjplPwAYQZ
	C/CVhaZHYZdZVDgtlwwitHmlJjTG2Qt6KDUs4K5P/6fpWNBvV1SwlVaL+ZI+Cbw3fxRIxa6WoNkfc
	o5wxwp3AxKGCr/L66SZAVDArJHsx64Ezx9/+RerYQZ5UYF01YCV5UuhG52xMRe1HZrDzJUzlfyRBI
	v1L2CeHevk98BzlhvMhaFEc1wYwyo+/k7lR2zJs0sEJRmnrrBQzX6g71edeFZobOJoTcp0M4cvzk4
	x+IZNsYbvi41K+GnkrtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijive-0005uJ-PL; Tue, 24 Dec 2019 12:04:46 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijivS-0005ts-Lf
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 12:04:36 +0000
Received: by mail-lf1-x12d.google.com with SMTP id n12so14953368lfe.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 04:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vmrnL4i8/JAylxg5K0TLlnUROfnIM6iVEJhW0JobaoQ=;
 b=LDxBP4paUyDYf3ZNWkc/DIUlDZ6qMgIYpzHZYzuyOB8E5zhocgoA5nyWKPafdGQqRG
 DNIg1nDrs0CCb2YqEJwCKR4ImRkyiccIu6CibjT5V8CQ1CnSngurxAAU3eVL2V69SH4w
 jQMksS+VzR47rijY1UUglYFYbNCFItK4McPFd/8CNsnb56lLTI6GW+BJgt4Ljbc+yxqP
 Yb9ID11KEfUbtngoE/Bx77JiFepR5o18ZpXwHL9BbWdAfPXM84vYpm1f5Hwy25TcCiX4
 bqGV5g4yOom8/zyiLWNQz7LjNiylDcQJQK5P+GSR7hasAL9SLrYrUj9cxgax3HwhdlDH
 Fm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vmrnL4i8/JAylxg5K0TLlnUROfnIM6iVEJhW0JobaoQ=;
 b=uElMNsJmHmioIilO1yiQXOnBtI/Eow6x8ZX8iqOt0LPBLLJUJNjJMqRvpxbC+7IEyJ
 wBVnko5o6Wg+D9Oui8H47mnyj1jOq+fFBnaX4HVBA9hNbHRQuleqg3MStxw+HEwpZZmx
 QHxkedF5Cp3ited5gcAfdeEj9KG+dDz/hjoXRu5FtGtlQnlFuF6FV2aUGWz4YfLaE4BJ
 tHd8jAXSP5G8M0KYJKblyRG++P4I+IicKkWGK2zup9t+OTnW9n0SzhZe/j+5Mj03r4x0
 oO+uCQ05Ir2pKCv59xxmdwSDMNlVWwe3Ib7G4aGxy1WV+iF0OF25/Jusfib5ybxTZAmq
 LWTg==
X-Gm-Message-State: APjAAAXTPaPghH9ycUkR/d+80krRoYeT3eP8XEJzQ9cgYB8i18tR02FI
 Q//FabJsBpt5rFLrVACvUqTGu4C5
X-Google-Smtp-Source: APXvYqyge/XGZSXZ1YdQVjkuOXZg8lv8akDvNhoqQpYHNhRui77jKbr5Z6o2ncU8IPRvLf6c2R2zTQ==
X-Received: by 2002:ac2:4a91:: with SMTP id l17mr20017310lfp.75.1577189072237; 
 Tue, 24 Dec 2019 04:04:32 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id z7sm11766554lfa.81.2019.12.24.04.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 04:04:31 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBOC4Svg013635; Tue, 24 Dec 2019 15:04:29 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBOC4RYc013634;
 Tue, 24 Dec 2019 15:04:27 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Dec 2019 15:04:26 +0300
Message-Id: <20191224120426.13595-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
References: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_040434_735577_0B506C02 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12d listed in]
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
Subject: [OpenWrt-Devel] [PATCH for-19.07] ath79: use ath10k-ct-smallbuffers
 for 64 MiB devices
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
 target/linux/ath79/image/generic-tp-link.mk | 14 +++++++-------
 target/linux/ath79/image/generic-ubnt.mk    |  8 ++++----
 target/linux/ath79/image/generic.mk         |  6 +++---
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 468117aad4..304304799d 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -17,7 +17,7 @@ define Device/tplink_archer-c2-v3
   ATH_SOC := qca9563
   IMAGE_SIZE := 7808k
   DEVICE_TITLE := TP-Link Archer C2 v3
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct
   TPLINK_BOARD_ID := ARCHER-C2-V3
 endef
 TARGET_DEVICES += tplink_archer-c2-v3
@@ -28,7 +28,7 @@ define Device/tplink_archer-c25-v1
   IMAGE_SIZE := 7808k
   DEVICE_TITLE := TP-Link Archer C25 v1
   TPLINK_BOARD_ID := ARCHER-C25-V1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct
   SUPPORTED_DEVICES += archer-c25-v1
 endef
 TARGET_DEVICES += tplink_archer-c25-v1
@@ -39,7 +39,7 @@ define Device/tplink_archer-c58-v1
   IMAGE_SIZE := 7936k
   DEVICE_TITLE := TP-Link Archer C58 v1
   TPLINK_BOARD_ID := ARCHER-C58-V1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c58-v1
 endef
 TARGET_DEVICES += tplink_archer-c58-v1
@@ -61,7 +61,7 @@ define Device/tplink_archer-c60-v1
   IMAGE_SIZE := 7936k
   DEVICE_TITLE := TP-Link Archer C60 v1
   TPLINK_BOARD_ID := ARCHER-C60-V1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c60-v1
 endef
 TARGET_DEVICES += tplink_archer-c60-v1
@@ -72,7 +72,7 @@ define Device/tplink_archer-c60-v2
   IMAGE_SIZE := 7808k
   DEVICE_TITLE := TP-Link Archer C60 v2
   TPLINK_BOARD_ID := ARCHER-C60-V2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c60-v2
 endef
 TARGET_DEVICES += tplink_archer-c60-v2
@@ -171,7 +171,7 @@ TARGET_DEVICES += tplink_cpe210-v3
 define Device/tplink_archer-d50-v1
   ATH_SOC := qca9531
   DEVICE_TITLE := TP-Link Archer D50 v1
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-D50-V1
   IMAGE_SIZE := 7808k
   TPLINK_HWID := 0xC1200001
@@ -206,7 +206,7 @@ define Device/tplink_re450-v2
   ATH_SOC := qca9563
   IMAGE_SIZE := 6016k
   DEVICE_TITLE := TP-Link RE450 v2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0x0
   TPLINK_HWREV := 0
   TPLINK_BOARD_ID := RE450-V2
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 6601986e08..8bc4523f46 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -128,7 +128,7 @@ TARGET_DEVICES += ubnt_nanostation-m-xw
 define Device/ubnt_lap-120
   $(Device/ubnt-wa)
   DEVICE_TITLE := Ubiquiti LiteAP ac (LAP-120)
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
@@ -137,7 +137,7 @@ TARGET_DEVICES += ubnt_lap-120
 define Device/ubnt_nanobeam-ac
   $(Device/ubnt-wa)
   DEVICE_TITLE := Ubiquiti NanoBeam AC
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct rssileds
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct rssileds
   IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
@@ -146,7 +146,7 @@ TARGET_DEVICES += ubnt_nanobeam-ac
 define Device/ubnt_nanostation-ac
   $(Device/ubnt-wa)
   DEVICE_TITLE := Ubiquiti Nanostation AC
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct rssileds
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct rssileds
   IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
@@ -155,7 +155,7 @@ TARGET_DEVICES += ubnt_nanostation-ac
 define Device/ubnt_nanostation-ac-loco
   $(Device/ubnt-wa)
   DEVICE_TITLE := Ubiquiti Nanostation AC loco
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   IMAGE_SIZE := 15744k
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | mkubntimage-split
 endef
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 29a67de816..430740e5d6 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -295,7 +295,7 @@ define Device/dlink_dir-859-a1
   ATH_SOC := qca9563
   DEVICE_TITLE := D-LINK DIR-859 A1
   IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES :=  kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES :=  kmod-usb-core kmod-usb2 kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
   SUPPORTED_DEVICES += dir-859-a1
 endef
@@ -519,7 +519,7 @@ define Device/nec_wg800hp
     append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
     xor-image -p 6A57190601121E4C004C1E1201061957 -x | \
     nec-fw LASER_ATERM
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct-htt
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct-htt
 endef
 TARGET_DEVICES += nec_wg800hp
 
@@ -662,7 +662,7 @@ define Device/phicomm_k2t
   DEVICE_TITLE := Phicomm K2T
   IMAGE_SIZE := 15744k
   IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
-  DEVICE_PACKAGES := kmod-leds-reset kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-leds-reset kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
 endef
 TARGET_DEVICES += phicomm_k2t
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
