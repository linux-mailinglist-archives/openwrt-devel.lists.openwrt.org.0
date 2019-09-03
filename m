Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A3A638E
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 10:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2xsZ+cJt1qqXyBIo1GMqCVfzXxuqXdmrmFUF8hbi0SY=; b=uqE1ba8SYPoEDl
	MNEmuV426TcYg9u4A9WwBSUPFrMHSvBRYfFYEdi6Mcc9dQXdJq6nI4yg6TPTLm2CxS/zvqibQ6Fjk
	bynecTP8S3nEYYZPP0OeiCA535k6GqN6SKC/tUkkTEc5xI88KngCF6xyCNm4J0XklB9oSWGQrgl9a
	RamfF1/RYZMZmPG/l1JnxjF6NVUA3FfmibkieppqpPSmLbsPoZflrJ90p2RkST2oflnmlQPIcIBvN
	B8LDGL29QVScvciuMocu65aXx9eJ94VcjyfaHMwyyp6VSrHYD8j6mUzJ1ByzSRnqNKxUrzXqLncTD
	1k1FFU8OqCYGHabol/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53sY-0006Km-U7; Tue, 03 Sep 2019 08:09:31 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53sH-0006KM-Jk
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 08:09:15 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2AC44E0009;
 Tue,  3 Sep 2019 08:09:01 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 22:08:50 -1000
Message-Id: <20190903080849.28789-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_010913_804132_99742BF7 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] procd: allow running with pid != 1
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

Allow to run procd from a bash script and still let it fire up system
services. This is handy when running from within a container that does
not start any init command on pid 1, like on GitLab CI.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 procd.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/procd.c b/procd.c
index 3de6208..a78c538 100644
--- a/procd.c
+++ b/procd.c
@@ -74,10 +74,7 @@ int main(int argc, char **argv)
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
2.23.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
