Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C031432FD
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTm130H6Y0m/HJ7T2DCr/x5lyUGApDP//XIAFbUlJgA=; b=UdfIO8te+79opd
	PRNwDrdW0oX/cHkHS4/KoMXeFsUeKccDqdXzQiv5yA3uxJgd8bUAOcGu7Ds4dXrWxyz6u0rsENAOC
	EHPY/EmQ/zjf8Pwqj5WdKAAspCU2iHyeaq+O7uMu1VQI95Om6BqKDcpmxTBz55Qir4/Jyqgndz3XE
	qblGPWa+szNXZOWnzTOTUouLZtZCTxk9WVxjvQ7bUM+QwRCAmNyX+5XB0n4KETeto4rG2t2+5NAMI
	ChXUJ7236VblkeCkEusQIqSZhGTBuuyTmUaMgo9lTVr2DzIOhfPMPZuZsAitm5p+2agbnFk4KBbfs
	Z035acX/stMF9zORZzMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdt0-00059X-5x; Mon, 20 Jan 2020 20:43:02 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdsL-0004RU-KC
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:42:23 +0000
Received: (wp-smtpd smtp.wp.pl 16128 invoked from network);
 20 Jan 2020 21:42:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579552939; bh=uZqiNm2qagTzMZ0Awajblepz6DTH9MXASYmmNy0PRrQ=;
 h=From:To:Cc:Subject;
 b=YLGvQVfztHKh6Gqtzj+aN+eaiNDXeaxxF7fRAp8/dF8DoU8+ZMM1vZXMdXsU+Ffv1
 BjjWUTUoKH+XKQHXodqyh1qXM4rAvqdjBgxrtVVLvIJdXtYdiVtCLdnk7fSpI2wMIk
 abAyzCx0yuc6INSMTkPW5/vi+erUQnMbSsYl1qP4=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Jan 2020 21:42:19 +0100
Date: Mon, 20 Jan 2020 21:20:09 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200120212009.32569366@kosmio.komorska>
In-Reply-To: <20200120211811.22199957@kosmio.komorska>
References: <20200120211811.22199957@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 8502b4d143716e5ff6beb8efce4d3b59
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [UaO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124221_846465_CE118541 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: uboot-envtools: add Netgear
 WNDR3700v2
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add Netgear WNDR3700v2 to the list of supported boards.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ath79 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index aafced98db..66f7dc6a64 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -44,7 +44,8 @@ yuncore,xd4200)
 buffalo,wzr-hp-ag300h)
 	ubootenv_add_uci_config "/dev/mtd3" "0x0" "0x10000" "0x10000"
 	;;
-netgear,wndr3700)
+netgear,wndr3700|\
+netgear,wndr3700-v2)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
 	;;
 netgear,wndr3700-v4|\
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
