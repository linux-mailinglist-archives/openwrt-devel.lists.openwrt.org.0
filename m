Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665781536D1
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5L7xzqv5RhAmFiAeeWxP/gpFHim1PhNIR9TZInjsfVI=; b=DT2tjfNnuzm+0g
	QLJ0PRDuRKHeiAJwUhE3vSXB0BZGrDPuZ8c+O7ktOWmLPQMx+HbL7pCMJiVw8Zadad62y0IXZHw+R
	OT1K9pgnTRDsRLzcbTwZapU0ZDcexnt5YQTewI+UZzmI3fVVMhnbs0nk7PIw8WjlZMsQa9hCpk3WC
	7S8fZ/p+HkaQwkasNubQA0QKL4YCXXRE+X8zgFDPVozINQb/leIOv2kZ6H33FB5hdKMJMd0A7h41T
	g+DgEghoLxqYBhFSbsXczJqWmo1ZhumNANcl/d15CVPCuhncFVsGz5xpotS0kzDeHZrQAoZLll3Rl
	ZqeENn7Bn1+CApXd0MGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOck-0006jR-Qj; Wed, 05 Feb 2020 17:38:02 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOcX-0006bb-Pr
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:37:51 +0000
Received: by mail-pl1-x62c.google.com with SMTP id y1so1159503plp.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 09:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IDmGQhKG0ozQmjeq52i8QRdQ2FDpBM7cTfRjSoG5jDE=;
 b=h51SqMLu/xbtQqx/FVMORSMb//zG87D9HgYA8Xx3V68AtyEprxd9BHyEEPa8ZRP0na
 RTUzxZcl/gJ+x4MctA8uwZ5marYq5VEMXriU8nC1lCypuUn1tNUdbBOVbH4WC6FmzjUm
 r4Rkmxa7RBZBpWWZF9YNfxlhprKuLA6nK/NdWRG02MniJ7VIDzKJ8bCZh4Ewu1ZwM4SC
 wMnhQ+nKoRxlJ3XYdzHcf7N6yguntORBDuzXKwpxNUsnTs0R/tQDEvFN7a93Ly4esAMi
 Af7jk6mHWFypveOaFy4P3Z3bQzqEsa3NIsu6TZ1o0co50vLO6Lgz3rt9X+ifVVARxCiJ
 RtZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IDmGQhKG0ozQmjeq52i8QRdQ2FDpBM7cTfRjSoG5jDE=;
 b=k9vWSvYKT5uiUAJNkvDn6KzVuztvlK1h1yNqLmfrFv8QsN/gYe0V2Ng92yNmon8JxV
 bOXT7HXaetTB/LPWq+50WTbLCPXCdNgpMckOC0CJbYDGaMmHFP/L16nguOo7KD5XWzMO
 liQJb6sNIZeIJ7KvGlZr2IOHXWjZgb7o0dv+Y1qkM6rpQcTD2kWYTIxbQ31gGP2eK6VG
 eRxuHAjWhUSC6EaAXGjpZSyAYlG3akZUsikE5q1Ucf/AFEkpNYQy7CXQXxpyVijgmWS3
 sS9w6y8i9L9zCMMR7PF5T2oFcA4pcK469Tcr+fU8N/MHd+3P771lw3DANr3SbLZDUJns
 6Drw==
X-Gm-Message-State: APjAAAU8VcwwiqPeZg9PwLCk7H33V3Uy2C/YDIXFtvC5aV6vR+It4R4W
 WY6ppBG74UP4ntgHjH3jOqEM8mtHays=
X-Google-Smtp-Source: APXvYqxDazsJJ6pswe7qTqq9LHkcrGc9jU8MsX4Lm9/ThwHaZBhARFFSk9iT2iBqC/tfN1VPtCRVaA==
X-Received: by 2002:a17:902:9b90:: with SMTP id
 y16mr36122461plp.217.1580924268503; 
 Wed, 05 Feb 2020 09:37:48 -0800 (PST)
Received: from localhost.localdomain ([67.139.187.132])
 by smtp.gmail.com with ESMTPSA id c6sm397191pgk.78.2020.02.05.09.37.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 09:37:48 -0800 (PST)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Feb 2020 10:37:44 -0700
