Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25173BE304
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 19:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IejBQgureLT9gpS0ULJe8rtegAetqN70hxiOGtdYLY=; b=A3JWia9u9iO1L4
	aM8FV3ehXG9i54kojgi9RFjbvA3CiwQo3Iizd8/CWOmIrPgBuX2rDYtZG0E2+IDPUyP+gCW0o/RwZ
	ylwEkjUziACp/dU1jOALRBxhJrEProDdZYQWJyU4dzIgtvl620SYtKCJOZW8EonSgH0w6tnxvBxDa
	SDrYJlIhmgwQhVCGwr0xHDsa0+DwpJiPhuN4nq/Z1X8tEz/sLwzN/VVSZ4275UlCT5ChPv3SH8L5E
	Ees6+eIHQtzPeHf+fkslqEKY2E3ZShbpsQaWp3ImZnOCrmQa8MoZJtb7pwKLxpA10nPW2Wk4hmbOq
	qtZEKP9RORJKM4OlQlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAi3-0000kB-HK; Wed, 25 Sep 2019 17:04:11 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAhj-0000jn-Ea
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 17:03:52 +0000
Received: by mail-qt1-x843.google.com with SMTP id j31so172008qta.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 10:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9eMz40iC4EV54RCYCyvXOLAoAokIXRItYHJndKc+6yY=;
 b=VarCRCPQUCkNdfdKWVxV86s9wpux+S56OeSs/JR49aUktdmLmdfoLOd3/ujBcFJITN
 LfPZPTGXccCSg47VghkwcRBZRRWSSdnRVAPKLksoNK0m8Ai7vXjirHPyKOoU1K6uHhIO
 BteOkQzprZtXFFwQRJw7t+nB5C1YVo4FNtRYv6+zegwLro0KQcY9CoEo8dzfu+fH97bl
 DYJzaSYn9isF/vvld3ZvZKLDEVSLhHRoL4kXN7oO4/H5ayyke24Thr7BBigt/CFQq2B6
 QPijZd4LZpxP/cuhgyaZQ8f0nCJCaq/e0TMfcejdBfWwZYybJLN9G/Na23XxpaxsFij/
 0vZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9eMz40iC4EV54RCYCyvXOLAoAokIXRItYHJndKc+6yY=;
 b=Fm8UJOWcXdfpwgioAMZfZlSX3j9sIqBVbHtFl4JnQb6iNtZQvboFOC06XWfv7dmWY0
 0H7/YhRCldg6ctsKzZEZs3dTJGaK54ZT36wEaqFi59/kOgvNg10tnX5TNueVpuSUyN7+
 FJwxZa9ngjWvUt+MmkFBy4dZ9iXOTxXzdiCx5wgm7tyAMbr368VhtalfYiCBtjJjPaxB
 v2Z27XG5R6jk3+Qc1r76v2vsrKQ32hczWZaeniXJ7z0cmqoOJvYl9wguTBxl9RQNbjQc
 GuC/B0/rXprazxO90wfOt6Jw6T0GArHCUic9Flqjsbam3tGHFjN6lklgzun0PcLc7HM4
 q0Xg==
X-Gm-Message-State: APjAAAXlbrWxVPJzvvTxw4E02NLVAiO3O9Hdxsbll6cNeImiYQOcrx8E
 DyIbtHLpYhQeQ5kHlZjw+79eeWWr
X-Google-Smtp-Source: APXvYqx6uq4tof4JQHFbwZalOUIZJTCszmoGe9cH8b3J3IzfMh8O3x3ju8Uvifqa2r2U7cYqe7eklw==
X-Received: by 2002:ac8:548d:: with SMTP id h13mr326535qtq.228.1569431029132; 
 Wed, 25 Sep 2019 10:03:49 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e6sm52365qtr.25.2019.09.25.10.03.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 10:03:48 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Sep 2019 14:03:43 -0300
Message-Id: <20190925170343.11462-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920204804.10183-1-cotequeiroz@gmail.com>
References: <20190920204804.10183-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_100351_519423_DE7B164D 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: fix hw-crypto detection of qce
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

diff --git a/target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch b/target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
new file mode 100644
index 0000000000..58b0ebf5e7
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
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
+@@ -373,7 +373,7 @@ static int qce_ablkcipher_register_one(c
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
+@@ -526,7 +526,7 @@ static int qce_ahash_register_one(const
+ 	base = &alg->halg.base;
+ 	base->cra_blocksize = def->blocksize;
+ 	base->cra_priority = 300;
+-	base->cra_flags = CRYPTO_ALG_ASYNC;
++	base->cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;
+ 	base->cra_ctxsize = sizeof(struct qce_sha_ctx);
+ 	base->cra_alignmask = 0;
+ 	base->cra_module = THIS_MODULE;
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
