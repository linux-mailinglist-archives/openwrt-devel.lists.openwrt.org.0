Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A14435C42
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 14:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tfeV46LWqMxv0KJ8lyvssS3u7TZ9MJn77N5oc1FSYPU=; b=dnUcQlw0NxFkxw3Ui8mRwTIYW
	5G4v0SX8JSLSoh7smEYNyoWA1vfhOd7Rz98PSYlzpj5Y8MYQ3L5cb/t1HYWKZ1xHMbXmYlxfk1YRa
	BRyrYWATORyne+Zr9Du0ZIZdGAsi7uwNJaW7eKp872IrKG7gPLCzyRg7P/2Z2dgyVannlqV8IqVu1
	Ci+NqPIwgfT2xEIgNgaiMk9rYvFP9s/rV3qK/nTRha4RcxPOX9sS1eT6XlhLB1Uo9USRTryR4Mdbe
	Xd6VshIwdfjuksd4guElRe6cnvEiF4RC5BWJvih3hsBKK1s4mbLLLAiEM+5rBW6JW/jc2ry5stvBp
	RxVyRUw5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUec-0000Ys-4j; Wed, 05 Jun 2019 12:04:30 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUeU-0000Xg-4I
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:04:24 +0000
Received: from miraculix.mork.no ([IPv6:2a02:2121:309:b35d:f0c1:6ff:fe1f:cac9])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x55C4Fbu016184
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 5 Jun 2019 14:04:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1559736256; bh=fdBuau/gx2Aidv9HrdfzMo5mMFSH3+DU5k2tvdCe/kA=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=EzF2e8yFVXt10IHfgwU7WuZ0rMMSCqklwGr9LxJzcdlDp7ccw00B0x4r1+eOAgE4O
 /WZ1a1V1TNbE2oMCB2DCEI4fAVcFBtnP9qUy9100MAI9ocMDVXQDV6nhUPrVLQejGL
 eFSxf7ADuOC/FPBXlVwZ03592WXWHHbLjfVDOAc0=
Received: from bjorn by miraculix.mork.no with local (Exim 4.89)
 (envelope-from <bjorn@mork.no>)
 id 1hYUeN-0007Fk-0C; Wed, 05 Jun 2019 14:04:15 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Organization: m
References: <20190605063409.27769-1-john@phrozen.org>
 <hynK3tKHMk6tAKPpYkaNRSzi2nMrDdpKviIa49aQ2342@mailpile>
 <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <20190605104549.GN13432@meh.true.cz>
Date: Wed, 05 Jun 2019 14:04:14 +0200
In-Reply-To: <20190605104549.GN13432@meh.true.cz> ("Petr =?utf-8?Q?=C5=A0t?=
 =?utf-8?Q?etiar=22's?= message of
 "Wed, 5 Jun 2019 12:45:49 +0200")
Message-ID: <87pnnskzlt.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_050422_985398_8470F288 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
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
Cc: openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A little late into this discussion, but something like the attached
patch would suite my personal usage patterns much better.  I don't
really need to update or change my local additions to feeds.conf at all.
I just want to add them to the defaults for whatever version I am
currently building.

Another alternative would be to make scripts/feeds look for an optional
feeds.conf.local when falling back to feeds.conf.default.  That would
also work for me.

But this might be on my wishlist only...


Bj=C3=B8rn


--=-=-=
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: inline;
 filename=0001-scripts-feeds-add-src-include-method.patch
Content-Transfer-Encoding: quoted-printable

From b43bdbbcc71ad881ac753b342f2ae400410e9257 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Bj=3DC3=3DB8rn=3D20Mork?=3D <bjorn@mork.no>
Date: Wed, 5 Jun 2019 13:51:24 +0200
Subject: [PATCH] scripts/feeds: add src-include method
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

The src-include method allows recursive inclusion of feeds.conf snippets.

This can for example be used for adding static local feeds to
feeds.conf.default without ever having to update the local feeds.conf:

 src-include defaults feeds.conf.default
 src-link custom /usr/local/src/lede/custom

Signed-off-by: Bj=C3=B8rn Mork <bjorn@mork.no>
---
 scripts/feeds | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/scripts/feeds b/scripts/feeds
index 304ef6cbafd1..65072d673433 100755
--- a/scripts/feeds
+++ b/scripts/feeds
@@ -41,34 +41,48 @@ my $feed_src =3D {};
 my $feed_target =3D {};
 my $feed_vpackage =3D {};
=20
-sub parse_config() {
-	my $line =3D 0;
-	my %name;
+sub parse_file($$);
+
+sub parse_file($$) {
+	my ($fname, $name) =3D @_;
=20
-	open FEEDS, "feeds.conf" or
-		open FEEDS, "feeds.conf.default" or
-		die "Unable to open feeds configuration";
+	my $line =3D 0;
+	open FEEDS, $fname or return undef;
 	while (<FEEDS>) {
 		chomp;
 		s/#.+$//;
+		$line++;
 		next unless /\S/;
 		my @line =3D split /\s+/, $_, 3;
 		my @src;
-		$line++;
=20
 		my $valid =3D 1;
 		$line[0] =3D~ /^src-[\w-]+$/ or $valid =3D 0;
 		$line[1] =3D~ /^\w+$/ or $valid =3D 0;
 		@src =3D split /\s+/, ($line[2] or '');
 		@src =3D ('') if @src =3D=3D 0;
-		$valid or die "Syntax error in feeds.conf, line: $line\n";
+		$valid or die "Syntax error in $fname, line: $line\n";
=20
-		$name{$line[1]} and die "Duplicate feed name '$line[1]', line: $line\n";
-		$name{$line[1]} =3D 1;
+		$name->{$line[1]} and die "Duplicate feed name '$line[1]', line: $line\n=
";
+		$name->{$line[1]} =3D 1;
+
+		if ($line[0] eq "include") {
+			parse_file($line[2], $name) or
+			    die "Unable to open included file '$line[2]'";
+			next;
+		}
=20
 		push @feeds, [$line[0], $line[1], \@src];
 	}
 	close FEEDS;
+	return 1;
+}
+
+sub parse_config() {
+	my %name;
+	parse_file("feeds.conf", \%name) or
+	    parse_file("feeds.conf.default", \%name)  or
+	    die "Unable to open feeds configuration";
 }
=20
 sub update_location($$)
--=20
2.11.0


--=-=-=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=-=--

