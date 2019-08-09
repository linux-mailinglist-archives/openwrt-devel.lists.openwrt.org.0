Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B374E87918
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 13:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FeSUbTgUhDbKzuq5PjyJESF+EVMjWBRjMDNdXgUiTrQ=; b=TLBv3WAefoCYMr
	fnr/9n6LyJRGohIGvS7uStWu6p7GAxcPdZQ4OQX3QX44lLIqGn2zhN071iJomLT4OU5zBUPGq7Nqi
	XjFZg5LWiu0quR2bxHTAx0ttQabGkAgXJcc8ernKhr8FPRrk1sP4ZIkxwR348wq/krtnH9nICdXxO
	4vLufzbP34KDlbYPtsYzf60RQJKWVBCuY2ZM1PjFAJwrLB2YIVe20zQHTufnheyC6yrqDsF0lkZSB
	Qh7haihrlq/endit3M1pRB+Q3CQiiFT9VsWvSsE39memK8+SaOv+Nq3Qfk8pwyo3CoGt2gsYs8UBv
	RcWpxV9FBcygtYOjuZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3V0-0003hv-Vv; Fri, 09 Aug 2019 11:55:59 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3Uq-0003ha-TF
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 11:55:50 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MqJVd-1iisaX2vBr-00nTkX for <openwrt-devel@lists.openwrt.org>; Fri, 09
 Aug 2019 13:55:46 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 13:55:43 +0200
Message-Id: <20190809115543.1228-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Tx2Wi17l02ZE1AskCH7xCN6M1oCVbSmQt+i2xjtKGopkuaXi4J7
 IcTdtMBIHm3iB28MIIQoeJyxQxcBoSNidxy0tfOLAZo6cinCvgxcKJE2dwJo2kdDhIRCmdM
 Bf63iEGuusCQcIgrIcLPhXQ/9X+LCDVrOMuoYDACn5eA4DKSRY0HVYLOlk4+CqnY55sAp1N
 27x7AjIgGnqXtp+TBMWPA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z99r99cE7hU=:fJKyvstWdPFasYijdH1qun
 uDsDu3QlIdLWXNrItWWu1hmlSS4fs35VqoSBHcm7Ia4H8lbzEqlGDsyiu6lcOA9Q8TGDJ9lwI
 IAO+0hWFVGg5Wpi0TKaDE4QqsHP/pOnavPmN5dkC8t/k10WXTmzWcashhUyjixsZngxOrbMOw
 EwN/7JSRwK77VaUTWFh0CJgY20gLeo3irxjfduZcLpMglw1y3cIdqA6XFQNYDvq5IY5Qu4m94
 zlMlvKKxRZQTBxqqwkqzzGROqHjAzQPiTZEmzUsBRCJ5mD95Ol1H55Jka42qZEJ4b9PVb54j9
 I4sSzH74QFN/gzYTM/Ue8CM1ztnQwe/9Kqket3fm23S7afDdLWWAxLl6eVc32NUxGhHI3KXS6
 qjUVfvHiRDazPy2klizyDm3WZO696nWrRnNaAis6Da7kA3d8x/qelGnJjMVXu4f6sX1HgKPEw
 vJu3WVfODE4cmN8ikdh6SKeIFSWqkJCJNzKeCOKaucvjfeL9eUzGqNzGu3XvtSVuebPyNYrJO
 l66/tuEyJUSZlhuqouH5RWqK5gXzZ7zLbmKmkgH3rvi6QK7WeWwYfnqIBa/wqcbCEixFA/bLA
 JjqZJ4SE77AZurh0UfPQKrT9XnY4UFAbtkSXf0YdsAFRWz9+INRCTadOd2lMfq68glDQ+dB5W
 hCxz3MOnhWkcv1uiciui/hQqcGiZIHAe8Jqkfc8zDCgc42lDJaq+IiD3N2TDpXlx0bahL+zcQ
 RK4bmXLvmTF07FsjWovdDONvadIPNHYpNzcqCyjhweLiCl/3jSSWCDHUYRQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_045549_243528_FC350709 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] build: fix indent in image-commands.mk
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

Convert leading spaces to tab to match rest of the file.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/image-commands.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 06c084c48b..89c17aec5b 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -120,7 +120,7 @@ define Build/append-uImage-fakehdr
 endef
 
 define Build/tplink-safeloader
-       -$(STAGING_DIR_HOST)/bin/tplink-safeloader \
+	-$(STAGING_DIR_HOST)/bin/tplink-safeloader \
 		-B $(TPLINK_BOARD_ID) \
 		-V $(REVISION) \
 		-k $(IMAGE_KERNEL) \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
