Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF0FED18A
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 03:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zT6KMQna8ijLboRY8CpqFd9UfhadMpXOggHQ6anFzRU=; b=Bd68tDpwxUndKD
	wx2abTVdW7wwdGCnWLV5OtB3zIhqR/Hn1jEQ8TveSD5crx+l0nk2/UTWezDu9KZywsYhC/YvNZ8h/
	NhlKN/paw343L0HJF0qj+MF/MsgDdwpikOfX1Ulobl0L+sP3dCXI+1Lq3o1/a61K0M+6JuolCwb+0
	EJ+z5VnEbHkKzHOMCXkHKIPbLHX//1fbtjQBsv1qKGmR4RXTnBIv65Iizabhj3FkrkWovAancVpk1
	SibJVIpfqetf2cBJ0RNh/ArdiQLlL35NUhEL7lkwkaVZMF0Iu13du0KoRtTDhCpuq21EplUybDOjL
	lDSOipCROscTUC1J3uvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR61x-0005lB-J1; Sun, 03 Nov 2019 02:54:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR61q-0005kn-N6
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 02:54:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id j12so4142448plt.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 19:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oDGA3LlxbdCkiBfmNzWtGsaz8UfRcRqHdaUrb/huAyE=;
 b=Hb6Bfv7hf35s1cZYIuiL/nLLLH1wBbIDBzAcze9xIRwDygM3K90QkSqYWDlh4VpwZt
 jRJUGlDLLNY5EOydAl9wmL1PGPdYkgTwsk4UAnc3OOicRiEb5U6KJmmFtcZ3L9w1V1Up
 pUlgPgHIbk8FqvDO8bu5Mb4YdobokQHxI0W2uqJqzbRYJxBFtH22xUMRrwhv26169RXu
 Jr1zA9/cNDDEwY4x1/wMvDdnwkVnCDKap5BGWqvKI3UafGTR5Ye9oslYemaBromCTNTf
 C/1dSBcMgSTec7x5/VWzzN4RbNw5vir/z+wRBHW2o8pmue0CvWJ+dqex71blhuSUcpiL
 5XXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oDGA3LlxbdCkiBfmNzWtGsaz8UfRcRqHdaUrb/huAyE=;
 b=ZMPUoTErvryz8uwIi7XwhEqXsFVKvrZJdWLgrRKkY7csNx78OEHiFyuXuXTZmihjLq
 jxxmtRptLO2wqISmBIeZrKbAU+DUBaBysu+WOMmsS6F6o3L756i3Evq52alqzAJU70IB
 IORbJGv+PxGv5n9/6uR3VQqkDWHzydYwHkR+5jHnVzc0ab4Phv9rfJU/83IzrZ20CrQS
 fVaqO5gGLGbmi2kU0Om9IdqgpYMugK+kxOsICevIVimrNpgZZyVtfh8lr6+VywGldqmo
 KES1WXNieZPDyXQCaeWHlB1rFdVvXDhI7P8k9DD/FYfGoX59/pfekRo4VwFBP3GZVHsO
 lA3Q==
X-Gm-Message-State: APjAAAUUQ4u+S1P2mvyfhI4dz46FI3u+CFCEqe5yFxkd266qd+70PT+z
 dv5hdFvoE/PnwEm7j5TGtX8nm8jMH/w=
X-Google-Smtp-Source: APXvYqyKXQCgRLocNmL2O6kOfuaLTtQy+t14G7D7eWIX0Yld3u0AUYO8LOTDznaWZh2pYv+Mc5M+Lg==
X-Received: by 2002:a17:902:788d:: with SMTP id
 q13mr21749358pll.41.1572749647059; 
 Sat, 02 Nov 2019 19:54:07 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-2-23.ca.astound.net.
 [69.42.2.23])
 by smtp.gmail.com with ESMTPSA id e26sm14831015pgb.48.2019.11.02.19.54.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 19:54:06 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 Nov 2019 19:54:04 -0700
Message-Id: <20191103025404.3639181-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_195410_779761_D2E3812A 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] nghttp2: Fix pkgconfig file
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

lib and includedir point to the host, not staging_dir.

Note that prefix and exec_prefix is overriden to point to staging_dir.

As CMAKE_INSTTALL is passed, switched InstallDev to use cmake.mk's rule.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/nghttp2/Makefile | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/package/libs/nghttp2/Makefile b/package/libs/nghttp2/Makefile
index 4fb26319ad..1d364c7023 100644
--- a/package/libs/nghttp2/Makefile
+++ b/package/libs/nghttp2/Makefile
@@ -2,9 +2,9 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=nghttp2
 PKG_VERSION:=1.39.2
-PKG_RELEASE:=1
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
+PKG_RELEASE:=2
 
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://github.com/nghttp2/nghttp2/releases/download/v$(PKG_VERSION)
 PKG_HASH:=a2d216450abd2beaf4e200c168957968e89d602ca4119338b9d7ab059fd4ce8b
 
@@ -31,11 +31,9 @@ CMAKE_OPTIONS += \
         -DENABLE_LIB_ONLY=ON
 
 define Build/InstallDev
-	$(INSTALL_DIR) $(1)/usr/include/nghttp2
-	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/nghttp2/*.h $(1)/usr/include/nghttp2/
-	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
-	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnghttp2.so* $(1)/usr/lib/
+	$(call Build/InstallDev/cmake,$(1))
+	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libnghttp2.pc
+	$(SED) 's,/usr/lib,$$$${prefix}/lib,g' $(1)/usr/lib/pkgconfig/libnghttp2.pc
 endef
 
 define Package/libnghttp2/install
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
