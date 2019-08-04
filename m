Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC8780950
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 06:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PLfYbf05qrAbgG0Z72GVXTUQqUPxQjF2ENbnQzIqyw=; b=TgFSYsWXlO4T5c
	B83VOTfWClBmfHSAywvaWh365zm1xx14sVBRBcZBlAnhLzPYzYEkG798CcoMh9enHEXPmsHegBh5N
	grrN9MKgCxLkqcp6SBtpoJ9VnASgpmbyRfgDmgGWQMlBS6D3mH7HfiLVQdEm52bs0q/HTjQMTcLDM
	mPFsiu/zrm4+oSBYA3qILJt92bVP/r3uwOULC12XJgdCEB0ukvq26VZIN+3j57q2ag2lkPc8MxiQU
	BEfdag+gg2efigXXBO17hAbfWaoKB/kwzu1rDyIkPcicLYBiUUCcv9u8rs5sMI/5bl/UJIdUUQRDb
	fzAhVg9Fh+nXTwmKtvpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu8Dz-0004GX-13; Sun, 04 Aug 2019 04:34:27 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu8D4-0003Rz-Hf
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 04:33:31 +0000
Received: by mail-ua1-x943.google.com with SMTP id c4so4313843uad.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 21:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GxweKoPRlHGT6DjYcdu6STUW0ZmE5QkMuUqjAQskFJ8=;
 b=Fpf0czZXNKztMrCNhPO0imCDaZyeIHnR/GmGa0R88I96aVg3GI9xBMIWU7OIImyA/v
 hjLJxrf6GWtt0eGmFujHgFSMfUGv737hSomB98k6o+IqNzjvAVexu1+JJGUzBbq+MOBe
 sXD6cAOR+L9UghVqfWv+r4lRn3K5mHW/5AvutK8HcmOxSvVmOTPg4Z7z30aZMR8DhsTl
 bE1r089nqupOeeybsFK9mkb7D2CMVHCnYA6goBIgHjNbsIFHjXXB3r/ndT2yQeWkBqax
 VQhzs/INWR5rTRj4F/OivYtob/AFktkG2BP09NhgbJDmOlLQ1lFgWiPm5XgBYSbxaz6q
 NZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GxweKoPRlHGT6DjYcdu6STUW0ZmE5QkMuUqjAQskFJ8=;
 b=TjgM8Cc5H/dTdG92rTLG1q0uayD+O6aM9g0EkkKTj/lktWOHJykmW2yOCc+g0wecJZ
 wlN1UsOQ9IfUIs6D7VkWsAtUwLKHMescXmSxrHnFjM10mmxxQtRHV1WmorOobiNKUKD8
 2Hp+GBVX8o0KwyIgm1d0QvwumAU+4Cqyuo+lfWNB41uV5jH3OHP1604c+/r8KDofmTmd
 +Gl0YuKdBwwMyvxeBXT1wVul2BYs575rGD1OYlkUe4bilIsXJJBa/2niL5PtjzzhYhR7
 Fu1bSc5N48elHTsRlRIzuA5KguTUjwVkvAd1/BDCiPQiIkWQuk5AMswpJeYDOG//Jtkb
 VbGg==
X-Gm-Message-State: APjAAAXGATxR7h/BE3CQl5qqd2wn9hHZbw2GMJqu6NYESCd907BJqhgk
 zig2MaYUVoQkXgnlkS2Yax4XBl/I
X-Google-Smtp-Source: APXvYqzSduJ8jYcBkBWs5IoquJvx9wprfvFu6DIA70loUbR4SHrlxHNyXkp4G03dVBf+R9IXyJTong==
X-Received: by 2002:ab0:48e7:: with SMTP id y36mr20459562uac.79.1564893208801; 
 Sat, 03 Aug 2019 21:33:28 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.31.112])
 by smtp.gmail.com with ESMTPSA id 10sm33314346vkl.33.2019.08.03.21.33.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 21:33:28 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 00:32:04 -0400
Message-Id: <20190804043206.30580-4-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804043206.30580-1-luaraneda@gmail.com>
References: <20190804043206.30580-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_213330_600887_773AD89F 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [190.22.31.112 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 3/5] zynq: k4.19: fix kernel panic on smp
 bring-up
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

This fixes a kernel panic when validating the
arguments of memcpy at runtime, which is enabled
by generic's CONFIG_FORTIFY_SOURCE for k4.19

This wasn't triggered on 4.14, as ARCH_HAS_FORTIFY_SOURCE
was added on k4.17 for the ARM architecture

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 ...nq-Use-memcpy_toio-instead-of-memcpy.patch | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 target/linux/zynq/patches-4.19/110-ARM-zynq-Use-memcpy_toio-instead-of-memcpy.patch

diff --git a/target/linux/zynq/patches-4.19/110-ARM-zynq-Use-memcpy_toio-instead-of-memcpy.patch b/target/linux/zynq/patches-4.19/110-ARM-zynq-Use-memcpy_toio-instead-of-memcpy.patch
new file mode 100644
index 0000000000..4ee6eea17d
--- /dev/null
+++ b/target/linux/zynq/patches-4.19/110-ARM-zynq-Use-memcpy_toio-instead-of-memcpy.patch
@@ -0,0 +1,40 @@
+From a801d4aa6000f7ba0ffc5ba9d841af62ec7e0bb1 Mon Sep 17 00:00:00 2001
+From: Luis Araneda <luaraneda@gmail.com>
+Date: Tue, 30 Jul 2019 00:29:03 -0400
+Subject: [RFC PATCH] ARM: zynq: Use memcpy_toio instead of memcpy on smp bring-up
+
+This fixes a kernel panic (read overflow) on memcpy when
+FORTIFY_SOURCE is enabled.
+
+The computed size of memcpy args are:
+- p_size (dst): 4294967295 = (size_t) -1
+- q_size (src): 1
+- size (len): 8
+
+Additionally, the memory is marked as __iomem, so one of
+the memcpy_* functions should be used for read/write
+
+Signed-off-by: Luis Araneda <luaraneda@gmail.com>
+---
+As of 2019-08-03, this patch is under review and waiting
+comments from the maintainer / author
+--
+ arch/arm/mach-zynq/platsmp.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
+index a7cfe07156f4..407abade7336 100644
+--- a/arch/arm/mach-zynq/platsmp.c
++++ b/arch/arm/mach-zynq/platsmp.c
+@@ -65,7 +65,7 @@ int zynq_cpun_start(u32 address, int cpu)
+ 			* 0x4: Jump by mov instruction
+ 			* 0x8: Jumping address
+ 			*/
+-			memcpy((__force void *)zero, &zynq_secondary_trampoline,
++			memcpy_toio(zero, &zynq_secondary_trampoline,
+ 							trampoline_size);
+ 			writel(address, zero + trampoline_size);
+ 
+-- 
+2.22.0
+
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
