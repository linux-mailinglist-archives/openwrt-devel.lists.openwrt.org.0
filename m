Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C33BA1B2
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 12:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YUGBMjPtBom5kZRgyfWIVOrbVFORnQR1Cj91slu3FFA=; b=t6d29A0U9rz3mO
	XXAbNWwEzFDhHBO7+MX7olyJJBwyGqd6TGOK85d9kxAv+LKEg1WetrfPbismzxH0g0NtAeh7+2u9o
	WpjYD4G5V7yv0KRKkCQiNP/c1apoyC7ugmjUbE7M+OC7opgbuW89VK79dR/z6mCBVPEs6dNcqupGX
	qMsWLEsGTgU6U/atmmnN2t5ubwK37CL5Nhg1R1zO1tp3bzpRQgP+EuXwYom88agFZGPeQSBaRFWpe
	X/1HgkHNABc75FaoZlwd4AhDNoPf701eHvhCcHCYcYrUbMGSPvVN8p3b2zYtUmlFscLYe9iCi3xcC
	8op7DkNAdcUQ4ttvhYZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBygl-00072i-8N; Sun, 22 Sep 2019 10:01:55 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBygZ-00072H-9b
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 10:01:44 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MXotA-1ihraf3dWu-00YEaP for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 12:01:37 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 12:01:35 +0200
Message-Id: <20190922100135.2334-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:GHjAkcnBLLqw1D9kHX/WpUVLVAPHMhG/Kpn7yLem0I8YKzllKMt
 WA/NPEE3/3npVyzLtzm8XbxyzNL1OXGTmSyE0My4TYsY+9JuzaGjoGU6Hf1L2b15/nAqQKs
 pe7DvpNOwcQsvTgMW1s4wkNonndAH4xEah93K6CF+lsEMouEq5fcRtepPDJZFyVSNURqOg9
 uCU9Y3oM//mDQFg8iweTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W9t8wzxPoQQ=:RyL3Vs7Y46eGVDJyrI/3ho
 Ry47yhuk9oIf5k0VK29B9CNt2XyP0MXQKHAX4CKOe6duIs2XEg7f0sMsSwZ4Y/FevobKIEHSk
 zfAtikJQZ6apQTGzusvJ4H4rlZnT5UEioBuIQdJ5SEL0W+aH7EbynjxaH4bsoPEMjY8rxHStE
 xoFhxhwokWcSLl12o9nbO6IMWoEZaOPL4HrI+ILf9CkZakk7RPAzOfJOradyOoYd7fc/yQOgk
 6kB8maeTN+zM5IXsK1MonqeYbD0kJOPO3TyycXgv/iSATgOzdtfHAzEeEnT4sypCxJP+K9Qwu
 h4XBE2eftW6ICF6NY1rrXd+/a/uIDzfsTx0FU7XVSAOI/wb1RKtUau81uGk9WGAM6WTDdbmKg
 6u3A9orVd47MmdbltemzlBwYkIvYRCylUTALAtd3WsV2OJrn65/a5T6aWGp7xEVgRJ3ILprV0
 H5ADZvZ8Rfbui5Ty8SL37s4Dz6JNenwFCx1ZD4tLpPMsU5oMY+YPRcQI3okZ6oNWTbKanPKxL
 UbdBE3wfOT5CeUavT2xom1vIsY6yV5O8g9kb0U8YrbEcxRMnEdhI5Z+qZ6GjNjNb999zJ4yX3
 FZIc9SzPCTkgTvg4ss4ZqT5cPPEraHHtWVkGZAx43SEO8ZCyzrRPtPdD8ovwnQQ1rMw9P6fuu
 I1adBAunsO7r5NUnbD9IexqeTKrtZE331CJa1sBXT6r6rHoFsTa/bx3H+93RH1qjc0oxpJa33
 cZFFnEghi2vv3B8RyJlm9UuYWgKl3CdQgbu5Ce4igWgGg0Ku5/7qy6rEydkxsHNs5sKYI8gsp
 eEaFXPVFQEF1hzBMOOO57Bmjv1bGozYy7nGNGdU9dVH73ihLQro0S6xUWGXhE2hejd5uZcSxq
 dFnxEOO8FbaxVLU1WVplKlDJwAiGo97nvlaALpLOQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_030143_625259_CBF10871 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: initialize youhua,
 wr1200js WAN MAC addresses from flash
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

This patch changes wan MAC address setup for youhua,wr1200js
from retrieving it by calculation to reading it from flash.

This has been checked on-device.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 63644331e5..01e85527f3 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -557,6 +557,7 @@ ramips_setup_macs()
 	phicomm,k2p|\
 	planex,vr500|\
 	samknows,whitebox-v8|\
+	youhua,wr1200js|\
 	youku,yk-l2|\
 	zbtlink,zbt-we3526)
 		wan_mac=$(mtd_get_mac_binary factory 0xe006)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
