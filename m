Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF53719659B
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 12:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TNWdJy0ItLaVDxYsztdQxm8lT4keY8Vcf3YNAML5SW8=; b=qUVpNgbHJcpwQtXoslTcqIMQv
	AqkQ8LleEEG5G8gynnOweyxNdNzmbb+4elonZLOsx6ITxX/qcEnieDJfGCGUH6T4q2xFddiPoSUEb
	pUs/tU5Km/A1XYLKoZFfzQfzNaRvNs48psl/MsltHWSNHSWcIslVdA5fmdA4QQOpvYM4lGOrUDRyY
	MBjmQHoaDYcqBHv+EgEh7ed/vqAmlvqzD108Ac614UWwCvJuN6oux7850HNF7kbM8OLRkb/8yxPzu
	vz1duFEm3FdMVddWRegdU3fecP3qNFgqVBZsoTVWeUE8iTfle7DkeQ9vf1PSZ4GkWlc0mze3Ofyqw
	JdKZ7+/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9PT-0000SN-QF; Sat, 28 Mar 2020 11:13:51 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9Ok-0008BT-GM
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 11:13:07 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A59D743B0D;
 Sat, 28 Mar 2020 11:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585393985; bh=hga6lpCCI6TmJ4UQf6CH1U3OjQ6Jxq7F1Rlr+hVMupM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=itJzf/uA3TY8l1fTLG5OG1JyvnDTeFeYulSHiCaptDpa1VDJYL6QC1T9wkbhoEpQs
 6M0V2fa/qiW+hl8YMCYFwYmt1F4VVK4nyGzDS5hNMdPZ6+7/MQehPy08bk2TDnMDsR
 6EJaUd+sKM/JW8vd1Grr8LBBGKALvF0xxU244sjbCEiv5v6lNR71foL+r82ylwAK0f
 c8lm7MVcbNzVoQkcn1u34Cj/yVWOnd8futQrxQjROti8NybbEyAHu0UcbONBv5/4PW
 nMdAVomOQRKKgCS2nupku4RkaMeV7saaGZEbtFi22xBI0xorJ0lq18jI9tY20aBN5U
 dbc9u7KTuT5tw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id F1B17A005D;
 Sat, 28 Mar 2020 11:13:03 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 14:12:37 +0300
Message-Id: <20200328111237.18763-5-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
References: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_041306_579296_9FD5EDE2 
X-CRM114-Status: GOOD (  17.72  )
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
Subject: [OpenWrt-Devel] [PATCH 4/4 v2] kernel: update arc-specific patch
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
Content-Type: multipart/mixed; boundary="===============7892284321169593037=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7892284321169593037==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

This patch updates arc-specific patch by moving declaration
of struct object before it's usage.

Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Petr Štetiar <ynezz@true.cz>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Cc: John Crispin <john@phrozen.org>
---
No changes since v1.

 .../332-arc-add-OWRTDTB-section.patch         | 31 ++++++++++++-------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch b/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch
index 2c48eb7f13..ba25db7a3c 100644
--- a/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch
+++ b/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch
@@ -1,4 +1,4 @@
-From 34ef04f3845ed2b47d57dd9d3b795b16e1f8185a Mon Sep 17 00:00:00 2001
+From bb0c3b0175240bf152fd7c644821a0cf9f77c37c Mon Sep 17 00:00:00 2001
 From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
 Date: Fri, 15 Mar 2019 18:53:38 +0300
 Subject: [PATCH] arc add OWRTDTB section
@@ -21,6 +21,8 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  arch/arc/kernel/vmlinux.lds.S | 13 +++++++++++++
  3 files changed, 26 insertions(+), 1 deletion(-)
 
+diff --git a/arch/arc/kernel/head.S b/arch/arc/kernel/head.S
+index 6f41265f6250..2f7ec8bdf18a 100644
 --- a/arch/arc/kernel/head.S
 +++ b/arch/arc/kernel/head.S
 @@ -61,6 +61,16 @@
@@ -40,9 +42,20 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  	.section .init.text, "ax",@progbits
  
  ;----------------------------------------------------------------
+diff --git a/arch/arc/kernel/setup.c b/arch/arc/kernel/setup.c
+index 7ee89dc61f6e..4095c0b5e0ac 100644
 --- a/arch/arc/kernel/setup.c
 +++ b/arch/arc/kernel/setup.c
-@@ -529,7 +529,7 @@ void __init handle_uboot_args(void)
+@@ -491,6 +491,8 @@ static inline bool uboot_arg_invalid(unsigned long addr)
+ /* We always pass 0 as magic from U-boot */
+ #define UBOOT_MAGIC_VALUE	0
+ 
++extern struct boot_param_header __image_dtb;
++
+ void __init handle_uboot_args(void)
+ {
+ 	bool use_embedded_dtb = true;
+@@ -529,7 +531,7 @@ void __init handle_uboot_args(void)
  ignore_uboot_args:
  
  	if (use_embedded_dtb) {
@@ -51,15 +64,8 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  		if (!machine_desc)
  			panic("Embedded DT invalid\n");
  	}
-@@ -545,6 +545,8 @@ ignore_uboot_args:
- 	}
- }
- 
-+extern struct boot_param_header __image_dtb;
-+
- void __init setup_arch(char **cmdline_p)
- {
- 	handle_uboot_args();
+diff --git a/arch/arc/kernel/vmlinux.lds.S b/arch/arc/kernel/vmlinux.lds.S
+index 6c693a9d29b6..21f188c6d18c 100644
 --- a/arch/arc/kernel/vmlinux.lds.S
 +++ b/arch/arc/kernel/vmlinux.lds.S
 @@ -27,6 +27,19 @@ SECTIONS
@@ -82,3 +88,6 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  	_int_vec_base_lds = .;
  	.vector : {
  		*(.vector)
+-- 
+2.23.0
+
-- 
2.23.0



--===============7892284321169593037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7892284321169593037==--
