Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE0D6A14
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 21:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w31DFZ6SyVm6XCJYMqd6NrF6d+7VIh0Xqns68kD/e1Y=; b=Gq/iY5+mM9zfkF
	IDFsLHeCtHcQMHIF+AZczrYPe81vVov0MywEO+tqh6B6jwsHT6fT3Yno65KSoxAlYT3zAamWlVJE2
	pmCSMQcP4n8qB3ollE9K0nwM9fiUbHPF0/nHVyHLCqFWMec+c4mR9sMtmXF4VrrmRb9E/u4V/4eTn
	y5PJ424Ea0U7/YiUdroYCAHzTT4xhzYjQAFbdAK/7xQkrtr4+PaATejQuq/geJX+4P++Z/8oBFyKP
	bBI3aqCHOTKMS4tXzjJ2gX4CgVy26549VDgtuFMh6JYr3czeYlcTbXUXrjW0pnotxwQ89F015ufoW
	j0itzwoK0GSWb8iBeNRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK5z2-0003Jk-0s; Mon, 14 Oct 2019 19:26:20 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK5yv-0003J2-1s
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 19:26:15 +0000
Received: (wp-smtpd smtp.wp.pl 38562 invoked from network);
 14 Oct 2019 21:26:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571081166; bh=/yM80SUQ7LGiHU6lmymrL0PaB47nlbBDnDaZuYC6Cwo=;
 h=From:To:Cc:Subject;
 b=jr4V8GwPeq8pjMpczkXLdVyKt3GLkpjlsuh4DHFr4NDu5GLJuGxSRj+A3ouWjf3/f
 LCzVZqactQq8FIVuQtba6L6mdf43D0BhG/8cU/bnpKgSkCHvud+mMZeBfWIVMKxGfW
 VyehUdP9xQXlqcaME7ApCvwfJY6tP/CipVMxYbEo=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 14 Oct 2019 21:26:06 +0200
Date: Mon, 14 Oct 2019 21:26:04 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20191014212558.0008ee6f@kosmio.komorska>
In-Reply-To: <016001d5829e$b5184d10$1f48e730$@adrianschmutzler.de>
References: <20191011111446.77a86e7b@kosmio.komorska>
 <20191011111709.344d3667@kosmio.komorska>
 <001e01d5801d$73318610$59949230$@adrianschmutzler.de>
 <20191011145141.7a5848e6@kosmio.komorska>
 <004e01d58033$8492d380$8db87a80$@adrianschmutzler.de>
 <20191011191438.4e9c2eb6@kosmio.komorska>
 <016001d5829e$b5184d10$1f48e730$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: ac51946c5f16fe16fb0b640b5086bd41
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [oWPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_122613_611996_CA3FF401 
X-CRM114-Status: UNSURE (   5.02  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 14 Oct 2019 16:50:22 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

Hello Adrian,

> 
> Still, I would change the ambiguous label-mac-device to eth0, so it's
> unaffected if someone changes wmac MAC address setup later.
> 
Sure, that's indeed safer and better solution. I will use that one.
Thanks!

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
