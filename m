Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AF518E86A
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 12:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap0gcqdeLM++SGcPxrYq00lSBJ28AJGiWsOArSbLYn4=; b=Lv1k/AOdl8rxeA
	Nhb41jdHjFFcBVOXXOhmo9uTwrDfXjaQVyA1bbo5YaqJXX/s9VndVRZHjFv5jmcfVwCvgaUddM41q
	UCXK/BgSxqbv3u5wdDdcHzHCcKBLR0KzPW61M7+JR3RsNMSoBPmKuHzY7OePr1j0itidfsxjLnabt
	OuVMuZwYy/2I15/vWJ9SA5M394DL49mSeEq92IwJ2bNGfi2U8D78pR3E7YRk36yBN1OugI8ytwADG
	YIwZ7KgzjOUiTMPaxLG8VCyMifkolDewtFJ78AVKcBMR1c+f9SPBjGMq8HXRlT8A1fOMEoehYzjhJ
	AfbDm92zBR8eQHFekgmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFytc-0002qR-BQ; Sun, 22 Mar 2020 11:36:00 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFytT-0002oq-OO
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 11:35:53 +0000
Received: (wp-smtpd smtp.wp.pl 641 invoked from network);
 22 Mar 2020 12:35:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1584876945; bh=Nb2rrOOXaRPOr1s6hDSvQbC3nh+qoIhGvHJ8JlwZdcE=;
 h=From:To:Cc:Subject;
 b=eC6/eDdPzi1JILtGTzSUlmunqYnPw3mO8k0ebGRFmgN+eSfmfORXhcZ0Mw/co55i4
 E+skLK9NBp4uqpMS+ANDXY/EOx7gFUOob2EwZiV114quQRylrIcSOZzbCKR1mx5fG5
 VrW0HoOBPZwAztTqYGIcDm4VRTnJe+DyREImTWrQ=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 22 Mar 2020 12:35:45 +0100
Date: Sun, 22 Mar 2020 12:35:44 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20200322123544.14cd2b55@kosmio.komorska>
In-Reply-To: <20200317205927.26314-1-mail@david-bauer.net>
References: <20200317205927.26314-1-mail@david-bauer.net>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: ef63d0dce656e3305c6f5a0b6034fa79
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [8ZM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_043552_293184_691398C1 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: fix NAND driver compilation for
 kernel 5.4
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 17 Mar 2020 21:59:27 +0100
David Bauer <mail@david-bauer.net> wrote:

> This fixes the compilation of the AR934x NAND controller
> driver for kernel 5.4 while leaving it untouched for
> kernel 4.19.
> 
> This change is currently not run-tested, as i do not have such
> a device at hand.
> 

Hello David,

Good news, Netgear WNDR4300 runs fine on kernel 5.4 with this patch
applied.

Tested-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>

I would also propose to mitigate two compilation warnings by
introducing a return value here (by integrating into your patch):

=========
diff --git a/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c b/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
index 70aa396e25..0e33b07146 100644
--- a/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
+++ b/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
@@ -1082,14 +1082,24 @@ static int ar934x_nfc_write_page(struct nand_chip *chip,
 	return err;
 }
 
-static int ar934x_nfc_hw_reset_assert(struct ar934x_nfc *nfc) {
-	reset_control_assert(nfc->rst);
+static int ar934x_nfc_hw_reset_assert(struct ar934x_nfc *nfc)
+{
+	int err;
+
+	err = reset_control_assert(nfc->rst);
 	udelay(250);
+
+	return err;
 }
 
-static int ar934x_nfc_hw_reset_deassert(struct ar934x_nfc *nfc) {
-	reset_control_deassert(nfc->rst);
+static int ar934x_nfc_hw_reset_deassert(struct ar934x_nfc *nfc)
+{
+	int err;
+
+	err = reset_control_deassert(nfc->rst);
 	udelay(250);
+
+	return err;
 }
 
 static int ar934x_nfc_hw_init(struct ar934x_nfc *nfc)
=========

And finally, an important information:

Enabling 5.4 for this device exposes a mtd concat issue unrelated
to ar934x-nand driver, apparently affecting all routers that use 
concatenation of flash areas to form one larger volume for ubi. 
This appears to be a generic 5.x kernel problem not introduced by 
OpenWrt in any way.

The quick and dirty solution that worked for me was reverting kernel
patch:

commit 2431c4f5b46c32c4ac495456b1ef4ce59c0bb85d
Author: Boris Brezillon <bbrezillon@kernel.org>
Date:   Thu Dec 20 15:13:20 2018 +0100

    mtd: Implement mtd_{read,write}() as wrappers around
    mtd_{read,write}_oob()

    mtd_{read,write}_oob() already take care of checking the params and
    calling ->_{read,write}() or  ->_{read,write}_oob() based on the
    request and the operations supported by the MTD device.
    No need to duplicate the logic, we can simply implement
    mtd_{read,write}() as wrappers around mtd_{read,write}_oob().

Above commit makes router to oops on WARN_ON canary and exit with error
when creating mtd concat, entering boot loop. Without it my WNDR4300 runs
fine so far.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
