Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DB9102979
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 17:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkO5+8hNdMp82DYRU5KCBnM83HHevqduUtGm2Vh7Sgk=; b=gPmc+HiR16mwL/
	8z95ii+P1tuwgyJNqf8/iecJfJ+/8vQnus/0uazOs3A8UdYgwUaHzR4+wMXx5vrfZOHLkWOFI4BTD
	6GOzefxQ7pqXXeYmNlCBEw7RDSCKSMrDaSChCnJnSnoYaauidjl50FLPszJ7s//aC0gqZ/AHvS3/G
	VUfJgPG8k+coYLcCP7n8n5uSFJLhkmZBpwQ35pt86DqommEmRpj7XZvSq/4ymj+thQR1eJeJHiljD
	elucWUQLrqZHxMLKvLpjIdYoQ+rEAP0WS+2cuCAO/MOyyy8Db1cb20hAUzgMkWY7vQ+5lLZTWvTLX
	OlAQRVyQqh6IzR8M6xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6Rf-0008W3-Fx; Tue, 19 Nov 2019 16:33:39 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6RV-0008VI-Et
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 16:33:31 +0000
Received: (wp-smtpd smtp.wp.pl 12954 invoked from network);
 19 Nov 2019 17:33:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1574181204; bh=gP5eLokzXqiTl7J4mGteDE/wI8FnmBv86pQNySIua70=;
 h=From:To:Cc:Subject;
 b=CgpqkqhfGrxtzCxnobRFt3gMiDNZ3f6q4SyeItRX53lWYTkLibLnt/o4za8sGjIu7
 NmJyOUxhZ3V83fmzqci3wSehAEqITKm1v12Gwhmz3UMGBS6zD0+Xdx2w+cIJOWQK2C
 SMYxI0iiM4GTOt5k/4i8ED99MCL1G3BLBHTLNb1M=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <jonas.gorski@gmail.com>; 19 Nov 2019 17:33:23 +0100
Date: Tue, 19 Nov 2019 17:33:22 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191119173322.512c6669@kosmio.komorska>
In-Reply-To: <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
 <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 8e46de70c59dffeafd8c08d7a95b9eb5
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [oXOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_083329_853730_17DB2946 
X-CRM114-Status: UNSURE (   3.94  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

> 
> Have you checked that flashing a factory.bin image through tftp still
> works?
> 

Yes, it works. On this router the easiest way to flash memory via tftp
is to enter uboot and execute 'fw_recovery' command, then factory.img
file can be uploaded via tftp client.  I hope this answers your
question.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
