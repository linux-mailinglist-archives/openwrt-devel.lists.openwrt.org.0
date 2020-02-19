Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7EC1651EC
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Feb 2020 22:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXQB8CutA21a35zb2Z1LcEkjNbxQ/v6oHjYHpxwjol0=; b=qy32NcUF3RHUe0
	dfoSrhK0HS53pDLkO+nxRhIhjfS8kxuvY1Nmw6v/jepTHW541d4bhnKZIXP7vsgL/oY+M04aeNuIr
	ZZjT8ok2xTppU1Y6gRbWe8SgoIEdPplDUL4zNP4VAB2a3sE9O+7Wk1e0iTjGbWOchXGJHQVUX5dkG
	VhLSNyVXNUDnZid1S20vNpH7fRxPZH608qByNtmapr+oQJxnPgPHYa1FPL+9U3Cff9MB8T+jIwDaz
	Ep8D7pvtEuZO4miL87lvK+DP/06aU68SPpXm9X4T/nF08ZqslCxYOc5wUp6WiVI/uqVQXD9NGB1uE
	0MKrhHf51joCL3tMNQZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XH4-00046D-Jg; Wed, 19 Feb 2020 21:52:54 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4XGo-0003wj-Ur
 for openwrt-devel@lists.openwrt.org; Wed, 19 Feb 2020 21:52:40 +0000
Received: by mail-qt1-x841.google.com with SMTP id t13so1419659qto.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Feb 2020 13:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BYT7Ku/v3MzMr1f0Gvq/nJmOUahhqWLgO6nSBsx6Pqo=;
 b=CeCr1QoGjSgOoyW8xGNs7eO6lMt0cevmCvzyCbPMvmYt5CcD5DblevZ9yXsE4W+gUI
 aGhmmqfZoPCmswGd3BEwZgaSuwm0C27yT3I3ow2l0/TOCIlK+5rboWZXW/5GrC3/YlUc
 kwRcBt0PBecDGZQcQw4AkknAMs3tQf9V+1oV3iH/tS884qPPUa6FnlQ6GTA0zviH2LhU
 uqlDTenRUuohbTQHsj9ed7NTVBEea/+uaQAKAIWykUyEkCiTQ/NP0/b1LV9u5mZGuGVc
 LQEJZLJDnMt1AKTAfFQL28Se50hTty6yYy8QfXQA3TyOB54XGVizc+wWfEo1tR80qSmB
 v+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BYT7Ku/v3MzMr1f0Gvq/nJmOUahhqWLgO6nSBsx6Pqo=;
 b=GoHulqRHb3+wqfiJg82kxjbOyTTFN3VqVTKXhJDvK1bUr+CFLTrze4N5nxCVQKuTR2
 Z41CN+Drbp67pFeJ0bHuGPV8tURxr31M5wkZjOpLkHPLuNa8j3ecgqL2Tvt+xitpvoal
 kTOd8JiYlEa3pujLcGxoKxMkwyV2MoNVDdsc3MsA0DcukeXuSF86TQXjUvwQC35jELTL
 rfP78T3fls891+mIHizRYUfeY1xmIJb679HziyxkFP6DEiAh/zp/uEQQtyZLB3HifsBy
 VTYiz9TyuSSLlsflcqA44CHQHKr68Ga7yDNAaZOuJ9XlPkJaA9XOiNW7S6HgXsAf/pNl
 UV5Q==
X-Gm-Message-State: APjAAAXwR2gGa09PQer6Cl+bvCiRZXy8wa6mv1CxWOMgPkNntH4QEu33
 FmfkLiGE5gnvRdRaWyW6ug/VpUCS
X-Google-Smtp-Source: APXvYqwxde6dGwJ2AAZgEmLpU74nZ9FCmLyvrnkeHCFf3OU8mj1Oh0BfWRAjq89uoh4IvolIb8FoaA==
X-Received: by 2002:aed:34c1:: with SMTP id x59mr24430532qtd.236.1582149157396; 
 Wed, 19 Feb 2020 13:52:37 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id x3sm714904qts.35.2020.02.19.13.52.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 13:52:36 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Feb 2020 18:52:11 -0300
Message-Id: <20200219215212.31263-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200219215212.31263-1-cotequeiroz@gmail.com>
References: <20200219215212.31263-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_135238_991678_9E933C35 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] build: package-ipkg: avoid calling
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
index c4c8f4a36f..5f7f2583a2 100644
--- a/include/package-ipkg.mk
+++ b/include/package-ipkg.mk
@@ -18,6 +18,12 @@ IPKG_REMOVE:= \
 
 IPKG_STATE_DIR:=$(TARGET_DIR)/usr/lib/opkg
 
+# 1: sourcename
+# 2: package files
+define RemoveOpkgPackageFiles
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
+	@rm -rf $$(IDIR_$(1)); $$(call RemoveOpkgPackageFiles,$(1),$$(call opkg_package_files,$(1)*))
 	mkdir -p $(PACKAGE_DIR) $$(IDIR_$(1))/CONTROL $(PKG_INFO_DIR)
 	$(call Package/$(1)/install,$$(IDIR_$(1)))
 	$(if $(Package/$(1)/install-overlay),mkdir -p $(PACKAGE_DIR) $$(IDIR_$(1))/rootfs-overlay)
@@ -252,7 +258,7 @@ $(_endef)
 	@[ -f $$(IPKG_$(1)) ]
 
     $(1)-clean:
-	$$(if $$(call opkg_package_files,$(1)*),$$(IPKG_REMOVE) $(1) $$(call opkg_package_files,$(1)*))
+	$$(call RemoveOpkgPackageFiles,$(1),$$(call opkg_package_files,$(1)*))
 
     clean: $(1)-clean
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
