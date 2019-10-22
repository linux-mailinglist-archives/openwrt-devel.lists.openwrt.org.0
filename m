Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23BEE057A
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 15:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tfEw/slpbsXE58XzUB44lgFgi+YO04lgWAF9vz4jY+0=; b=Agrd3md/J/bzr3
	Ug/2DeOZSqijXAc536UoKESid7Z4jyiKEgnwDBcBO/9kF/gw0piCaZQTkQch0B7kLzI16rCCLlDUf
	IOwINvcC8KV7sNnYQsO/4yyOO2tbn6x9RVZKPABNmGo7rrsppgi7G1poc4Vs9E9na2eTKfH2ZmaQQ
	BTlCLtKuZVzwoARVRuetT82KXk3jifGL9o0UfguXvU3WXzhuDZBBzO+LG0Oo6NAoWJ6JuqZQShYoA
	sTEZRHal1X3KFUVgWo8RbWWmrFt28jpNgFGh47fSyMeISWXJyplzO/VmjZG3Wa9gO1VxMnl97qH3g
	Aswqrgv4Bae4H3YKGh4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuYC-00013P-5q; Tue, 22 Oct 2019 13:50:16 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuY3-0008NW-Hr
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 13:50:09 +0000
Received: (wp-smtpd smtp.wp.pl 23920 invoked from network);
 22 Oct 2019 15:50:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571752202; bh=WDesBYf+tNBYuie+esZBE+RlulK/gF7J2AoXZaEYQVM=;
 h=From:To:Cc:Subject;
 b=dD4GPXTZrmfxruWRy2WB7krrau4ndoBrgu7M95EScvAGsEXJvD6rWTji3M6GJ4DjT
 q2AT6XnRV4xU4y8pFAbCKYhLrFqig5F7lTJYBygYa3/s/i6BjHWXQN9pJJetPv6FLk
 2Gk6Zrz8bT8/eImWjK+nsdD30ouSKIZLZDgr/e0Q=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Oct 2019 15:50:01 +0200
Date: Tue, 22 Oct 2019 15:26:12 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191022152612.66f9498b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 279bfe5916176e9af72d95ea39caf603
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [UcMh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_065008_121064_9D5BDF65 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: wnr1000v2: fix image header
 information
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

Factory image generated for Netgear WNR1000 v2 has incorrect device
and hardware ID information in header due to missing makefile
variables. This fix adds them to device section.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/image/tiny-netgear.mk | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/ath79/image/tiny-netgear.mk b/target/linux/ath79/image/tiny-netgear.mk
index 0df19390bb..d257ddd0ec 100644
--- a/target/linux/ath79/image/tiny-netgear.mk
+++ b/target/linux/ath79/image/tiny-netgear.mk
@@ -33,6 +33,8 @@ define Device/netgear_wnr1000-v2
   DEVICE_MODEL := WNR1000
   DEVICE_VARIANT := v2
   NETGEAR_KERNEL_MAGIC := 0x31303031
+  NETGEAR_BOARD_ID := WNR1000V2
+  NETGEAR_HW_ID := 29763331+4+32
   IMAGE_SIZE := 3712k
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
   SUPPORTED_DEVICES += wnr1000-v2
-- 
2.23.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
