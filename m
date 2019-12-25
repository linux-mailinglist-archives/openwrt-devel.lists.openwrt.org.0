Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED0512A871
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Dec 2019 16:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KSdklE158JJvNKxUVD+d4gE6cQjSexnJ0PpGGQfXMk=; b=uhtrK9wlHFsD6J
	SdJSdO9mGXkTVbdHrkf0zQK8B/+znc1UCvcX6h/4mpYBbwMjsTELMEUlQUCvgo6Azm5EnDGZw61P8
	Ch6AF3OhgIyYBBv/SSzmTayqwuHMSGp236bdvElFJZkr6cjdg7PdOGTtOe170QWVUlb1bFJuRd1pS
	6mia70M5sSEI0U+nXs02Q3D83Rg/IU+J8qzVrCGr3JX+Zp8XKNO/uRZy9EcHAp4yYFfssO6BevHGr
	VIHt7UVn3xLMBajpahwZZVgRCFQcCeemRSA4Yny/hpo8chXJL0+TRV9ODZgEmididb4wA0msLcFhC
	qoYe+SdodfZOWxVvn7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik8sN-000469-5i; Wed, 25 Dec 2019 15:47:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik8sA-000436-HQ
 for openwrt-devel@lists.openwrt.org; Wed, 25 Dec 2019 15:46:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so21961634wrw.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Dec 2019 07:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SJBmvnLR0WXlLCk/WMJjzCXWQLDc2ZNFdJlhlxYL0a0=;
 b=mcLYG6XZoTpzui3Y+G7sCtyYMHsoKBBIrBgC8IfYoAFfjMzzFWtJcdurq6KTqrCYxt
 7DJ7ZlNDPO0NUI685uiPzn2VUbaNFyeXh9wlgnDSZLYEegbX73ec7E5FESVVIggGJNwH
 wKlAbM6f5YWxcS2Qfz/+nkCg1tBXVG/NX/SmzrYPEMexeSgbw+c2pQJP79rgd4AEpUCa
 gsiAa69e6SnnnslTEIliQew2g3VeOyVmuRQ2KxaU7IJyzFqxS9WhTrMkaQPIrBAihoJT
 wO9XA+OcQpmk6sDaG4p0gwj4j0lWhDl6Bcmc/rwdROH1ERBTbyYPZjwMdaJ9tOSPkP93
 zmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SJBmvnLR0WXlLCk/WMJjzCXWQLDc2ZNFdJlhlxYL0a0=;
 b=mNCP+d1tazSHSlvQpnwcm1V8LozflOAK3lIqK1C+p98gQ5qZl/zJBkRmkUujSCDT+t
 Q/rLs4O2D2MKgTu6UQdW6u4Jew/DKvXWeyApZmk3SKl5NVo2A+aRQQim3dHfZ8RUGZMe
 ZQ7DsgcjB9+mpwa/re9N3/tf/DD14CBDJcrqHL9cyIgWTmXP8YvuluIB4dGf8F68h+7m
 EeoPNa27J69tD26QMBtF9hMpBZcop+I39WmuCgcKFIlON2l8MrB8jgrqj26jBwDdtPYB
 FAlr3CE4vWhhQRll3NpNFMMPnVOlzV3lxwapR7kWXEQVpZRudAFPjngan9zTNLbo9ESv
 ecBw==
X-Gm-Message-State: APjAAAUmiTqbSMWfj+gSA0bNeGRGNSs3IMFfzUKvyUS749REwlQk1qmR
 AP9Rl8NNMRK1h12RMi3wLuQJ62KNwfHHBQ==
X-Google-Smtp-Source: APXvYqz5huM5voqrOpLcUqaM6ihrlOWa8+LOroKW64hAZhHHUNsyfCjzM848j/dStPO39gBiKsvmKw==
X-Received: by 2002:adf:f504:: with SMTP id q4mr37550478wro.299.1577288809805; 
 Wed, 25 Dec 2019 07:46:49 -0800 (PST)
Received: from smms-mbp.vortex ([109.251.129.237])
 by smtp.gmail.com with ESMTPSA id n1sm27423860wrw.52.2019.12.25.07.46.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Dec 2019 07:46:48 -0800 (PST)
From: Maxim Storchak <m.storchak@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Dec 2019 17:46:27 +0200
Message-Id: <20191225154626.85567-1-m.storchak@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212100218.37783-1-m.storchak@gmail.com>
References: <20191212100218.37783-1-m.storchak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_074654_582381_EF5EE1DD 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (m.storchak[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 19.07] ca-certificates: provide ca-certs by
 both ca-certificates and ca-bundle
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
Cc: Maxim Storchak <m.storchak@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

- both packages provide ca-certs
- make ca-bundle the default provider

This should allow easy transition between these two forms of CA certificates storage

Signed-off-by: Maxim Storchak <m.storchak@gmail.com>
(cherry picked from commit dd299805ad18472a8245b4524a25e4381e166057)
---
 package/system/ca-certificates/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/package/system/ca-certificates/Makefile b/package/system/ca-certificates/Makefile
index f449645c77..ea7d253fa2 100644
--- a/package/system/ca-certificates/Makefile
+++ b/package/system/ca-certificates/Makefile
@@ -8,7 +8,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ca-certificates
 PKG_VERSION:=20190110
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_MAINTAINER:=
 
 PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).tar.xz
@@ -24,6 +24,7 @@ define Package/ca-certificates
   CATEGORY:=Base system
   TITLE:=System CA certificates
   PKGARCH:=all
+  PROVIDES:=ca-certs
 endef
 
 define Package/ca-bundle
@@ -31,6 +32,7 @@ define Package/ca-bundle
   CATEGORY:=Base system
   TITLE:=System CA certificates as a bundle
   PKGARCH:=all
+  PROVIDES:=ca-certs
 endef
 
 define Build/Install
@@ -59,5 +61,5 @@ define Package/ca-bundle/install
 	cat $(PKG_INSTALL_DIR)/usr/share/ca-certificates/*/*.crt >$(1)/etc/ssl/certs/ca-certificates.crt
 	$(LN) /etc/ssl/certs/ca-certificates.crt $(1)/etc/ssl/cert.pem
 endef
-$(eval $(call BuildPackage,ca-certificates))
 $(eval $(call BuildPackage,ca-bundle))
+$(eval $(call BuildPackage,ca-certificates))
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
