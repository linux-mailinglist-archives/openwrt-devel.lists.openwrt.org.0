Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BFED3C5A
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2DuIyOAN4j7FK3SGlJaYLp1QvlQMeKQKkZIEQ+zXHSI=; b=D5jD7FqrRAAV9uKyLNeM4UpaPS
	eK1TB0+BpKqXeYmgXY2AzjqEjF896E+gYuuB3Ek8VXfBWWUPxdjhoiIatovvWQShefckN/z9eaO2S
	rS5GUrdpaUdWs74ml20F8jouzz6OkhVtJvXo8M9d8I+7I0xZsPQt8PP6gE4j1doR7Leu+WdLGJjKe
	mqitXnDDG8LWNITQOk8OUeVP14/+4ZCzot9ZZWfmjN3G6hVzXE0mdpJrsqIlHfwKU3OVdR9Wx5VMN
	Ok1SpwxVeCt801MVwpn6UcNCVi4KsDuqFnZodyav2lOv4aGSxAlreVzeT6DtarAHWLJZw/qT/xazb
	eWHk43cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrHo-00019t-PS; Fri, 11 Oct 2019 09:32:36 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrH0-0000Lj-3D
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:47 +0000
Received: (wp-smtpd smtp.wp.pl 40457 invoked from network);
 11 Oct 2019 11:31:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786299; bh=2w/B4mIhiPPZHR7i3j/Mz4hTpKGM72JlX7nwAf+Gpuc=;
 h=From:To:Subject;
 b=tFOmhXIWx7BWXLr+kp/3LVSqV5JfogqF9fhx2mQG2Hp0fytUO4C2Cz48jgSKx1vsN
 AtKgs2BpiYG5pt8i9KfzR9uerkCNt61Ny3nDXHYU75oMQRin9Z09Lo/0KvrjbaEJiD
 bw63yU1VPmP1PqrpIInraD0Nbd7XCMsVOGJmxZkU=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:39 +0200
Date: Fri, 11 Oct 2019 11:18:45 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011111845.4601ac6b@kosmio.komorska>
In-Reply-To: <20191011111446.77a86e7b@kosmio.komorska>
References: <20191011111446.77a86e7b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 094676b81660ef3962df8d02daadc6a5
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [oSO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023146_324666_4EC15D2B 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: fix sysupgrade for Netgear
 WNDR4300
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

This patch provides correct flashing via sysupgrade for Netgear
WNDR4300 router with NAND flash memory. Without this fix
upgrade process is not aware of UBI layer and corrupts volume
data putting router in Firmware Recovery mode.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/base-files/lib/upgrade/platform.sh | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upgrade/platform.sh
index f4fca06384..fb1bf607f8 100644
--- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
@@ -2,6 +2,8 @@
 # Copyright (C) 2011 OpenWrt.org
 #
 
+. /lib/upgrade/nand.sh
+
 PART_NAME=firmware
 REQUIRE_IMAGE_METADATA=1
 
@@ -51,6 +53,9 @@ platform_do_upgrade() {
 	ubnt,routerstation-pro)
 		redboot_fis_do_upgrade "$1" kernel
 		;;
+	netgear,wndr4300)
+		nand_do_upgrade "$1"
+		;;
 	*)
 		default_do_upgrade "$1"
 		;;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
