Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC36157EDB
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 16:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOuBAhxM/yuAV9eIC6AUBczvl9E2mlwXegJtg0WxsC8=; b=Dx0UM/YCYNNWtv
	/SXCYOaXDLvW1AyO/sWWKVTz7ZT+sbc0LZS5hFPG77jIshk0k1DCyDb2RwOTTmT1ubxqJUX6GSgsz
	a1nQ2s+2m1zkvR1nogYVL6hFYRWQ9k7GjLzLnciRpsIZm8FXtHwF8pEyJmNsaKO0cfVLBQD0ubhze
	m/AiCPncuhTQEVhMm42LBYx9v0dnXwcDcuWI+d0+QMhsaS/ldTb6D0cawElqNaPLw+Bni144+9DF8
	ha57/q/npJ7UEL/GpH0Kh5O0igQuR3KcCod6GMAhoGHr33MFVvqvvdYXxNVATSbk3HBz/fzsFjnuY
	Gg9sAAZmIpeeOEUWWXwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B5P-000299-HJ; Mon, 10 Feb 2020 15:34:59 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B4I-0000tQ-Do
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 15:33:54 +0000
Received: (wp-smtpd smtp.tlen.pl 16014 invoked from network);
 10 Feb 2020 16:33:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1581348825; bh=/nr5SzWLt+eZcCQkgKv1FcufL7JYuTZgj+Sgqm0L1dU=;
 h=From:To:Cc:Subject;
 b=iPbR5IxkJanh+Ak6SXOLLlmF6iKbMQVMRIE9Hf8j+tnRArRWFVtuNu+xCpNrF1hY7
 mxLWtVIYmexEtGxYpeTS4ruPH+0VppSXwaR0txk3lLhC3buuhoD6Dps22nnFupPIy2
 wvPDmDjHSL+etOW8Zt2C8xVWSAwCCqwsftWMpdnk=
Received: from pub-15.183.29.194.multiplay.pl (HELO localhost.localdomain)
 (tomek_n@o2.pl@[194.29.183.15]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 10 Feb 2020 16:33:45 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Feb 2020 16:33:25 +0100
Message-Id: <20200210153327.3443-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210153327.3443-1-tomek_n@o2.pl>
References: <20200210153327.3443-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: e67f3d486de20642d5fbe3579de34eef
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [QdPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073350_815250_302D719D 
X-CRM114-Status: UNSURE (   6.04  )
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
Subject: [OpenWrt-Devel] [PATCH v2 3/5] mvebu: image: rework uDPU-firmware
 recipe
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
Cc: Scott Roberts <ttocsr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tar has ability to change current dir, so use that instead additional
command invocation. Also being here, change tar arguments to make final
archive reproducible.

Cc: Scott Roberts <ttocsr@gmail.com>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index d73f3e20fc..024e77969a 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -70,9 +70,15 @@ define Build/uDPU-firmware
 	(rm -fR $@-fw; mkdir -p $@-fw)
 	$(CP) $(BIN_DIR)/$(IMAGE_PREFIX)-initramfs.itb $@-fw/recovery.itb
 	$(CP) $@-boot.scr $@-fw/boot.scr
-	(cd $(TARGET_DIR); $(TAR) -cvzf $@-fw/rootfs.tgz .)
-	(cd $@.boot; $(TAR) -cvzf $@-fw/boot.tgz .)
-	(cd $@-fw; $(TAR) -cvzf $(KDIR_TMP)/$(IMAGE_PREFIX)-firmware.tgz .)
+	$(TAR) -cvzp --numeric-owner --owner=0 --group=0 --sort=name \
+		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
+		-f $@-fw/rootfs.tgz -C $(TARGET_DIR) .
+	$(TAR) -cvzp --numeric-owner --owner=0 --group=0 --sort=name \
+		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
+		-f $@-fw/boot.tgz -C $@.boot .
+	$(TAR) -cvzp --numeric-owner --owner=0 --group=0 --sort=name \
+		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
+		-f $(KDIR_TMP)/$(IMAGE_PREFIX)-firmware.tgz -C $@-fw .
 endef
 
 define Device/Default
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
