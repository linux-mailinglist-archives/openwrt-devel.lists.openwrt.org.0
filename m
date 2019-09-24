Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B385BD394
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 22:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wqAecmeP57tyofuNLKwJ3daVomdKgWp5z+jPpqHk/yU=; b=XNKAyNz2I7BDvM
	yD8A/nC+w/rL8TmCe6cuy9KFoCcnIYq9VPhwFAojuvX1szS7SkJZj83IIvFMKPyGrmFjY9XbO483P
	ahk2o82IeXFN77eur1a/RRSEJ7d+R6plI61Nw7GMFQP03ekM0c0ioE51EZpoZoMRaUJfGuYIyrIxM
	dGjT8+v2zr7l5wsqNExaP97L7aJ0AT5BCeQG7bXJo8kF1LeltYkNuY8iAeiRP71HKybkw5AoUGkTh
	u/dMXT0Mb/PziJnyX33zumosd1EE1PqLlWchomwzeSnTVPmCiTEQPiuUlsJblHUucuBwbIb6oS9vm
	VAW4ZUSsReGstIN1Z0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCrQl-0005cI-1d; Tue, 24 Sep 2019 20:29:03 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCrQb-0005bz-He
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 20:28:55 +0000
X-Originating-IP: 128.171.10.79
Received: from localhost.localdomain (dhcp-grp2-01.ics.hawaii.edu
 [128.171.10.79]) (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C6F24FF807;
 Tue, 24 Sep 2019 20:28:37 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Sep 2019 10:27:40 -1000
Message-Id: <20190924202740.11679-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_132853_736004_328A3ED8 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] buildbot: store key-build.pub as 0644
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

All other keys are stored as 0644, the only reason this key is 0600 is
as the key-build should be hidden from others. Changing the public key
it to 0644 it is in line with all other keys in /etc/opkg/keys.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 phase1/master.cfg | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/phase1/master.cfg b/phase1/master.cfg
index ee26fe4..f0151f6 100644
--- a/phase1/master.cfg
+++ b/phase1/master.cfg
@@ -763,7 +763,7 @@ for target in targets:
 			name = "dlkeybuildpub",
 			s = UsignSec2Pub(usign_key, usign_comment),
 			slavedest = "key-build.pub",
-			mode = 0600,
+			mode = 0644,
 		))
 
 		factory.addStep(StringDownload(
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
