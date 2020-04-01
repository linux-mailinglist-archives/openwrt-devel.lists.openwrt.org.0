Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF9519A537
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 08:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1mVSiFAcfY747oGMklAvwvmMEhDWc63/NN5oZ7f4cxc=; b=Sk9opIwQ3bbwJym/dIyHQ3Kbz5
	XHuWGsttE6a/O9J/4w7sZRRfL3O7sBogkb5D5Fj0ybjCJokc9mGE6YwM0mxWZXy55abZk6kCHqH/m
	Vjh8BQdGa4Q1ezg1sn8kD+1pfaRBnhIzRyoRgc8Q8+SXO/th0HL5zMEDkCaHzXqHaXIGOiMxJG/Ld
	ZolfIHc0khqVTBp4PSVuXv/RI2F9iNKnOFHxdR1Rh0cp7HhQMv7yyhBnwtOayLzmPN/Ms/byNwBuL
	ldiDgXbcBMwuXjZQPVns7fw2gicBcS/C6Rvl7CT577HSldNJqA2wXDBsrsJ5baJJ3EZYAL6H1Xo6u
	1A+YBAEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWi8-0007vJ-IJ; Wed, 01 Apr 2020 06:18:48 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWhj-0007Vw-4w
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 06:18:24 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6202AFF803;
 Wed,  1 Apr 2020 06:18:19 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 20:17:48 -1000
Message-Id: <20200401061748.2022142-3-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401061748.2022142-1-mail@aparcar.org>
References: <20200401061748.2022142-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_231823_323226_6111B795 
X-CRM114-Status: UNSURE (   8.47  )
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
Subject: [OpenWrt-Devel] [PATCH 2/3] build: Introduce Target-Profile-AltNames
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

Currently the alternative consumer names for devices are stored in the
description only or as a joint string in `Target-Profile-Name`. This
adds a new variable called `Target-Profile-AltNames` to store the
alternateive names as a quoted list: "<ALT0>" "<ALT1>" "<ALT2>"

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/image.mk           | 1 +
 scripts/metadata.pm        | 2 ++
 scripts/target-metadata.pl | 3 +++
 3 files changed, 6 insertions(+)

diff --git a/include/image.mk b/include/image.mk
index 6204e8ab61..c4015da809 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -632,6 +632,7 @@ endef
 define Device/DumpInfo
 Target-Profile: DEVICE_$(1)
 Target-Profile-Name: $(DEVICE_DISPLAY)
+Target-Profile-AltNames: $(if $(strip $(DEVICE_ALT0_TITLE)),"$(DEVICE_ALT0_TITLE)")$(if $(strip $(DEVICE_ALT1_TITLE)), "$(DEVICE_ALT1_TITLE)")$(if $(strip $(DEVICE_ALT2_TITLE)), "$(DEVICE_ALT2_TITLE)")
 Target-Profile-Packages: $(DEVICE_PACKAGES)
 Target-Profile-hasImageMetadata: $(if $(foreach image,$(IMAGES),$(findstring append-metadata,$(IMAGE/$(image)))),1,0)
 Target-Profile-SupportedDevices: $(SUPPORTED_DEVICES)
diff --git a/scripts/metadata.pm b/scripts/metadata.pm
index 1826a040a1..1967adf8d6 100644
--- a/scripts/metadata.pm
+++ b/scripts/metadata.pm
@@ -140,6 +140,7 @@ sub parse_target_metadata($) {
 			$profile = {
 				id => $1,
 				name => $1,
+				altnames => [],
 				has_image_metadata => 0,
 				supported_devices => [],
 				priority => 999,
@@ -150,6 +151,7 @@ sub parse_target_metadata($) {
 			push @{$target->{profiles}}, $profile;
 		};
 		/^Target-Profile-Name:\s*(.+)\s*$/ and $profile->{name} = $1;
+		/^Target-Profile-AltNames:\s*(.+)\s*$/ and $profile->{altnames} = [ split(/\s+/, $1) ];
 		/^Target-Profile-hasImageMetadata:\s*(\d+)\s*$/ and $profile->{has_image_metadata} = $1;
 		/^Target-Profile-SupportedDevices:\s*(.+)\s*$/ and $profile->{supported_devices} = [ split(/\s+/, $1) ];
 		/^Target-Profile-Priority:\s*(\d+)\s*$/ and do {
diff --git a/scripts/target-metadata.pl b/scripts/target-metadata.pl
index fd8f4096a7..38a1f25e1a 100755
--- a/scripts/target-metadata.pl
+++ b/scripts/target-metadata.pl
@@ -435,6 +435,9 @@ sub gen_profile_mk() {
 				print $profile->{id}.'_SUPPORTED_DEVICES:='.join(' ', @{$profile->{supported_devices}})."\n";
 			}
 			print $profile->{id}.'_PACKAGES:='.join(' ', @{$profile->{packages}})."\n";
+			if (defined($profile->{altnames}) and @{$profile->{altnames}} > 0) {
+				print $profile->{id}.'_ALT_NAMES:='.join(' ', @{$profile->{altnames}})."\n";
+			}
 		}
 	}
 }
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
