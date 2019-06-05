Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E3135702
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 08:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDA7UQHGT5Z8203Mj2QvYFMQBDaavoUgr/ZMcesL0mQ=; b=NOV28Dg84ooh3W
	E5GhAidfQEU2AGPDjiL+n/xqW59uzB3TWMooOMk+SaQ76l4TuWENJ/kp4/wvdpKatHmxzTDoGwl3m
	TqHO7zokNf56Av3FhNxLUaQOOidmRaoD8X6Awb+eIggfylyyBDYfHwavMaYZ7LNhQwMorejuDCS5c
	Q1qzoP/3Ulz14ivAsdzfnF+VJAXnsKQL2jl2vbjZZYuAcmsA2/JL1rkPx5EIQZ3BFQkKHYVLJYNEl
	6n16fx/nYW3qZx8L2jLqQiQZXkWJlsXzkm7lQ2XQJk8IkA126t+sQfrnj9em/qWeZIEoF2ousTAB3
	yhXLc8jUMTHu1GvmZ7HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPTw-00056s-D1; Wed, 05 Jun 2019 06:33:08 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPTf-0004yG-Nd
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 06:32:53 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=bertha.fritz.box) by ds12 with esmtpa (Exim 4.89)
 (envelope-from <john@phrozen.org>)
 id 1hYPTb-0007c8-Ue; Wed, 05 Jun 2019 08:32:48 +0200
From: John Crispin <john@phrozen.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Jun 2019 08:32:39 +0200
Message-Id: <20190605063239.27540-2-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605063239.27540-1-john@phrozen.org>
References: <20190605063239.27540-1-john@phrozen.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_233251_994065_A618FA74 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH V2 2/2] script/feeds: add a new command that
 allows generating a new feeds.conf
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

This can be used inside build setups for easy feeds.conf generation.

Signed-off-by: John Crispin <john@phrozen.org>
---
 scripts/feeds | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/scripts/feeds b/scripts/feeds
index 304ef6cbaf..6f8c7be31d 100755
--- a/scripts/feeds
+++ b/scripts/feeds
@@ -7,6 +7,7 @@ use metadata;
 use warnings;
 use strict;
 use Cwd 'abs_path';
+use File::Copy
 
 chdir "$FindBin::Bin/..";
 $ENV{TOPDIR} //= getcwd();
@@ -819,6 +820,37 @@ sub update {
 	return $failed;
 }
 
+sub setup {
+	my %opts;
+
+	getopts('bh', \%opts);
+
+	if ($opts{h}) {
+		usage();
+		return 0;
+	}
+
+	if ($opts{b}) {
+		copy("feeds.conf.default", "feeds.conf") or die "Copy failed: $!"
+	} else {
+		unlink "feeds.conf"
+	}
+
+	open(my $fd, ">>feeds.conf");
+	while (my $entry = shift @ARGV) {
+		my ($type, $name, $src) = split /,/, $entry;
+
+		$update_method{$type} or do {
+			warn "Unknown type '$type' in parameter $entry\n";
+			unlink "feeds.conf";
+			return 1;
+		};
+		printf $fd "%s %s %s\n", $type, $name, $src;
+	}
+
+	return 0;
+}
+
 sub feed_config() {
 	foreach my $feed (@feeds) {
 		my $installed = (-f "feeds/$feed->[1].index");
@@ -870,6 +902,10 @@ Commands:
 	    -i :           Recreate the index only. No feed update from repository is performed.
 	    -f :           Force updating feeds even if there are changed, uncommitted files.
 
+	setup [options] <type,name,link> <type,name,link> ...: generate feeds.conf
+	Options:
+	    -b :           Use feeds.conf.default as base for new feeds.conf.
+
 	clean:             Remove downloaded/generated files.
 
 EOF
@@ -883,6 +919,7 @@ my %commands = (
 	'search' => \&search,
 	'uninstall' => \&uninstall,
 	'feed_config' => \&feed_config,
+	'setup' => \&setup,
 	'clean' => sub {
 		system("rm -rf ./feeds ./package/feeds");
 	}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
