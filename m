Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F320E2A063
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 23:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fos7Fk7V0un3ICylA4lFe4kXvXGtU2cr/nBXj0cmYng=; b=MqR/EXBE5RYH6x
	gpkU7P5AOb3TnDnv9lTAq0sU9w00M2f4NL27QohnwtNn5+fRWf9jRlrsGhXE+8HSg+a9S2psYyoU+
	gGZj/aG4JmX3jqtsT2x8knCCyjtCCBwNjvk4yxgwsKQxvV5y60fpHzEqe2QNgforDQwt/F5ZO4efw
	9cWQYT7z6NSpfLR1B8DhTFE0TVI6jCX/x/Eib0zU9kVGhUZGUEIrjsE6cUKsRAJbWijZtKmRAXR/o
	qXBF33QYiWi5o1yD5aT81kZjRNbZi97HJKZ/ij8+5t6gTzBk3JaalOSM1wZ6a5NFcMhW179BpQFbZ
	wx0zrG/qiSjLffoFv21Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHjs-000227-M2; Fri, 24 May 2019 21:28:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHjl-00021a-Or
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 21:28:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id v18so8143782lfi.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 May 2019 14:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v0t/K+xXUt5VyiA7yWm5E0bzRN0kHv95IhaurWKXUDU=;
 b=xrVEItOfKZkOGQi4jGRkDKi4WMzeMUTleCtOu9PfoZ0b2JsQ/dh9DSNL8cYDFn3PwR
 khJPka2oGqeXOtAqfzuWd4KQ8Bv9OrYT/GJFuuN3Of4tMVdQWdtVP1y0Iy1XZQtJed0l
 C6yzWInwmGTahUDkVx3TySjSfX4kZX9aOd4Let+KalVA0dBB7lcdla+tKeT+G7SHA36E
 C/682ddouduk/Ov1i0k/BmO4CxYZsOWHyh7TcVyykmmRDdeIBPmZiHR5YxPsjLk/IeJ7
 QnLtS+cY7uSOf+DLZWQLAVIhG9OyE7To21sBaOtIaoVCfXzSKIv/8JPUwMUyBjOlY7Wz
 99oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v0t/K+xXUt5VyiA7yWm5E0bzRN0kHv95IhaurWKXUDU=;
 b=lS6W2+ytnpAXw6l2bh5tShh0s5D8t+v5JNwZgQqP/ppG6EZADTgsSyZF/OGVGYGrso
 UWcX92wS+zV5BXwnXinsaTMdrZVOac573dk1foPkg4baZB65qc2ghWlicxx/LJj93yao
 QaYFPle9hqwZdU9nSdvNI+uFpSF4l0Blzs+RMu+mWkWixggl5rHe6fuwEWM1Q2/UQAiJ
 S7em+7Fc5SSPT6akdWvv9MqYWChEBcrLNJdwMKIZunWoSBlfqEdFd7oewx1zxCptOt/l
 LA9TMs2oQjgb4T7yU821S+2GfYSQ7fDFkFWpZU4B4OtsgfDMvxUu1OaibVRBkhT/NkDS
 vaxA==
X-Gm-Message-State: APjAAAWZKBKJ7dXl00PkBXuQUzA6OZoKI8oOjkfhQGCXUk1RtAe0gssf
 woz9q2jvqp9miXkhU/8QRWhGUg==
X-Google-Smtp-Source: APXvYqz1oyCCOKNbEMNt6hxM04ltW++Qwb/YnkVUlWc5s9hnH9O58Zmhq1YQI0++Rq6dvIlXrVL9gA==
X-Received: by 2002:a19:5e15:: with SMTP id s21mr1076269lfb.174.1558733304157; 
 Fri, 24 May 2019 14:28:24 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id k20sm784450lfm.30.2019.05.24.14.28.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:28:23 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Fri, 24 May 2019 23:27:18 +0200
Message-Id: <20190524212719.30694-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524212719.30694-1-linus.walleij@linaro.org>
References: <20190524212719.30694-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_142825_806611_0A45420C 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/3] gemini: Fix possible hexdump error on
 MAC assignment
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

If a MAC address is for example 00:50:c2:11:11:11 using
hexdump to extract this from raw bytes in the flash will
yield "00:50:c2:11*" with the asterisk indicating "more
of the same".

This will inhibit the MAC address from being assigned
correctly, so fix it by passing -v to hexdump.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index ebd3ae0f55c5..6072e828c678 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -12,7 +12,7 @@ set_ether_mac() {
 		if [ ! -z $CONFIG_PARTITION ] ; then
 			DEVID="$(dd if=/dev/mtdblock0 bs=1 skip=119508 count=7 2>/dev/null)"
 			if [ "x$DEVID" = "xdns-313" ] ; then
-				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -e '/1 ":%02X"' | sed s/^://g)"
+				MAC1="$(dd if=/dev/mtdblock0 bs=1 skip=119540 count=6 2>/dev/null | hexdump -n6 -v -e '/1 ":%02X"' | sed s/^://g)"
 				ifconfig eth0 hw ether $MAC1 2>/dev/null
 				return 0
 			fi
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
