Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234D4B2AE8
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 12:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/zgaxeWKluSTgirXeMeqJQt5KVU/AhnfYpNd8I3g6b8=; b=q2Ch08Rqf8pU4J
	DrKRez0dipnfEktM7waHzJyT3MVnT85OxTKec0ta2oqMTpYwFhMyS5yNyofZtdnXOd1yUnP6hBCng
	KvPdoi44C5lQh5/Lzv2RjUe3gy60s67ZiAyBYSKwymViBSBrzD1RQQ9dThXc0aOXd2kCtREViBdjm
	K9y0Me1SOMvWNSQUJ2rj8Dc0BLBoYyFqSR+6kiWQjp3vuRpflQCxZRKGAvfo14+mn1xr6/ar7O21d
	Et7m3iI8QqRCiUIUxWkzx3P0oZTyL2Nca+wwl9QHx6GM3KQo3zmhvSOr7DiZRoghO/MciPH+jFjfg
	9Wq/Zt1c+PhN6L43N4CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i94sk-0001Cs-Oh; Sat, 14 Sep 2019 10:02:18 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i94sa-0001CV-Gu
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 10:02:09 +0000
Received: by mail-wm1-x32c.google.com with SMTP id p7so5089804wmp.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 03:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ybCvMEaptQV0rYaYQO18BgLVzH+fInSKDNrgirID7Cg=;
 b=ZaW0OtDHhmfcBegeYsL1J0GYg+0FIYNbOcK0wkmUPXH6e5G/v+fOIQ4hV7hRPBnaqJ
 IeNODodqvjgUi68lQgc7zo4QBKFvKn+gzEvvFWTlunIL+HJpyHx+P/uIEbBQwSYot8DF
 yi61oOlMeT+Xp/qGaqc/xEYwLtapQnOrX4pV6R30+MfJWWo11VlgyCBXWqzr0znXxsns
 5hgfQdSH2GCqPap1woRxnomhC8zPColP0MqS4SyjSSresBl/JILta/VTMGtS+/KYuf3Z
 XvsHM2sGzmU4LvRU+6fz9azmD1nO0BqjfzOQZ3V950A7PSZY++ci8mxp6fkIL/CYheEq
 J9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ybCvMEaptQV0rYaYQO18BgLVzH+fInSKDNrgirID7Cg=;
 b=nmQsbPq+TijSxQzhTFAxpbzORegUGahvSAYMj55dnaEdCChS4esmAxITBkV3AIu0cp
 nDAomhzM6z8FTQj3lFy1GAD+ecmuG/KFv8ROwcRH/QQnI0Tv2kO206U+PT4aPEAxomiU
 JvWL9icYpu7lz4ci9PeDINzcZt70c1Xr6o+9G7JTfkvZMRhCB8ArdibXt/MpGA7PJoOh
 WG7bkwcOQ9qE7hz4mOzF6zIxwFni+IjFR26EZbUv00s9qdn13pPm8JTtxe8ccprrHkmn
 gZF9hlKMWguC6PYygJ2CXcDk5S6q+6tyaW4OI+kcRgZLfKXK6PwCkNSrMaOgL0gfXuoL
 Mpbw==
X-Gm-Message-State: APjAAAUPtY49PhhAi63WMewZv5tyB0JOpgErVEp97gZ0VBT+K1BkNFYv
 jK9+Z3014qlTslbB5Zbm2fFLfpP1
X-Google-Smtp-Source: APXvYqz/BlF7/VNRUoDzt+dGiEnjzmAGeaPsXTOYKgXFwpp5ft0eTKUXc4C3C8B2ywGor2lXmqucWw==
X-Received: by 2002:a7b:cbc2:: with SMTP id n2mr6398643wmi.139.1568455324354; 
 Sat, 14 Sep 2019 03:02:04 -0700 (PDT)
Received: from tool.localnet (180.151.117.91.dynamic.reverse-mundo-r.com.
 [91.117.151.180])
 by smtp.googlemail.com with ESMTPSA id h9sm15287972wrv.30.2019.09.14.03.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 03:02:03 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Sep 2019 12:02:00 +0200
Message-ID: <2052541.qGprmitUZ9@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_030208_566867_36E68AB8 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dgcbueu[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v3] brcm63xx: R5010UNv2: fix flash
 partitions for 16MB flash
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
Cc: jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The router Nucom R5010UN v2 has the partitions defined for a 8MB flash, but the 
flash chip is 16MB size. Fix it

Fixes: 474cde61234c ("brcm63xx: probe SPI flash through DT")

Signed-off-by: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
---
Changes in v3: 
- add missing SOB
Changes in v2: 
- the mail client truncated the patch header, fixed

 target/linux/brcm63xx/dts/r5010unv2.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/brcm63xx/dts/r5010unv2.dts b/target/linux/brcm63xx/dts/r5010unv2.dts
index a782126300..89d9b763bd 100644
--- a/target/linux/brcm63xx/dts/r5010unv2.dts
+++ b/target/linux/brcm63xx/dts/r5010unv2.dts
@@ -95,13 +95,13 @@
                        };
 
                        linux@10000 {
-                               reg = <0x010000 0x7e0000>;
+                               reg = <0x010000 0xfe0000>;
                                label = "linux";
                                compatible = "brcm,bcm963xx-imagetag";
                        };
 
-                       nvram@7f0000 {
-                               reg = <0x7f0000 0x010000>;
+                       nvram@ff0000 {
+                               reg = <0xff0000 0x010000>;
                                label = "nvram";
                        };
                };
-- 
2.23.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
