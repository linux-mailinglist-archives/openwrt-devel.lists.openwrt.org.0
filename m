Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CAA19E86F
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Apr 2020 04:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qSw1/rgcM265x13IaNYjSqBLdWZGTVJUL++qajVnnEc=; b=ILPPxPU1z7d9qo
	LDyfaM1Jaunrmj7XiplwpNsGSXZxSbckygV/E/N3hwVAKVqP/z+p42Jf6Et/IF0uMY+LpvfyyqpRZ
	6VNyeVgOt08NzBwBbn5SqShjO72b9fkg+JpfJgZHeypgAVSC2mklmX2N0bttLgqFfLnWEvwebTPHf
	bd6S+yjFFQRf3+6x1B5Ry95Nmi6DHcM4avc/VcBX2KOuW+zJ3A/JhD40wpEblhkoI8eMi5sZdpIwF
	AkVpUSFktQFkUYJt8KoFb8Nj5UN26YvdT1B7xTRXGrdJDElALaOE11jG1Y8Ncq2AwDKm/KlDJDIH9
	YRRaTt16AJS1egG3rDyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKua5-00016x-CS; Sun, 05 Apr 2020 02:00:13 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKuZo-000166-Vu
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 01:59:58 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 95835C0003;
 Sun,  5 Apr 2020 01:59:48 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Apr 2020 15:59:30 -1000
Message-Id: <20200405015929.736414-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_185957_162965_810B6A7D 
X-CRM114-Status: UNSURE (   7.39  )
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
Subject: [OpenWrt-Devel] [PATCH] phase1: Add JSON merging step
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

The refactored JSON info files require a final merge step which sums up
all created JSON info files of a target into a single `profiles.json`
files.

This patch adds the extra step to run `make json_overview_image_info`
just before calculating the checksums so the `profiles.json` files is
signed as well.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 phase1/master.cfg | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/phase1/master.cfg b/phase1/master.cfg
index 792f9b3..6ff827d 100644
--- a/phase1/master.cfg
+++ b/phase1/master.cfg
@@ -925,6 +925,14 @@ for target in targets:
 		haltOnFailure = True
 	))
 
+	factory.addStep(ShellCommand(
+		name = "json_overview_image_info",
+		description = "Merging created JSON info files into profiles.json",
+		command=["make", "-j1", "json_overview_image_info", "V=s"],
+		env = MakeEnv(),
+		haltOnFailure = True
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
