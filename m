Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1873D1669D9
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 22:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sOrMPpl6EgpnVa35w//S2KOsmoU/vNrzx6NRIMX2QY=; b=e27zpXhGh2QBDX
	FAPJtQIv7WE0+1MR7dV/PvfVGIyu7kbrlJZ3GbjGoq3fcjkuE0qhYvXfwgT/eqAdtOtB/kjUJcnLx
	Tpf+zPH5/wfG1rmmkW5z/zK7SlgZYNYWfrgVe9S6KEmUt3c1xedZP9+gKg4KcK+Louefoz2oxy4uA
	ZtpFAa3hvQqwmfywgONru+n9G4SdgYRFSZux7DFbibe0DIe6LZ3eSk/m46xC/5geGiTz4nhlcKvAT
	Oa9sZbI8n3dOxDp+M+DqhbRPESrbSelwmf/er0RtxjevR8EHPdv84HPgvnRUVQcGgnqTV4JaMpgLn
	HbIF3GovGPdwdAVBZEgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tOO-0001j6-H9; Thu, 20 Feb 2020 21:29:56 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tO6-0001Yz-Ge
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 21:29:39 +0000
Received: by mail-qk1-x741.google.com with SMTP id j8so5005656qka.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 13:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v1sZu9H9StmkxpqxGcg0UR60XSIX+dER1UKw53PXxHE=;
 b=HL3lXFRmNXxSdoviE6xtjyjdiA2Tk5r1PI5HRyXaAxEwDMAyKFc1n/DI1Xde43wjO3
 idy2UrnUmuu7QlrOztIFuC1honY2bp6pICLK6hRjtB4iPz3nl+yBgnptKF969hQ8Mydc
 gfuLA1t3yE0BPl63dwQAVEV+LE9+IMyaz7VDmHqvpdIL/jXbJW+rntR3dSI/CKaFaE7b
 6vKM+Jls856CbO+NlN7pa9tMs9KHe4z5nKDXplShJeCffyRuEc96AAqxYGTd6lFhKsbB
 Z/XmbhINx3R4AoXyHhSrnn4fygIMNboSgDisOUEZqq9bzRLy9jchw1vYEvkudMCSGb6+
 BBWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v1sZu9H9StmkxpqxGcg0UR60XSIX+dER1UKw53PXxHE=;
 b=I8j13SlIPUegn6l2PBvGe50QAhOpHQgh68BvrCuSp+RpQY5Gen91PjJjpS1vzgh0KJ
 Vy2o6dM43ywqViOXn0MA/pUcI+xpdhd50oWo24QadqBj19AsfWJo5j1xMFFr1JOcwE1g
 FzLvpRaOru90BaL/Efw/dJcDbkeKtmt5qN6ssllM1KRSZ66mgHFjy5Ms6B61lG5SHB3c
 /vUaxQYkbgpLGqUO3ZKVfF7WsV1kvrB2MSGLhuk+bkkTkNWgM64mLa/uxOQKxG4a6bHC
 20Dtr9KdwyrKCpLNd5XBfKvTEY6KzjXFtRzoQvj2bpmTRx0lFhOCcY48XCGtuCP0m9qz
 a2Sg==
X-Gm-Message-State: APjAAAXlbqMMhOoCuuw41rrwTg2zh2CpKBb7mzmTpRgGmoWdvOyDGkaY
 +JS8qZZorIXcnZU+gdzzAeoPWiTK
X-Google-Smtp-Source: APXvYqzlm47iedfH/Z55B1rpA0EKmOOJ1XClxcsVtmbPKwSt7imXa4YmxrYh5dy95rPv9T0y9Br5Pw==
X-Received: by 2002:ae9:dcc1:: with SMTP id
 q184mr29516969qkf.480.1582234176968; 
 Thu, 20 Feb 2020 13:29:36 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id t23sm412480qtp.82.2020.02.20.13.29.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 13:29:36 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 18:29:02 -0300
Message-Id: <20200220212904.2444-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200220212904.2444-1-cotequeiroz@gmail.com>
References: <20200220212904.2444-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_132938_549960_595B1B0D 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 1/3] build: package-ipkg: avoid calling
 wildcard twice
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Instead of calling $(wildcard) to check if the removal list is empty,
then calling it again to actually remove the files, define a function so
that the arguments are expanded only once when it gets called.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/include/package-ipkg.mk b/include/package-ipkg.mk
index c4c8f4a36f..cd052698e2 100644
--- a/include/package-ipkg.mk
+++ b/include/package-ipkg.mk
@@ -18,6 +18,12 @@ IPKG_REMOVE:= \
 
 IPKG_STATE_DIR:=$(TARGET_DIR)/usr/lib/opkg
 
+# 1: package name
+# 2: candidate ipk files
+define remove_ipkg_files
+  $(if $(strip $(2)),$(IPKG_REMOVE) $(1) $(2))
+endef
+
 # 1: package name
 # 2: variable name
 # 3: variable suffix
@@ -184,7 +190,7 @@ $(_endef)
     $$(IPKG_$(1)) : export DESCRIPTION=$$(Package/$(1)/description)
     $$(IPKG_$(1)) : export PATH=$$(TARGET_PATH_PKG)
     $(PKG_INFO_DIR)/$(1).provides $$(IPKG_$(1)): $(STAMP_BUILT) $(INCLUDE_DIR)/package-ipkg.mk
-	@rm -rf $$(IDIR_$(1)) $$(if $$(call opkg_package_files,$(1)*),; $$(IPKG_REMOVE) $(1) $$(call opkg_package_files,$(1)*))
+	@rm -rf $$(IDIR_$(1)); $$(call remove_ipkg_files,$(1),$$(call opkg_package_files,$(1)*))
 	mkdir -p $(PACKAGE_DIR) $$(IDIR_$(1))/CONTROL $(PKG_INFO_DIR)
 	$(call Package/$(1)/install,$$(IDIR_$(1)))
 	$(if $(Package/$(1)/install-overlay),mkdir -p $(PACKAGE_DIR) $$(IDIR_$(1))/rootfs-overlay)
@@ -252,7 +258,7 @@ $(_endef)
 	@[ -f $$(IPKG_$(1)) ]
 
     $(1)-clean:
-	$$(if $$(call opkg_package_files,$(1)*),$$(IPKG_REMOVE) $(1) $$(call opkg_package_files,$(1)*))
+	$$(call remove_ipkg_files,$(1),$$(call opkg_package_files,$(1)*))
 
     clean: $(1)-clean
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
