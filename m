Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E424FEBC5E
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 04:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85VD/gW1KjMxniC7wJEGrM7C6BbKsVYyoRlBY6qnjpo=; b=b66EdmHEaAHmMd
	jHyMJBvpIlUhrOn4VTKOEyiZZBldXcOZoT+scaNn6V+mhdVaqsdR4JYEPgj/0xV5FzaytkWsj3hBr
	jNkEwntswz4zU1naWWK18nvqtQTcnIUIcfH9K3cCRKSNFNUEJjRSQQXvSFami8HS/2FiiKtJr6Ltf
	3nmjbiIttUf0YIHDoD0dSQ9s9awEJH5sJthRda+boTvoY27RsqI/ZqFTwM0JlYF1uNCfSJnUOkj7r
	ulYRYEamWPiQjt7sY029AW8zlHqU3X1vQjBGroTg/xi/rw1c/bdgFBPfccv59B3H3Ee0GEAvbGhgk
	orfYV5Hh3FjNM8fShEfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNdA-00052l-3k; Fri, 01 Nov 2019 03:29:44 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNcl-0004v3-Nn
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 03:29:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id z4so5430pfn.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 20:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+2+i7s22WMZbAIBwUyjrCObqPfyOeYAkpYGrrpKEmSo=;
 b=ZrV1Wm8LPrIKIgWQ1SxLSmakZxluMsV1lzG0BcLepph/zEc914IG2kTUCGD7EkYNkg
 wb33YbJXBtUDJUfBG3qRj3JFuKARFOlJEffgB/98pwXMzRvlMN8/01g6TAKCes3/MkIc
 WVTob1RhjdXUNxlS4Eoj6SFX+9ul90fVGpks2TBPC8T5GIE3Ew7knID3PvvHqqpelVu6
 bsybBhMitC5tk9+PxIEF287w3UibhzPtC9Hi6wFzSlpLPcedPmvmFYuDjB3A8/Uu2RdS
 maFFQOLIMraEzHIxt2hz/oKGDSCNEGbGZhWMayUbpKGDLFxMJEP+1mtyk2pU3RtV4Y7T
 eB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+2+i7s22WMZbAIBwUyjrCObqPfyOeYAkpYGrrpKEmSo=;
 b=QtqCRTyZhNJTng26ZtZ6NlRNeOZo7P9bvKu17QeaHfiwXK4wZG6rwMFssZpi8YEP7Y
 eAs7L1ZXFv8A44Unup/c2+8GMlEoY/tWuCD36DUB68PDQrxtB+28U08UKeQlIJe0sHHx
 Br8bjP6ZQ1V35qpUyRBNw6OC1aAKSP/KztwwT//BaRXLC36cxRm0mZf1U8pW8IViDH6J
 ynOeIXr3C/pkHPed/jVkn6FlhPV4hB84c1dLajwCxfikKVxc1iRH2H7Xgd6Ed85rPyxA
 UdbBzUjTxq3TX5EdgQgL69kRzqt0y2ekfU8XEkUOBEEfNP5VG9M7EN8HS7Wsb5uPciOJ
 nGYQ==
X-Gm-Message-State: APjAAAWCBnI+dVLKXVlt0BRO8bBVAyKdivsb2SJqtdTAj5iSipK/OTWQ
 jhQ/i1h2ZEsv1wvGMOUiEq81b1QdePw=
X-Google-Smtp-Source: APXvYqzrOE18JdyrLivRBbnLzjtzF0NSOGMraY1QfriLBIkYOpAvYOM7IeG82lX3FdPn3lrb8l4leg==
X-Received: by 2002:a63:e84f:: with SMTP id a15mr10736517pgk.309.1572578958592; 
 Thu, 31 Oct 2019 20:29:18 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id j11sm4667485pfa.127.2019.10.31.20.29.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:29:18 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 11:28:55 +0800
Message-Id: <20191101032858.19013-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191101032858.19013-1-gch981213@gmail.com>
References: <20191101032858.19013-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_202919_798992_18FC357C 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/4] mediatek: fix Unielec U7623 dts in 4.19
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

remove duplicated pinctrl nodes.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../0227-arm-dts-Add-Unielec-U7623-DTS.patch  | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch b/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch
index 88222908ea..6561e8d5a7 100644
--- a/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch
+++ b/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch
@@ -44,7 +44,7 @@ Subject: [PATCH] arm: dts: Add Unielec U7623 DTS
 +};
 --- /dev/null
 +++ b/arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc.dtsi
-@@ -0,0 +1,366 @@
+@@ -0,0 +1,349 @@
 +/*
 + * Copyright 2018 Kristian Evensen <kristian.evensen@gmail.com>
 + *
@@ -324,23 +324,6 @@ Subject: [PATCH] arm: dts: Add Unielec U7623 DTS
 +		};
 +	};
 +
-+	pwm_pins_a: pwm@0 {
-+		pins_pwm {
-+			pinmux = <MT7623_PIN_203_PWM0_FUNC_PWM0>,
-+				 <MT7623_PIN_204_PWM1_FUNC_PWM1>,
-+				 <MT7623_PIN_205_PWM2_FUNC_PWM2>,
-+				 <MT7623_PIN_206_PWM3_FUNC_PWM3>,
-+				 <MT7623_PIN_207_PWM4_FUNC_PWM4>;
-+		};
-+	};
-+
-+	uart2_pins_b: uart@2 {
-+		pins_dat {
-+			pinmux = <MT7623_PIN_200_URXD2_FUNC_URXD2>,
-+				 <MT7623_PIN_201_UTXD2_FUNC_UTXD2>;
-+		};
-+	};
-+
 +	pcie_default: pcie_pin_default {
 +		pins_cmd_dat {
 +			pinmux = <MT7623_PIN_208_AUD_EXT_CK1_FUNC_PCIE0_PERST_N>,
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
