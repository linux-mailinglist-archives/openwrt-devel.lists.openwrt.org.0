Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EC51669DB
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 22:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWhR6XHc96LpuuMisWz7+MsuDI/vTlZ8e7kBAtcblso=; b=NhEYf02I8ojN+5
	pIn9XmCWpdTwfdDeL+kS2nJze25t/XygyKjF6/S2TqCHDgVmNwXHris34o9iOE7jKJU7x+oBnQUVA
	ixLTw+U4g+mCoPSvwpfEbpLsyCKoVezNadPkLv/BSnmTcHtO22pn5+r0itBlRnq8oFAsDMN9lgPkw
	3L3FdV7Uv1xO8b2Ej2tFAZt7O/gyk4KVceelFl5haaePRxJI/R0o/DJkTJJLstPFC03LD0grjvGAb
	Of6IHlIDRJh1P/lr41Lq/l/Yt6DCzj3aG/kULycB/Gon01bUda5pysROQY1suHsQ/CEOR9/ZOgB5x
	QaQL5xaEmpnjTqbYPHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tOx-0003UK-1m; Thu, 20 Feb 2020 21:30:31 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tO9-0001Zv-FG
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 21:29:42 +0000
Received: by mail-qk1-x743.google.com with SMTP id o28so5018764qkj.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 13:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gGeLYYDf4rTDRKaXnuvkVdhU7gNXptPx3oKBnLol/+w=;
 b=YJtxoaK4ImjySOT/zpEHFeDZPc4e1qLYN47kzrj6hui75+ISB4lESvQ/IJB0VO9ICW
 Ndm0J0g+0fEwNv8B6Kheot78q07yV8zDLsYspYDxk99bbVCyw40tLxwWr4yTfJMgHPBH
 F329TSANCBpxo6miYamzASBMDuX2IPjrpReZcmUcUyMpd4dHA4FxAPar4d9o+bhHcp2l
 QoZaCzuzbfd/I4HvH9mokGpDTJrjWF0hcvFlh7FY01qFevfpdHhYeC6HiQ2dlpIS5hvw
 Zm5jF00MvdCgAoxI3ra2plSxq0I21DuhFZyBJmnoHjrOIwiOY1RPiMcWkocItP8+aaLU
 QZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gGeLYYDf4rTDRKaXnuvkVdhU7gNXptPx3oKBnLol/+w=;
 b=F3yu7TYU7YC1m3KsKsH2/f4jS3uiVTnMKhPx0msRxrhitAT5elLEDNjB7H55srrhSb
 aI9bAFMFzrhaVpdIC74mcFQhOVCIuelFW47pLNkRk7bOlD/fTPXoHMuCRHjH+XBljp7x
 bZRqBeI5HUSnzZkHMFa9yloVfbU1F/HgYy4XdJFNiW4kZmrar1B56kdn/VvbR/lxOPvS
 NAzrUpfeAerzdZpOnF1GvU2aQ4orf8p6Cw9KXEhntsvpGBDR1cGGU8lRMoDYm+rUsNMn
 IjQF0ljAvgQhOaLIjpfyn3Teg+Pg2kpkB/WQINIPr8gg6xDIUA1HpiPJoCHA5OU9UoMU
 7NiA==
X-Gm-Message-State: APjAAAVsnbW3kPWI3ncKB39pGRoOIMOms+LSvRkkojCLHQtweg/d9ETY
 CLyVCzmrvazOdvycBz2bg3Mfn/6i
X-Google-Smtp-Source: APXvYqzalNJ9S+Ng2WO5NffbV8DjLgmgn53ehZ0Sy9jMAs3/HpltCeAIlTv2cwWoGj82Lx8c/iXjWQ==
X-Received: by 2002:a37:9d4b:: with SMTP id g72mr28954061qke.195.1582234179826; 
 Thu, 20 Feb 2020 13:29:39 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id t23sm412480qtp.82.2020.02.20.13.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 13:29:39 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 18:29:04 -0300
