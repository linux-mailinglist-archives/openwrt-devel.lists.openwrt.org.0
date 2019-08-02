Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C091E80260
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 23:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dsNPnJS1TKgMWeVJsc5QClKkt4mdsBwfj2uNCRipSDY=; b=b0C8U/b/f6c5pF
	f/TP394Uctm5jFIELERgBRdeUpqPGRVcrQn1PV8+TdWebRkeFmNOX5ifkLeP/JHVpGeL5dqlWLPhT
	bFFBDUU9xwsWhNhtueX5SFOeMsIP33UwXl3IOPEilcZQvNbGv5xQvq8v3oYFprLS0wjAh9ocZNOIS
	VlckklshECnfyzDzxEQgU98ndxBtty7c5lIOyiEez1kLjOCHKBYBwqa+gIFqSOR6rK1GJ9feUr/TH
	0tpUta9Wh/mn+1RgiM/92ukkeQ8dqmyuJPFZxshpeeUVJyY1vQQFBY7PWMcjPeLDv5DPKMT5c2tDw
	RYBiS5AXFzbw2QXoJ/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htfaG-0001j7-3q; Fri, 02 Aug 2019 21:59:32 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htfa7-0001ic-Og
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 21:59:25 +0000
X-Originating-IP: 95.33.90.82
Received: from reboot.fritz.box (dyndsl-095-033-090-082.ewe-ip-backbone.de
 [95.33.90.82]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 4DA9D40002;
 Fri,  2 Aug 2019 21:59:06 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  2 Aug 2019 23:58:27 +0200
Message-Id: <20190802215826.21094-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_145923_960757_7A0F4F06 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] procd: add daemon mode and remove pid 1
 check
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add arg -D to start procd in daemon mode. This allows running procd
directly, not only via /init. Useful for CI environments to start
services like ubus and netifd without needing the whole init process.

To make this work procd also spawns services when running on a different
pid than 1, normal when started via terminal. Before it would only try
to connect to an existing ubus instance.

The -D arg handling was kindly created (with < 60 seconds RTT) by John,
I just created the patch and removed pid checking.

CC: John Crispin <john@phrozen.org>
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
v2: added usage/help message

 procd.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/procd.c b/procd.c
index 3de6208..aaef4fe 100644
--- a/procd.c
+++ b/procd.c
@@ -35,6 +35,7 @@ static int usage(const char *prog)
 		"	-h <path>	run as hotplug daemon\n"
 		"	-d <level>	Enable debug messages\n"
 		"	-S		Print messages to stdout\n"
+		"	-D		Run procd as daemon process\n"
 		"\n", prog);
 	return 1;
 }
@@ -50,7 +51,7 @@ int main(int argc, char **argv)
 		unsetenv("DBGLVL");
 	}
 
-	while ((ch = getopt(argc, argv, "d:s:h:S")) != -1) {
+	while ((ch = getopt(argc, argv, "d:s:h:SD")) != -1) {
 		switch (ch) {
 		case 'h':
 			return hotplug_run(optarg);
@@ -63,6 +64,9 @@ int main(int argc, char **argv)
 		case 'S':
 			ulog_channels = ULOG_STDIO;
 			break;
+		case 'D':
+			daemon(1, 1);
+			break;
 		default:
 			return usage(argv[0]);
 		}
@@ -74,10 +78,7 @@ int main(int argc, char **argv)
 	setsid();
 	uloop_init();
 	procd_signal();
-	if (getpid() != 1)
-		procd_connect_ubus();
-	else
-		procd_state_next();
+	procd_state_next();
 	uloop_run();
 	uloop_done();
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
