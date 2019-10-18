Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C496DCC1B
	for <lists+openwrt-devel@lfdr.de>; Fri, 18 Oct 2019 19:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8d3TttGHHwMmiKJAlKGdbw3WsW8guwl1pN8RUOV67ss=; b=iIY+lCqu3kTEHa
	9CLfG7/H3Xzk5kwbWuer2UZeojPz+W/88LiLHHRy4JLgJaq1qTv/IEuF3yep6NnfpcaUVWE13dfos
	njnN2vxZWKHiE3gkbPu2PyYXOMuG/K1Ri1dtcGm5Ca764SIdsqKqv8jQfHSntNWclawc/Ims06wgB
	TFF8YIbKYLAqkTwhHNwHnQH8/9qCoMbsGJFQlJ74+js0Gdj95Ql6IQ1U0zJuDTnoUOT3Hwp0a8Aue
	iygFHREfeE6nPuQIWgcKoWQy9XxeYKggJ7hUCrTe/dOU0HQmaVMk9UD36meMYZjy+zBBbc0YLFLQr
	zg/W5VsUCbNGvVvcb1vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVcM-0007Zd-2P; Fri, 18 Oct 2019 17:00:46 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVcA-0007Yx-85
 for openwrt-devel@lists.openwrt.org; Fri, 18 Oct 2019 17:00:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 10:00:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="208945003"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2019 10:00:32 -0700
Received: from irsmsx108.ger.corp.intel.com ([169.254.11.131]) by
 IRSMSX106.ger.corp.intel.com ([169.254.8.185]) with mapi id 14.03.0439.000;
 Fri, 18 Oct 2019 18:00:32 +0100
From: "Mehrtens, Hauke" <hauke.mehrtens@intel.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: procd-ujail on initramfs pivot_root fails
Thread-Index: AdWF1VDJVPg/DJlARdibifaMYTo8jg==
Date: Fri, 18 Oct 2019 17:00:31 +0000
Message-ID: <9231D502B07C5E4A8B32D5115C9F19991F9A9D55@IRSMSX108.ger.corp.intel.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2Q4ZDFiZmItMjIwNS00ZjRjLWJhNzYtMzk4MGViMmEwYjJmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVERTYkpNbHJYanh4NnBoQTFicHBIbXNRcXZGZDVUUWljT3o4eFFVY3lVMTR0TTRnNmxPOHUwR25rdDFsTUpNRSJ9
x-ctpclassification: CTP_NT
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_100035_846988_2D587213 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] procd-ujail on initramfs pivot_root fails
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
Cc: "hauke@hauke-m.de" <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

We want to run some processes in the procd-ujail, this works when we use a SquashFS image and an overlay file system, but when we use an initramfs it does not work.

We see the following error message:
--------------
Fri Oct 18 16:31:51 2019 user.err : jail: pivot_root(/tmp/ujail-ngPNoo, /tmp/ujail-ngPNoo/old) failed: Invalid argument
Fri Oct 18 16:31:51 2019 user.err : jail: failed to build jail fs
--------------
It is failing here:
https://git.openwrt.org/?p=project/procd.git;a=blob;f=jail/jail.c;h=54e78419b539ae6b618bc3680c01fdd9582ea318;hb=HEAD#l158

There is the following code in procd jail.c which looks to me like it should prevent this problem:
--------------
/* oldroot can't be MS_SHARED else pivot_root() fails */
if (mount("none", "/", NULL, MS_REC|MS_PRIVATE, NULL)) {
	ERROR("private mount failed %m\n");
	return -1;
}
--------------
https://git.openwrt.org/?p=project/procd.git;a=blob;f=jail/jail.c;h=54e78419b539ae6b618bc3680c01fdd9582ea318;hb=HEAD#l133


When we switch from initramfs to tmpfs, it is working, we added this code to target/linux/generic/other-files/init to make it work:
--- a/target/linux/generic/other-files/init
+++ b/target/linux/generic/other-files/init
@@ -1,4 +1,14 @@
 #!/bin/sh
 # Copyright (C) 2006 OpenWrt.org
 export INITRAMFS=1
-exec /sbin/init
+
+# switch to tmpfs to allow run daemons in jail on initramfs boot
+DIRS=$(echo *)
+NEW_ROOT=/new_root
+
+mkdir -p $NEW_ROOT
+mount -t tmpfs tmpfs $NEW_ROOT
+
+cp -pr $DIRS $NEW_ROOT
+
+exec switch_root $NEW_ROOT /sbin/init

We see this on a MIPS BE system running OpenWrt master from beginning of March 2019 with kernel 4.9.

I also see this problem also on the MIPS Malta 32 bit BE target of today's OpenWrt master using this configuration and with the patch in this mail I do not see it any more:
CONFIG_TARGET_malta=y
CONFIG_TARGET_malta_be=y
CONFIG_TARGET_malta_be_Default=y
CONFIG_PACKAGE_procd-ujail=y

Hauke

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
