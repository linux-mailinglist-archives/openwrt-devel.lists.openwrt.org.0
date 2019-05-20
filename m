Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE724016
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 20:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xpj4ckPxenG62OsEjj4VIPXEGOnchbkHSGWGfltLCQo=; b=T+Amfhh0Wird7P
	MXUT0fXLI5io90Fl+iL0Chmpc6zMPr6r1spBxoPILgWmTcknzq0Mu+jQUPcK1gxA3RLWy2oWrAKrY
	4VK2dywHW+264kwYhi4DX1Xf9ZhT5WownytBx90pqM4p53aN768FpmmcAjn5LLWmdXjljcdKOffPt
	rfn4YmY2zM4HF4PzPrGDzpFYYqTKeN5obCTFf8aSIJmVmfyg3pS+8MV0zB+WRqTEbL5Q2qd0lajc7
	foF9fse++DThxqx4CQhzCt+SIfkh70FaxXVrZVV9iNTNXA7kfF7kvgM5C7RDBSvv6yoAoWf7xfVzM
	90mfBZufN0Rk21u5JuBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmlU-0001Yl-5w; Mon, 20 May 2019 18:12:00 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmlM-0001YA-Ju
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 18:11:53 +0000
Received: by mail-pg1-x52f.google.com with SMTP id w22so7150505pgi.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 May 2019 11:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=9MQ3KLhbw44xatcZ6/lsO1Cea876r5c/CZAbRLAgQ0U=;
 b=DQUuLkLTQr2u5HK8LMuUZbggSUsK6tXFgQv4AtUkxGnAqyeexwM6wlrdfWyInux5up
 9tV4gQ6QE5iDuzRedxZKb+dtsA6ukNlveZm1UPmr2N2KlXEFka6G5xopkkKk04gznH5m
 9vkxOyJ4SDmkL0fSgk7qSQnpNgtygabnMDt/nC46Q/s1DaTpjqJmqs8hBPNPK9LaINsJ
 LlCR6Eki5h1GxPYBnpE/dTsbKaD+SrZksyMOMvaRlf30L+j6jpOgq6jykVuQRdEYFf0W
 oUL38aW0OQ6KcQm1gUuMuLIbGbwFqshya2ixQCuG1hjfmoWueViwsnSKsNZHTap+IOI0
 sI6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=9MQ3KLhbw44xatcZ6/lsO1Cea876r5c/CZAbRLAgQ0U=;
 b=K9jX9DdRjBf55GqsBCsDXbDtO/8EmAyHJlG5XaqRsAklr+FPfbo+fLI2adb7AL6wo2
 kB7rBpjcNigmHl85EUty/ZkCaNaG9XvyFGBYuuk11xNDBvHA1CNxjv9EU5s+Udzr3PqK
 vnqMmswarMQJo4fz+9Ztb/RQFZpmDQ9avmCpgzXjfdsl3oSFHJjvD0F/jA1Pe7M9E1vb
 nVncdtklfalK2zmLjhkEXOivUYurzPg1ouEcD7SGeVjMEIf9aqfLGWssNSMeHN8GwWmk
 n4RddSJrRcaWtlFfkasBlK7ERXhlwvTn9YHQ1Rlb2wAJS32qGhBybHQ2fSsndMN+YbDu
 +PTw==
X-Gm-Message-State: APjAAAWeLI1LurXjkmzOo/vNQeDeyeTng5vYwx+WjNjctcerSaPjOx8n
 W4iUP9pgRpYp1Lbfd6vXs3LbeihT824=
X-Google-Smtp-Source: APXvYqzWtOVUxwqakjsV56060Y0bgHQ91pHNV5iM/t4CNxlWBMW7AmhomURrf0kHYyQqXIEQnnAUsw==
X-Received: by 2002:a63:42:: with SMTP id 63mr77204720pga.337.1558375911068;
 Mon, 20 May 2019 11:11:51 -0700 (PDT)
Received: from DESKTOP-24P3M22.lan (76-14-106-140.rk.wavecable.com.
 [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id c127sm30647758pfb.107.2019.05.20.11.11.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:11:50 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 11:11:49 -0700
Message-Id: <20190520181149.411-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_111152_653704_8B98398D 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2] kernel: Add AEAD and RNG support to
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
 v2: Rebased against master
 package/kernel/linux/modules/crypto.mk | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/package/kernel/linux/modules/crypto.mk b/package/kernel/linux/modules/crypto.mk
index 9cab04c6ed..4e843e1a5e 100644
--- a/package/kernel/linux/modules/crypto.mk
+++ b/package/kernel/linux/modules/crypto.mk
@@ -733,13 +733,17 @@ define KernelPackage/crypto-user
   DEPENDS:=+kmod-crypto-hash +kmod-crypto-manager
   KCONFIG:= \
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
 	$(LINUX_DIR)/crypto/algif_skcipher.ko
-  AUTOLOAD:=$(call AutoLoad,09,af_alg algif_hash algif_skcipher)
+  AUTOLOAD:=$(call AutoLoad,09,af_alg algif_aead algif_hash algif_rng algif_skcipher)
   $(call AddDepends/crypto)
 endef
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
