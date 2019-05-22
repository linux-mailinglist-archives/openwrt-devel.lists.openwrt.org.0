Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4EE2690A
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 May 2019 19:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oGZGm4kFwLmvQXPr1AHCETpXX9mpMjmGDyrlh+NLEnw=; b=H9TAv2ju0CUwgt
	KlsuqaTXk3ZshaPUdRhdGUmTM0NPtcg3esiH9hA/gfth3ZPlKnJjMPIVuWXX0MS5yrhrAL+wylRzV
	E3W+rYA1u3I7NBVSgLrb9veN7KKfjOzg3UYTaLab1f6XV3ohUoo66qtuFjtbMS/I3uMWcprZPoGq+
	dcZrDiAdOZyPNxJbpBB/fNcZXHcNEuilSdgQqzX7BclMyFzKQW/75HDqQgPy6SbmWaismtYmCUkE4
	kUMjw0NUVLlAtkHLcrZWn2oy4zRxpIui6usPcIARthTND4dJCdHUSg33GTllrzEH1o/bZ5fVzzwfq
	yQ+ebIyEocbxvS3PZ7Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUyu-0000Mk-Sp; Wed, 22 May 2019 17:24:49 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUyn-0000LT-S7
 for openwrt-devel@lists.openwrt.org; Wed, 22 May 2019 17:24:43 +0000
X-Originating-IP: 95.90.180.177
Received: from dawn.lan (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 57CDF6000F;
 Wed, 22 May 2019 17:24:27 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 May 2019 19:24:18 +0200
Message-Id: <20190522172419.20630-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_102442_059128_00963FE4 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] procd: add docker support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

detects if running in a docker container, which then requires special
treatment of mounts. OpenWrt within Docker is useful for CI testing.

The additional exit(0) treatment in state.c is based on @mikma code[0].
It should fix stopping problems of containers.

[0]: https://github.com/mikma/lxd-openwrt/blob/master/patches/procd-master/0003-docker-fix-problem-stopping-container.patch

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 container.h | 4 +++-
 state.c     | 4 ++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/container.h b/container.h
index d33fa32..04d63ed 100644
--- a/container.h
+++ b/container.h
@@ -16,9 +16,11 @@
 
 #include <stdlib.h>
 #include <stdbool.h>
+#include <sys/stat.h>
 
 static inline bool is_container() {
-	return !!getenv("container");
+	struct stat s;
+	return !!getenv("container") || !!stat("/.dockerinit", &s);
 }
 
 #endif
diff --git a/state.c b/state.c
index ccf4104..ff1734f 100644
--- a/state.c
+++ b/state.c
@@ -21,6 +21,7 @@
 #include <signal.h>
 
 #include "procd.h"
+#include "container.h"
 #include "syslog.h"
 #include "plug/hotplug.h"
 #include "watchdog.h"
@@ -157,6 +158,9 @@ static void state_enter(void)
 		else
 			LOG("- reboot -\n");
 
+		if (is_container())
+			exit(0);
+
 		/* Allow time for last message to reach serial console, etc */
 		sleep(1);
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
