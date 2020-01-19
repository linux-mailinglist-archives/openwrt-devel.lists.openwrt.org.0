Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529F9141DA7
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 12:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTm130H6Y0m/HJ7T2DCr/x5lyUGApDP//XIAFbUlJgA=; b=MTYF34LsMfK115
	zmHt3HMvSH5BJ62o5kFV/zWWJGwtVOhx5WoNZ8mDqZGWt7oawWEOAndmjEHd5RNpk9gyrtLUG0RGx
	Ule4cFf3zPwxMRSXyhXr/S8v87VfDWrmrHCscc26GQPnUc/uPT3/OSTc2TNOjow6dEd/JyHoBH1xz
	Gl1liT42HToJkx9MWbn8GyKUrle+6MZkTPerDDmSD2uf8Xycp9NCO27nuZt6JBemyWDcvG5LPzcx3
	/axxtYfkZSjI4jDp2j9sBLuuw8tXKmwURBm38ryIo9zORCWP76MJR+XwBGpjWrkWpX1W51kzEdMuo
	WFiOhN5ugQGT9MNo/IAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it8vS-0005l3-HR; Sun, 19 Jan 2020 11:39:30 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it8v9-0005bQ-IM
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 11:39:13 +0000
Received: (wp-smtpd smtp.wp.pl 39319 invoked from network);
 19 Jan 2020 12:39:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579433945; bh=uZqiNm2qagTzMZ0Awajblepz6DTH9MXASYmmNy0PRrQ=;
 h=From:To:Cc:Subject;
 b=H+i5gx1iB4Yb1e1KoRYc+NrP2MBXJRIf9NKScFrMISrXX/QfefCwB/Kg5oq7JGSN1
 bwTM2FsB/SBisVwHGtxYhrp8JQ9+DgZslOqoV4KUOuteo51aiSoX4fjma4rF40JPJR
 su2P3WJkR3dvhNRZhcIqAusPlH05y4/17sV6hCe0=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 19 Jan 2020 12:39:05 +0100
Date: Sun, 19 Jan 2020 12:11:26 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200119121126.7c6e50ac@kosmio.komorska>
In-Reply-To: <20200119120816.44406149@kosmio.komorska>
References: <20200119120816.44406149@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: ed7f98b9c57804c82614573c440e5ae1
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [AbN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_033911_970246_24DA725E 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: uboot-envtools: add Netgear
 WNDR3700v2
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add Netgear WNDR3700v2 to the list of supported boards.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ath79 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index aafced98db..66f7dc6a64 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -44,7 +44,8 @@ yuncore,xd4200)
 buffalo,wzr-hp-ag300h)
 	ubootenv_add_uci_config "/dev/mtd3" "0x0" "0x10000" "0x10000"
 	;;
-netgear,wndr3700)
+netgear,wndr3700|\
+netgear,wndr3700-v2)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
 	;;
 netgear,wndr3700-v4|\
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
