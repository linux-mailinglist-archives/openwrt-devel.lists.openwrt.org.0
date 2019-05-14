Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE94B1C988
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 15:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tR3DyR7TJyqdthwRFbz2o11AbHdiQWJwuxDv/CGj4U0=; b=HZ1Nz3NgEEHqov
	nunRNLdarq5kK0cqWcc4+WeREjFATWTs0v40i7Z9/Iyc9Xml14NzTGhXWpxwI0JSNtAlOK8rmeVme
	aDC96dkb1TxGlGejhpTYWNAYYmgO5wOd4tWsy6Y2ke8v7Bdu/2pNp8TvXx/X3rIBriaj8A22zlMMS
	v6iEyin1ZXKrmk5RAzY31PUtVFksusvsBYI80wYuChOa4q2aNe9LPZI7+CYBt254PiptgsVPFjekY
	D7013vHz6oH2FVNOKhxe7ykWErJTmxY6ygQ+clAMN/8qsgVfuX9iRY3e+yRCap/k7uDKGPT4Y/qkk
	ET3gl0kf/JpnZYlJLHCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXhi-0003QV-Dm; Tue, 14 May 2019 13:42:50 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXha-0003PJ-5J
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 13:42:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id h13so11912048lfc.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 06:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zgqu6Sk0W1fsyHMJUw+72KoYEMuk6hX+RSOkdWK6Zvc=;
 b=tw+PwQbRHF/IPCRCl8JVwjflpYAzbthw05l8xjxK7wLjXtHvSNsRJFDlKSs04yl5X9
 SefHOV533j3WZMwzGoeNu4UB1IIQ9ieHI4Pfkqt0tUCZDRflZ2J0RbkA/uH35AyLxj1A
 A7w/TR8MTrbt07SyedgtlwqgGyYBDF8bU6r4Zp4N5u9AByNk6+T2Yx4Qt800DJmh6lz1
 o1paEGsqTcCmr5DUUHRDrcrs0bu2LB/4BW0p291UvQhcalGVxKXemGONaIBmhbjY9YFh
 P9UnCxR/Xbt18eUnUO2wcc2KKP2NlYiYUVXZkOsBQG/DICZb+rse/f6TiIrg2+OvCaJh
 wefA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Zgqu6Sk0W1fsyHMJUw+72KoYEMuk6hX+RSOkdWK6Zvc=;
 b=A6gTPXb9x74FMkhVWPlQJ4vWFk9tLCHk1zF9ilC2iOZQa488dVOdRf7eV7LySnapuO
 p1u5U+ZP0W4WL9em7VF1/qHIKFHaw3mcQNDQvwUPw6Z2Ct9VbTPeOuxWm0XE6G/gQ1G0
 Q9c4XF3RqLQI7Qa4pMnq88nv0/mqK2P2e3jumKNTmnhKRdHKML/21kEu8Tmfqaajqy8F
 kXyMIdrq9FF8nec9o8yfljWH2sdmoeN77XE7K7OiptjyYYiz5BUO7NA8bMCWk/KYZsO1
 Ro2h3R+wnJgABRa9nxAmu26/iC8kWTCgUP6gw4q4c/E8cjXmVRqpqzsu0D1zgOc1jAj3
 q3yQ==
X-Gm-Message-State: APjAAAXMDOZ0YhBThwKLf2DIk504p1uH/AJwzAAOYB8SXK7gg1ykd0nF
 mMtmjlMuef72QB/soQqb2aHZuR0oVR4=
X-Google-Smtp-Source: APXvYqyr8yOvrqI79ax7L6I6GZZqK2ItV7zL4BZO8GFD4bEO3tELH+G7qGhRb+BQnNpzy+5/Fbuy2A==
X-Received: by 2002:a19:c7c3:: with SMTP id
 x186mr18244414lff.107.1557841359598; 
 Tue, 14 May 2019 06:42:39 -0700 (PDT)
