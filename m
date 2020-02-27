Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277981721A7
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 15:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTTPLQDAkBELqri3ttg13DC1tBL0R4tkUCPZ5ZG5wzQ=; b=AIE8iQekdZKVYs
	7CAu78UNskkUyJfVp3xgqvf6hHqVQ8WiAvx8H/XpPVeXXLdrkePb9TKicEg/NJ3o3TQY0X+EX/wN3
	98q9vnogGNvs8Fm19M6TkdkcoizzvO2pz6XeEw/IIlL1IVS9sv6a+5+xuPR6irsQBA7S/GxIokVgR
	1iBdd5XzyuowmNNyuEnp+oRQ4fSgE8ywJLwz8cFruYo2weSFNhyk3UPDCFsb9ovF57SYgtAk1rqaF
	MwuAGvDvFWvlR08dKTWSWf4H04Pea5MQ6hnIc5+9PivzoNWC/PK/hG6eBXeVxjGmxsTSqnyVARAkl
	2rX1VWyBy3M+QnxDb0qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KZU-0002D3-J2; Thu, 27 Feb 2020 14:55:28 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KZN-0002CF-Ej
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 14:55:23 +0000
Received: from buildfff.adridolf.com ([188.193.229.61]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MtwQm-1jPorK2KMu-00uGZw; Thu, 27 Feb 2020 15:55:18 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 27 Feb 2020 15:54:31 +0100
Message-Id: <20200227145431.42534-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227145431.42534-1-freifunk@adrianschmutzler.de>
References: <20200227145431.42534-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:YYt4j1FyV1eXAoREooUMLA63u+hDS0iuwGWEbg4u1kuG2xMehu3
 EOtYCuOo6oENH9BVPSM1oj23wl8EbyP0bIvFGWTJF8L+u/vjXtYT/GibrocnclSgyhYbGdh
 czItnQyVOpBABswBNqIL5wCXIMUWxzdzRf67r2hcd7sxzjjtNNP+ViQcMcSxa3TT5hPgn3N
 11dyIV53EIl25Ik2/bR3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3y5xl59BR0Q=:qWL/iPS1ezLbha6DEQGOZS
 ru9idlxv7HDJu7bD+r5RUTrx4YmP8r3DV4AZktdq2khDnAK06IUPUmxjTMwGjlMTVdmdX1aPx
 DYxo5NO1HBNIU9d2XpuxIOuiO5t05FYDyZqLAXADp9YlrpCnW4n2f91kLM1C4GClUoaTHZFs1
 bQyB9s4yYBd4yXP7tVXVVUAWOiFvMz6kcHrJHoMhjROI3VcxinTE5EmZ90FztRuvGp3jLiKt5
 sw/HcaDa97xNCGmNbihv0PcXIywFuG3CAIOXza3hAtTk1yPCUqumPctRqFLMa6f8ToFOdUpoo
 0k9LhAg5uxqOp7gzoYLwEWkfVyQmfilX2WfTOiMgQfC02qdOD1a93zqMEjKJyWUVfbNcUPNPS
 7MjWxpkhF5llOEg7tOPwj1eooUXorkd7KLJ9LLqN7gVLg/UxySB3hJG3tiQ5xQFzRYTMEn/vI
 AElbzgwzruGCezXLPBZZZ6BHLZFEJB+cv8SUcqvolLdz13ojFcJjv2VPqW1Y+ekbhvNJ9NMb0
 UBXtl8BdIUfGgQ5ywLNVOQGTobEEPHXf761IhIW9GiHsZytIgI7eQS+0fhzlPbUAhBq1oKUq6
 PTkKm0lD594vn0UAxAqinR12UO2L/LnCli2V+on5RUnCzEwdYTZ0e/kR0v0bl7Ox4v5EdOT9t
 hlIrxUJzQl60aV8PGu+SVYdCuNyA6GQVNMkABPBZ+TEKFmMzUpP/WVW9Tvzl6uWttarcreVjI
 FJyNPu40DP3slVVxNeo537r8fkJBCFKZ6q9Rh6gIlWBVr2/vil3qq+munLdF7B/8RmPkpNokg
 TZcisrTJHChKJNaDC+q8STtjbawWcvfzLVr7cWXLxtDPdrX0N1rYHYEKPxniy+AD05TrCQr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_065521_793829_76ED88D1 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] kirkwood: switch to kernel 4.19
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
Cc: Pawel Dembicki <paweldembicki@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Pawel Dembicki <paweldembicki@gmail.com>

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---

Since I've mostly done cosmetic changes on this target,
I'd be happy about an Acked-by so I can push this bump.
The patch for adding 4.19 support on this target is actually
from 2018.

Adrian

---
 target/linux/kirkwood/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/kirkwood/Makefile b/target/linux/kirkwood/Makefile
index adc7a496e1..2e615e42bd 100644
--- a/target/linux/kirkwood/Makefile
+++ b/target/linux/kirkwood/Makefile
@@ -13,8 +13,7 @@ FEATURES:=usb nand squashfs ramdisk
 CPU_TYPE:=xscale
 MAINTAINER:=Luka Perkov <luka@openwrt.org>
 
-KERNEL_PATCHVER:=4.14
-KERNEL_TESTING_PATCHVER := 4.19
+KERNEL_PATCHVER:=4.19
 
 include $(INCLUDE_DIR)/target.mk
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
