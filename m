Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC7AD5898
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 00:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWmwHfeeTGnWKmRtsijMY39GmaiHVJlM1XPuAzeo5T0=; b=D4uAFtZJiLLjwH
	RFYki2ItRAGbClkJzNCJZuzHfg8P0JwKGs3lAstl6KgeVkGfduvU450KeNlqLdFNkgjmfdIsK94Px
	hADlC4J0+Zr4/xhlq/5NjbZvbagPjjBCCcSiO8hD+RZOsWKcAWWKkplMB4oA3L/lt70ZbKkSo3agx
	kSBlnvxINVQwgOWxRksi6S7hBqEfh2reJn1xyxNzMdDSRtZUTH8KnScvAljAm2IUDrwRcvHTvdYQo
	GTHGT7ITbMD28Zu0+vJnb+yzJbvBjGcL+Ys2IaQJEcmpZfCwg4AiuvDrknRzkF2t/aByuN8mhXoJb
	wbVgmjV4ydOE/Gug7NEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJmFm-0002Wc-06; Sun, 13 Oct 2019 22:22:18 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJmFd-0002Vu-Mv
 for openwrt-devel@lists.openwrt.org; Sun, 13 Oct 2019 22:22:11 +0000
Received: (wp-smtpd smtp.wp.pl 14657 invoked from network);
 14 Oct 2019 00:22:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571005322; bh=46oa6gj7Qg5aZrk80v/V2UXBXoqSWoNpKbBOCnOSKc4=;
 h=From:To:Cc:Subject;
 b=KxHXD5amw3fzQRV4HW1XJdWH/BSbevQvoMSGwLJt3GkKmBK/BWqrUvjNiRhYaQxIf
 NnM4CER1RLajrmMMY60YXe9Zq1vJ610Ri3gs4MmyglkaRIdK0thg1szpyeBuCGgyBk
 EOC8IB3YrMn0V3OQ9ejIw+LRZITnLfhEWeyQrpGc=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 14 Oct 2019 00:22:02 +0200
Date: Mon, 14 Oct 2019 00:22:00 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191014002200.1265b24b@kosmio.komorska>
In-Reply-To: <501cff5b-efac-8bcf-b895-ce6d8c9b219c@david-bauer.net>
References: <20191011105011.05efbcda@kosmio.komorska>
 <501cff5b-efac-8bcf-b895-ce6d8c9b219c@david-bauer.net>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: d4fec53c938e839db460bdf6325e113e
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [saN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_152210_261451_4DD11727 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add AR934x NAND Flash Controller
 driver
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 13 Oct 2019 21:12:28 +0200
David Bauer <mail@david-bauer.net> wrote:

> Hello Michal,
> 
> I've tested your patch on my Aerohive HiveAP-121 (patch to follow).
> While it worked most of the times, in around 1 out of 5 boot
> attempts, the driver will fail to probe:
> 
> [    3.885899] nand: device found, Manufacturer ID: 0xad, Chip ID:
> 0xf1 [    3.961915] nand: Hynix NAND 128MiB 3,3V 8-bit
> [    4.015027] nand: 128 MiB, SLC, erase size: 128 KiB, page size:
> 2048, OOB size: 64 [    4.105743] Scanning device for bad blocks
> [    4.654817] random: fast init done
> [    5.604831] ar934x-nand 1b000200.nand: read operation failed on
> page 1664 [    5.685985] nand_bbt: can't scan flash and build the
> RAM-based BBT [    5.759938] ar934x-nand 1b000200.nand: nand_scan
> failed, err:-145 [    5.832877] ar934x-nand: probe of 1b000200.nand
> failed with error -145
> 
> I've noticed the reset sequence in ar934x_nfc_hw_init is missing
> compared to the ar71xx implementation. Adding this back in, the NAND
> probes flawlessly (sample size 10).
> 
> See my staging tree for my alteration. If you are good with it, i
> would squash it on your commit. [0] [1]
> 
> Best wishes
> David
> 
> [0]
> https://git.openwrt.org/?p=openwrt/staging/blocktrron.git;a=shortlog;h=refs/heads/ath79-nfc
> [1]
> https://git.openwrt.org/?p=openwrt/staging/blocktrron.git;a=commitdiff;h=3621acfec49a40fe115598367d2db92855b98d4f

Hello David,

Yes, please update my commit.

Thank you for your feedback, review and tests. Indeed I (wrongly)
assumed minimalistic approach and delegated ar71xx reset procedure to
a simple DT property. I have only WNDR4300 to test the driver - this
router interestingly has no problems whatsoever (I've booted it tens of
times). ar934x-nand is my first DT driver port ever, and I thanks to
your patch now I know more about implementing reset features :-) 

Again, thanks and best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
