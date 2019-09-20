Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35B6B98A0
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 22:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i9kspX0dbESYdJpSklflQ9K2ZAPKOSGbI61A7kUrJ6c=; b=mBL8Tloobq69FP
	BP97pidE31I4erpXdFmIFdeDwu/PpM7okU3rxWi5AxFjPRgrfky3dHYbXVnNoIdevs+qLxetzskKQ
	XwwfDFdyjL8qoX840zqYbOu5vHMSwAfSkqgfcqIuqMXlZaClg/8eaEt3j4ZxdWSSUfCOHjBuw/1tE
	b/kxlewmhclPCp6y055Db5u1MGODU9TgD+Q/d3AhfaCYOu2tKmWQorASocYWU2tE/Gc3pAQdO9vSd
	kJGebr/ccGjNIdEehXgANxtikLDLVVMQzLSyPCXKMxNB74cEsXzcde3Um2ck3h/mt3RIib/g+IpQl
	PHDX2s+5Pvk0uj2ivTAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBPpJ-00071u-45; Fri, 20 Sep 2019 20:48:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBPpC-00071d-Uf
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 20:48:20 +0000
Received: by mail-qk1-x744.google.com with SMTP id y144so8654521qkb.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 13:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cj6+Zfmen4NCOsYXlLBoYsbclR0ICTmwsc9ns1ZRS8o=;
 b=mR5744khvayJyfxGyjdzi/1fSsC5iO/0PEaF4foxSHCJ+NeE2+9PTiXFDB3DYeoniC
 L+g44q1Ka78fC/1nvCSSBQtao5wniqITVqgWpA/g4KIMwmXs46XQw5JBYOESu2sc47ds
 QHxak5z1H7sYdJIZn4QVZwFdX7iK8P/g7qhhDcFm9N4FHbVEZC/h801W5GlMhYFmQbgt
 u/+fh08AQyWvJ6c8HBliY15qwVKuHYaDseoi7RqxlTJk9na3EERNp9jzibhY+dDU7q+A
 SGt3CfTOAR4PuSw6nwlCqv2nH4WZ9xUGI5AnJOU9NIu47QfDYhsycEFVRB1RKBrEB6Gl
 2DIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cj6+Zfmen4NCOsYXlLBoYsbclR0ICTmwsc9ns1ZRS8o=;
 b=is/CaJZtvrgM+z0S5TmNurrQK+0m0P1EzcESXfFLhoCbU8FoPyH4nxNbLswS+BO+M3
 YIqDMGSG7W1ZOPZvFWyUWd5aztcpXdHktO2TzDrSV+KHpMexY5zgcq2D7hl9DmQlC/25
 r8fgFwLOGOr+9XsemYcPWE/wfH3pZEKMiBnJjshe+DLYw1U24OWtC1CPJPQLg59wp3MC
 /vZLBzZxMyN6yxG0FT8GoCXep3ygVfAZk1l7sfWgoOlYiivtS8ngm9GIV4QwKNmEFAnb
 MvLVecmX9rwJiYMDeonOfoiurq5+gzIvaXIUF4kzEWR9wTgKpCUs+BCXEz4kp0WruD0z
 V2qg==
X-Gm-Message-State: APjAAAXQsSbq5Qrigxh7qUYlTfYdS1GTego6oW1DMJDE3Dg3m4QfPrRF
 04G0Ne+iDP9iBnkZ7e/OK0xLQ/ww
X-Google-Smtp-Source: APXvYqxyxeNxhIMiLsFxOvEaVNAgGxnucae6VVVnWfVBbdl/TIoSZPHu5SIfCSCI0CIDPOiWtNlxZQ==
X-Received: by 2002:a37:a68e:: with SMTP id p136mr5652783qke.49.1569012497046; 
 Fri, 20 Sep 2019 13:48:17 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id d40sm1808218qtk.6.2019.09.20.13.48.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 13:48:16 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Sep 2019 17:48:04 -0300
Message-Id: <20190920204804.10183-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_134819_016019_CF94B848 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kernel: fix hw-crypto detection of qce
 driver
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

This adds the CRYPTO_ALG_KERN_DRIVER_ONLY flag to Qualcomm crypto engine
driver algorithms, so that openssl devcrypto can recognize them as
hardware-accelerated.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

--

It was reported to me at the forum:
https://forum.openwrt.org/t/comparing-cpu-soc-performance/36115/20

I have submitted the patch upstream, but haven't got any feedback yet.

