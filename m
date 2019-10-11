Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5882ED3C5D
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pmy9CyaPVErecdmHp+lstaCjPPBNNIK5lgTYRRcdZQ8=; b=ZBvbFAfrpqDlGR
	VaG3lp0xjxqPenBKnFiBD/l4aGqqvCXP8+nAexfZDosGEGSXfADki44nQXxzb9nitFODjaxwTJl0F
	1O0zPVVUK6jRMlMuzF97Dcs/6KkQvubWKFWxeHc5+dqCu6z5buRcFWMfXGOe8fkN0JFLKTMRF3/3w
	07tzc/qrF1pmrEOEaaNjMz/E+C6XEBv+i4WHVGuk13QMvzfKbodM/Fc77HG4vy+/A5W90sxtI2If0
	LeAvIp3bsD7haBVttgu+fp9cHccyNN6DZX88F9zjX/NKQghKEBfj85ZXhLbf5caWVnqemwYPn+62a
	fFkq4CAAsjAO06NqQuQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrI0-0001Pa-Lj; Fri, 11 Oct 2019 09:32:48 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrH3-0000OD-A6
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:50 +0000
Received: (wp-smtpd smtp.wp.pl 7753 invoked from network);
 11 Oct 2019 11:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786302; bh=undscSbA+24HiYOuxgDo0QTfrQ7fjzQnFfvpbMqdklk=;
 h=From:To:Subject;
 b=Rb3PZXG+iRCYrL8iwYKXwU18lVVeyOTgnVdiOr5C09G7S0h/KSCkZNX0MYTuWcMXT
 i90tsGAqlC6nzvkHQfn6CPxN+vJC3kG/rrVOgV/lgNfTrw/eakB1z5F9ecQwkNF6wc
 UnJFhLmqO5auqmwUjRahC01uMMbk/Q3OSGuIZlJc=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:42 +0200
Date: Fri, 11 Oct 2019 10:40:33 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011104033.058b5e34@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 84467bee007b7aa4a8cf6de68ff29549
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [UQPB]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023149_573480_22B6D7F7 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH 0/2] ar71xx: standarize Netgear WNDR4300
 controls
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

Two patches attached here are intended to make Netgear WNDR4300
behaviour more consistent with other routers running OpenWrt.
Changes:
* buttons are renamed to standard ones ("reset", "wps", "rfkill") so
  /etc/rc.button.d/ scripts can handle them by default
* WAN LED colour is no longer indicating link speed like LAN ports;
  amber LED shows link status (regardless of speed) while green one
  is reserved for working Internet connection

Patch list(2):
  ar71xx: WNDR4300: use standard labels for buttons
  ar71xx: WNDR4300: fix WAN LED behaviour

 target/linux/ar71xx/base-files/etc/board.d/01_leds        | 3 +--
 target/linux/ar71xx/files/arch/mips/ath79/mach-wndr4300.c | 6 +++---
 2 files changed, 4 insertions(+), 5 deletions(-)

-- 
2.23.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
