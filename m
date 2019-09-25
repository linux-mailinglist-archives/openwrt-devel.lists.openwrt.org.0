Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F527BE111
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 17:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXh2RQ3S5NfN0m0A+A7bzJMDyemCfXvQ1Ed9IpAh10Y=; b=ekZm4vTogD0FUT
	8ykM2BCOyNgzvK7KKCEE9vGPb2QczWcotO19wSAJ1IQrccXHi3VRIl9s1F7eDjMWeL+P0jls/qf9W
	6GbU3aFXMojpF8zEBPYP7yfT6YgF0CsBoCYSE8ipGaDywXX2ZxlwymNyiQLWhIqLOqjYzVX9hsyMz
	Ls6H8r7iyIwNK+eFj+PUXFlGNTaAOU/JLjjb9/hnXND/sh1F3pEVl7wbuChibC+gjDDMyfLmyvrTl
	m/LW8Ano6M1bQmQc6QUY6lImneb7uT+l7V9kuIoiRiy1KIIojmauxlzp3DEoHHHGSSw5TBP2g6CMt
	ncE7S+1mghNeku1HZMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD951-00025m-3x; Wed, 25 Sep 2019 15:19:47 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD94q-00025R-PI
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 15:19:38 +0000
Received: by mail-qk1-x741.google.com with SMTP id w2so5608200qkf.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 08:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=duQmKsvc/2dcpOWJkD+3qnCfXKdNbI7eN2HCeeAzW5Q=;
 b=DZqV5D6WQaTPrQXizXOJeKxzQ6GI/Hpo1qW/FZni8H05rz4SUo6QtqTzXHJlCQhvoM
 KCJ6y+GIRT39YortNt0mSxHsIdDKZxYydqX/nY645T1Ay7/VOH5Ze5/XNsSztRFGURIP
 phT556XjDTd/J5rX9WeqlAK3YkopkG003P2l3FDod/BW2Pf/qqX9OMcZkIPWZgQOvHwf
 WVyqj362DmUt73ABjjOCQNUYq/3oF6IELpDUPkSL+OQu5gHiiWn4vSZtTjOOI7a+Jq5a
 hKHwPgftEzAE42YZCYDM0GH5Te6D2K+BkKGgl9mk1Rf8lh4bT22gPVD6Hd5vebGGlZS5
 R1ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=duQmKsvc/2dcpOWJkD+3qnCfXKdNbI7eN2HCeeAzW5Q=;
 b=HceGNUSsYXKVRo+CwyJnjeW9RxR7Xmpwtis874K2EgC6ssBD3iuj/yDxE74m5zr3mH
 OwCOJTSQKeB3gniVE9UZwUk6mmj5sreAv/qXUutDEu29pOo179qYgi6iGcgStzg5sD2p
 FL7Gb0IojtdYJ7LricTk3Z0/fm96Vegg+ZwjX+8h6pce3YD/UoY4NfByREv+QpyDkwk0
 mPSgZxDPzthB3m+3egjMshTS9jGMzC6x5PatQsNHb32ZD1q+R5uFRWeEGMI6e55Tna9C
 jyUIvIju1EEvqSkpJqyFh9+qfO2krMROJsVZmP+OU//LrKHcOKiGac9QdqeqSIOtFj6U
 wV/Q==
X-Gm-Message-State: APjAAAVxK0306AoBvFZZdM1EDp/t1RjksMSLvjMZ2Eb3njlIf5jF3bV0
 qqJqmXdixuvX2uMSMsLOEbEAJPgq
X-Google-Smtp-Source: APXvYqxQ5YGmTjUpaAfyBeYPewo18EXFTZrxECejrxgcpHYdgYYsFlX1Tv0/P/c/Vf/+xef8se/xpQ==
X-Received: by 2002:a37:2c44:: with SMTP id s65mr3843854qkh.303.1569424773697; 
 Wed, 25 Sep 2019 08:19:33 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id x55sm4363590qta.74.2019.09.25.08.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 08:19:32 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 25 Sep 2019 12:19:15 -0300
