Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D561A28EF
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 20:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-Id:Date:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A3c+3mVInGlsoXxViqHaJ1yPCVBLVAH1JwcqDy1iUkQ=; b=HZG
	O8YImEo7nwy5iBo9drmNyRaL27KKr2ZIF7abEAmkegsnYDJvkgZt3yN6Lspsdn7o51Ae7/iFd+5BY
	RXD5ONr2SaWavaXPyecGFk1xTIK8XcE1nKwinNxAfATpZlPxZhqQU7XTSzSCM4rULa8ZlVKpS3a0I
	uhLL322elA46JFJ5vWZK6habBqcFlQQ0achoNIrvhmzK+Z20A3G0Y2NYuxlFK/51g0sSr64p+nLgL
	T/2mnsWnXxNap8vjwDmkuBRkCezhNFt6zDX2nKivUxw34VfGiRLUBn9U9I/zFsaaZnDeaYSuG8xzu
	lFdSd9u/CRDb6c1vxnTIC4G/ailKrBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFtK-0000AH-Pa; Wed, 08 Apr 2020 18:57:38 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFt8-00008o-EB
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 18:57:28 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id DACDAC0004;
 Wed,  8 Apr 2020 18:57:20 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 08:57:13 -1000
Message-Id: <20200408185713.6931-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_115726_621879_1F16A000 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] phase1: Add JSON merging step
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
Reply-To: 20200405015929.736414-1-mail@aparcar.org
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The refactored JSON info files require a final merge step which sums up
all created JSON info files of a target into a single `profiles.json`
files.

This patch adds the extra step to run `make json_overview_image_info`
just before calculating the checksums so the `profiles.json` files is
signed as well.

Signed-off-by: Paul Spooren <mail@aparcar.org>
CC: Jo-Philipp Wich <jo@mein.io>
---
v2:
  * Removed the `haltOnFailure` options as this may break the current
    builds if the merge script show any unexpected errors in the buildbot
    environment. This option should be added again once the script proofs
    working.

 phase1/master.cfg | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/phase1/master.cfg b/phase1/master.cfg
index 792f9b3..8702093 100644
--- a/phase1/master.cfg
+++ b/phase1/master.cfg
@@ -925,6 +925,13 @@ for target in targets:
 		haltOnFailure = True
 	))
 
+	factory.addStep(ShellCommand(
+		name = "json_overview_image_info",
+		description = "Merging created JSON info files into profiles.json",
+		command=["make", "-j1", "json_overview_image_info", "V=s"],
+		env = MakeEnv()
+	))
+
 	factory.addStep(ShellCommand(
 		name = "checksums",
 		description = "Calculating checksums",
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
