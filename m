Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C646C823E1
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 19:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3aGjgYbLeTYUWu4W2ze8bv1uTi+XnRe+JaVpBm+eMs=; b=f0dqVYSb9lae1f
	3L4/bORw3B/XBEYToHGp7fSqDVQDIsX/WoSouaWItmjwVZ5nI84vsJ+rfIrvIqOaSOJROslAl0x1i
	LfDyzCP9M/N0lPLDN5dDSpa+vijKOUv5vT8vbm5luQEotIQP2cb+JAnlQ+pz9lM9cFA4iRqrgqgWU
	nZzrCd7vJ4i/LZ0aeaSTbLgu/lj7h+Qig2QMcUUb69UywKfrx8ZCm4pBYP77KJg4ZDOR4rXyZmaHj
	HFE/s98T0wOiVsIzJAJryaH17SZW6YdbQEkQhAvU2oaQ7cZjnRT1wtDm8byGUWJQ1VsEiMXh041il
	ylKYExl73Quw+L/lp6Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugeL-00056C-Ax; Mon, 05 Aug 2019 17:19:57 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huge0-0004wj-M6
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 17:19:38 +0000
Received: by mail-qt1-x82a.google.com with SMTP id l9so81637105qtu.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 10:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d6Xbgi7crALSmXgblRFQmK37tISzodQTs/Z4Qu7Nkb4=;
 b=RCOKhr2IkUWQJnoqcIknyEZbP7tKolmh1jbDzEUOZPqLZ5IG55DBvSLvwFgY1T+y0/
 ohhfHe8Xw0XVOE8iCLQFwjUsvuax+HMMkEZt0AInrOs2dUJgVagzCbMLohZ2hofb5Ars
 QnYhQ0oF+ief+zuoZY5YBn2ZLTKZU2TAFgsm5niYqLkkxe8AzHph2CKjKKidwNb+vZLd
 K7UWNvXlQgd+ecjpOr4rSP3kGbvLVW5n5hAjZec3GkZyTLHzlIXMT5DWSrmrpJzZ1Aqq
 u/BCJTlsnl4+9jEdFH702haqcgyjGjLH8fuCrsDIeob0iXKrXY7UF1gChZZezkGlIcd+
 J0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d6Xbgi7crALSmXgblRFQmK37tISzodQTs/Z4Qu7Nkb4=;
 b=FJXznsIOzbMSllXZGtZGO692GNicoHhyATN45MWSV6XpvchYPQAIf/vIslPWAKlfBJ
 T60iRNJ7fUem1/xtpiwV16RoAFt7coLfw7JBtIMYNyuR7/9HKOGw8fU9lcO4RZRH7jbs
 wmahGj4A6gUaCvnxT2DbKonpRZlyEOtIglO3mq4mR/Rhs/BPKuY8vmWG7el1ZaMZOoYQ
 HQuHKHNw175Od+9QN/xN7w86v7tjhRwsDCJgwHN1RuX5jFXvvNvBA+UHA7O5aXDpFj+/
 eGvC2aogZ1CQGn/hVWs1VZXpxyshHa7oF83QUobB+cvu+++Okgzkaw/R+fCIALAeRu5j
 +XMQ==
X-Gm-Message-State: APjAAAUwgZiMjWFRLBmvnkSSsDKKffiZHLgyKNHo98CmsHAXU5pNNrvv
 UjATpr8BFVG2Bn29ERYDjQwRwO5cHcM=
X-Google-Smtp-Source: APXvYqxWM67jsyi35KCBSGgfiVU9IIR62IgRJN9t6ldYVJQjafLm1SW5q7PYJ4SAMxrMZNPFiacoBQ==
X-Received: by 2002:ac8:31ba:: with SMTP id
 h55mr109227126qte.363.1565025575284; 
 Mon, 05 Aug 2019 10:19:35 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id j2sm38491728qtb.89.2019.08.05.10.19.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 10:19:34 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 14:19:21 -0300
Message-Id: <20190805171921.3995-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805171921.3995-1-cotequeiroz@gmail.com>
References: <20190805144758.3129-1-cotequeiroz@gmail.com>
 <20190805171921.3995-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_101936_720626_08B5F6C8 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [RFC 18.06 PATCH 3/3] hostapd: bump wolfssl
 variants, adjust options
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

