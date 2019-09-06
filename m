Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1C4ABBB3
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 17:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NzFFoklTu6GDHkZE3o5Dt7RSl9VzTiJvKeG/aNDitkk=; b=k8a5meZ2iuA2NQ
	NwRMUFmejL5ZRDqpLubn7+YPUk63xl55XoS7RbRb7ex4d/nnGrLZVIiz13VhSxfDhjvo207kNaf/j
	PXxEPfBpLA2XBxLN/PcOQiUA/qzT5xhuXpH/mS2d2JuMcx910ZbydRpK9AM5MRjcGk2djR56rbphz
	QE0br9LfLEDM19lr4GLaxp4J8Jjl/7eKTCehuc8lH5Fath82bZWqoKuhvQKw/3QBlNckcndNZceV+
	gX1TOReHOCTeIw7gsiMHThaQE/ZjxfFxad2d3i6yWcbM/+HYdOcAX8wxHUaNBfOM0E0oV7hKZfTVH
	wXqOryFn6gfTprcH36pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FlH-0004Me-Co; Fri, 06 Sep 2019 15:02:55 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fl7-0004MI-Cw
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 15:02:46 +0000
Received: (wp-smtpd smtp.tlen.pl 24003 invoked from network);
 6 Sep 2019 17:02:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1567782162; bh=YcDf2+ViAlEiYHJqpyFgx741wY3hpqMyb8b9STLBvqE=;
 h=From:To:Subject;
 b=saXfdVzLp9TLoDUvEUFIE9J6zu7RXqgcMmsXeW7gy34JFpsSk6qin52n65R9XhF0y
 BVL+UDEaJbPu8Yff889hRungUkmtnDP7NIeCnb7hM2qjAiXgS8gF4adfCclX9nTZRH
 84GemCKDEWdNSHftgYRaPmDOW7uUZCypYpm/kmUQ=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Sep 2019 17:02:42 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 17:02:36 +0200
Message-Id: <20190906150236.4596-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-WP-MailID: 162cb50cd8efc3a4101575a0ad794938
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [oVFG]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080245_600124_BB014178 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ath79: base-files: disable sysupgrade for
 routerstations and ja76pf2
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

Previous commit 0cc87b3 "ath79: image: disable sysupgrade images for
routerstations and ja76pf2" doesn't remedy completely the posibility of
bricking the device, since user could try to downgrade with an older
image. Therefore disable sysupgrade code for these boards with a small
note.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/base-files/lib/upgrade/platform.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upgrade/platform.sh
index f7e62143e7..020e9fb6c1 100644
--- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
@@ -45,11 +45,11 @@ platform_do_upgrade() {
 		redboot_fis_do_upgrade "$1" vmlinux_2
 		;;
 	jjplus,ja76pf2)
-		redboot_fis_do_upgrade "$1" linux
+		echo "Sysupgrade disabled due bug FS#2428"
 		;;
 	ubnt,routerstation|\
 	ubnt,routerstation-pro)
-		redboot_fis_do_upgrade "$1" kernel
+		echo "Sysupgrade disabled due bug FS#2428"
 		;;
 	*)
 		default_do_upgrade "$1"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
