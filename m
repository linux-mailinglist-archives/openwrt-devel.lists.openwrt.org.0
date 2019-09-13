Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA924B16F0
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 03:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fJ1e4gydT4DEC85cXfi7YobqpmWBCPeARzM0Ia7fuE=; b=fXwXHCJtyD0LEg
	STpeBQV43zJmZpa0tINwr8As4ntmLH+2jL2ilI7FWERglvu5UoTayt/MfGZzR74phfazNUqg+RRqF
	vXyp7fyG+bT7bKw4lxcPnjJAq8ikWrvg6oOc0lEK+jpuAnWSgKvwrAbfYq9tdPNK78Qb4s5tOte1n
	DVBaf9jtmrLc+pXEgN9nMHv0QgWd1mwwe44vHzy0EyJVicnc1wfkOpJ2nZP1AtshW3Dk5pZQ3qJKs
	hR4p/6LOIh347RFDFJ+M5N8pn9oGQjzohU1VWpxQCZfDeH8WNKFnOb+XpjTo8pV7Do/qzRT6J+5U5
	2X11YgAVBuWtqK5LHG1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8a52-00089U-RK; Fri, 13 Sep 2019 01:08:56 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8a4e-0007zu-F0
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 01:08:33 +0000
Received: by mail-pl1-x636.google.com with SMTP id x3so12496885plr.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 18:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xb5w65EPZk3u/e9VPIt/CVEw5Hh2roWxeg69AUkDovQ=;
 b=u+a0KKydhxiLIaTC91CEDS9S54+I13ComVSfTHjqDXGdGMI2FT21hCKwk3wuhG6jun
 xlU6Y+oPIYIGiX2mVYF5Iet10+25hycpztBrJdLeE2JXHfO6qB+CvjrnH64pPkuDz/kE
 NlZllqyO1Ju21Qou3slFwTKvUCrLhQy/HUWl3efvoAtQGGQLq9UF8kGSAd1ZjUdgvS4C
 mODwXRJkDf3FZET10Et9/oJIeqwT5Q6PqQPb71o7cBPh3Hl1xRaEvddy3zWMj2R7IZZ4
 8MbQAjTMKvr9Fkujk+89LUI6/6ph3qQV6SEns11LIqKyi41IAVSlWbW6u07FtEWUwTdt
 CBeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xb5w65EPZk3u/e9VPIt/CVEw5Hh2roWxeg69AUkDovQ=;
 b=tSbA9xE+9SpZzpmtFblKi1NbvSD7cmAckDcH4tTlgLqbLa2oVq+g0n78KNk9jBPE82
 mlm+ErikVEUKrSM20Zw4xWoECbJFGucdzZUUGCAVi/klgn2LMBdlVeP/MKfWL5m/iFGl
 8Dput/8rmCpyiXaiFyh3uAV8/gwm1JaYbTo5HVNXKYX0UhyiIi1DyzpcQm7Jf3H8h8sV
 7UDbmQmOPtdf+ak+caF520MJK1T5jcmfDz7RUOoHVwTjrDhV8GCIFrPr7+TwOa+Nwczn
 U+KNLdYyha4QFlZUFGQqSOQ6lnyiBpfbxLX0lPFgT6Bul0hzknyOk914C4xKZAJCpOxf
 GpHw==
X-Gm-Message-State: APjAAAXzVI+BlQGOKf4OlvzZLl1WJpTmg4wpPMDpZMrO/JN9pKg2yQLl
 ifmka9u2kFccNpswnUbjBhY=
X-Google-Smtp-Source: APXvYqzfBwtciFV5Q6rJZoVofRrdLM+GdrXqdvr5VSVn9X587xFHA/FXUz5CnXq/XA4POoXp7O5uQw==
X-Received: by 2002:a17:902:a508:: with SMTP id
 s8mr31287428plq.317.1568336911635; 
 Thu, 12 Sep 2019 18:08:31 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id l14sm3342283pgn.48.2019.09.12.18.08.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 18:08:30 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: nbd@nbd.name
Date: Fri, 13 Sep 2019 01:08:14 +0000
Message-Id: <20190913010815.14962-2-yszhou4tech@gmail.com>
In-Reply-To: <20190913010815.14962-1-yszhou4tech@gmail.com>
References: <20190913010815.14962-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_180832_497943_A2E53729 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/3] imx6: install-dtb as separate IMAGE
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

---
 target/linux/imx6/image/Makefile | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/target/linux/imx6/image/Makefile b/target/linux/imx6/image/Makefile
index b0933d77d2..d1e9e9034e 100644
--- a/target/linux/imx6/image/Makefile
+++ b/target/linux/imx6/image/Makefile
@@ -158,12 +158,13 @@ define Device/ventana
 	kmod-leds-gpio kmod-pps-gpio \
 	kobs-ng
   KERNEL += | boot-overlay
-  IMAGES := nand.ubi bootfs.tar.gz
+  IMAGES := nand.ubi bootfs.tar.gz dtb
   IMAGE_NAME = $$(IMAGE_PREFIX)-$$(1).$$(2)
   UBINIZE_PARTS = boot=$$(KDIR_KERNEL_IMAGE).boot.ubifs=15
   BOOT_SCRIPT := bootscript-ventana
   IMAGE/nand.ubi := append-ubi
-  IMAGE/bootfs.tar.gz := bootfs.tar.gz | install-dtb
+  IMAGE/bootfs.tar.gz := bootfs.tar.gz
+  IMAGE/dtb := install-dtb
   IMAGE_NAME = $$(IMAGE_PREFIX)-$$(1)-$$(2)
   PAGESIZE := 2048
   BLOCKSIZE := 128k
@@ -194,15 +195,16 @@ TARGET_DEVICES += wandboard
 define Device/cubox-i
   DEVICE_VENDOR := SolidRun
   DEVICE_MODEL := CuBox-i
-  KERNEL := kernel-bin | install-dtb
+  KERNEL := kernel-bin
   UBOOT := mx6cuboxi
   BOOT_SCRIPT = bootscript-cubox
   DEVICE_NAME := cubox
   DEVICE_PACKAGES := kmod-drm-imx kmod-drm-imx-hdmi kmod-usb-hid
   DEVICE_DTS := imx6q-cubox-i imx6dl-cubox-i imx6q-hummingboard imx6dl-hummingboard
-  IMAGES := combined.bin
+  IMAGES := combined.bin dtb
   FILESYSTEMS := squashfs
   IMAGE/combined.bin := append-rootfs | pad-extra 128k | imx6-sdcard
+  IMAGE/dtb := install-dtb
 endef
 TARGET_DEVICES += cubox-i
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
