Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3888D1DF602
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 10:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BavQHnzbu6kg3uJZL/4G2tv2+t3DR3iIiYUYN7+Ya00=; b=AbEor/0OuTzQlJ
	QXZJbudWj02VORsNGOM3DWewtHxqzLHcJHaawsFvQPBXbf9DGoDTaakOE1Pr5y2EpRAZtW2WtH7Cf
	rWJ4bj1TtNuv9YvsJsY49rgKOG1XtMS48x4wKtsrL9VX412RIqQD7gBQH/3rYdvEls14+RcNooc6d
	xkf0mgE9vwC1Hig/0EOyBOiCYegQm9Wibb6m7+RMo6eEtdgRkQEf0q1EfPjWzfgY6smUvqtrCYxtl
	StMyU25od/1tisFLX3PI3aZilpuToETvtJW0CKoQH8j10QurWnLT7FhFFpfXAlLDhIoTC4M/+1KdF
	CvYGELSH1xpUVKNV3I4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcPOB-000877-0I; Sat, 23 May 2020 08:20:15 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcPNw-00085U-1O
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 08:20:01 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 78F7AA60E34; Sat, 23 May 2020 01:19:52 -0700 (PDT)
Received: from husum (unknown [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 35810A60DFB;
 Sat, 23 May 2020 01:19:50 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 01:19:50 -0700
Message-ID: <87h7w79i6x.fsf@husum.ptp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_012000_122959_4FCBD259 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: fix 04_led_migration case syntax
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


Commit f761f4052c4 had bogus case syntax, the uci-defaults script threw
errors as a result and exited non-zero, probably didn't do what was
intended, but tried over and over since the non-zero exit prevents the
script from being deleted.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 .../mt7621/base-files/etc/uci-defaults/04_led_migration       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
index 73140fd7d5..1248dcec0f 100644
--- a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
@@ -9,14 +9,16 @@ boardonly="${board##*,}"
 case "$board" in
 mikrotik,routerboard-750gr3)
 	migrate_leds "^rb750gr3:=$boardonly:"
+	;;
 mikrotik,routerboard-m11g)
 	migrate_leds "^rbm11g:=$boardonly:"
+	;;
 mikrotik,routerboard-m33g)
 	migrate_leds "^rbm33g:=$boardonly:"
+	;;
 netgear,wndr3700-v5)
 	migrate_leds "^wndr3700v5:=$boardonly:"
 	;;
-
 esac
 
 migrations_apply system
-- 
2.26.2



-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
