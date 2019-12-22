Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6294E128FC3
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 21:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymanasjfA8A+bAqd1ENn6JDNWNOAOkKapmzjFA+PheM=; b=LYHQZJHFrbE65p
	AR//GoonUyzvf6D3J+gXLgTyw9pNZwXxIoYAZmvUP6YakFbxzw7YEukhqUXck+eEEGs9o0sNSHPtv
	m0jQiU+a6VOIxXBniR+827NV56QOaNx/QqNKC34v8N428T5euFAn+6o7N/qNJIcSD/SofMZBZbAaN
	QVQPsK5YZBJpk45Pq3KBT5wDX6EkiaZMZBto1TpDcJ81KgATZgEAGK59ZcfbA03n0Sle+++pXPwee
	sCC1d1PQ72szlP09NakbwIk5IYMXuFReIVfpLHxthRAqXoFXEDo7WJ4+Pt2Xee1cq22ihZ2/K61/p
	l9deOzWGqRS+AS4Sy3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij7Tm-0002tq-CG; Sun, 22 Dec 2019 20:05:30 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij7Te-0002tL-DG
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 20:05:24 +0000
Received: by mail-lf1-x133.google.com with SMTP id l18so2888323lfc.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Dec 2019 12:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4Hv7KmeKEFnGE0WSLtX1VrIhJvOcuoOX+3w46Bz8VQQ=;
 b=P7RGtcWfTbZhJXKSwf8mnyDd/phmbPMN2aCt4eHoNI3G0OAybdQi91IXhxHuzCEa7B
 8qf51Ky9cSebi6GZf3ew0KraQWJNcUzUIb1dDKXNH6QdFAJj2XdDxhoE2BDEYkdxDQnk
 0RM3BupjUS8mxuHfe0FKtxOnzpfxeIT01Et1DAdLJ+mIcs4up98Z/H231JWgao5x/j9K
 PGY8ZYccVSG62s6+CaK729n6didfoBJzIuVv0KmKCAPKOayPL9pk4e8gE3kWaxHbB6B8
 /HRROopmbH8NV6t+3gumurkhO54elM/s4eQ86dv5hllhsRBfMUUPIzhs8n9BslMNb4vy
 /l0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4Hv7KmeKEFnGE0WSLtX1VrIhJvOcuoOX+3w46Bz8VQQ=;
 b=aSoZa6kyTWmXWJGt4wfy+Y/VqlAaJqatPMSS3/hBtY5NNjWeSxMwO/xBIDvq0Tkjd7
 kZB+AKzToRceVlbMc5x4e8kz38zJpFSpCMywQ0QflM8JghBOvc1Fthpbz7x8ezBHiOTE
 BXhRcC+IfajUWiB1rWKqi6cIkwwxTgnWaRlrU05TeapP5svPr3yGDlm3FHPr52VZnjvi
 5FE+2CtcfAIJnkGd/3tqjpOAzAUIQuFrBMYz8mUjRklZeQAaG2dVRF0IKIdxi9xS3lt8
 fsV8gKC1u/8GpAGx/ls3B9Bi2reGto1A/6pXqU0OgJGBEbDjD3fcY0UncHrsuD4yqpAm
 gVww==
X-Gm-Message-State: APjAAAWXET/Au5iXqFNs4NMyrlV3FlhvI56ffN9x7KZK5p633ss/62lc
 t4Sn6ujv/ZnFuirsYN0u422Rbd/2
X-Google-Smtp-Source: APXvYqzyppyAb+mthrkp3FEbyXFwuldlnnerE7XAVnJw4tNjkgcKPknK0G4ikEGBcqlFk1WkVtaHhA==
X-Received: by 2002:a05:6512:284:: with SMTP id
 j4mr14166392lfp.109.1577045119987; 
 Sun, 22 Dec 2019 12:05:19 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id p15sm7045334lfo.88.2019.12.22.12.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 12:05:19 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBMK5G7q009995; Sun, 22 Dec 2019 23:05:17 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBMK5FZ4009994;
 Sun, 22 Dec 2019 23:05:15 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Dec 2019 23:05:13 +0300
Message-Id: <20191222200514.9955-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191222182057.9805-1-fercerpav@gmail.com>
References: <20191222182057.9805-1-fercerpav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_120522_475412_0A60BED6 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: use ath10k-ct-smallbuffers for 64
 MiB devices
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Paul Fertser <fercerpav@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---

These should be all the affected ath79 devices. There're also some in
ipq40xx and ipq806x. And, of course, plenty in ar71xx, not sure if
it's worth caring about those.


 target/linux/ath79/image/generic-tp-link.mk | 10 +++++-----
 target/linux/ath79/image/generic-ubnt.mk    | 10 +++++-----
 target/linux/ath79/image/generic.mk         |  8 ++++----
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index cc5c13b919..8a030492c5 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -20,7 +20,7 @@ define Device/tplink_archer-c2-v3
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := Archer C2
   DEVICE_VARIANT := v3
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct
   TPLINK_BOARD_ID := ARCHER-C2-V3
 endef
 TARGET_DEVICES += tplink_archer-c2-v3
