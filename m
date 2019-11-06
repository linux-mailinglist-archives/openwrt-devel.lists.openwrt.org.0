Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A944EF12A3
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 10:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BFnM+jPTXPhw8q2McS5UfRG1BD0oFjkR9Z/CyEBxmJs=; b=bx50e6BTDN+tK/
	URjelDirnpm1iO69K0VUEX4EkBA385dc8CYrLbL9/Yz+np7HBSVYe2MR3l22X92biZuX0vXW0Eh6h
	nhLXY9JvUGVMwczE90vpr3DN26C+E7qEtDjryR0RYLoG95uORONaX3JhXJszQlDQgB57yg/OkYHL9
	OKkQZPY5H89M8LvDGNLYjIyqtmSRZs059AEzsv8C7r6VDTu75ne5p6MgKMwBbiTbqFC3JSq0vTVGZ
	AppBS77rrxoSCgPWGijecqv3lFDzb3aTxfDpm2baaJO/hn/FeS+Imn26XH1ykkdcROoEETGxJmT5p
	T0sVoIIpiTNSUMxAnMHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHu0-0007cD-4x; Wed, 06 Nov 2019 09:47:00 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHtf-0007Q6-R4
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 09:46:41 +0000
Received: (wp-smtpd smtp.wp.pl 31747 invoked from network);
 6 Nov 2019 10:46:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1573033595; bh=YWdTyIWwy2LeMGz0OJHhyuOt8mZQ/r3cyzk4cWrg1Ww=;
 h=From:To:Subject;
 b=s2Wp9WSr4nhHBRBseae7nhFCNLJZr4sVnk0h5xi48bXI+u8H0g2uF44T6Vc/ao/gi
 X5yhWtcRQF7bopqmyoEs3ELqIEiynkcXcVqsi7MLIW70cHqsAk601tabL0TC/PEx5i
 ZbzP2qQuAoXUp/eHfk67qmTCN09h5S7Ppm0X5rS4=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Nov 2019 10:46:35 +0100
Date: Wed, 6 Nov 2019 10:43:14 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191106104314.248c616d@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 868aae7d7d7d61d30a15c2f5820ad29b
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [4QMR]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_014640_056226_AD2E0398 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ar71xx: update uboot-envtools for Netgear
 WNR routers
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

Boards added: WNR1000v2, WNR2000v3, WNR2200, WNR612v2, WNDR4300.
Boards changed: WNDR3700 (u-boot env size is 2 sectors not 1).

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ar71xx | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/package/boot/uboot-envtools/files/ar71xx b/package/boot/uboot-envtools/files/ar71xx
index b4e8d995c8..bc415e3b8c 100644
--- a/package/boot/uboot-envtools/files/ar71xx
+++ b/package/boot/uboot-envtools/files/ar71xx
@@ -58,7 +58,10 @@ sr3200|\
 t830|\
 tube2h|\
 wam250|\
-wndr3700|\
+wnr1000-v2|\
+wnr2000-v3|\
+wnr2200|\
+wnr612-v2|\
 xd3200)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x10000" "0x10000"
 	;;
@@ -92,6 +95,12 @@ qihoo-c301)
 wi2a-ac200i)
 	ubootenv_add_uci_config "/dev/mtd4" "0x0" "0x8000" "0x10000"
 	;;
+wndr3700)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
+	;;
+wndr4300)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
+	;;
 esac
 
 config_load ubootenv
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
