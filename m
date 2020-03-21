Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B57518E174
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 14:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfz4oe9h8KtyAB0G/Hkch5qzB/GJau1SAjIUCP6ZdEI=; b=jnAPCvw0NA3W89
	gCPoHdFP5i8yZy+NqeXMhw8DDi1Gorep2VxjM62QoXDcdu9H29O2FGUwIsb73PrxTOM3y+1h9vBxO
	aQkOlgLuxdx7PBDd3tfCjOY4aBiGggpaL+cxWnZ4E1Ncu4gfgGm86/EwYL1d/ZMfC11L/XfUaa1g/
	ILWqhZea3S3jJ4E2eVXCvfS6rFnlie880/0d0D/WzAXznQFs8hWrvUvl2I9HoKEO9mpp6KK03GYYk
	otSuAURsaronxaTGtgZsPphKcs13aV46CkAmjOoi68YoPl3jIZsvjioVsqQjcsb3Mr9hG7mgfA+yf
	FFttdxMXU5KRbRGvpGEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFdqh-0001W2-Rs; Sat, 21 Mar 2020 13:07:35 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFdq2-0000wE-5A
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 13:06:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id r22so2415667ljh.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 06:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rM79w9HTeJNfR2iv+gtMIc8SdmXvjH5LGIThLZGi1T4=;
 b=F2jQnO0h+T/OwwUWnPELmosj5rglJU5BV5ccPL4Zz2N6ctzHenDkWQ/qnvPdkaztCV
 Ke/9Zq7ZDv4iGOGJsGpYbu+zJPlS+7H1YRNAmIoY2rQDtB7x9YSsQGYL0StHj8cJMRBF
 LCHYv6dNuCCwVycnuNFl2jID6oDZeKphJiPBVZsuvV9/SS/BS7xYALiB8rV3RdppvgwM
 BpY5PjOqE31974HyNpMoj46GRXuGZTSOc6gECxgo6xo4qCBx9PzeIRf43ZJyijdfjCII
 vJWruYDmN2b1jpehyH5HL8t6M6wNFbv8yj2USjRECF1MRuShwD9cG31dCfEIcACikXJN
 +FVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rM79w9HTeJNfR2iv+gtMIc8SdmXvjH5LGIThLZGi1T4=;
 b=Kj/J60dviz9BU+JfeC+dpwd7R3zMO6DOC4KcZ+3R4C48Hq7FPwpmTG2AZyOx4U+Gzp
 iVfjbLxBZQKREz3m4P0PBoWkjYJjrxuPyCp3OkwW/kwCpemmRgDZ2zvG1U3HmCTshLiL
 9hbEG8s1FUYhnBuWr8r/VKsbzHZ8MI84gMCp1uKZVK9CN/+owLcDQqU9pZEGWgIvaTCQ
 N/bf8BLM/F+Ob6AtrkUgt+g1TWlxbzedGMc1JFg44WtQzsNUrxr3alaYCGCMIVR7Hqdz
 ru0pMeOpDOlbm6D9U1KXCSHfzWWdFNb+TAtCnWbSPnwXuxzdHF7v5lXKgJ8Ria1dPNSa
 v/KQ==
X-Gm-Message-State: ANhLgQ398r6G5++saiNKEsODae8vl9CDtqymrTCFVMt/EPf/QwsZvS5a
 XAXLizjfT5v6imBVyj0J7SxJFA==
X-Google-Smtp-Source: ADFU+vu3970UNx7V1Y77t/TNvqjfHP0yPPln3VPxmDy804TlmttbsonMskxm2ZBfBlpVtwCEhpPykA==
X-Received: by 2002:a2e:811a:: with SMTP id d26mr8206135ljg.128.1584796009914; 
 Sat, 21 Mar 2020 06:06:49 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id i18sm5403611lfe.15.2020.03.21.06.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 06:06:49 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sat, 21 Mar 2020 14:05:55 +0100
Message-Id: <20200321130555.30053-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200321130555.30053-1-linus.walleij@linaro.org>
References: <20200321130555.30053-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_060654_270113_EAF3C10B 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/3] gemini: Bump kernel to v5.4
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The v5.4 kernel already works much better than v4.19
as so many things got upstreamed so let's just bump
it to kernel v5.4.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/Makefile b/target/linux/gemini/Makefile
index 14e786f8bb69..0835adc41d7c 100644
--- a/target/linux/gemini/Makefile
+++ b/target/linux/gemini/Makefile
@@ -12,7 +12,7 @@ BOARDNAME:=Cortina Systems CS351x
 FEATURES:=squashfs pci rtc usb dt gpio display ext4 rootfs-part boot-part
 CPU_TYPE:=fa526
 
-KERNEL_PATCHVER:=4.19
+KERNEL_PATCHVER:=5.4
 
 define Target/Description
 	Build firmware images for the StorLink/Cortina Gemini CS351x ARM FA526 CPU
-- 
2.21.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
