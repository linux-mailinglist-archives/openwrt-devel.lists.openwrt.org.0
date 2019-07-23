Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73578717AE
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 14:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1eseGcFJxqhYe5kZelq4Qv+S6Je51PzopoCtuX2q5to=; b=lPism7Kyc/IQKEw1Xaxm+u+/DL
	jyyzzQEUYa3cW/LTQcBH1fMBzQJ+ymuK8udiWJ1kuTvAPKFMp3m4JZEQk3CIaix9eL9qQvFjUkqqZ
	SRvJeJc4pbvIVA+eUCOA8iUfRY3TwdH43Ynr8grG14SgY8d/s5QtFrPWlP39VHjt2z8oalQhdxgmI
	mzRgXXmjFopE4ZdkhLUc77mT6ViX3Xx1Yw2GxPNptGB39muvlpctwB2AUVTHzbcB9k/a0JNYsL3Wc
	t/o4xrKIkPzOAastJxT9rO0qxinAa0+cWDLDXKd3PfzdK7veSdDo2YAbTXu6o0TRgMKTeDFzY/xRF
	C4B0Runw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptVq-0002Hd-MO; Tue, 23 Jul 2019 12:03:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptVf-0002Go-9n
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 12:03:13 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3B0184000;
 Tue, 23 Jul 2019 14:03:03 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 20261da3;
 Tue, 23 Jul 2019 14:02:56 +0200 (CEST)
Date: Tue, 23 Jul 2019 14:02:56 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20190723120256.GD68258@meh.true.cz>
References: <20190723102452.30621-1-ynezz@true.cz>
 <20190723102452.30621-2-ynezz@true.cz>
 <CAECwjAgiAgQzOyxcxTGS1-mm4483=SuZqqRGnp-GWD7Whb7WJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAgiAgQzOyxcxTGS1-mm4483=SuZqqRGnp-GWD7Whb7WJQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_050312_558861_2D7A6285 
X-CRM114-Status: UNSURE (   5.72  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] netifd, lldpd, rpcd,
 log: use generic service_running
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yousong Zhou <yszhou4tech@gmail.com> [2019-07-23 19:51:34]:

> > -service_running() {
> > -       ubus -t 30 wait_for network.interface
> > -       /sbin/wifi reload_legacy
> > -}
> > -
> 
> Likely we should keep this.  If not, a note in the commit message could help.

It's broken anyway:

 $ /etc/init.d/network stop; service network running && echo "yes" || echo "nope"
 Command failed: Request timed out
 yes

I'll add this information to the commit message, thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
