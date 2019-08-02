Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0397EFE1
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 11:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mBOKcskKMWwlEsS2i4KM6qVl2CjAgQ1BkAhVi/HR9Ug=; b=SzPbfQRjCRMtMd
	cjWcpIRnwSFtSYLznQpbkfikb4CPS+qInC4sfBEZTPKZ2GnBiF9ql3IZe8YERJDHsejwjDZKL1hXH
	6SNZp+9CdF9eMZYF/WKq3FFTSn1W6Qif8GMEZTHZbXUlZ0tNoHvO/6nGTgeJoBZoMvjwJwssAqd0x
	WpdZlg6T1Q6BsGSr2aT50HOJglJRMznTH6JGEPs4YmbBd5bW2YmNycxah69Sc7aHpXnU1E8ub7BXp
	zdie2fB0yVFbOsYWKyY/T6VGTBhL/zcsqGd7QJAhlsNEzze37e/eaQGA7MUsARI/D1NinBDAhyy1s
	Jh+lipplElq+UXKict4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTXi-0000WN-DH; Fri, 02 Aug 2019 09:08:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTXR-0000WF-JK
 for openwrt-devel@bombadil.infradead.org; Fri, 02 Aug 2019 09:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o8aXCaHVIFDeR7T1LnchrIb3DpAMKYIfeSV0/7fztKg=; b=bqqfgD0p/U8k23lFkTN0h45Jkt
 UlJ616NbEKbC4RSGCk7wA1J0sOSH8BPJMFqnWt7tGpKi+LMKroWjL8ixUC3xxwxHv2RInFWbtlwno
 Xfbu2llUF3IKj5bs/sw1RPViWkhR/sHEj6evWja0vNql6chWILWUT+Sr50jjDi1tQTLfrNz9lvPPo
 iegdBJltwP+lysfxV+/mKEhY6R1ed9Qx517sm3ur/MUi39a4e3sSn2OHhPzSU0wlfrZV9E6Pi6v1D
 fooFBteRPApawY7z280Es7JZ4g789lsXUnSI88DmHiFQJIpw4wBU6a5LVULYIsV3WKfMRBSwerg9d
 6vCaTqwA==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTXb-00071V-2M
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 09:08:01 +0000
X-Originating-IP: 95.33.90.82
Received: from reboot.fritz.box (dyndsl-095-033-090-082.ewe-ip-backbone.de
 [95.33.90.82]) (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B459E2000E;
 Fri,  2 Aug 2019 09:07:09 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  2 Aug 2019 11:06:56 +0200
Message-Id: <20190802090656.14343-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_100759_230858_C83A0468 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] procd: add daemon mode and remove pid 1
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
 procd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/procd.c b/procd.c
index 3de6208..10b974b 100644
--- a/procd.c
+++ b/procd.c
@@ -50,7 +50,7 @@ int main(int argc, char **argv)
 		unsetenv("DBGLVL");
 	}
 
-	while ((ch = getopt(argc, argv, "d:s:h:S")) != -1) {
+	while ((ch = getopt(argc, argv, "d:s:h:SD")) != -1) {
 		switch (ch) {
 		case 'h':
 			return hotplug_run(optarg);
@@ -63,6 +63,9 @@ int main(int argc, char **argv)
 		case 'S':
 			ulog_channels = ULOG_STDIO;
 			break;
+		case 'D':
+			daemon(1, 1);
+			break;
 		default:
 			return usage(argv[0]);
 		}
@@ -74,10 +77,7 @@ int main(int argc, char **argv)
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
