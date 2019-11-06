Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F602F20C2
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 22:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lm2scav/VuwqFHsquVsniGVQumpbfcyweBYUiicqXOg=; b=mYdA6+7BjrmNNq
	oMcEUiDeOKVtdnwoPQgWFCFsioFyUe3ncIQoy9UkJJEA/gFu+zUp1K0TnNwORWrCFSOEuR6sQaW1J
	UH4ckhKV8/tAblK2itbdJgDgjxfQ2BhAqWGNd8+ea5haR+XDb0iJAWazx2OsSSRV7TJiFXWyGq2Sf
	4y/7/zxoVkcludEjBYulJn2Wo3ewTIIxfxEiJiTlkYYRvPjEMtjy3RPK0z99YtUiFrDWS6RXUPsfm
	DMvCNdENxLk7Z5ERkwrAAnvysOGQ/DdhjiTZWub44/8dxgEfdoDYxoW8AzHqabSyn6Fv3niIxMpGI
	2yThMIco0hmxNVuFhYoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSmA-0003jM-Lv; Wed, 06 Nov 2019 21:23:38 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSlz-0003iq-Q4
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 21:23:29 +0000
Received: by mail-qt1-x843.google.com with SMTP id r22so25276327qtt.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 Nov 2019 13:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jZUHgvcZzBUj2zuMYDrzI/FldIpQyTFUMJ7pUhd3Fns=;
 b=e7In5t1vClY7KheyzjVYDroSdxyMHXn91UHOU7HCZ1PnOmOMfwUsHnIZ4jrNLskMOs
 VeX3XEFuS3IStWRIwM/7Sp7L/5nkWnnYfa3Xr9NardC2gu9+44qan9LnCVgWfRkg6O0x
 PPf5lwgkdCZ/1Q580EX35QWLOi1tX+Uldy9RFPUxPYhMa4DpZRrZM9V6mTYoJXETJXr9
 UtNUorFi0Z4QGRH7hvMhdaI7OZylL4Rw7VckHUnCJyZ6hqnAOP2E6FIt850ZtOz5pkmw
 IyijWhdXp4x2jnqhkXgi8QrwST87LN0K47V3Xd2n0uFwMjmiXKy17g++Pm1HvpAQnYlk
 Zf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jZUHgvcZzBUj2zuMYDrzI/FldIpQyTFUMJ7pUhd3Fns=;
 b=M5gxsMqzSvSVGYeCwLsB0AmUzb7uxn/N8vNM1R/FBq2rmjZOcf+bnx0Kr0iC/DTy41
 e3x8uq5HGD7byZYriXuCJIgzT6njdfsfft2rF1j+yhbUVn23nBwOkv6cblWa6z60MTWX
 ggLC6/A3zwzmL7Ymj7K+Bg4Ydyc8PKjuhebSXvL3YSBEg2CYV8UNemVUYV/Wkof/tr8j
 v1hngFiQCEt3RozvprGcHWJrv4DLU6Om41xw3CvgVBhvRy+1XmWAal4PlhBM/ZwcHv5D
 e7smZi3up7lrW66newu93c0wGsaqlxBFkiATQ/L4k0fVLSLS1P3OFiXAMF8oy/tHujke
 1AQA==
X-Gm-Message-State: APjAAAV+WIPNeVd23V9uJdnYH44wywUngekNiPXrlhlVuIR/LHNdLB7o
 xKK6Akd1xJQxC46yMeEXzLmBy1wt
X-Google-Smtp-Source: APXvYqwpp9KVWtufYkyvL6hDL7uUS5Z0hSIsz4sX7yr3EZ/nrX8XiTr+x1OEoZJG3mhlqUdY9f5y8w==
X-Received: by 2002:ac8:117:: with SMTP id e23mr93619qtg.82.1573075405787;
 Wed, 06 Nov 2019 13:23:25 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id p59sm97109qtd.2.2019.11.06.13.23.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 13:23:25 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 18:22:51 -0300
Message-Id: <20191106212252.27165-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_132327_878857_CB3DF5FC 
X-CRM114-Status: UNSURE (   4.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] kernel: add crypto_user mod to crypto-user
 pkg
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

This is needed to export crypto information to netfilter, allowing
the alt. afalg openssl engine to obtain information about the drivers
being used.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
Tested on WRT3200ACM, running openrt master.  For mvebu, this
increases the package size from 17,097 to 20,452.

diff --git a/package/kernel/linux/modules/crypto.mk b/package/kernel/linux/modules/crypto.mk
index 5ce6795895..d95f234d93 100644
--- a/package/kernel/linux/modules/crypto.mk
+++ b/package/kernel/linux/modules/crypto.mk
@@ -786,6 +786,7 @@ define KernelPackage/crypto-user
   TITLE:=CryptoAPI userspace interface
   DEPENDS:=+kmod-crypto-hash +kmod-crypto-manager
   KCONFIG:= \
+	CONFIG_CRYPTO_USER \
 	CONFIG_CRYPTO_USER_API \
 	CONFIG_CRYPTO_USER_API_AEAD \
 	CONFIG_CRYPTO_USER_API_HASH \
@@ -796,8 +797,9 @@ define KernelPackage/crypto-user
 	$(LINUX_DIR)/crypto/algif_aead.ko \
 	$(LINUX_DIR)/crypto/algif_hash.ko \
 	$(LINUX_DIR)/crypto/algif_rng.ko \
-	$(LINUX_DIR)/crypto/algif_skcipher.ko
-  AUTOLOAD:=$(call AutoLoad,09,af_alg algif_aead algif_hash algif_rng algif_skcipher)
+	$(LINUX_DIR)/crypto/algif_skcipher.ko \
+	$(LINUX_DIR)/crypto/crypto_user.ko
+  AUTOLOAD:=$(call AutoLoad,09,af_alg algif_aead algif_hash algif_rng algif_skcipher crypto_user)
   $(call AddDepends/crypto)
 endef
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