@@ -32,7 +32,7 @@ define Device/tplink_archer-c25-v1
   DEVICE_MODEL := Archer C25
   DEVICE_VARIANT := v1
   TPLINK_BOARD_ID := ARCHER-C25-V1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct
   SUPPORTED_DEVICES += archer-c25-v1
 endef
 TARGET_DEVICES += tplink_archer-c25-v1
@@ -56,7 +56,7 @@ define Device/tplink_archer-c58-v1
   DEVICE_MODEL := Archer C58
   DEVICE_VARIANT := v1
   TPLINK_BOARD_ID := ARCHER-C58-V1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c58-v1
 endef
 TARGET_DEVICES += tplink_archer-c58-v1
@@ -119,7 +119,7 @@ define Device/tplink_archer-c60-v1
   DEVICE_MODEL := Archer C60
   DEVICE_VARIANT := v1
   TPLINK_BOARD_ID := ARCHER-C60-V1
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c60-v1
 endef
 TARGET_DEVICES += tplink_archer-c60-v1
@@ -131,7 +131,7 @@ define Device/tplink_archer-c60-v2
   DEVICE_MODEL := Archer C60
   DEVICE_VARIANT := v2
   TPLINK_BOARD_ID := ARCHER-C60-V2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9888-ct
   SUPPORTED_DEVICES += archer-c60-v2
 endef
 TARGET_DEVICES += tplink_archer-c60-v2
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 760d5be196..8a45fb09d1 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -122,7 +122,7 @@ define Device/ubnt_lap-120
   $(Device/ubnt-wa)
   DEVICE_MODEL := LiteAP ac
   DEVICE_VARIANT := LAP-120
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
 endef
 TARGET_DEVICES += ubnt_lap-120
 
@@ -130,28 +130,28 @@ define Device/ubnt_litebeam-ac-gen2
   $(Device/ubnt-wa)
   DEVICE_MODEL := LiteBeam AC
   DEVICE_VARIANT := Gen2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
 endef
 TARGET_DEVICES += ubnt_litebeam-ac-gen2
 
 define Device/ubnt_nanobeam-ac
   $(Device/ubnt-wa)
   DEVICE_MODEL := NanoBeam AC
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct rssileds
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct rssileds
 endef
 TARGET_DEVICES += ubnt_nanobeam-ac
 
 define Device/ubnt_nanostation-ac
   $(Device/ubnt-wa)
   DEVICE_MODEL := Nanostation AC
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct rssileds
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct rssileds
 endef
 TARGET_DEVICES += ubnt_nanostation-ac
 
 define Device/ubnt_nanostation-ac-loco
   $(Device/ubnt-wa)
   DEVICE_MODEL := Nanostation AC loco
-  DEVICE_PACKAGES += kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES += kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
 endef
 TARGET_DEVICES += ubnt_nanostation-ac-loco
 
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 10bd40abc1..18dad80d5d 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -273,7 +273,7 @@ define Device/comfast_cf-e313ac
   SOC := qca9531
   DEVICE_VENDOR := COMFAST
   DEVICE_MODEL := CF-E313AC
-  DEVICE_PACKAGES := rssileds kmod-leds-gpio kmod-ath10k-ct \
+  DEVICE_PACKAGES := rssileds kmod-leds-gpio kmod-ath10k-ct-smallbuffers \
 	ath10k-firmware-qca9888-ct -swconfig -uboot-envtools
   IMAGE_SIZE := 7936k
 endef
@@ -473,7 +473,7 @@ define Device/dlink_dir-859-a1
   DEVICE_MODEL := DIR-859
   DEVICE_VARIANT := A1
   IMAGE_SIZE := 15872k
-  DEVICE_PACKAGES :=  kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES :=  kmod-usb2 kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   SEAMA_SIGNATURE := wrgac37_dlink.2013gui_dir859
   SUPPORTED_DEVICES += dir-859-a1
 endef
@@ -719,7 +719,7 @@ define Device/nec_wg800hp
   IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | \
 	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
 	xor-image -p 6A57190601121E4C004C1E1201061957 -x | nec-fw LASER_ATERM
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct-htt
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca9887-ct-htt
 endef
 TARGET_DEVICES += nec_wg800hp
 
@@ -917,7 +917,7 @@ define Device/phicomm_k2t
   IMAGE_SIZE := 15744k
   IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | \
 	append-metadata | check-size $$$$(IMAGE_SIZE)
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
