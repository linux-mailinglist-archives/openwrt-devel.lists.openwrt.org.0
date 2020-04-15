Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8AA1A8FE9
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 02:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JfkswmQZlRzT6Yl3V7CQRaewmigYAY5g4+Qgi4HtX08=; b=BVCaK/rCIuPty3U124KPijdlXm
	KYgmnduqFJo/5Azo/J4V5KoKreHu81Qo01H+4nPJsTfZAnlfepLHEzNmfkSaORAeuKT7M08QNUQrn
	5ZrvR2pynW4fGyusAmbB1tec/XzQtZZA4NXd9aWD4fDf4aDzdXlnjX4wonLFt7AzC02uJJYCrVuaK
	SH9/ZJUN+5QJYjPAYTAzmC6pNAMa18vH9VCjE63s9M9RAec8+a3G0XPLJQ6v+NVBl2aQs4aZIl9bz
	iCakfHISTw198+ajtN5Cqjav8PovCvfi7UbRC9A+4xZ3mW8U0wVTwfkS3V2jplalLXVBO2trrE0eJ
	6Sg6x6CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWH1-00014R-Ro; Wed, 15 Apr 2020 00:51:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWGw-00013d-Eu
 for openwrt-devel@bombadil.infradead.org; Wed, 15 Apr 2020 00:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=xE9AUURExTA1gpBMchywAJ70hKSAP0h+RetOnACmj1s=; b=taMMZoKxIICX58VvFRK5h0Ewxm
 kC6YeCjDHY6URIIvjO3dqjki+VxspNYI+5jq/wh6VpgtNDmcjC42NzKDWBQfOqSG272NXBDxsEzVL
 ROzytzCoxAN4PDJeiHdlLtzTf4R0N38YQOHUW9tCpGwkgWws350sSkwEB8jnRc991GqmWSPVUQceJ
 e02Uwv2OCkmnyCeamn5QF8fKfaj3tiYGOQlJi8tEMznlTcW3nWfdZGWukbu41GhuBm8W2ONGOwWlz
 7ch1hT/EzbEWBCgfG5urIxGbQAKF6PO/WZK9lXrGQgjJScazYrsarqBC/fm/WxAvMLYgDfeXBWVrp
 BSTgV3IA==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWGe-0002IQ-1k
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 00:51:19 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1218B240005;
 Wed, 15 Apr 2020 00:50:19 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 14:49:54 -1000
Message-Id: <20200415004956.1130494-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401061748.2022142-2-mail@aparcar.org>
References: <20200401061748.2022142-2-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_015104_421511_A9002481 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH v2 1/3] scripts: target-metadata don't add
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
v2:
  * Instead of importing the entire MoreUtils library only copy the
    `uniq` function.

 scripts/target-metadata.pl | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/scripts/target-metadata.pl b/scripts/target-metadata.pl
index ee0ab5a718..4142b51162 100755
--- a/scripts/target-metadata.pl
+++ b/scripts/target-metadata.pl
@@ -5,6 +5,15 @@ use strict;
 use metadata;
 use Getopt::Long;
 
+# uniq function from
+# https://metacpan.org/source/REHSACK/List-MoreUtils-0.428/lib/List/MoreUtils/PP.pm
+sub uniq (@) {
+	my %seen = ();
+	my $k;
+	my $seen_undef;
+	grep { defined $_ ? not $seen{$k = $_}++ : not $seen_undef++ } @_;
+}
+
 sub target_config_features(@) {
 	my $ret;
 
@@ -426,7 +435,7 @@ sub gen_profile_mk() {
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