wolfssl changed ABI version, so this forces an update to hostapd.
Some build options selected by hostapd are always built now, so they
were removed.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/network/services/hostapd/Config.in b/package/network/services/hostapd/Config.in
index 222cfb7f13..6611958cf1 100644
--- a/package/network/services/hostapd/Config.in
+++ b/package/network/services/hostapd/Config.in
@@ -67,15 +67,10 @@ config WPA_WOLFSSL
 	        PACKAGE_wpad-wolfssl ||\
 	        PACKAGE_wpad-mesh-wolfssl ||\
 	        PACKAGE_eapol-test-wolfssl
-	select PACKAGE_libwolfssl
 	select WOLFSSL_HAS_AES_CCM
-	select WOLFSSL_HAS_AES_GCM
 	select WOLFSSL_HAS_ARC4
-	select WOLFSSL_HAS_DES3
 	select WOLFSSL_HAS_DH
-	select WOLFSSL_HAS_ECC
 	select WOLFSSL_HAS_OCSP
-	select WOLFSSL_HAS_PSK
 	select WOLFSSL_HAS_SESSION_TICKET
 	select WOLFSSL_HAS_WPAS
 
diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index b548ecdf1b..3412125d2c 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -6,6 +6,15 @@
 
 include $(TOPDIR)/rules.mk
 
+### NOTICE FOR THE NEXT VERSION/RELEASE BUMP.
+###
+# The wolfssl variants currently have a different RELEASE than the others.
+# This is temporary, and was done to avoid to needlessly upgrade the rest of the
+# variants.  So when the next update happen, things should get back to normal.
+# If this package gets a PKG_RELEASE bump, please use PKG_RELEASE:=8, and remove the
+# RELEASE:=7 lines under the wolfssl variants, as well as this notice.
+# If the VERSION/SOURCE_DATE gets updated, remove the notice and the RELEASE:=7 lines.
+
 PKG_NAME:=hostapd
 PKG_RELEASE:=6
 
@@ -170,6 +179,9 @@ Package/hostapd-openssl/description = $(Package/hostapd/description)
 define Package/hostapd-wolfssl
 $(call Package/hostapd/Default,$(1))
   TITLE+= (full)
+####
+  RELEASE:=7
+####
   VARIANT:=full-wolfssl
   DEPENDS+=+libwolfssl
 endef
@@ -222,6 +234,9 @@ Package/wpad-openssl/description = $(Package/wpad/description)
 define Package/wpad-wolfssl
 $(call Package/wpad/Default,$(1))
   TITLE+= (full)
+####
+  RELEASE:=7
+####
   VARIANT:=wpad-full-wolfssl
   DEPENDS+=+libwolfssl
 endef
@@ -260,6 +275,9 @@ Package/wpad-mesh-openssl/description = $(Package/wpad-mesh/description)
 define Package/wpad-mesh-wolfssl
 $(call Package/wpad-mesh,$(1))
   DEPENDS+=+libwolfssl
+####
+  RELEASE:=7
+####
   VARIANT:=wpad-mesh-wolfssl
 endef
 
@@ -290,6 +308,9 @@ endef
 
 define Package/wpa-supplicant-wolfssl
 $(call Package/wpa-supplicant/Default,$(1))
+####
+  RELEASE:=7
+####
   VARIANT:=supplicant-full-wolfssl
   DEPENDS+=+libwolfssl
 endef
@@ -320,6 +341,9 @@ endef
 
 define Package/wpa-supplicant-mesh-wolfssl
 $(call Package/wpa-supplicant-mesh/Default,$(1))
+####
+  RELEASE:=7
+####
   VARIANT:=supplicant-mesh-wolfssl
   DEPENDS+=+libwolfssl
 endef
@@ -379,6 +403,9 @@ define Package/eapol-test-wolfssl
   TITLE:=802.1x authentication test utility
   SECTION:=net
   CATEGORY:=Network
+####
+  RELEASE:=7
+####
   VARIANT:=supplicant-full-wolfssl
   CONFLICTS:=$(filter-out eapol-test-openssl ,$(filter-out eapol-test-wolfssl ,$(EAPOL_TEST_PROVIDERS)))
   DEPENDS:=$(DRV_DEPENDS) +libwolfssl

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
