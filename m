Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EFFAC72B
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 17:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F3gYcexYUDKv8V3UltoEu2I2RENmQ6FASi9fnhpuxJo=; b=lw5tkzOTz83TmhZOlIPnZ+OrUN
	4Rvf9t8sRhg0l1jq9pd9RYNvgxiWsdS1oOgv5rWuII20E3nL6BF4rz2CgrvaI8pPqTrMg3qAMddd4
	7cMNEXgUu5HpLdrRGW4gFgSzmxXmUTos+r8FNosL7GksZ8glAM95/AQEX+zjkghS3ruvSDvoqvXUo
	+ecMuWGQphgDqfnMu1gVUPpI8c1KQKV7EBlidyhy3R/LffYGw6Wl5QarezFYSgMfRHPJOxvuQPOVt
	Re5GNcp1vYQgCLpZZ6Ia++Yt3Mc1DbEEe9Z6VwEF4v85fFCl5FRmbms9hDr2Fu/Bag849KflyXBSD
	ydl/4IuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cJK-0005zZ-8e; Sat, 07 Sep 2019 15:07:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cIn-0005iY-Gj
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 15:07:02 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MYvPq-1hbnmo24IK-00UvXj for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Sep 2019 17:06:54 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 17:06:51 +0200
Message-Id: <20190907150651.3513-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
References: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZWv1xA1anRRR3F3kjzJHym4lMF5gyjwO3FBFUZcLcdn9CPExTS/
 vX4grAK9f3Qv1WydVvjHRtXrJKjwPXyH6gr/D3nV6xBIdFOQ/1LokFc64s1eRSX96efJTTS
 m87EKRbRpS1napqO4l903iHEgnyisCqS/bbM6sqd/POjRh4oW2oBfhOpnvKBpRSWLYpQQON
 dBwUKDwHluzCgJ9gXjigg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Py3vzXxEPCE=:/tFOvyIlTD6Na0Op055z24
 JtKWRTALWKkm5FMSTPKCEI/AWXxVVfJVC5d1ni3FqeZKsXlguiohQYRFS8jlhKLuw5UPYEdbE
 NRYUaVUx5i3Pw3MR9th/F3gPaq0/EQpVbZ1Csl1o4X2kYU+F8GcZwLCPuViKBmgC6qgegA6jF
 seaaLPpYSNns8CRpiINSK7vvJwHRa+aT/gS+jZWdd2HUdrwNtYp3iOfRs8EPHgsivrEG0t3/X
 eldogm5oXTxrbU81o0vBCA52jQh+gac25ytpl+kJCGSLWFMR4+qZQxbFGbNWJGRYoAbm8vPW/
 rM91ASLOcPnzNEmMLpNY93E065qaqeRX+VOvHcjOZ56QI1hrcZLuqBEidDtZoJvQW5skYf+Zz
 uLfjo0dFXWWb9Al6HsYRC1o1wsBeZRpCZtRdqrlkL/rgqZS2L50Y9b/k8e3WsIRoSJw071/ZG
 1d2Hlf4R6HKt+FCRViwGq9vd03JQOcwtQp/cqy+DtjsdqRKoYdMfbxjroSKrLfmp8CEET0rz1
 sQdciyi/Czl0nH3AYdxOTFvh8XD/WLEm3jflQKysGSu2YoKYQaNCWrZAtX9c3uSUO40mdSqIH
 ly5v+m3sg0Rw6zsCGSw+l6v/ta/iYk3LKt+/baln0RVdD2PKWby0gbpomm33453LynoRf38eV
 OlCzuL46QSR0NrYywMEq5pKsC7nTeBAzGNBBpQhFJtF2DHgSHTofJVKeK9fSRFFro8V5fdUxF
 ePUycH3ffRsAfyTKPqRko6MCZo65N6OfL0/yEnZ5K1aSHtRPDDA4FYAeK/B3LxmuBuNGiXH7f
 dxU6zOY0k5uH6GyYLPQIghvmiefy2Jp9wQ+Dx0p4ElAdqeZ0SFmZZL6xSXrGwbNuYD3438T
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080701_844830_E6BB66D9 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 18.06 3/3] ramips: fix duplicate network
 setup for dlink, dir-615-h1
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

In 555ca422d1cb ("ramips: fix D-Link DIR-615 H1 switch port
mapping"), port setup for dir-615-h1 was changed without removing
the old one. This was working as the new one was triggered earlier
than the old one.

(In the meantine, changed sorting during ramips rename patches
actually inversed that order.)

Anyway, just remove the wrong case now.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit e35e4a996e26f17b69d200505ecea78af96a2704)
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 01bad990a9..dd76dc12a5 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -82,7 +82,6 @@ ramips_setup_interfaces()
 	dir-300-b7|\
 	dir-320-b1|\
 	dir-610-a1|\
-	dir-615-h1|\
 	dir-810l|\
 	dlink,dwr-116-a1|\
 	dlink,dwr-921-c1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