This is a basic fix.  Nonetheless, I need someone with access to
Qualcomm Ahteros IPQ40XX/IPQ806X to confirm that it works.  I've
successfully compile-tested it for both targets.

The output of 'openssl engine -pre DUMP_INFO devcrypto' should show the
*-qce drivers as (hw accelerated), instead of (software).

The 4.14 patch should be cherry-picked to openwrt-19.07, and I will send
a patch for it after this is merged unless someone tell me otherwise.

diff --git a/target/linux/generic/pending-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch b/target/linux/generic/pending-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
new file mode 100644
index 0000000000..71ed00af22
--- /dev/null
+++ b/target/linux/generic/pending-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
@@ -0,0 +1,31 @@
+From: Eneas U de Queiroz <cotequeiroz@gmail.com>
+Subject: [PATCH] crypto: qce - add CRYPTO_ALG_KERN_DRIVER_ONLY flag
+
+Set the CRYPTO_ALG_KERN_DRIVER_ONLY flag to all algorithms exposed by
+the qce driver, since they are all hardware accelerated, accessible
+through a kernel driver only, and not available directly to userspace.
+
+Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
+
+--- a/drivers/crypto/qce/ablkcipher.c
++++ b/drivers/crypto/qce/ablkcipher.c
+@@ -373,7 +373,7 @@ static int qce_ablkcipher_register_one(const struct qce_ablkcipher_def *def,
+ 
+ 	alg->cra_priority = 300;
+ 	alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
+-			 CRYPTO_ALG_NEED_FALLBACK;
++			 CRYPTO_ALG_NEED_FALLBACK | CRYPTO_ALG_KERN_DRIVER_ONLY;
+ 	alg->cra_ctxsize = sizeof(struct qce_cipher_ctx);
+ 	alg->cra_alignmask = 0;
+ 	alg->cra_type = &crypto_ablkcipher_type;
+--- a/drivers/crypto/qce/sha.c
++++ b/drivers/crypto/qce/sha.c
+@@ -526,7 +526,7 @@ static int qce_ahash_register_one(const struct qce_ahash_def *def,
+ 	base = &alg->halg.base;
+ 	base->cra_blocksize = def->blocksize;
+ 	base->cra_priority = 300;
+-	base->cra_flags = CRYPTO_ALG_ASYNC;
++	base->cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;
+ 	base->cra_ctxsize = sizeof(struct qce_sha_ctx);
+ 	base->cra_alignmask = 0;
+ 	base->cra_module = THIS_MODULE;
diff --git a/target/linux/generic/pending-4.19/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch b/target/linux/generic/pending-4.19/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
new file mode 100644
index 0000000000..b542885d38
--- /dev/null
+++ b/target/linux/generic/pending-4.19/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
@@ -0,0 +1,31 @@
+From: Eneas U de Queiroz <cotequeiroz@gmail.com>
+Subject: [PATCH] crypto: qce - add CRYPTO_ALG_KERN_DRIVER_ONLY flag
+
+Set the CRYPTO_ALG_KERN_DRIVER_ONLY flag to all algorithms exposed by
+the qce driver, since they are all hardware accelerated, accessible
+through a kernel driver only, and not available directly to userspace.
+
+Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
+
+--- a/drivers/crypto/qce/ablkcipher.c
++++ b/drivers/crypto/qce/ablkcipher.c
+@@ -370,7 +370,7 @@ static int qce_ablkcipher_register_one(const struct qce_ablkcipher_def *def,
+ 
+ 	alg->cra_priority = 300;
+ 	alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
+-			 CRYPTO_ALG_NEED_FALLBACK;
++			 CRYPTO_ALG_NEED_FALLBACK | CRYPTO_ALG_KERN_DRIVER_ONLY;
+ 	alg->cra_ctxsize = sizeof(struct qce_cipher_ctx);
+ 	alg->cra_alignmask = 0;
+ 	alg->cra_type = &crypto_ablkcipher_type;
+--- a/drivers/crypto/qce/sha.c
++++ b/drivers/crypto/qce/sha.c
+@@ -503,7 +503,7 @@ static int qce_ahash_register_one(const struct qce_ahash_def *def,
+ 	base = &alg->halg.base;
+ 	base->cra_blocksize = def->blocksize;
+ 	base->cra_priority = 300;
+-	base->cra_flags = CRYPTO_ALG_ASYNC;
++	base->cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;
+ 	base->cra_ctxsize = sizeof(struct qce_sha_ctx);
+ 	base->cra_alignmask = 0;
+ 	base->cra_module = THIS_MODULE;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
