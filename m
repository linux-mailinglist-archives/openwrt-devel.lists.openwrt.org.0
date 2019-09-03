Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C842A662E
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 12:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6+I+2J3KsT5jfxChK/JFFdjwAqQZs3iFq4pAVa9wTx0=; b=Jt/JkUtb/0jDRk
	x2Cm+0bvJQl7B7e5YM70DuemzyaZS4mgPfS8P/3fjdjw4C+VhzUUBtQ20PVkCQkxSH6CvZevGUu1L
	S7P/irBZ94FvbkKqYFoJTaKViyepeu3++mlkFi1y/AoKhsy40W4sHtl7IQmA93to2YRXIB/y5QOqF
	EUiSK5QVnWzJaRa3KtTDV0OckBb9m+PM1E78N88ET5Z08j7n82hbnP1tp3vmivLRwz2diyK0w5Nnq
	NPJSapXLsvi5CFUmhx4iHWBt/3+gkEUXsu1H1BgHRxz+fsjYJfaxwU0s78mmuwMj65+JqZHx/CaO8
	38q7eR2RdJKSb+O01waw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55bU-0003xe-SI; Tue, 03 Sep 2019 10:00:01 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55bI-0003vG-Ke
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 09:59:50 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2BE0A4000C;
 Tue,  3 Sep 2019 09:59:35 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 23:59:29 -1000
Message-Id: <20190903095929.32307-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_025948_833136_2630FC19 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] phase1: run prepare instead of diffconfig
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This will not only create config.buildinfo as before, but also
version.buildinfo and feeds.buidinfo.

CC: Jo-Philipp Wich <jo@mein.io>

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 phase1/master.cfg | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/phase1/master.cfg b/phase1/master.cfg
index a91864a..e5a13ba 100644
--- a/phase1/master.cfg
+++ b/phase1/master.cfg
@@ -918,9 +918,9 @@ for target in targets:
 	))
 
 	factory.addStep(ShellCommand(
-		name = "diffconfig",
-		description = "Generating config.seed",
-		command=["make", "-j1", "diffconfig", "V=s"],
+		name = "prepare",
+		description = "Generating config.buildinfo, version.buildinfo and feeds.buildinfo",
+		command=["make", "-j1", "prepare", "V=s"],
 		env = MakeEnv(),
 		haltOnFailure = True
 	))
-- 
2.23.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
