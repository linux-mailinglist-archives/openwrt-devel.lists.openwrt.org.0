Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C8BDEF99
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 16:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vhqBnXbKniW28w+2FmuK3a+YgGNgSgw3FYCZnnu2jI4=; b=FAXqc2ogTAfbkM
	G0fBU6nHznsIGev9mBkzQ0EfK8SSgKSwoEbNwBP5tqLegWUR8b+dYCOGCNg+SfY5Y4NzcU9PBbfeE
	yMeNqSvzVStEsJ9I0X9LVeYl7utD6JW/MlAAA1J0vomnl7jN2fjHWIyY6gzXIloIOcFghhQ620/aO
	HxexS3G2lmDqbffegqqT4tBmeBiC6rN03tWrHfdlLWCIwyVpKwkqG9HHYh/fHOYLBVh24Ebg32W+h
	u3D1Tf8Xot1CEMjt1OV05lflduJTCuh8w3/venMd9m08RPGveJDIO18zv0PlcdriMWjm+SSgihOhj
	ciVIuLkUbW4up4m5Q0IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYiP-0001Zv-5K; Mon, 21 Oct 2019 14:31:21 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgo-0007Vi-SO
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:29:44 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MqJuN-1hj9XM2hbX-00nMcW for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 16:29:39 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 16:29:35 +0200
Message-Id: <20191021142936.17352-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:v9q9iadn2QFgDxrxSxSJ+564yU/q8W6BQWhVgc0ZKZtPsrIIKaq
 B2ZEspuapSQKiVdqlIOn9HOy0QsaIEigFExxww0s1K6NLLX8AOxqgWIIGH1rCte4MAO1ZHq
 fh/XVvascByQt8KEmaEuaYKGLZ7WSW2o0nPrfnKglxjTEW3a+U+MsXiWHdjOsAHBFgl56+p
 Z1l91Y4iuns1vs9IAg9PA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z1uW4337dzo=:HSELUr/irmFdZc+HSOWhPn
 CHSPBYn5hrINMz7g5LF+WnOZlavd/P8JVbn9DYA61BrRNL8nQuXApYTx6NkAHq2baTnsEA36D
 TUYqY1u9saFeO2gszH/E/sZzuQcIC8csOsxgyreaym8u2ZYtK/m4t05LJKAUpJAxkal4rtfr0
 fn45sWShBQLZROvsBpLv7lpZCXIQEgPBU/DlT9SXHDvXBdCtKtQN3bFbMT4eEbTGEo1ffHd62
 S1StcpPeqbKv4WPSOw30yxnEmx9PSdM1UyZCVXpo9jmFxZkYuMWCvNaKOsT8CiZviLFRSE4ax
 Uir2KQWEvTYadkDUYffQ+dQpMm0xh+n7VUFbglCKGcx7PbqkVRIlwgK/eONgUxpFPH/5WhEpZ
 6SXAXzPUEYr+ZJk6aDKmKplkt/DsF/szYjFVP40o0QTKTJ1aWJVZJuqqNx9bWtEvN3PS+/pdZ
 Gdn2OfGTmoWpeMEdfRRQGHy0YsqJ/LxOBTZnvJQz7XhDlEecoF28kipiipDqh/uwNGmDFMOS4
 AS3DW1KW7+HcWx9u1iSMBPkDCksdb8SQWO7jBJ7dJumBvJdtp3nfayHFkSP04IRX8mhb1N3Ae
 xQeqqVtFZIUIFYkIuh7qzAL3WIEBxWBuTdOSJehtd8A0bjny6U43wNbkKbOw2Yx84dmIgpHKk
 Mr5DrTfCLpHFGu8HgPPp+RhXkeKnKMrEQufq9TYh1h1Tbi7JEHJhGs2MUZhXuk79KyGoAFuU1
 cxB6afqTvVAUqI8MxnYf34f7psyr9LK20n7xk6FEj8+DeiyGZKBilBas+gMvjs0gSPosQ9emm
 IeEM6D7v6Ac7h9OvWVAXg2qFgFNg4ap0tl8jUx1eqzEMUTUQ9YruUtJ/sGpKLhtue6tgF0aeI
 HOAHP96jIzZWv3vphLVhkpx+v5MZyCotUIPpvIrwU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072943_236123_BC05E48D 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 1/2] ath79: use board name in LED
 migrations
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

Several devices added to LED migration script will just have their
(old) board name converted to tp-link.

By using a variable for this, the amount of code in the migration
script can be reduced and the chance for typos is reduced.

This patch also introduces the marker for beginning of a pattern
"^" to the regex, so the match is more specific.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit 6b0eb84336edc995f4723f0a005507f158d3e895)
---
 .../ath79/base-files/etc/uci-defaults/04_led_migration     | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
index bc40d22c09..a512225523 100644
--- a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
@@ -4,6 +4,7 @@
 . /lib/functions/migrations.sh
 
 board=$(board_name)
+boardonly="${board##*,}"
 
 case "$board" in
 engenius,epg5000)
@@ -12,11 +13,9 @@ engenius,epg5000)
 tplink,archer-c7-v2)
 	migrate_leds ":blue:=:green:"
 	;;
-tplink,archer-c7-v4)
-	migrate_leds "archer-c7-v4:=tp-link:"
-	;;
+tplink,archer-c7-v4|\
 tplink,archer-c7-v5)
-	migrate_leds "archer-c7-v5:=tp-link:"
+	migrate_leds "^$boardonly:=tp-link:"
 	;;
 wd,mynet-n750)
 	migrate_leds "wd:=mynet-n750:"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