Message-Id: <1580924264-939-2-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1580924264-939-1-git-send-email-dan.haab@luxul.com>
References: <1580924264-939-1-git-send-email-dan.haab@luxul.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_093749_862061_5FBBB587 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [riproute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] bcm53xx: build images for Luxul
 ABR-4500 and XBR-4500 routers
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
Cc: Dan Haab <dan.haab@legrand.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Dan Haab <dan.haab@legrand.com>

Luxul ABR-4500 and XBR-4500 devices are wired routers with 5 Ethernet
ports and 1 USB 3.0 port. Flashing requires using Luxul firmware 6.4.0
or newer and uploading firmware using "Firmware Update" web UI page.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 .../bcm53xx/base-files/etc/board.d/02_network      |  7 +++++
 target/linux/bcm53xx/image/Makefile                | 30 ++++++++++++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/target/linux/bcm53xx/base-files/etc/board.d/02_network b/target/linux/bcm53xx/base-files/etc/board.d/02_network
index 8c9e8b3..9fd26e7 100755
--- a/target/linux/bcm53xx/base-files/etc/board.d/02_network
+++ b/target/linux/bcm53xx/base-files/etc/board.d/02_network
@@ -24,6 +24,13 @@ buffalo,wzr-1750dhp)
 	board_config_flush
 	exit 0
 	;;
+luxul,abr-4500-v1|\
+luxul,xbr-4500-v1)
+	ucidef_add_switch "switch0" \
+		"0:wan" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5@eth0"
+	board_config_flush
+	exit 0
+	;;
 phicomm,k3)
 	ucidef_add_switch "switch0" \
 		"0:lan" "1:lan" "2:lan" "3:wan" "5@eth0"
diff --git a/target/linux/bcm53xx/image/Makefile b/target/linux/bcm53xx/image/Makefile
index 9f2731d..6f50974 100644
--- a/target/linux/bcm53xx/image/Makefile
+++ b/target/linux/bcm53xx/image/Makefile
@@ -83,6 +83,13 @@ define Build/asus-trx
 	mv $@.new $@
 endef
 
+define Build/luxul-lxl
+	$(STAGING_DIR_HOST)/bin/lxlfw create $@.new \
+		-i $@ \
+		-b $(LUXUL_BOARD)
+	mv $@.new $@
+endef
+
 define Build/seama-nand
 	# Seama entity
 	$(STAGING_DIR_HOST)/bin/oseama \
@@ -102,6 +109,7 @@ endef
 
 DEVICE_VARS += PRODUCTID SIGNATURE NETGEAR_BOARD_ID NETGEAR_REGION TPLINK_BOARD
 DEVICE_VARS += BUFFALO_TAG_PLATFORM BUFFALO_TAG_VERSION BUFFALO_TAG_MINOR
+DEVICE_VARS += LUXUL_BOARD
 
 IEEE8021X := wpad-basic
 B43 := $(IEEE8021X) kmod-b43
@@ -262,6 +270,28 @@ define Device/linksys-ea9500
 endef
 # TARGET_DEVICES += linksys-ea9500
 
+define Device/luxul
+  DEVICE_VENDOR := Luxul
+  IMAGES := lxl
+  IMAGE/lxl := append-ubi | trx-nand | luxul-lxl
+endef
+
+define Device/luxul-abr-4500
+  $(Device/luxul)
+  DEVICE_MODEL := ABR-4500
+  DEVICE_PACKAGES := $(USB3_PACKAGES)
+  LUXUL_BOARD := ABR-4500
+endef
+TARGET_DEVICES += luxul-abr-4500
+
+define Device/luxul-xbr-4500
+  $(Device/luxul)
+  DEVICE_MODEL := XBR-4500
+  DEVICE_PACKAGES := $(USB3_PACKAGES)
+  LUXUL_BOARD := XBR-4500
+endef
+TARGET_DEVICES += luxul-xbr-4500
+
 define Device/netgear
   DEVICE_VENDOR := NETGEAR
   IMAGES := chk
-- 
1.9.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