Received: from be1.dissentfirstbyte.example.com ([2a04:5200:fff5::d0])
 by smtp.gmail.com with ESMTPSA id u7sm1703920ljj.51.2019.05.14.06.42.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 06:42:38 -0700 (PDT)
From: Pavel Kubelun <be.dissent@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 16:42:18 +0300
Message-Id: <20190514134220.3626-2-be.dissent@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190514134220.3626-1-be.dissent@gmail.com>
References: <20190514134220.3626-1-be.dissent@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_064242_213007_507E6466 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/4] ipq40xx: fix sleep clock
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
Cc: chunkeey@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It seems like sleep_clk was copied from ipq806x.
Fix ipq40xx sleep_clk to the value QSDK defines.

Hope someone with datasheet could clarify the correct
value.

Also rename the sleep clock node like the GCC driver 
awaits it to be..

Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
---
 .../patches-4.14/089-ipq40xx-fix-sleep-clock.patch | 29 ++++++++++++++++++++++
 .../patches-4.19/085-ipq40xx-fix-sleep-clock.patch | 29 ++++++++++++++++++++++
 2 files changed, 58 insertions(+)
 create mode 100644 target/linux/ipq40xx/patches-4.14/089-ipq40xx-fix-sleep-clock.patch
 create mode 100644 target/linux/ipq40xx/patches-4.19/085-ipq40xx-fix-sleep-clock.patch

diff --git a/target/linux/ipq40xx/patches-4.14/089-ipq40xx-fix-sleep-clock.patch b/target/linux/ipq40xx/patches-4.14/089-ipq40xx-fix-sleep-clock.patch
new file mode 100644
index 0000000000..9e40f7c17f
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.14/089-ipq40xx-fix-sleep-clock.patch
@@ -0,0 +1,29 @@
+From 4d44bb1031a68d7d5b604d3b340c059f41ca62af Mon Sep 17 00:00:00 2001
+From: Pavel Kubelun <be.dissent@gmail.com>
+Date: Mon, 6 May 2019 20:55:16 +0300
+Subject: [PATCH] ipq40xx: fix sleep clock
+
+It seems like sleep_clk was copied from ipq806x.
+Fix ipq40xx sleep_clk to the value QSDK defines.
+
+Also rename the sleep clock node like the GCC driver awaits.
+
+Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
+---
+ arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
+@@ -141,9 +141,9 @@
+ 	};
+ 
+ 	clocks {
+-		sleep_clk: sleep_clk {
++		sleep_clk: gcc_sleep_clk_src {
+ 			compatible = "fixed-clock";
+-			clock-frequency = <32768>;
++			clock-frequency = <32000>;
+ 			#clock-cells = <0>;
+ 		};
+ 
diff --git a/target/linux/ipq40xx/patches-4.19/085-ipq40xx-fix-sleep-clock.patch b/target/linux/ipq40xx/patches-4.19/085-ipq40xx-fix-sleep-clock.patch
new file mode 100644
index 0000000000..e7d8bb71d9
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/085-ipq40xx-fix-sleep-clock.patch
@@ -0,0 +1,29 @@
+From 4d44bb1031a68d7d5b604d3b340c059f41ca62af Mon Sep 17 00:00:00 2001
+From: Pavel Kubelun <be.dissent@gmail.com>
+Date: Mon, 6 May 2019 20:55:16 +0300
+Subject: [PATCH] ipq40xx: fix sleep clock
+
+It seems like sleep_clk was copied from ipq806x.
+Fix ipq40xx sleep_clk to the value QSDK defines.
+
+Also rename the sleep clock node like the GCC driver awaits.
+
+Signed-off-by: Pavel Kubelun <be.dissent@gmail.com>
+---
+ arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
++++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
+@@ -145,9 +145,9 @@
+ 	};
+ 
+ 	clocks {
+-		sleep_clk: sleep_clk {
++		sleep_clk: gcc_sleep_clk_src {
+ 			compatible = "fixed-clock";
+-			clock-frequency = <32768>;
++			clock-frequency = <32000>;
+ 			#clock-cells = <0>;
+ 		};
+ 
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
