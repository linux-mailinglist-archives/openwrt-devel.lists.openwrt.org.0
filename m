Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD92E5A4
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 May 2019 21:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LbXWHmbJw4fFwJZCcglDXcAlv9XVExuuoKZju+1my0s=; b=TTq0ozkowhsIUf+dJEyftQdmn3
	Mgps8lYxwS01s7NxfTEXpl4o9CLjak9/utdbNlfVUzJusmBA6hVUzUcsF46YvrrJyInRL+wxgkm23
	LU9mbSbmkQddHSTMAfKdbOALqgdPbZcEEY8YO1IZvPWpJ1QPt34F3bNk8kePYhvCE9SxuxC5O3iTe
	Rby1Hyz3nmek/mzD+Inan3VtzmnhG0ZxIlJbPuuTfnEJ+F5T6s53jPqE+WXFtgevkL2B54zn5iikD
	8YGEqmnbATjfV9lGc10YGvWs8dYlGKsqe6AV32Dy8zAgeLxsTsN+gVtppzB8bjGqmAgA1Dzez4MNg
	ao3YQRPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4if-0002PJ-Go; Wed, 29 May 2019 19:58:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4iY-0002Oa-P6
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 19:58:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so2383968wmo.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 May 2019 12:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0CNKlsq2Y8XlSY88vJUYmRo9/YAA+u+hKLZ/sJNR/y8=;
 b=kokCa8CdM3XDxbH+wVCvA6Ofv4i/T98ReugylYhbKbUnQ9wRJrH2ZecYz41KHvWaO4
 2VbBZUs3E0qXwole2Kbjv7zsy2mNHqngusAGU8ZzCK3Ilp+UMXJmdDXStr2LLSpNYio/
 iE452Ce26pgNTcLGK4ZtOqz77mw6aZvUAu7L6u6d9tRxYow5yBB5tzdaCNM2JTUMDZmO
 pAflwpZQD0RfX3eWwdIjH4EypGwJdDShSB63EO28X3Qvzyw4PqtEiz++Qx1CpFAxXOqq
 RN2TB2aCUHQrR+pfw1bIDI6dXO3ggfRiN3gVXrS7I1P4bmSk7W3CUzXXGLscQV3YXeub
 9A8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0CNKlsq2Y8XlSY88vJUYmRo9/YAA+u+hKLZ/sJNR/y8=;
 b=FXVJDAL+4pXLLNA3UtmmSUBItNnW+rW+KaP4mKJR1D0nxBdgsv3TWvtywBsJ9X898/
 E3m0XfjyQ6jJ2q9HttebEkRlxtHWYB73eRfj3HNObgYuJPW2sgb9IzPrXzVme2a0/Fhl
 fqIdxt1tEhrbVBLrdBCn6PV0hil41vsZeymF3LLfZg4kA4JGzfaVMf5G9Q008IQ0RsXb
 3sNVcFzv/gFXgXwdP4+yRNnNzQG4XjBr4g/+K9bDUFmII9c4xuzI2invuozmMSBW6qvg
 CVtUoEhnuL7fR7HZ1/7NVG4JAxqAo6T/wmHTy4NXY4kg8jZHOX3B2of8LHwUuGCkwFMs
 mnqQ==
X-Gm-Message-State: APjAAAU7JR5iTaOmB/9EdA0AxfPtOyTMXl4wNzrka/tA4Myp1STojl1J
 QJJJ0lBnzPwong4Pckw7YMez1URV
X-Google-Smtp-Source: APXvYqwzzXtlmbgpTC24b+fX89gl4a6JEX8+1Xv88mQQEdQlpgW3+tBrYAu0AmmZuQqoyLjBu6eiyw==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr8418940wmi.50.1559159911691;
 Wed, 29 May 2019 12:58:31 -0700 (PDT)
Received: from debian64.daheim (pD9E29593.dip0.t-ipconnect.de.
 [217.226.149.147])
 by smtp.gmail.com with ESMTPSA id t6sm831107wmt.34.2019.05.29.12.58.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 12:58:30 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>) id 1hW4iU-00063R-BI
 for openwrt-devel@lists.openwrt.org; Wed, 29 May 2019 21:58:30 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 May 2019 21:58:30 +0200
Message-Id: <90f90b29ae7fa6625805a654a63b4f4765b6c1d6.1559159872.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_125834_819588_D5E82151 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] apm821xx: wndr4700: interrupt-driven
 gpio-keys
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch fixes the active_low setting and
converts all of the physical keys on the wndr4700
to utilize the interrupt-driven gpio-keys driver
over the polled version.

The sdcard-insertion hack has been removed since the
block-subsystem will now be polling the device instead.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 .../linux/apm821xx/dts/netgear-wndr4700.dts   | 20 ++++++-------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/target/linux/apm821xx/dts/netgear-wndr4700.dts b/target/linux/apm821xx/dts/netgear-wndr4700.dts
index 0f1e97a921..24d5c33f90 100644
--- a/target/linux/apm821xx/dts/netgear-wndr4700.dts
+++ b/target/linux/apm821xx/dts/netgear-wndr4700.dts
@@ -307,23 +307,21 @@
 };
 
 &POB0 {
+
 	keys {
-		compatible = "gpio-keys-polled";
-		#interrupt-cells = <2>;
-		autorepeat;
-		poll-interval = <60>;   /* 3 * 20 = 60ms */
+		compatible = "gpio-keys";
 
 		reset {
 			label = "Reset button";
+			gpios = <&GPIO0 15 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_RESTART>;
-			gpios = <&GPIO0 15 GPIO_ACTIVE_HIGH>;
 			interrupt-parent = <&UIC1>;
 			interrupts = <0x14 IRQ_TYPE_EDGE_FALLING>;
 		};
 
 		backup_hd {
 			label = "Backup HD button";
-			gpios = <&GPIO0 19 GPIO_ACTIVE_HIGH>;
+			gpios = <&GPIO0 19 GPIO_ACTIVE_LOW>;
 			linux,code = <BTN_0>;
 			interrupt-parent = <&UIC1>;
 			interrupts = <0x1e IRQ_TYPE_EDGE_FALLING>;
@@ -331,7 +329,7 @@
 
 		rfkill {
 			label = "RFKILL button";
-			gpios = <&GPIO0 20 GPIO_ACTIVE_HIGH>;
+			gpios = <&GPIO0 20 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_RFKILL>;
 			interrupt-parent = <&UIC1>;
 			interrupts = <0x1f IRQ_TYPE_EDGE_FALLING>;
@@ -339,17 +337,11 @@
 
 		wps {
 			label = "WPS button";
-			gpios = <&GPIO0 23 GPIO_ACTIVE_HIGH>;
+			gpios = <&GPIO0 23 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_WPS_BUTTON>;
 			interrupt-parent = <&UIC2>;
 			interrupts = <0x19 IRQ_TYPE_EDGE_FALLING>;
 		};
-
-		sdcard {
-			label = "SDCard inserted";
-			gpios = <&GPIO0 7 GPIO_ACTIVE_LOW>;
-			linux,code = <BTN_1>;
-		};
 	};
 
 	leds {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
