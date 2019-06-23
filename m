Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684804FB4C
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 13:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lvZwl3KQWMlujQF9VS2ky5GhbhmGwnTr3m8eMvV3pU=; b=uVpTnFh3a38zsG
	EbXZK/HaXaxk/+/AhNGnaR9S9HbIx9q0gnA/HzKRlIWuEqd5Qu+FYSC8ypGdwur+ZiqAgyPcAMzQ0
	5N/vu+noIw69tRNoh3Py/bcco6dFsOaZ8E6NnKMjU9UyqLFcl0F97PvH4vzUfgFPskIRiYWBxY7td
	zFqBQdwtHz7pN5HAlQ36tTrnKCYVVbxe5uO8Ppm1TO1b/1bKrW4NcHwdZnWaJVQCD7Y8FPEDVp0+I
	xOmiO1A+iSfY6R6SfklnciD6HEuU01lwXjhQMaIzpLInyZtSY7ZyzqsPmnUw/nZ/DJ0/Pqe49EZvj
	xmhD6UsYysxFRQHKZCmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf0hq-0001P6-2b; Sun, 23 Jun 2019 11:30:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf0hg-0001NN-OD
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 11:30:38 +0000
Received: from localhost (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 963293560;
 Sun, 23 Jun 2019 13:30:30 +0200 (CEST)
Date: Sun, 23 Jun 2019 11:30:24 +0000
In-Reply-To: <2886BC46-F77D-4F20-83F4-4E7CECCB9716@darbyshire-bryant.me.uk>
References: <2886BC46-F77D-4F20-83F4-4E7CECCB9716@darbyshire-bryant.me.uk>
MIME-Version: 1.0
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <83CA1E4B-05B2-4275-B5D9-118FFEEE7B84@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_043036_937615_99533EC1 
X-CRM114-Status: UNSURE (   2.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] ath10k-ct crash Archer C7 v2 - OpenWrt
 r10307-629e6538a1 - k4.19
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

Hi,

https://github.com/greearb/ath10k-ct/issues is proper place for related bug reports.



-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
