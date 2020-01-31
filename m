Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA3914F012
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JQs6jW3GG353TnGqYtFzIC4E6zd/8knPbVLWdk98eI=; b=VxVAyIxBpHSjQW
	RnjTz5VWkMvRTX9jgBGrxNBO3aVhyMZ0lh/IiuzIqRS/LIitzNr4/IT5p3PKLtydY/YVix3EUVZeb
	CpxAAymMjrWFh89/1DesQOAxqe2ro4CWIlLpaiFxSAjBSCT9DXkVhYwy3qkmDQL/3GxPZ0eA1pof/
	7CI64jUzKFvpxokyR4b0N9ZXQHbAaOEX38TentKtr9hYpyHAcgPBevn/IDCZUqidLG/bWGfS12hUA
	4qwZdOkPllCIab2MGcqERA5Ok7r1DX7OE3pJTZL9tboT5u9Tw+U++bGGVehrk8vJd/bRzLwf8g75M
	RL428NWoZfDnuzsjjIGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYX1-0007z2-Q4; Fri, 31 Jan 2020 15:48:31 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVa-0006Lo-Su
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:47:04 +0000
Received: (wp-smtpd smtp.tlen.pl 34976 invoked from network);
 31 Jan 2020 16:47:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485620; bh=Rod8kcqbZ1Lzw+JhLVod5aYw+fkZ+q2MtrCDEHNEAy0=;
 h=From:To:Cc:Subject;
 b=i+PR1BeVd12RsW8sBkdzriFQ8iliobr9PZcXD6wxH64CKj1a/jZxxv1I0fv69XhVH
 M1l5SsbCt/WWd6t4WzwX1ltpLHrnN0+AuzAc70loth5b1gYmazvnpA9nnvfYrs5w+K
 g3othdDW9yjOUBC65cB+fPL57TXjZUxi65VX7o+U=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:47:00 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:18 +0100
Message-Id: <20200131154620.25773-7-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: dc93ab89b26a8a145969d603470e2dcd
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [MTPy]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074703_140453_88C024BE 
X-CRM114-Status: UNSURE (   5.74  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 6/8] mvebu: image: rework uDPU-firmware
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
index ae4d3b9594..5a19b0559d 100644
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
 
 DEVICE_VARS += BOOT_SCRIPT UBOOT
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
