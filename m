Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24246D5829
	for <lists+openwrt-devel@lfdr.de>; Sun, 13 Oct 2019 23:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VwkrLMzytbbXoEQwR7WvlYm3uLvkLdx6q7WvTWMyOZ4=; b=Cta5YLp+21jJou
	rqDksJUkeYxlntynYKvmeXhOkCtpTLSE6bBwWukMm/PSU/HplRFYRDVCxOIhqLUc8GQpUfteGqceg
	ymRAQJudnUPK7V6oH1OEGDbP6PooPpOfarRbtiA7Y/ogFIve0vwAcqrHisEjD4GhlO1eHCBZXjHAJ
	gSVOnsyZRIPrMsvYrE1yDAp3MnfXUPXPO66ZoyflFMoW9LsE4iQPAUysptngFMSrWYvxB5tYjsLAm
	RMIZXnO3WmZxJytpHrkhQuaUm94U8a5SCeVJs3ULL2RhgEXSB0RCgYhBhBhiwQA3WxCZlJ/AlwlFz
	oqKmsYL8mMsPvg3CXvGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJkz9-0006Tp-VS; Sun, 13 Oct 2019 21:01:03 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJkz2-0006T0-Cs
 for openwrt-devel@lists.openwrt.org; Sun, 13 Oct 2019 21:00:58 +0000
X-Originating-IP: 72.234.165.80
Received: from tb.home (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BCBCE40003;
 Sun, 13 Oct 2019 21:00:43 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 13 Oct 2019 11:00:39 -1000
Message-Id: <20191013210039.14448-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_140056_573437_1FCBF34B 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] buildbot,
 phase1: use buildinfo instead of prepare
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

Prepare target is used to compile tools and toolchain, however buildbot
only uses it to create the buildinfo files. This[0] PR splits prepare
and buildinfo allowing the buildbots to run the buildinfo creation only.

This should also fix the current issue with missing json info files:
prepare runs `target/compile` which removes all existing json info files
via `Device/Build`. Only `target/install` creates them via
`Device/Build/image`. However currently the buildbots run
`target/install` before (the second) `target/compile`.

[0]: https://github.com/openwrt/openwrt/pull/2492

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 phase1/master.cfg | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/phase1/master.cfg b/phase1/master.cfg
index f0151f6..0aaa079 100644
--- a/phase1/master.cfg
+++ b/phase1/master.cfg
@@ -920,7 +920,7 @@ for target in targets:
 	factory.addStep(ShellCommand(
 		name = "buildinfo",
 		description = "Generating config.buildinfo, version.buildinfo and feeds.buildinfo",
-		command=["make", "-j1", "prepare", "V=s"],
+		command=["make", "-j1", "buildinfo", "V=s"],
 		env = MakeEnv(),
 		haltOnFailure = True
 	))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
