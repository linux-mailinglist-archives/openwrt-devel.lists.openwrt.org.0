Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2BA5D1C
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 22:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RoyBHOMhJ4WAq1GwSE4+lR6H3NI56P8oBk7kKUPQlaA=; b=sUJdkIJI9AzYwE
	WE39q0gNWObMtF/bpfWS4aL/ScTnwti/RB3xLCfcyGAItyud291uBNf2ybXKytDLXP5k4PdYcs2FM
	/T+MhEcnpQQI+gtLYFgAfhQLnVnCVwefR2W06TAx00l73jbxMcOvU+Is0+NmWQJSq32s2j4FEqxo8
	TvyHaOsLynL8PHtoK+8GlfJx5/e9PR1aBMXYrX/2h/U4HR0YNSUwic2xyo0O7gEo0uI+OL/oN2uiq
	3nBmP5JQtZWdQCd3dPJtucUG5FrrEnFhPeyHh0x/K63MJMLaLIDFLAaSQWl+BVMDmvsrylzPUoWA5
	4pDknHN3vcwvMXQDauBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4sxo-0005qT-B3; Mon, 02 Sep 2019 20:30:12 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4sxc-0005fy-LP
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 20:30:02 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id A367FA5860;
 Mon,  2 Sep 2019 22:29:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id sEw6zRk_DPcA; Mon,  2 Sep 2019 22:29:55 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 22:29:49 +0200
Message-Id: <20190902202949.27053-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_133000_854071_B9DA5090 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] odhcpd: router: Fix out of scope memory
 access
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

A pointer to search_buf is accessed by search_domain outside of the
if branch which defines search_buf. The compiler could already reuse
this memory.

Coverity: #1445747
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 src/router.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/src/router.c b/src/router.c
index 07dd146..700e1ff 100644
--- a/src/router.c
+++ b/src/router.c
@@ -607,6 +607,7 @@ static int send_router_advert(struct interface *iface, const struct in6_addr *fr
 		struct in6_addr dns_pref, *dns_addr = NULL;
 		size_t dns_cnt = 0, search_len = iface->search_len;
 		uint8_t *search_domain = iface->search;
+		uint8_t search_buf[256];
 
 		/* DNS Recursive DNS */
 		if (iface->dns_cnt > 0) {
@@ -630,8 +631,6 @@ static int send_router_advert(struct interface *iface, const struct in6_addr *fr
 
 		/* DNS Search options */
 		if (!search_domain && !res_init() && _res.dnsrch[0] && _res.dnsrch[0][0]) {
-			uint8_t search_buf[256];
-
 			int len = dn_comp(_res.dnsrch[0], search_buf,
 					sizeof(search_buf), NULL, NULL);
 			if (len > 0) {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
