Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C5D80951
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 06:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQKouvgJQgMwrJMqf++0nsmVIJtK+EkSm+OBsF/VsBU=; b=F83BQwr/HFMWTz
	VezlrxYdFqxNAq6DkU/tJEp66Od21SgG10+zHBd+lp8w3gVM9XZLMJNTVszO1hLYO1KvR+/JB0UuL
	8+CTSx7j1W4LYoA7bC86TLxQoHm8VwiyeHey5yjfBsxuBals/D6NMqCp3HtcGunQxpivlbP052YEe
	pRggGtiumR5OoiW5dku68AKhTrm2i9mjn+oG0+G/doEq9JgJqwG7lJtkCWnVYb5dp2Ffn0naUVlDN
	kuWodDYyOAWcOcWB236ejokkpFM8FMVPbdxEBZEYQvCQ4Cn72lytthmj4GWCzZ+gNe92GRpQjck+y
	6oNa7btR6esQsStFNxjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu8ED-0004Vu-V8; Sun, 04 Aug 2019 04:34:42 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu8D5-0003W4-Bc
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 04:33:33 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id v6so53948733vsq.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 21:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YqWHDuNMBa2fjLxT5mH4x7FgKNYOb8FO/GVf/7NSNTw=;
 b=ClE9JVeEkIizzCjMjdt/cXJr87e3n6AGW8JztV3aeZovEBCsguEopg70+HoQXMktoH
 TB0U1bcBafegqfdcm5cGGNHAxI7vCmJjnr6R6AUxY/DU1W9jh400wJyO+a/d9O9PqztI
 4qyzMIWV8rJ0P/rekFng887GH6Qrn73cAWGDeiRCGtjKWxVxvmlAouhHtnYhCEfrhTsO
 S7ZOp6e+WzSJaBRan/badTm4nErkOJ7qsLPJvfny8CUPLnNexkvFxXkXZzXXp+lxZ0dT
 vzEhJusQMaDqssOoNWMog8DWcN/2kAj1O4wkjVI+wJjPxXysfVB4qA/nZvvjqZPgXqU+
 Gg8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YqWHDuNMBa2fjLxT5mH4x7FgKNYOb8FO/GVf/7NSNTw=;
 b=Ybmmf9nZ6gszyXp7bcj2lKWOMSlbzSRhYWy2lS8vrWbXuuA2lDZNTOw4atra6SHyaa
 gC/tBZwmBXtRonmCLhzr01W9RvR1Ng33nDrT5Zq437FqoR/Re6IPN0uxUsdTCiiW2xvB
 L0UyRGd9p+oqwBpv+eU7Vxi6BV1wu4hPxU8ewULyWySX075XYKo9my+wrdSQnl0UvgWa
 pTngMnuVg4JD9cK42jFFfx3c3w+8qttJ3N80stAswWX9LreWHzg76l0JrgfG3VaEKlxD
 DJ0M39hNRAVxSJdASv81omWj/mZ1k0FNVTp/vHxj8B892gAQ2eVtUNnVtyc/hL6u/tfS
 CcVg==
X-Gm-Message-State: APjAAAWR37vRS6wJROfksrFaTqGuZFM3QW+dpMGr/CzVcYLn5aj91HfI
 JKtbtYl+PceoRjfribsGOY4ITa4V
X-Google-Smtp-Source: APXvYqyrAHVp3eQvFOzQLHLvkgNgnWle+b0ZgZ22yuoosu4kXmWDIpaLYEUryRQ2c4B4Q+4UQ16U3g==
X-Received: by 2002:a67:f657:: with SMTP id u23mr55840979vso.154.1564893209994; 
 Sat, 03 Aug 2019 21:33:29 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.31.112])
 by smtp.gmail.com with ESMTPSA id 10sm33314346vkl.33.2019.08.03.21.33.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 21:33:29 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 00:32:05 -0400
Message-Id: <20190804043206.30580-5-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804043206.30580-1-luaraneda@gmail.com>
References: <20190804043206.30580-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_213331_410114_9D4AAD0D 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [190.22.31.112 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 4/5] zynq: switch to kernel 4.19
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Use kernel 4.19 by default

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 target/linux/zynq/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/zynq/Makefile b/target/linux/zynq/Makefile
index 3081101924..bcd36ffe2c 100644
--- a/target/linux/zynq/Makefile
+++ b/target/linux/zynq/Makefile
@@ -20,7 +20,7 @@ define Target/Description
 	Build firmware image for Zynq 7000 SoC devices.
 endef
 
-KERNEL_PATCHVER:=4.14
+KERNEL_PATCHVER:=4.19
 
 include $(INCLUDE_DIR)/target.mk
 
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
