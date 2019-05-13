Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327ED1AE95
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 May 2019 02:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8JRo4f9niPlDl3o3RSXAZQAAtUvQgHChYma6Gsqmjhw=; b=cHGGMn08tqOxQs
	p03G13+UFPKJ5ERatqV9fGBciHuOwg8/YcJvrbMUw81TtWXLA0ybMA6mCwtcs7mB3EngJhhyCagOo
	uA1Ks1pHk+sPlIWrCeTBwdADgH2ZEpv7mkB9AJk4jDv9sAn1gWy+eNkPLHqueZMRHcn0mGC8hUzHH
	YKxwUetQiefDgfvzO3fpKFok2az8DJN7QzPpCKKbUO3Y3O9B2pKIfZ7a8JKpfMq9k9KNsjO7FKnQe
	PpEmii+o/EvgRTyWaEeQohb/Urc06IMuS/LPbGKOb6b5+UWM5AmkON4HSxdMp8X48SbOKfPO0m7hI
	GCBHYMp8vOwWQLIUY9Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPyvW-0005c0-87; Mon, 13 May 2019 00:34:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPyvN-0005bj-RB
 for openwrt-devel@lists.openwrt.org; Mon, 13 May 2019 00:34:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id z26so6211149pfg.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 May 2019 17:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=4KCRJlenGfE6G46iPL9B0DDwHOX75mNYeYEg/sKQ6Tk=;
 b=jf5lA2hFxFSy6Wpk7SN1KjoNzKCa2LnTu2cp9CsDR+C82v2FgUwzA69g/YCwJGdgRV
 kcYrT8DnJDe/apkcepTNRNG+4Vmf8TmdrHSGulqSmLi6Jv4HKSvVyOs1q+g3QMSctE0i
 SwW3k0upDxcjLJDxp2TCF4/XKaD9amu3Kbwc4Cbqdy6H5MUBm4A1+90pLhIjpnqrUfKO
 JVXMdXQehpoUzFRVnae8Wbq4Kz4iWotM5IeFwocKl9aaDbevGTzGZxpoefm88WKREuGl
 ofJrQMX4A8LoPxV4jDvxbLQaH4dYBM5cjqMpXzATZJ3h6RnoOTYOijbpYx1wmyr2As9j
 Z8xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=4KCRJlenGfE6G46iPL9B0DDwHOX75mNYeYEg/sKQ6Tk=;
 b=K9JoIy5Kw/2klyMxw1D20C7AMjO1k9pVVvnMCiv1L/zmQXc3Iw0YCQmOx6TLdK5MNC
 6Lya+60UM4IoK1L/vzz36DsEr3+SLK1yLNwuua3N9JbcPel/r4GAM/zwjZnVnnc9lLmW
 MXAVEh+V3P4Xw/5GJlbKaErSZZFOHXyNJXBMkcjFInzdNR76D6J5Lt7ioveUIHJKCkAy
 SEohwZpP2gpm2Ze5jQfn6rHapi3lOjmm5jUg3H3bIlfqCs+eyvvNdVvi9ZvByBOpjPlN
 3ARkH9RSFTFTOe856S/Mp9JfQvkGk7ROrB1f47k/Ki5hxVXyt4ofIPmFMIuV/7ItxPa9
 JrbQ==
X-Gm-Message-State: APjAAAV6q69dGUhNepdulVHcu70BoysPSXy+Z1Ahqj5c6l6sp2VwVHaU
 /gToHevTdpFf0mUqclunG0S3FJoELgc=
X-Google-Smtp-Source: APXvYqxE9sRHNhknogSIwi3Jzc66T5AgFcd5VzbX3aICH3nS6qDy0cBq8Ltk0rsslzto/0qKUJdp6w==
X-Received: by 2002:a63:6907:: with SMTP id e7mr27402958pgc.209.1557707675182; 
 Sun, 12 May 2019 17:34:35 -0700 (PDT)
Received: from DESKTOP-24P3M22.lan (76-14-106-140.rk.wavecable.com.
 [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id s18sm800919pgg.64.2019.05.12.17.34.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 17:34:33 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 17:34:32 -0700
Message-Id: <20190513003432.10523-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_173437_904818_009C661A 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] kernel: Add AEAD and RNG support to
 kmod-crypto-user
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Now that kernel 3.18 is gone, we can safely add these features.

Tested on Turris Omnia.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/kernel/linux/modules/crypto.mk | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/package/kernel/linux/modules/crypto.mk b/package/kernel/linux/modules/crypto.mk
index e5b02df479..70f9edcc09 100644
--- a/package/kernel/linux/modules/crypto.mk
+++ b/package/kernel/linux/modules/crypto.mk
@@ -734,14 +734,18 @@ define KernelPackage/crypto-user
   KCONFIG:= \
 	CONFIG_CRYPTO_USER \
 	CONFIG_CRYPTO_USER_API \
+	CONFIG_CRYPTO_USER_API_AEAD \
 	CONFIG_CRYPTO_USER_API_HASH \
+	CONFIG_CRYPTO_USER_API_RNG \
 	CONFIG_CRYPTO_USER_API_SKCIPHER
   FILES:= \
 	$(LINUX_DIR)/crypto/af_alg.ko \
+	$(LINUX_DIR)/crypto/algif_aead.ko \
 	$(LINUX_DIR)/crypto/algif_hash.ko \
+	$(LINUX_DIR)/crypto/algif_rng.ko \
 	$(LINUX_DIR)/crypto/algif_skcipher.ko \
 	$(LINUX_DIR)/crypto/crypto_user.ko
-  AUTOLOAD:=$(call AutoLoad,09,af_alg algif_hash algif_skcipher, crypto_user)
+  AUTOLOAD:=$(call AutoLoad,09,af_alg algif_aead algif_hash algif_rng algif_skcipher, crypto_user)
   $(call AddDepends/crypto)
 endef
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
