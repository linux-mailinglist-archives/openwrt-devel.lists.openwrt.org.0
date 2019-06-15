Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A08947257
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 00:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fkHfHqmoPZbdSAYAUc9zLXxal1Dch+Km2obWLLH1o0c=; b=ecAU3g6ag3Orya
	uehOo3ac6M3OK4YsmeYiu6JhFNzwwaepf1oVhPtHQKsYQ1mWw3CMy09HrERuYbf+225iaYebsfCLp
	rIXGV2p2cbNcza3hru3TvZUVhyONgy1FTUzHpxe+x0Imw1j4LXXC2KyaWx2ygYWuUmG+Rz7fGoFSH
	mxugMXA3p6q5/mUja6Lbo2ZKFh+UrzXsKIKp4iyM0hO00ZAJdwas4GKUMhEpbOLrye7t6jgV6wx64
	iLNs2Bh+znzB9yxbGyVGS8NRaekbiXuKeDhElXNL9I4AWtZIFhb9ahxelUfBdqbaZrwjEbKewTwAj
	IQhikqDC3uSch+TvrdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcGtI-0007P6-Bl; Sat, 15 Jun 2019 22:11:16 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcGt9-0007Op-QC
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 22:11:09 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 319C425B64;
 Sat, 15 Jun 2019 15:10:36 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 15:10:19 -0700
Message-Id: <20190615221019.20460-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_151107_853920_78ECEE55 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: sysupgrade: Bring down wifi
 just before killall
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Wifi can, in certain situations, cause sysupgrade to fail silently
with a 256 return value as all processes can't be killed.
One of these situations is mesh with batman-adv active.

Added `wifi down` just prior to the killall sequence in stage2

Run-tested-on: Linksys EA8300

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 package/base-files/files/lib/upgrade/stage2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/package/base-files/files/lib/upgrade/stage2 b/package/base-files/files/lib/upgrade/stage2
index bdc12c7426..d911614e36 100755
--- a/package/base-files/files/lib/upgrade/stage2
+++ b/package/base-files/files/lib/upgrade/stage2
@@ -124,6 +124,10 @@ kill_remaining() { # [ <signal> [ <loop> ] ]
 
 indicate_upgrade
 
+if [ -x "$(which wifi)" ] ; then
+    wifi down
+    sleep 1
+fi
 killall -9 telnetd
 killall -9 dropbear
 killall -9 ash
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
