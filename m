Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2C41A6B0A
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vkU/uXFhwS2AhjuNWz6SWlehU/2VolACF15ryoNNGo4=; b=hSjkNDNVvHxaOyhYK9joY7bIeb
	wZMTIbgswZ5Fj8h3t23QbL+jDm2UkOZaigauapnvOuHjfZvj14Pm0SVLy0wb3B0XWgZGdOpbGk+Yo
	AKUAzsVaJJb03HpT+z+tILAuMNwxPTGGRucRgZa70dfwNlgMLdL/TgYSRb9h43WVyYHHQWS+5IJNC
	6wl5OOar8+wDTc3OMuPi9Gg3MG9NNhxUFIN4g9HIB/k2zO0U+h6052KvKQ32X5kWSULhPVL+ytBEi
	/RBe/WFLj1g1LNrrTDnwQfhi0tm8P2kL5JnnxVUCcPuDZNWR51XMfYTmhJ37NWXiQCYK6zLsnjioR
	r3HskWfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2dU-0006Ec-Ah; Mon, 13 Apr 2020 17:12:40 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Ci-Jk
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:33 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MXXZf-1jm2S543VH-00Z0y0 for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:23 +0200
Message-Id: <20200413171123.48647-7-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:S9o6wAEwlntJZm3I4bmfJoNPvJxYDH/MckL3SFYmmwXHZ1kZb9w
 Zps1jObmkJdcWLQGGYNzRCCSgpzohmWC/brj5/Y4Px/4VRAAmC//6Vg2g5XVrkl6NkxIpZN
 h5o2c7CtrxXlPZ7YM+rK6z5cNOesCcgvhOz7O/TPnKOisBiMzn8y2P2MeCDoeRh//93gYUj
 Ccy1jytoWd6nezVXfp/yA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+qsjGHNC6ZU=:J5zFL+aGAxllYc7Ro1VwRE
 f/+EjHH12WJ/F0yDkYuZTFuEKwgX0y5Ipl5NCuTOZ5oyr/gSdCKFKODY46DXdIXfZLEIHle6Z
 xYiLNuB8d67KpN1GS1Hz88sbtAHh86WaGESdiZGzfevDc4r12GJ4UlTkBlbRPM4DW2pXmj4eF
 Tr09wzLHgUsloOi3dOZLU2VOkxW5AJSVOQmOthQAlifTyYIP0WJFhyEeVQ9F/eROxqwyDSBAL
 oSAOF+lqbvkQhYevvYTTHebC3JU0odwYlwY3qZP0Kzzi6lO1B/gDiDlvRBBcOOj+/x5zB/oCR
 CFlHgsFgbNF/x26+lTS9DpumJE0+Bm8CBZp50PjMhohF0yc9XvlqwIQ+FJvvD9pZG+zzojBEU
 9oe7dFBQg/WbkxGWZm72aRuiyFqYvwCoJozKtiYd7gPimYRrgVLSwm/htVdv+oZX/jhvArvWI
 8WV14qFxjlkwplYQtht1Rvx5f4Zo4/CqwteN0NSeOtNT2RlYrsMPQ8tFscpfBguBnn0eGrBRu
 evwvk7K2muxxcb1Ozoyw+CHfaH3J/Tivj4Qo2URXGdoZm8aKZBPAL4CuvYDT4BTvLdROAGGMl
 enLByVtDRKrlAM9XaATC/lVrVsedVSsTrQpSOC+zTkavvnxMW6tCBilBXlUKpN5Q9FRcfqZg9
 vZ4hQvwpoDGT9EdhLioxdR5SD+FkPwcrd9qbPrwdy/vH5smqycytlGYlOMbPw50SuaAf1UxNX
 +4VseexYl3dbuw71Rge1lwsLI2n9UJgSy1UQFpmCwuv1bHj3NAKaHR89ZRYMI11fAV5+jQWsm
 BweUk2hhSgGu+qxqdswBXEzI49qCX966qeRTePM0Zr7LWXzsWrvC2fodacpQ9A0E9zD8mb5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101231_941790_CE8259DF 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFT PATCH 6/6] ath25: switch to kernel 5.4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath25/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath25/Makefile b/target/linux/ath25/Makefile
index 4fb082edfd..bf897908dd 100644
--- a/target/linux/ath25/Makefile
+++ b/target/linux/ath25/Makefile
@@ -11,7 +11,7 @@ BOARD:=ath25
 BOARDNAME:=Atheros AR231x/AR5312
 FEATURES:=squashfs low_mem small_flash
 
-KERNEL_PATCHVER:=4.14
+KERNEL_PATCHVER:=5.4
 
 define Target/Description
 	Build firmware images for Atheros SoC boards
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
