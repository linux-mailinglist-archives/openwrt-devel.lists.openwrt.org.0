Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36A419A534
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 08:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k5PUEt3CfdoGs3ELg7Rz7i/Txbc7Ysn2fc6UUIGA5OQ=; b=FFebIuJ/LcnKC+hTsnzrP9Gfih
	UZPM21aXpBGAKoSGR6U+7cF94HYgnABziCp9NWv7n8ImT0/t3PWO1PYhJADt6a1z3w5KCG8Q7USGD
	OVrJyeMm0+YUWEBxRLwWt8qFc1Tk2aF0atp4idvcsomUW6QFlL80c5I67KrXWZjtsUG9zFSIcwVYA
	ciKumwYIA+yNayoMENosWS7obMfVoQg9s0I2dMoxIi7MTMUykbK/RtpsPr0WD0nbL8LbL+7KS1zNM
	LADQD4Nj7/wdlO0Lf2cVwjBQV/NYElS5pyTTAUIyz77emFCKpb5sHOn/w28a0jAabUxGYyoG0Sp9x
	hkBqMqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWhz-0007eD-8W; Wed, 01 Apr 2020 06:18:39 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWhg-0007VX-Rz
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 06:18:22 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 29088FF80B;
 Wed,  1 Apr 2020 06:18:17 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 20:17:47 -1000
Message-Id: <20200401061748.2022142-2-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401061748.2022142-1-mail@aparcar.org>
References: <20200401061748.2022142-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_231821_034163_1488B747 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] scripts: target-metadata don't add
 PROFILES twice
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

Since 4ee3cf2b5a profiles with alternative vendor names may appear
multiple times in `tmp/.targetinfo` or `.targetinfo` (for
ImageBuilders).

The `target-metadata.pl` script adds these profiles then twice to
`PROFILE_NAMES` and the ImageBuilder show the profile twices when
running `make info`.

This patch uses Perls `uniq` function to add the profiles only once to
`.profiles.mk`.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 scripts/target-metadata.pl | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/target-metadata.pl b/scripts/target-metadata.pl
index ee0ab5a718..fd8f4096a7 100755
--- a/scripts/target-metadata.pl
+++ b/scripts/target-metadata.pl
@@ -4,6 +4,7 @@ use lib "$FindBin::Bin";
 use strict;
 use metadata;
 use Getopt::Long;
+use List::MoreUtils qw(uniq);
 
 sub target_config_features(@) {
 	my $ret;
@@ -426,7 +427,7 @@ sub gen_profile_mk() {
 	my @targets = parse_target_metadata($file);
 	foreach my $cur (@targets) {
 		next unless $cur->{id} eq $target;
-		print "PROFILE_NAMES = ".join(" ", map { $_->{id} } @{$cur->{profiles}})."\n";
+		print "PROFILE_NAMES = ".join(" ", uniq map { $_->{id} } @{$cur->{profiles}})."\n";
 		foreach my $profile (@{$cur->{profiles}}) {
 			print $profile->{id}.'_NAME:='.$profile->{name}."\n";
 			print $profile->{id}.'_HAS_IMAGE_METADATA:='.$profile->{has_image_metadata}."\n";
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
