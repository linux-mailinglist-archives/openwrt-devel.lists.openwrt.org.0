Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC2D47700
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 23:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+WDqBYIAt3+9TPaiyY//EYDfAg4zGsSjUkk9fVTUZ8o=; b=hOi83ajeg+nMj2
	s7uEM3EwoZkwGeH6Iqh6JQ+FiI0O0MnXzCIyw2T2aBJT4OyPYpdoCflfbmbAL2eyOqS2t6xLRyIeG
	36bHlVUcVgTTM6XTrDMWAppN+ykbhgOPaG/t9d8+wgpnWyq2fFZ5r3UN+k9kUAjOHyUiETpPEC1SF
	FG9i/+pgiVNaHzuCeYjxyxo3ganCj+/JXlDLfTRTzMzMjeJlNy3m4Basnatme3wIOLVV2lExOFPHy
	uh6Tj1ZoeOCKaKDQ6ItXQ1iFpsZ45KvyyjUTu2cI38FYb5VEe7c5LPvdKgW3S/mlYvmnbroWifHDs
	NrdjQ+98ys6U268vv5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hccuS-0000Wx-1l; Sun, 16 Jun 2019 21:41:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hccu0-0000LI-Fl
 for lede-dev@lists.infradead.org; Sun, 16 Jun 2019 21:41:29 +0000
Received: by mail-lf1-x141.google.com with SMTP id j29so5037412lfk.10
 for <lede-dev@lists.infradead.org>; Sun, 16 Jun 2019 14:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vZ+O2sBuymz0JFURnyDpv5vD4FvOut6ISgM/pkke4dw=;
 b=Szk1wb4qIgDoLZzgRBzC3J5HoDU4AyOKm4r7CNbUElt7pyQJEJ85k39OnORMuTX+hI
 6f41K/7i2SpsGX5FIzpbX6UcehbYQe29cFTvkcsOkSczvpJ2blrxdrgL3YTXerQJOcRY
 xUO5/Kw+6oZZBk5i9OlMZU6H8bMtWcf/LwDHQtfbtjBwTo3XL090mrMHijiN7E0WTa+j
 rgO2ue/7tXvHnEvxKM7RUngZ3u21+V1IGQVdIp8PBOHzfm/DUpZ4iD4KQnPImlGM6Et5
 6uHypJo+hk4ikyx120peIzSMAx4onf1zoGXhunHUCp42bHgJlyeaxQb8Oxm2B2M7Fts/
 JWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vZ+O2sBuymz0JFURnyDpv5vD4FvOut6ISgM/pkke4dw=;
 b=ZM2um0hP5t77lS9qgvez2sIC3Evc1fVIoqEBwhqf12FylhL0IzSzYgN11r1duO8Vww
 pHBPt3WYGs05guf+lumxZOmD5gv1HdWYv2zdZhea1JmHAdYBg5Bf9rqTdRDZj81MNH6L
 5utlhN+5yU70PVqeq3sIdgigWhlJii2H2uDK79eE2lEdvit6axnYSaIqKC0iqUoM6J3o
 +k87BsQaiPjDGaYDokOjEmEZRdR4yZ3WnIBrDxlFWdJi5bbpcV9jEVxJoc7/+xq4gtav
 YcAl4gWAfBRwbMrYW3hW/UvpTZUss6J+0VF6cbJdOngJVJ9gNHrS+jY36VAX3S97uvUi
 7kPQ==
X-Gm-Message-State: APjAAAUCI0iOLh2AQzhL490huVrYabje1BveV9xXIU+9pwEUulhifKvy
 qRyOcknzFRKZK54qbdXAZF2Wbw==
X-Google-Smtp-Source: APXvYqwTMlZO6XCMxxHtHplwA5OucxBuTkfictbWTCctLM1Ebkhp7isI3Si7bhNalfAY9FWHV6XRrw==
X-Received: by 2002:ac2:5595:: with SMTP id v21mr16571685lfg.54.1560721285960; 
 Sun, 16 Jun 2019 14:41:25 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id 11sm1782520ljc.66.2019.06.16.14.41.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 14:41:24 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
Date: Sun, 16 Jun 2019 23:41:20 +0200
Message-Id: <20190616214120.9054-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_144128_597130_94A2B180 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] ARM: dts: gemini Fix up DNS-313 compatible
 string
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
 LEDE Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It's a simple typo in the DNS file, which was pretty serious.
No scripts were working properly. Fix it up.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-dlink-dns-313.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dns-313.dts b/arch/arm/boot/dts/gemini-dlink-dns-313.dts
index b12504e10f0b..360642a02a48 100644
--- a/arch/arm/boot/dts/gemini-dlink-dns-313.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dns-313.dts
@@ -11,7 +11,7 @@
 
 / {
 	model = "D-Link DNS-313 1-Bay Network Storage Enclosure";
-	compatible = "dlink,dir-313", "cortina,gemini";
+	compatible = "dlink,dns-313", "cortina,gemini";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
