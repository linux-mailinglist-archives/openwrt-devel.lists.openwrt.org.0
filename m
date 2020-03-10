Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9511800FE
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 16:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QA7NbxCIOjzNdWyrCvTHXhO90xHIGzegtLoOSFxRxJs=; b=Xrvbk/rMfpz7G5
	8pjWQl41/RJQrPRu8aGVdfxwWZg+bE+4QHpPfBvH6AfXYaHdw230orqDKvMH//osPrNokzl0QriUE
	VGDzkGRzwi4Faq/n1B05za96iVGohAdJsM+d01r5eAyGWKtVFh9vKFYin2Yp9Jhg1N1nb/zusm7bF
	l4LETS1qrgu7khK+mpG4drfM///MMdhL/M9Ugv4ukHmYjDxUz7FJU/aPJdum0+lx39jTe9T4iwznM
	ELfrCYyJkQ4qTgNcT9f9Q3QZcXu9OILG9uXL+A9i3nAgG1aMEaHxUa8PMLbq++9S+5WKYZrq3VtOf
	1iVcfNS6qvfXRyUwtPzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgPr-0001aa-CV; Tue, 10 Mar 2020 15:03:31 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgPl-0001aA-Sb
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 15:03:27 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jBgR0-0006gn-55; Tue, 10 Mar 2020 15:04:42 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Date: Tue, 10 Mar 2020 08:03:20 -0700
Message-Id: <1583852600-27746-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_080325_963780_CED55CA0 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] imx6: remove unnecessary wildcard from
 board name matching
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The wildcard used in the network config matching is not necessary
given the board names returned by imx6_board_detect() in lib/imx6.sh.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2:
 - fixed typo in commit log
 - rebase on current master
---
 target/linux/imx6/base-files/etc/board.d/02_network | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/target/linux/imx6/base-files/etc/board.d/02_network b/target/linux/imx6/base-files/etc/board.d/02_network
index 6ec6673..48e5f0f 100755
--- a/target/linux/imx6/base-files/etc/board.d/02_network
+++ b/target/linux/imx6/base-files/etc/board.d/02_network
@@ -11,17 +11,17 @@ board_config_update
 
 case "$board" in
 cubox-i |\
-*gw51xx |\
-*gw52xx |\
-*gw5904)
+gw51xx |\
+gw52xx |\
+gw5904)
 	ucidef_set_interface_lan 'eth0'
 	;;
-*gw53xx |\
-*gw54xx |\
-*gw552x)
+gw53xx |\
+gw54xx |\
+gw552x)
 	ucidef_set_interfaces_lan_wan 'eth0' 'eth1'
 	;;
-*wandboard)
+wandboard)
 	ucidef_set_interface_wan 'eth0'
 	;;
 esac
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
