Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E61B11CA22
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 11:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GLJ59+fw8MGFYv5xLhGCQ5xwTQgL9YSm7peo8bbMZPA=; b=qI+S8+uY0uqh1y
	oiH+pJiBNK3k+DMqU7sMa87YVGi5LdaN7GSc8qyt89xGRaM6mpnhwl+HRjmudoWEOC4JyQKWk484b
	/jzMbXf5FpWf4QPfkKpCkcEWUD1Ts6cA73WVtLv0oMrhmHfxlRS0yl6EeDps3KzAuGxTX4kVTYJUp
	2rwmvQNF/GCgD3aLfK6nUAdyReExIz6SL8cJIzAmWbmPdX9hHw+gsZ/rDmH0lgocB+upC0oR5CBmF
	DTNUIE/j0PYBP2UQSu4657FgwPMLx4Fo+zDeorPx0rFaIzogvUX5h/4VggnE5m0vygCQX7HP1L0dk
	/9bIdhfSshyNw3tm9lFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLJd-00031y-Te; Thu, 12 Dec 2019 10:03:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLJW-00031O-2F
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 10:03:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id b11so1654547wmj.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Dec 2019 02:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=19zRLCadcpZ9oPmh64eVKVkvW/zwOrrR3QCoHpM7mAk=;
 b=b9VCX5n02qA7KxI0MhUGnMNo9bja0MhmtHcsMA8LYzTCGpa4tWzTdnd+tx0+j4R8kf
 kd4A3q+gJSIW//beimjulP/+Nx6PShryVTtMujqLeIZpvhAlP3F04ME2XjFEi4dzA4AN
 hdkrzc8kJfuG8mPR7Fm5KXksrhPCCXVabwTlgth14zzBbq45t1iFKLGPMY/dv0v4EAY/
 7VZUzwLnMT93ko51YsGnWCQrzkMbTqkgDX33WFuGNr1rFC79b9nt82ekMZYJsnMAZBe2
 +U4sHWw0GDxjPDA5gH3u9z/JMoTnJwvAGG9UH6H21++CJFvoHHGwilqWV1l7U42hZ2xK
 vt/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=19zRLCadcpZ9oPmh64eVKVkvW/zwOrrR3QCoHpM7mAk=;
 b=AYpWw8+YUzPXcM9lu88230gf9IXH4Q0T+VG+sCN0rzVfpmxx/cUzKftv0vJOwgMta7
 SIFrxVjP+oBSJT4KlhiQC7T2gzmoHnvCy6gtYapav4kjZWJTW956GhvH2qxtY2h/jkxW
 enuhkmuSkzjFkhgVCcO9w9aVnOv9VU5/osYeWhxcUZDeVcV5ui/O9n1tuCJA+v6VLz92
 qr3bcOYUC4efYOFvmwTMic+76yRDYSR1TYwf1yfblDkrN8uYW9Mi+nd+xxX1oPpAlhDv
 CbPd5jY5YCIg8jWTuR2IVRs74tMqApV46uCL5mz4iE7IeygEVsJJcevEl5OvP2U6e+GP
 xntw==
X-Gm-Message-State: APjAAAXZEZoBfOV5bMmXArpa3sv9s43Ojw/cAVvTtmsZ+VOna6tuZNVP
 aiO7Wd++/SqyFDn8ycdTDvjbqd7D4DdT6g==
X-Google-Smtp-Source: APXvYqzTSlH3Nh8CX0h1+bSXIo+J+L24H3KXr7/W4meFDKscm+NkVVVoRwf1LgAS50/8rO3UEyqWXQ==
X-Received: by 2002:a1c:5401:: with SMTP id i1mr5261890wmb.99.1576144995725;
 Thu, 12 Dec 2019 02:03:15 -0800 (PST)
Received: from smms-mbp.vortex ([109.251.129.237])
 by smtp.gmail.com with ESMTPSA id n14sm5615217wmi.26.2019.12.12.02.03.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Dec 2019 02:03:15 -0800 (PST)
From: Maxim Storchak <m.storchak@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Dec 2019 12:02:19 +0200
Message-Id: <20191212100218.37783-1-m.storchak@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_020318_106011_43A87C90 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (m.storchak[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ca-certificates: provide ca-certs by both
 ca-certificates and ca-bundle
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
