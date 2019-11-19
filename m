Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C8010301C
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 00:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtW9XVEbRiTlkGvWE1P53LkUt3hiRmLlAwFIs0Ad9H0=; b=Ec2IXDQZnSkdXi
	S5pBBl1pvIHxs16kGWi9l3hr0QIMhlBlcQigUNTSjlvyV3KQ4p0M7fWj+kCxSuUTpSmHoy799JKA/
	89gljRIQ8yABE724iPuWa09w9tJqM+14bxao8WXqFTWe2GEdA6/mNE0jYiunDg9FAH+WrQ3q+4Iv6
	0kClr/kF4KdJkjr9/A4zeke8qGUN2Q/hoMl3PGSa8xVJxgK5Cnf0WsK56AhvxCk0tJIN22efoDnFG
	wO4m1ig5JHErfSmBrd4THf8VA1r8UGwnQBGUlZzevHPOmi7/mgxGAa2lwW3ApdIan5ep8YyjDoTvG
	J65QMBO63c8yPC3PTj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCrW-00049s-3w; Tue, 19 Nov 2019 23:24:46 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCnc-00013h-Fp
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 23:20:46 +0000
Received: (wp-smtpd smtp.wp.pl 14092 invoked from network);
 20 Nov 2019 00:20:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1574205640; bh=N/983f1ChXuuXJOLid1jNrJJxLQ30TmcylfwwOk6MEU=;
 h=From:To:Cc:Subject;
 b=t5CQILiDMkW7FDdfjpNP2UtBZvjSn5nurVMYafyh92TEbB/v0vuiFErn0vdzbqOPD
 kUVuoBU+nY47aVMxT77vm25zvS0vsD8SxyAHk/sUT6+8BAdbb21Bz1cxsrENvp6Hc5
 wwpKDfqCrwpeWDHvahqTGIYqi+0XwPZ5gJKUF45w=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 20 Nov 2019 00:20:40 +0100
Date: Wed, 20 Nov 2019 00:20:39 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: <mail@adrianschmutzler.de>
Message-ID: <20191120001920.23a0dbbc@kosmio.komorska>
In-Reply-To: <007f01d59f17$4e324840$ea96d8c0$@adrianschmutzler.de>
References: <20191030123221.7a0af3ea@kosmio.komorska>
 <20191030123408.5e8dd3fe@kosmio.komorska>
 <007f01d59f17$4e324840$ea96d8c0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 7bd7c6efb94cfa339e4a6b66f1ed5d63
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [sRN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_152044_745472_C22339D3 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add support for Netgear
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

Hello Adrian,

> 
> What is/was the reason for that change and do we have to backport it
> to ar71xx?
> 

On my WNDR4300 2.4 GHz radio is at 0x1000 and 5 GHz is at 0x5000, like
many other ar9344 models have. Both areas are 0x440 in length not 0x800
- after 0x440 empty space begins (0xff) - so tells hexdump anyway.
Both radios were tested and confirmed to work prior to submitting patch.
I think it's safe to backport that to ar71xx, if not - it does no harm
to have extra 0xff bytes at the end I guess.

Regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