Message-Id: <20200220212904.2444-4-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200220212904.2444-1-cotequeiroz@gmail.com>
References: <20200220212904.2444-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_132941_520139_D065B07E 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2 3/3] build: reduce number of files passed
 to ipk-remove
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

Instead of using xargs to pass a huge number of files to
script/ipkg-remove, which will usually pick only one, use a more
restrictive wildcard so that, currently, at the most 325 files are
examined, instead of up to over 2,300.  The 325-file package is python,
which is picking up python3* ipks.  It is about to be removed.
Runner-up is ddns-scripts with 7 files.

This makes a second run of make package/luci/compile go from
real 16.40s; user 17.42s; sys 2.73s
to
real 10.71s; user 9.51s; sys 1.27s

There is a caveat though: if one were to remove the ABI_VERSION of a
package that ends in a digit [0-9], then the old package ipk will not be
removed from the bin directory by make package/abc2/clean.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/include/package-ipkg.mk b/include/package-ipkg.mk
index 351cf25394..5b0143d56d 100644
--- a/include/package-ipkg.mk
+++ b/include/package-ipkg.mk
@@ -18,20 +18,16 @@ IPKG_REMOVE:= \
 
 IPKG_STATE_DIR:=$(TARGET_DIR)/usr/lib/opkg
 
-# 1: command and initial arguments
-# 2: arguments list
-# 3: tmp filename
-define maybe_use_xargs
-  $(if $(word 512,$(2)), \
-    $(file >$(3),$(2)) $(XARGS) $(1) < "$(3)"; rm "$(3)", \
-    $(1) $(2))
+# Generates a make statement to return a wildcard for candidate ipkg files
+# 1: package name
+define gen_ipkg_wildcard
+  $(1)$$(if $$(filter -%,$$(ABIV_$(1))),,[^a-z-])*
 endef
 
 # 1: package name
 # 2: candidate ipk files
 define remove_ipkg_files
-  $(if $(strip $(2)), \
-    $(call maybe_use_xargs,$(IPKG_REMOVE) $(1),$(2),$(TMP_DIR)/$(1).in))
+  $(if $(strip $(2)),$(IPKG_REMOVE) $(1) $(2))
 endef
 
 # 1: package name
@@ -200,7 +196,8 @@ $(_endef)
     $$(IPKG_$(1)) : export DESCRIPTION=$$(Package/$(1)/description)
     $$(IPKG_$(1)) : export PATH=$$(TARGET_PATH_PKG)
     $(PKG_INFO_DIR)/$(1).provides $$(IPKG_$(1)): $(STAMP_BUILT) $(INCLUDE_DIR)/package-ipkg.mk
-	@rm -rf $$(IDIR_$(1)); $$(call remove_ipkg_files,$(1),$$(call opkg_package_files,$(1)*))
+	@rm -rf $$(IDIR_$(1)); \
+		$$(call remove_ipkg_files,$(1),$$(call opkg_package_files,$(call gen_ipkg_wildcard,$(1))))
 	mkdir -p $(PACKAGE_DIR) $$(IDIR_$(1))/CONTROL $(PKG_INFO_DIR)
 	$(call Package/$(1)/install,$$(IDIR_$(1)))
 	$(if $(Package/$(1)/install-overlay),mkdir -p $(PACKAGE_DIR) $$(IDIR_$(1))/rootfs-overlay)
@@ -268,7 +265,7 @@ $(_endef)
 	@[ -f $$(IPKG_$(1)) ]
 
     $(1)-clean:
-	$$(call remove_ipkg_files,$(1),$$(call opkg_package_files,$(1)*))
+	$$(call remove_ipkg_files,$(1),$$(call opkg_package_files,$(call gen_ipkg_wildcard,$(1))))
 
     clean: $(1)-clean
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
