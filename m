Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD85F34AC
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 17:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2GlbUlXebYUIOIFiolP4iTntf9M6B37VBxMt+Z+ur84=; b=QiOIZ3XlVoOAxM
	ActaZUQqKmPmIPQeD/hDgZZzIB6co8QNpPcPn5xDezsssgfaYwCZArVJeKS5tBcs7oxz4DBzhR/Mn
	4DMX0tU1s0+csl7b7EGxCvoYrsIsVjH1Ad5owvlEsbzOwDoobb4yFOAcn9ibnK82X3vLk6JmC4Maf
	q+uudY8uzzwPb765nO5K6LUi5oOEdwtnYjOI6dtI2ohRTNjxb36r+JEL4JWfvzW3n8Yd4XElOJdu2
	RD9TjAWAuI4ioZH4pSiiQk5nyWSf3mRANdqM5wWWbD4FR2z1hxf/zwlNBHM/AmzIv1Qh7x/s/vEPv
	H9Ccfs0GqdCmHQL2bWXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkjw-0001cM-8x; Thu, 07 Nov 2019 16:34:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkjn-0001br-7l
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 16:34:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id b11so3170129wmb.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 07 Nov 2019 08:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9n7dv0bieHEtc92aUzz9a6kHaqNz+oFeqlCbMg6qHM=;
 b=fxyM8ZU1r2OmL5QMeoHAKDgL/tx0ri7QFoGwJBAC9z4V+nyzdcaNnBnwpD1RFkFbXv
 pAp+JgpMnmBmhJCefmUiSMOhyskCDPoH2oh9TXUdE27w9B0aAn8GuVs+t0RFGvZ09g0R
 12N26rVCFCQ+uahR52n6EPIBAmwEzuqz4XQQh2fk5Hc82Gj30X39j3c623fkMqdxXMt8
 X2deBMDmsscqdKyBV1fvKggDgsQYUyilQQ9fk3ylamjWUL2c6D1/xQnpFDe6RwBCC2Wn
 N+7WZwoOaIq6EJiLUtG6XLBSwwqpeN5LdR7HdCpZNybSp+ig6zHffKd39kuBzMYh5skc
 PbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b9n7dv0bieHEtc92aUzz9a6kHaqNz+oFeqlCbMg6qHM=;
 b=MGavXkVe5yKcsakZUNEHPdHZrUqyP3TL4UpPDAvN3mYS81qNef8fcCGBPx0bsXAhvd
 vD95DUbrtN46E0CFn1AvsgkN94J8BzTOeM7+9FvgXghCD0ZTfR6dS73dau+hEsoUtppa
 mPK3bwbk3XPr+6fFq5EK/LZpqtI2OYqpNAnhRKN8mqB06isKpgdWGRAb9e01ou3LFHa9
 c4gEsvku2P6U1V1VZlV7SzXCGXHJKv616FVMzHQNCmI5dnkPiKtQT4l8kqXRxPR+8seq
 Y0SJvSdZHlSbOj3i+wQuFpUaCE8Qr0fE1gbqn7bV+bsOEmnCAz+EYjroOwfNMr6m7ZGm
 lRJg==
X-Gm-Message-State: APjAAAUqCgujB0t3pJK3Xun0QiQwq7PrtYMXSPSXVgVBMvRFIapDR1QL
 39GntwcYXDgz+Jz4cWjqTaPhDRq7
X-Google-Smtp-Source: APXvYqx6kzck3ZREBX9sYPFWzn/3uhN/ayzgKd2JMxPJneOnEkGu8VYvKt4/MOD3WJjt+Yqba5gzyA==
X-Received: by 2002:a1c:1b07:: with SMTP id b7mr3825913wmb.111.1573144460758; 
 Thu, 07 Nov 2019 08:34:20 -0800 (PST)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id v8sm3822908wra.79.2019.11.07.08.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 08:34:20 -0800 (PST)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 Nov 2019 17:34:18 +0100
Message-Id: <20191107163418.16731-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_083423_303604_0B717092 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: u4019: use reset-gpios instead of
 phy-reset-gpio
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Use reset-gpio instead of the custom phy-reset-gpio property to do phy
reset on the U4019. phy-reset-gpio was incorrectly introduced when we
added support for the U4019, and will be deprecated.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 .../arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi          | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi
index cf67fddd2b..c768e25ca0 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi
@@ -17,7 +17,8 @@
 			status = "okay";
 			pinctrl-0 = <&mdio_pins>;
 			pinctrl-names = "default";
-			phy-reset-gpio = <&tlmm 47 0>;
+			reset-gpios = <&tlmm 47 GPIO_ACTIVE_LOW>;
+			reset-delay-us = <2000>;
 		};
 
 		ess-psgmii@98000 {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