Message-Id: <20190925151915.1412-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <CAAd0S9C11Uqng-UCA6U56DWsEXTb32XKhVsp9AzU9mhb-4t0rg@mail.gmail.com>
References: <CAAd0S9C11Uqng-UCA6U56DWsEXTb32XKhVsp9AzU9mhb-4t0rg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_081936_848115_060FEC48 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] ipq806x: remove unsupported hw-crypto qce
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The following symbols, selected by the qce driver were removed:
	CONFIG_CRYPTO_CBC
	CONFIG_CRYPTO_CTR
	CONFIG_CRYPTO_DES
	CONFIG_CRYPTO_DEV_QCE
	CONFIG_CRYPTO_ECB
	CONFIG_CRYPTO_NULL
	CONFIG_CRYPTO_SEQIV
	CONFIG_CRYPTO_XTS

CONFIG_CRYPTO_GF128MUL was removed as well, since it is only needed by
some cipher modes (LRW, GCM), none of which are selected, and it is
packaged as a module.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

--

> The upstream qce crypto driver does not support the IPQ806x series.
> The ipq806x target used to host ipq40xx, so this driver was enabled as
> builtin back then.
> But since ipq40xx moved out, it's has become a symbol of "hope"....
> That maybe some day
> the NSS support of the IPQ806x can make use of it....
>
> So yeah, if you want to crush the hopes and dreams of the IPQ806X users,
> you can disable/remove the driver for the ipq806x target.
>
> Regards,
> Christian

My intention is not to "crush the hopes", but to avoid the frustration
when you find out something you thought was there not exist.

I did not remove CONFIG_CRYPTO_AEAD because it is already selected by
CONFIG_CRYPTO_PCRYPT=y in target/linux/generic/config-4.*, although I'm
not sure if I should not have dropped it anyway--it won't fail if I do.

Here is a dependency tree, showing only the removed symbols:

-CRYPTO_DEV_QCE
 \-CRYPTO_DES
 \-CRYPTO_ECB
 \-CRYPTO_CBC
 \-CRYPTO_XTS
 \-CRYPTO_CTR
   \-CRYPTO_SEQIV
     \-CRYPTO_AEAD*
     \-CRYPTO_NULL

Eneas

diff --git a/target/linux/ipq806x/config-4.14 b/target/linux/ipq806x/config-4.14
index 30736ae14e..38f5c94507 100644
--- a/target/linux/ipq806x/config-4.14
+++ b/target/linux/ipq806x/config-4.14
@@ -112,16 +112,10 @@ CONFIG_CRC16=y
 CONFIG_CRC32_SLICEBY8=y
 CONFIG_CRYPTO_AEAD=y
 CONFIG_CRYPTO_AEAD2=y
-CONFIG_CRYPTO_CBC=y
-CONFIG_CRYPTO_CTR=y
 CONFIG_CRYPTO_DEFLATE=y
-CONFIG_CRYPTO_DES=y
-CONFIG_CRYPTO_DEV_QCE=y
 CONFIG_CRYPTO_DRBG=y
 CONFIG_CRYPTO_DRBG_HMAC=y
 CONFIG_CRYPTO_DRBG_MENU=y
-CONFIG_CRYPTO_ECB=y
-CONFIG_CRYPTO_GF128MUL=y
 CONFIG_CRYPTO_HASH=y
 CONFIG_CRYPTO_HASH2=y
 CONFIG_CRYPTO_HMAC=y
@@ -130,15 +124,12 @@ CONFIG_CRYPTO_JITTERENTROPY=y
 CONFIG_CRYPTO_LZO=y
 CONFIG_CRYPTO_MANAGER=y
 CONFIG_CRYPTO_MANAGER2=y
-CONFIG_CRYPTO_NULL=y
 CONFIG_CRYPTO_NULL2=y
 CONFIG_CRYPTO_RNG=y
 CONFIG_CRYPTO_RNG2=y
 CONFIG_CRYPTO_RNG_DEFAULT=y
-CONFIG_CRYPTO_SEQIV=y
 CONFIG_CRYPTO_SHA256=y
 CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_CRYPTO_XTS=y
 CONFIG_DCACHE_WORD_ACCESS=y
 CONFIG_DEBUG_GPIO=y
 # CONFIG_DEBUG_UART_8250 is not set

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
