Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6FE99330
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 14:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cI+KcVMtKVHyFNP9zyxIV+Vi37eAbMhFFfetNgIFMbg=; b=Jh+WvCN0pwMncI
	/B4lmPk7S/FBx7j3l/KBlNrtlnrSBBkC0FMGQYIc9Houj7dmqQqwQiOp9/LxoQ/zAT2GGVAV+C6AH
	2B8HmRdXCfxIiqseCmkl+57P2zdCrzuRAHvOgctwbxafzS5n4pg4bxHItBJ229odRljsMlYWf9nrV
	kDuv/7sDj1BCjdCyEAwfUdJD85xwlYHtEtiLJOybEgSbN9tpDCWbk7CU+8Y0mF+u0WlziF0TzyNlf
	UjNDjh8dkjVT9xSqWWs1Kec9e633qLFAYN+kjzR2GDSiA/++8LoAaTvs4AIFEDAMDyR4dFrZSTkVu
	eeng3ZgOyt39oy+d9CPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0m5p-0005wg-93; Thu, 22 Aug 2019 12:21:29 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0m5e-0005wG-Vy
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 12:21:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 05:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="378499374"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga005.fm.intel.com with ESMTP; 22 Aug 2019 05:21:16 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 22 Aug 2019 13:21:15 +0100
Received: from irsmsx108.ger.corp.intel.com ([169.254.11.50]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.87]) with mapi id 14.03.0439.000;
 Thu, 22 Aug 2019 13:21:15 +0100
From: "Langer, Thomas" <thomas.langer@intel.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Fix handling of BUILD_SUFFIX in remote-gdb script
Thread-Index: AdVY40yVE3kSD0h5St61JvB1hPCP3g==
Date: Thu, 22 Aug 2019 12:21:14 +0000
Message-ID: <0DAF21CFE1B20740AE23D6AF6E54843F1FDCF961@IRSMSX108.ger.corp.intel.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzIzNDEzMDYtMGQyYy00NjJmLTgyYjctN2Q5NmZmOGJhMzQ4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieXpzREZ1NFpOazlZUU1JK251aWNiU01tVEJ5WXBDeldyTkVzcWVveng4ZWtmb3VUVkVNM1ViejZvYnZBQVFKVSJ9
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_052119_076927_BDDC0892 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Fix handling of BUILD_SUFFIX in remote-gdb script
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

From: Thomas Langer <thomas.langer@intel.com>

When CONFIG_BUILD_SUFFIX is enabled, the target-* folders in build_dir
and staging_dir have this suffix in the name, but not the
toolchain directories. When detecting the names for "arch" and "libc",
also accept the suffix and do not use it for the toolchain path.

Signed-off-by: Thomas Langer <thomas.langer@intel.com>

diff --git a/scripts/remote-gdb b/scripts/remote-gdb
index 99c9d38..d8e2336 100755
--- a/scripts/remote-gdb
+++ b/scripts/remote-gdb
@@ -14,9 +14,9 @@ if( opendir SD, "$Bin/../staging_dir" )
 {
 	my ( $tid, $arch, $libc, @arches );
 
-	if( $ARGV[1] =~ m!\btarget-(.+?)_(([^/_]+libc|musl)[^/_]*)\b!i )
+	if( $ARGV[1] =~ m!\btarget-(.+?)_([^/_]+libc|musl)_?([^/]*).*\b!i )
 	{
-		print("Using target $1 ($2)\n");
+		print("Using target $1 ($2, $3)\n");
 		($arch, $libc) = ($1, $2);
 	}
 	else
@@ -26,10 +26,10 @@ if( opendir SD, "$Bin/../staging_dir" )
 
 		while( defined( my $e = readdir SD ) )
 		{
-			if( -d "$Bin/../staging_dir/$e" && $e =~ /^target-(.+?)_(([^_]+libc|musl).*)/i )
+			if( -d "$Bin/../staging_dir/$e" && $e =~ /^target-(.+?)_([^\/_]+libc|musl)_?([^\/]*).*/i )
 			{
 				push @arches, [ $1, $2 ];
-				printf(" %2d) %s (%s)\n", @arches + 0, $1, $2);
+				printf(" %2d) %s (%s %s)\n", @arches + 0, $1, $2, $3);
 			}
 		}

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
