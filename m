Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ACA174D1C
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:09:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dClit5d2gdXyzMHSDPDmBEkVbn1rcc5/R5fMCiIunmo=; b=MGnopLdYTAYnCP
	noGUles8Ymd4FqTEr40eXW+DcTdrglWqsHVYahMpftcx96SGNCarFM3EG7L+9O0xrVXXh5By3/TUI
	uQHLvCwD+UX1pQOxWDdTwaeCZUzk9P6n/mpghDSnNhpTEfNgcuSa6nOfUv/hJkiLlcPHuRTiyTAvU
	2lK1Qgo2wa6fwviFvafD8Y2GiMmqsDkTMRLW0rg2IV/HfTkyo6g/Lik3q+COMLFyMaMRRbwBNFxb5
	0ZuSzYwkgWiXwHknpXc7wx04ogo+kuCLIZr8WcRkRLIQZKUSiEd7ZOjmAEaulww3+LWS0SvMyN6H+
	SBTr2ktrDY3ALK9+OXFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NOk-0004YK-LG; Sun, 01 Mar 2020 12:08:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NOP-0004RP-ME
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:08:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id n30so5686804lfh.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Mar 2020 04:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OicMR8pmx6XgfaayqywMDCGuw2Kc4LWmI0xk/JP3/B8=;
 b=Qa1aDIMgB1g7ntF/LI3spGVnpo2bcGS9o117SWiuoWxR03ZU1Zrkabfw3aJJkgEqKq
 aMzRDud+OoP5Dc0yASEAJrfTgRghhW/dpPjdvWo6PAlA8gOX55xcWGnLmYiMda7TDY6u
 aEaAgCmOpmgppf+XR6i1pVCt+RWXHoILN9jw/lHA/0HMH9Y4QYTGDbcUnRKQd3RDMbn0
 bDjOU1XAMav1F6PYC9NtQwq1dsyc92FPR5eoL4y3rMUeQEnSIl2NqgIO4iaa9R692bSN
 sUx4oUjsyLTGJM42aohRlQ/XBWwNv1dW1PRy3fRajWpoBj3aryRwXaQt8+HybpshPimD
 GwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OicMR8pmx6XgfaayqywMDCGuw2Kc4LWmI0xk/JP3/B8=;
 b=MVQvJnkiZLDxTwA4jvepyhPc7kXb22/1jTJ4UfsgJjkcsmDMsbIgzuEvuiZOir5GKn
 fm/dl8e0EGpBjYz+GiXBli7rIphCc3klyd0aFfAbfgGm+6NO7amkJRvsktTPvByNZGtK
 RdSZ+RsQRby3ZUDScWgnj8aUFG8GdfXrbdOGaAF8F6euSRjvmMH2+MG5LCHxH9Pz8VCW
 ow4SpkKBm+pOOYyhDOCeLH5GNKsUGkZ0smyY+W7jxnXGYIW/MVmjY1RICzEyzxkdtqoN
 Wpkkpa98gsg3SUl4+ginCAohfR6gs2R+H6CjBynsW5KuB9CITQocSAm2B5EOVbWSBAah
 qEDw==
X-Gm-Message-State: ANhLgQ19me0udcEdthlNoEgqjm8Ft78pzZeqz8j2/GUCAdna8HJb/j1K
 nhrIkogsbYAKfAZaXIPPXziiAIgx
X-Google-Smtp-Source: ADFU+vuYgFP7Z0Qgbbrb/HCCMFeFDY4hbL2yRH6soCD+sZuLf5MRQxDi5EONs+utrGd4j6Jd9w3Ucg==
X-Received: by 2002:a05:6512:1095:: with SMTP id
 j21mr7937325lfg.124.1583064498795; 
 Sun, 01 Mar 2020 04:08:18 -0800 (PST)
Received: from localhost.localdomain (209.89-10-150.nextgentel.com.
 [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id i5sm9906716ljj.29.2020.03.01.04.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:08:18 -0800 (PST)
From: Magnus Kroken <mkroken@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:08:12 +0100
Message-Id: <20200301120812.11678-1-mkroken@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_040821_729448_9B115DFD 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] mpc85xx: set kernel 4.19 as default,
 5.4 as testing kernel
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
Cc: Magnus Kroken <mkroken@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Magnus Kroken <mkroken@gmail.com>
---
According to e-mail about pushing kernel 5.4 support to master, 5.4 was added as testing
kernel for supported targets. For mpc85xx, 5.4 was set as its default
kernel. (This technically also applies to ipq807x, but master has no
support for it on any prior kernel.)

I send this patch purely based on the content of the mentioned message.
I have tested 5.4 briefly on tl-wdr4900-v1, it boots and ethernet works. 
There may be reasons to prefer 5.4 over 4.19 on mpc85xx that I am
unaware of, and I'd appreciate any input.

 target/linux/mpc85xx/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/mpc85xx/Makefile b/target/linux/mpc85xx/Makefile
index b0f92ccf26..9c686a1b01 100644
--- a/target/linux/mpc85xx/Makefile
+++ b/target/linux/mpc85xx/Makefile
@@ -14,7 +14,8 @@ FEATURES:=squashfs ramdisk
 MAINTAINER:=Imre Kaloz <kaloz@openwrt.org>
 SUBTARGETS:=generic p1020 p2020
 
-KERNEL_PATCHVER:=5.4
+KERNEL_PATCHVER:=4.19
+KERNEL_TESTING_PATCHVER:=5.4
 
 KERNELNAME:=zImage
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
