Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCA91FAB22
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 10:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eSgmzPvq7IgqqdzruYDwzybY8gIxr45nda4Rd0eNkNo=; b=sco8cOrdgbO/7T
	apPKJ+x4T8DmdUbgI6R480O3z+zgB4NTtQYycA5itRy9priENqd1B2dzAUOPE601T+VnwHpftxDZg
	xJ7xqBcjaIb85uVHgAVPCESsKDnjU9XUF6mLIfurTgZl8F1P6LmPxywIWBjBTxxsE5EYftGxavXJL
	lj49kNolILLv3pJ4gkX2DWulIyw2kU//Mi7dYoqtiKEr/ZRnpKwg0wcmAdpgANkHVCi0l/J5h2R4w
	yQEPuBU2/lGthMPsXkrvIksvw3aqtsNj82GM6w4sPe8eiznDHy2VdyM5fFyFDMnWVbrwGjPHk+s3v
	8bKL5l1kNjYFZLXgtOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6wB-0004r8-Lf; Tue, 16 Jun 2020 08:27:19 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6vR-0004BT-9t
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 08:26:35 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 581A120370;
 Tue, 16 Jun 2020 08:26:24 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: john@phrozen.org,
	dev@kresin.me,
	Eckert.Florian@googlemail.com
Date: Tue, 16 Jun 2020 10:26:13 +0200
Message-Id: <20200616082613.892-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_012633_577900_F5F61652 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
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
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The line_state of the DSL connection is described in the system via a
hexadecimal variable. With this change the hexadecimal is mapped to a decimal
value. With this change it is now possible to store this value in a database,
so that it can be easily evaluated.

This is especially relevant for the collectd and gravana backend.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 .../base-files/lib/functions/lantiq_dsl.sh    | 82 +++++++++++++------
 1 file changed, 55 insertions(+), 27 deletions(-)

diff --git a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
index 11b02fc4aa..4827d10bc5 100755
--- a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
+++ b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
@@ -650,40 +650,68 @@ line_data() {
 line_state() {
 	local lsg=$(dsl_cmd lsg)
 	local ls=$(dsl_val "$lsg" nLineState);
-	local s;
+	local s n;
 
 	case "$ls" in
-		"0x0")		s="not initialized" ;;
-		"0x1")		s="exception" ;;
-		"0x10")		s="not updated" ;;
-		"0xff")		s="idle request" ;;
-		"0x100")	s="idle" ;;
-		"0x1ff")	s="silent request" ;;
-		"0x200")	s="silent" ;;
-		"0x300")	s="handshake" ;;
-		"0x380")	s="full_init" ;;
-		"0x400")	s="discovery" ;;
-		"0x500")	s="training" ;;
-		"0x600")	s="analysis" ;;
-		"0x700")	s="exchange" ;;
-		"0x800")	s="showtime_no_sync" ;;
-		"0x801")	s="showtime_tc_sync" ;;
-		"0x900")	s="fastretrain" ;;
-		"0xa00")	s="lowpower_l2" ;;
-		"0xb00")	s="loopdiagnostic active" ;;
-		"0xb10")	s="loopdiagnostic data exchange" ;;
-		"0xb20")	s="loopdiagnostic data request" ;;
-		"0xc00")	s="loopdiagnostic complete" ;;
-		"0x1000000")	s="test" ;;
-		"0xd00")	s="resync" ;;
-		"0x3c0")	s="short init entry" ;;
-		"")		s="not running daemon"; ls="0xfff" ;;
-		*)		s="unknown" ;;
+		"0x0")		s="not initialized"
+				n=1 ;;
+		"0x1")		s="exception"
+				n=2 ;;
+		"0x10")		s="not updated"
+				n=3 ;;
+		"0xff")		s="idle request"
+				n=4 ;;
+		"0x100")	s="idle"
+				n=5 ;;
+		"0x1ff")	s="silent request"
+				n=6 ;;
+		"0x200")	s="silent"
+				n=7 ;;
+		"0x300")	s="handshake"
+				n=8 ;;
+		"0x380")	s="full_init"
+				n=9 ;;
+		"0x400")	s="discovery"
+				n=10 ;;
+		"0x500")	s="training"
+				n=11 ;;
+		"0x600")	s="analysis"
+				n=12 ;;
+		"0x700")	s="exchange"
+				n=13 ;;
+		"0x800")	s="showtime_no_sync"
+				n=14 ;;
+		"0x801")	s="showtime_tc_sync"
+				n=15 ;;
+		"0x900")	s="fastretrain"
+				n=16 ;;
+		"0xa00")	s="lowpower_l2"
+				n=17 ;;
+		"0xb00")	s="loopdiagnostic active"
+				n=18 ;;
+		"0xb10")	s="loopdiagnostic data exchange"
+				n=19 ;;
+		"0xb20")	s="loopdiagnostic data request"
+				n=20 ;;
+		"0xc00")	s="loopdiagnostic complete"
+				n=21 ;;
+		"0x1000000")	s="test"
+				n=22 ;;
+		"0xd00")	s="resync"
+				n=23 ;;
+		"0x3c0")	s="short init entry"
+				n=24 ;;
+		"")		s="not running daemon"
+				ls="0xfff"
+				n=25 ;;
+		*)		s="unknown"
+				n=26 ;;
 	esac
 
 	if [ "$action" = "lucistat" ]; then
 		echo "dsl.line_state_num=$ls"
 		echo "dsl.line_state_detail=\"$s\""
+		echo "dsl.line_state_mapping=$n"
 		if [ "$ls" = "0x801" ]; then
 			echo "dsl.line_state=\"UP\""
 		else
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
