Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A0A18F98A
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 17:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbDFdmWmKsO26LHS4HykxPuSgWLhm76Cg0CR41eM8C0=; b=tema0ad+Pxgu7Q
	MWFAunrmxYJ1tnICMbIT1FZBdT5oAJVCNvQQIjxdS0KnuN+xk6ZUwuZPWOZbC8cp7D9nXwXh5npYM
	8+0iRjuja8Qow9WzKDb6grrFxIbUZ/RgC/HzfPTwfU/TQlfSAs2Bxqt26EehXrivwC2FT/oIvNEg9
	njaY6dyvuxYSVl9uoQBuO9wZi2zzKY/yvq5DpFUaNkcNNJNFjDM4yG0xeE95XSq4S/vxg5f/kbwms
	B/2OWiNwChgYAf8bxhFGZKkIss7GtRKC/OOUBcqwrEj7l7SCRyhs+6dt8j17IqJv0bLYW/szHRT5E
	aRnFZKomvX4VB9xUhytg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPpA-0005qf-3F; Mon, 23 Mar 2020 16:21:12 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPp3-0005pb-6x
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 16:21:06 +0000
Received: (wp-smtpd smtp.wp.pl 10473 invoked from network);
 23 Mar 2020 17:20:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1584980453; bh=Fn3BZS7FeDlXgepdy+v/5fu/q0X3W7vYvWSEalpgvWc=;
 h=From:To:Cc:Subject;
 b=i2NaiGnmEN1ASJe101gvf9pYYIr6BRxau44uWqpZXxO60xsy9c+cOw6uC3pYVSOOl
 R2U187XdCWFQ5EN2gfBu6TIZtNrQza7pj6yw+f7Cc7uuh7F6Gxuy1jhFRxXhCJaL7U
 8++GT4aA7nd+tLN1l0Q7tIWI2KbgVb0fqKxdXKSo=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 23 Mar 2020 17:20:53 +0100
Date: Mon, 23 Mar 2020 17:20:42 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20200323172042.2bf023b5@kosmio.komorska>
In-Reply-To: <f742327a-a9ef-f52d-bf34-5da2cddc1733@david-bauer.net>
References: <20200317205927.26314-1-mail@david-bauer.net>
 <20200322123544.14cd2b55@kosmio.komorska>
 <f742327a-a9ef-f52d-bf34-5da2cddc1733@david-bauer.net>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 63b9e525d58f31e4589f26f43b7754ab
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [ARN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_092105_584512_98C9CD16 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sun, 22 Mar 2020 20:01:57 +0100
David Bauer <mail@david-bauer.net> wrote:

> Hi Michal
> 
> 
> I'm not that deep into the mtd-concat hack (expecially on NAND
> flash). We might also run into issues when migrating to the new NAND
> interface. If you you've found a fix for this, it would be great to
> have it up for discussion on ML or GitHub. Especially as this is more
> or less target independant and not directly associated with the ath79
> driver.
> 
> Best wishes
> David
> 

Hello David,

Yes, I'm going to have a deeper look at mtdconcat driver and try to
modify its behaviour to be consistent with what is now required by
mtdcore. Concat is a virtual device, address translation layer mainly,
so understanding how it works should not require any deep flash hacking
knowledge.

Cheers
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
