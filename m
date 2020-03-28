Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF55A196598
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 12:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WeKaHLG3bsg7UAhT9AUBDz1Q8iQmS0xokT9HVwHf/aI=; b=Y5W4iDZaQ6EPu+XLWKLpYEI+D
	B33vWD39vb6xon3PjY7ZhD55ZDpYmbvtNPQDDqt2PK4DmujGunJy5Z8t+zFBE1cHEfeFMSfQCzFIm
	zAhJihmbib+FMqAQD9oQ+kzdxpmyq2wCz0LaIeStSg78EFhQUed6qllFL7YWgW05cYWXGEOsjLApD
	J6k7hskBnQUWmKKDQkk1JIv+Kf91iYSp8bFNffthJFmv5pNHQM5yi6S7X/5kE9VeAqY6bcZldUpCt
	6WJnjm34lh7WBDRymwcExGC9d7G5SuiYbg1tvEh9z6MAVM2gtNRnnIfy4/jPkNS92ImS6is0aoBy5
	AwsQNnoNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9P7-0008QA-Uv; Sat, 28 Mar 2020 11:13:29 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9Oh-00088V-4Y
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 11:13:04 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AD01B43B09;
 Sat, 28 Mar 2020 11:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585393980; bh=J6+jAtEqStMyWhaMxMjbdolFoevmVMkFel6ivu7HUoE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Evcu31IWtTKKQnk8syaFB9URQaiFnfvT6p0pVSGW5k/k0e7HXe1vO0LhWOidBo2L3
 HOODl2oZitrFzf4fI8L1OC2mlUe34jl8JNgZbt/9dFpY+bK+58KYzRL7/18nDBJa0o
 DbrvcJRKfYcw/S8pYJ21pHzTJte7uiGtnS9YSlvWclQlECnOx73EF5Zfbq8w7pCWfL
 CSyAaWNulGETzZ4P7iaE+z73ZoTrRArrVB5wljJULnCCCRK7qXSRCsGYcFoE9WRpON
 SwJSN29RRSj6JBQMPWe2zC4mXjEzvIkVOJGt1bb1ppHRyTsiEIiqqtwU2j0gimMDz8
 pgR/a6Jp3NUrQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id E873AA005F;
 Sat, 28 Mar 2020 11:12:58 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 14:12:35 +0300
Message-Id: <20200328111237.18763-3-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
References: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_041303_487854_C2817709 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/4] archs38: Add patch for gcc8 compilance
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============5953831449015058643=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5953831449015058643==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Building Linux kernel version 5.4.x with GCC8 ends up
with internal compiler error. The workaround on this issue
can be introdution of additional compiler option "--mmpy-option=2" 

Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Petr Štetiar <ynezz@true.cz>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Cc: John Crispin <john@phrozen.org>
---
 ...h-arc-Add-compiler-option-for-gcc8.4.patch | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 target/linux/archs38/patches-5.4/0001-arch-arc-Add-compiler-option-for-gcc8.4.patch

diff --git a/target/linux/archs38/patches-5.4/0001-arch-arc-Add-compiler-option-for-gcc8.4.patch b/target/linux/archs38/patches-5.4/0001-arch-arc-Add-compiler-option-for-gcc8.4.patch
new file mode 100644
index 0000000000..a6502009c7
--- /dev/null
+++ b/target/linux/archs38/patches-5.4/0001-arch-arc-Add-compiler-option-for-gcc8.4.patch
@@ -0,0 +1,26 @@
+From 2e2b3aeda9af9c029bf347c974911fe96cd79c43 Mon Sep 17 00:00:00 2001
+From: Evgeniy Didin <didin@synopsys.com>
+Date: Mon, 23 Mar 2020 15:57:18 +0300
+Subject: [PATCH] arch/arc: Add compiler option for gcc8.4
+
+Signed-off-by: Evgeniy Didin <didin@synopsys.com>
+---
+ arch/arc/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/arch/arc/Makefile b/arch/arc/Makefile
+index f1c44cccf8d6..806ec4a9e80a 100644
+--- a/arch/arc/Makefile
++++ b/arch/arc/Makefile
+@@ -11,7 +11,7 @@ endif
+ 
+ cflags-y	+= -fno-common -pipe -fno-builtin -mmedium-calls -D__linux__
+ cflags-$(CONFIG_ISA_ARCOMPACT)	+= -mA7
+-cflags-$(CONFIG_ISA_ARCV2)	+= -mcpu=hs38
++cflags-$(CONFIG_ISA_ARCV2)	+= -mcpu=hs38 -mmpy-option=2
+ 
+ ifdef CONFIG_ARC_CURR_IN_REG
+ # For a global register defintion, make sure it gets passed to every file
+-- 
+2.23.0
+
-- 
2.23.0



--===============5953831449015058643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5953831449015058643==--
