Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6949DF755
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 23:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9XUviT6vOXGQpcTBfRhXaSrfCqqLD9BXx4qLfwnddZU=; b=exuS/1R9arm5P4
	fP6oYN3iwTBsDxJokAZts9faCRTXgZZ0BMDdniwQMXp5n73TjWXnjsoLYho6k1OcqQZUrRMo3rAPB
	hLs5tU0K8abZcnUhvfnb8YDBc3yz7xNGQJz6bsVKsRg8bZyYu1JpIEk4KQ5xDrpiWAvqFPS7GNM4Z
	DNmUNjXVTOT843OjDmgyHWED/oJDF63WdDHS7UIiG0CVlzc37CI3HYeh3QagA4zRMRDmk1kBVrLP1
	MnbPJjPUVWOrAzhCbLNDMUao1WDHlgz4i2hfKqAV2BQGphr8dZabwMlaZHo3d++IKJSinl0gwoFfF
	QF8Au4ko6gv6ZgY75r8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMewl-0004Ro-OE; Mon, 21 Oct 2019 21:10:35 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMewd-0004Ok-FN
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 21:10:29 +0000
Received: from localhost.localdomain (unknown [213.175.92.61])
 by mail.pbx.lv (MailSystem) with ESMTPSA id 9EDC31A60A7
 for <openwrt-devel@lists.openwrt.org>; Tue, 22 Oct 2019 00:10:26 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Tue, 22 Oct 2019 00:10:20 +0300
Message-Id: <20191021211020.15412-1-roman@advem.lv>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_141027_703567_DDF833F7 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: uci-defaults: do config
 flush in one shot
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

Moving a file between tmpfs and other fs is neither
faster nor safer, thus no point in doing it in two steps.
Use new jshn option to write output directly to file.

Originally discussed here:
http://lists.openwrt.org/pipermail/openwrt-devel/2017-December/010127.html

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 package/base-files/files/lib/functions/uci-defaults.sh | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/package/base-files/files/lib/functions/uci-defaults.sh b/package/base-files/files/lib/functions/uci-defaults.sh
index c2c6dc3fdc..0d2dcd5241 100755
--- a/package/base-files/files/lib/functions/uci-defaults.sh
+++ b/package/base-files/files/lib/functions/uci-defaults.sh
@@ -615,6 +615,5 @@ board_config_update() {
 }
 
 board_config_flush() {
-	json_dump -i > /tmp/.board.json
-	mv /tmp/.board.json ${CFG}
+	json_dump -i -o ${CFG}
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
