Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CD0F12A2
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 10:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H1Yc6d44MDWrTyTRw5xnFN55Ppxf0sVCox4C+I0XqDc=; b=HU6b4WxWY3L87S
	W1IOv9hYxh4rbz6DZghQEBQgOPLjBTkzgEgEzC+CwKv3A/42CgwbK+GGLn9i37F6i4tLwrCVEoAKs
	l+5LNH7QDa6qyibOnnFFoSxru9mfgFcyf//i1rnF4I/ZIq6cK1numljnj8AH1ucY+t1achT9J2vcI
	OFs3BmhN7DfWqFTYzde5KHArlZhzgicl8OPDgoZ3Y0R9a/JsG2RX18DSBICMVaZYI+qGK2Y23alYs
	gq8MGUnB4hY2ron6Rrk4Q9Mz+dYAQH9IXLOyunCKKn5gzEMd1EuxA2gWgsfn82pLOHh0dFREOlxyW
	7ofegNdfTmPt8nRMXc2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHtn-0007Qq-Uz; Wed, 06 Nov 2019 09:46:48 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHte-0007Q2-Oc
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 09:46:40 +0000
Received: (wp-smtpd smtp.wp.pl 26237 invoked from network);
 6 Nov 2019 10:46:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1573033592; bh=61WwLKlP1/08MKocyKWkhdKhWwV4Q/+vp8Zqc3zkeeI=;
 h=From:To:Subject;
 b=bri1ahFFAMXFSoU7FG90XuUABkU/U+lbk7ORUnD3dx1zqI2Q3aWfH9ZIjzAv6yG9q
 HyYEpjnFwuQZAKLPas5HkfbHjlCiCfeHsr4cHZC380w58ues5FOyrABF/6EQXuXZV0
 wYCEUsw9id5QeLGtA+kzaPTyRdmRR/NtY1Z/CMMA=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Nov 2019 10:46:32 +0100
Date: Wed, 6 Nov 2019 10:44:10 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191106104410.341b2d5d@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 7c71ae85ea5b2bcd15b679d348ce71b7
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [UVMB]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_014639_147308_59718EBE 
X-CRM114-Status: UNSURE (   4.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
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
Subject: [OpenWrt-Devel] [PATCH] ath79: update uboot-envtools for Netgear
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

Boards added: WNR1000v2, WNR2000v3, WNR612v2, WNDR3700.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ath79 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index 5da5df2420..fefbb48801 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -22,8 +22,11 @@ glinet,gl-ar300m-nor|\
 librerouter,librerouter-v1|\
 netgear,ex6400|\
 netgear,ex7300|\
+netgear,wnr1000-v2|\
+netgear,wnr2000-v3|\
 netgear,wnr2200-8m|\
 netgear,wnr2200-16m|\
+netgear,wnr612-v2|\
 ocedo,koala|\
 ocedo,raccoon|\
 openmesh,om5p-ac-v2|\
@@ -33,6 +36,9 @@ yuncore,a770)
 buffalo,wzr-hp-ag300h)
 	ubootenv_add_uci_config "/dev/mtd3" "0x0" "0x10000" "0x10000"
 	;;
+netgear,wndr3700)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
+	;;
 netgear,wndr4300)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
 	;;
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
