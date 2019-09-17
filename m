Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE16B4E43
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 14:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CHQ3eJwifusvA8kL5LkYc4DFA474UyczjgWIVb9SSYQ=; b=Wt15Rx7tZ1R68X
	sOAH+41zvi/T/nClO1PU38wphUFLjikPOn+z5bx3fH6bHq5cYsy244TLjtL/WEvmUDQR6UofkOkll
	2dBWEA0Asx28X2M21RGM/Dklbm7dNW1StnNxPTEPDaweHqvUwKt47WVwd4QlINI4EoauSJWEHKUHF
	xOJkuN8j6Tq0zZSHAa2tsvHxJ7Um7J8p85TP6dynNHDbMJvROPLQtp3y3Wd7PSqyENAgxbeiDFsFp
	q18GLZ1MlWI9l4vMgIb/Paz2Zmujy0JEuEFGAmc9Rysdfi7LeTkfEWIdeynl+wzqgCKBWksGFSzzT
	qX5/xIwhXnODhX6e8GCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACpO-0005OH-EW; Tue, 17 Sep 2019 12:43:30 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACp0-0005NG-0N
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 12:43:07 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MjjGX-1hmjym2ZkB-00lD9J for <openwrt-devel@lists.openwrt.org>; Tue, 17
 Sep 2019 14:43:03 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 14:42:59 +0200
Message-Id: <20190917124300.4505-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:4l4m3vbByQWZJ2AqUAS4B5WodHuVZ7VdXTtGrbpPAAdq+l/0qlO
 hkXLlmEOHi9xc7DfWgqMr9YlotuV0yMwJ7hOnTbFzmtjbKjKNR092y1zs3nFEoYEz9fOuNz
 90drFx71FH9ROZH8cwvpqazfBefPDrhvMV+MJoVNpA/rGz2mu/21ZHA1Edn8GTGVYyQd8oy
 LO3ZQAFJsJkveAzvUW/2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tgP8m6UN0no=:LXJmGoDnOAuAb1MwF2Pqg5
 A3EoxtlaZkHY0Yxb4qY6RWoZxH2uJ0aoyiv0TmjT/EkcvM6+JnJVWr3MMNOytOOxWQLASTylS
 wFRafxs82aBGBwIH/lMhJhV3iR2H6Q0mTK7xuLrw2pS1Pq3RCLiMwZWRELsBC85nee6s6whEb
 FJ/2QKGARK+l5QHhD/gWNQkRu5bE16L7hMBluOEpY0UZMKdzd71q+7GuXOdGSQ206OJiaaPZA
 jNWzP54glv5whkFHrtCIqrAFg2jLv9pXkZcQ2PjuMEtrwBAfUEqOxpgm4+F23xUFvpLmfgWzr
 yEvfYdC7LdTMcovQNMu7YCxxzsq/5Y6UmzXGpmVogZk6tZdaHZTUEYiINpNKgPTWym0tg5WfW
 hfCCE4iOV0h8B1Yc9BRfcqgIubWWqQZk5bDzxWKQNoeSEExaOzMQDt6veMjlOjFB4BOIfYaQU
 SDGb5GoulUoTsaKCOoTeUbw8FXaiSkPXUNBDdutKN/6Hdm6cIi44IgaS5mE4XxuYqTXQfH/sC
 xohkHYwTAI5SZiVwgfxvjPB1meoNDlYsFwJLKwcUJQx/v91LoBCJd7OtObKjbLvbjUQXkMt1C
 yEZSncD7dWqZTbGBd/dCNf/hQhIyoJUb9pFtoUTu9oiDx9WvCl+vCBfFN0yRA6aJVWnvzLYT8
 4YofJB/hYlX/mQd9ddrbspxImFYkZN5/CZXEXn1yL0AG7L57fld1fDaPEvpM5CqczcZYH3Ft8
 9muvL7E431FkJB6KWI1KlGR7KlKJNGWZGhHTfOTcteyXnMCdVoQiWzs/RU1MeoTFUYDBKZdMQ
 YWEo2nDZlksmAl9bNvz2+oK/9Bg79Y0GgnSHDZQUHL/E9UQ6kMABMwpXybvlygSF9ZKTaCuqB
 Y520M8L9c7j+9MeJGPHVu/nO9CrZ8VVFpljWMdNmU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_054306_342077_7621719D 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/2] ath79: use board name in LED
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
---
 .../ath79/base-files/etc/uci-defaults/04_led_migration     | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
index b1afd0ee76..4e4e91c788 100644
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
 tplink,re355-v1)
 	migrate_leds "re355:=tp-link:"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
