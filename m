Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588EE3A23D
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 00:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T90hkX6CwrnbH3Olgv8c7hia7WmLSCTFyxbbOpsvYI0=; b=lBCAbxOYqjjuBN
	knwOflvNbzaw9Fx6Uju9LAQ6eHUL4TaMa1DJjTJugPyEn9vTTs/1mJje7TTQ2QVVkZwUpLTPE/jnB
	ZArZH6qkGAksLjczoqDJikom49klle0cSHF6MqnYxdAvLS3mBZtac7xWRsiP4QssWvRFCjiMuLG5d
	66zXyADreQ9+EL5i3JmZhrAzbbZvHPNivhVhSXFexO85pELh3dCH0XkaM6EtOYtuDTRUuAyk5Grws
	E87g/jCpPl+22TQjvZnk8No48/3OVTnss2zx2ZG5w0LA4zyO/IgoAs+BdOKxTj3TPAIQyARna/WWE
	+hYTxog0VZudZQqM/1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZjOa-0003jI-Ta; Sat, 08 Jun 2019 22:01:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZjOU-0003ir-MM
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 22:01:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so2160146plt.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 15:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VzhaNFF4RzY/r0tirL+Ox+W5sNxJ77jWBAXzBfckHOY=;
 b=hVre4P59rl3i4kzuCf7qbdxCWoWOUdtvC40aRi4UThkx2s2ujlUkpwx3qpDnYcPxlB
 NM9h/8hMa/Zxfb/DUZW7hJ5uyiqkEAKYJA6f7TxevH5TZAD7hwTI1/2qZ1MNSi69uxkm
 q8NnS2bVm4Qy5rL+olau2Dzo6rsSqn9cmtsLDnRx10YmTQmFSU6HNySgcD//y3NguU5E
 NnOZ9q2rktQ3I3j7r6uzb4BjrbjGSj27JkdrCNCzxRZ+Ic4+w1suJlB00b5QTXhXSxTc
 mHU9KaOsZpq4d3dmkNv947BzM8Iqxn7sdOachjdAefgiORXP04NKZy2I2a5MFniUr5Hp
 Hpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VzhaNFF4RzY/r0tirL+Ox+W5sNxJ77jWBAXzBfckHOY=;
 b=hevyQ9p+ZU32WjHQTKDKZfOPS3iMj1tzEaAOOQ2WrydFlxapzjiWlc/bL2zEtGbUtF
 +nDKAxZwEaEn7LskmJgwRVzyF9CvNVchFEFO6AJcje6VUjSY3+725DbuhBSeVK80cwEU
 sNref5E5P77vNOScO/fQcJn6t1HU6pthHxQnPKL8cYjaDdpucGkFxuSrh3tdKbnJkPCy
 7WyH3rAaRXmHDMornsb29D0WhtPc+t+E57YHI5jdrKCc4lERu9i75vHKcBAYQBJkNEHS
 TGTWM1hwSouv9Fix2OugxjZr3XU0YOAMmt2MM6yIQCdQKYnA6zy6I6kpD6G4ufx11T0g
 dvQA==
X-Gm-Message-State: APjAAAWnnnqV7He1YEutQTcbL5uBuYeCWZc5l5Jd1T0p+duXRS/ZFB5N
 ffCdNc2Ylc/jvtdJDBIS+TWxpdmhpsc=
X-Google-Smtp-Source: APXvYqxCEAV8OwaSS2adPq+WyizSbxRx2IUBVv9hg7IXnGwnLnhkglJEzLp6uyoG/4jitG8DAQ6jHQ==
X-Received: by 2002:a17:902:a716:: with SMTP id
 w22mr62535526plq.270.1560031256854; 
 Sat, 08 Jun 2019 15:00:56 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id c124sm7028402pfa.115.2019.06.08.15.00.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 15:00:56 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  9 Jun 2019 06:00:47 +0800
Message-Id: <20190608220047.23910-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_150058_753691_62D4EBD8 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] build: Remove STAGING_DIR_HOST references
 for InstallDev/UninstallDev
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Build/InstallDev no longer places a file list in
$(STAGING_DIR_HOST)/packages; this change removes the creation of
$(STAGING_DIR_HOST)/packages and the attempted removal of a
STAGING_DIR_HOST file list during package clean.

This also changes the host directory passed to Build/UninstallDev from
$(STAGING_DIR_HOST) to $(STAGING_DIR)/host, to match the directory
passed to Build/InstallDev.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 include/package.mk | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/package.mk b/include/package.mk
index 569ad647d6..348f75fba7 100644
--- a/include/package.mk
+++ b/include/package.mk
@@ -195,7 +195,7 @@ define Build/CoreTargets
   $(STAMP_INSTALLED) : export PATH=$$(TARGET_PATH_PKG)
   $(STAMP_INSTALLED): $(STAMP_BUILT)
 	rm -rf $(TMP_DIR)/stage-$(PKG_DIR_NAME)
-	mkdir -p $(TMP_DIR)/stage-$(PKG_DIR_NAME)/host $(STAGING_DIR)/packages $(STAGING_DIR_HOST)/packages
+	mkdir -p $(TMP_DIR)/stage-$(PKG_DIR_NAME)/host $(STAGING_DIR)/packages
 	$(foreach hook,$(Hooks/InstallDev/Pre),\
 		$(call $(hook),$(TMP_DIR)/stage-$(PKG_DIR_NAME),$(TMP_DIR)/stage-$(PKG_DIR_NAME)/host)$(sep)\
 	)
@@ -314,9 +314,9 @@ clean-build: $(if $(wildcard $(PKG_BUILD_DIR)/.autoremove),force-clean-build)
 
 clean: force-clean-build
 	$(CleanStaging)
-	$(call Build/UninstallDev,$(STAGING_DIR),$(STAGING_DIR_HOST))
+	$(call Build/UninstallDev,$(STAGING_DIR),$(STAGING_DIR)/host)
 	$(Build/Clean)
-	rm -f $(STAGING_DIR)/packages/$(STAGING_FILES_LIST) $(STAGING_DIR_HOST)/packages/$(STAGING_FILES_LIST)
+	rm -f $(STAGING_DIR)/packages/$(STAGING_FILES_LIST)
 
 dist:
 	$(Build/Dist)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
