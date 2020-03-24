Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABCF19127C
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 15:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IEWgciFNRoM8Xjxao5hrxJvFHyJKbvf9WRKRQR0brcU=; b=DlZbfLeqh1rCgeODUx/MV7pQ0V
	f3hvn8t3Wbe/I5TNNptOkDUjMPbmf94PX6qwhQJRIocdTARO0E30Thg1atolHIpwLNNd25k9sGmML
	9kID5/U1CNTKc7dULtR1M7TYUFBbHE1aiGXvjy/6BabP61OwbVI7ljpnlSfQZgZYA+Cwzo4NQGUgj
	a/FvgBt359jWC0neEFbym9MP/P9At7oGgovM2/fPmBmu2Sp5t505ovYHp6rbWLEDMFESxYGdWe0xj
	5IUF+8ja0awCxT+9eJlhz+9n+yVZYBTbEAAesLtwfQaA/a7nSW7Rh9beMQa5FpwzGgt2fmQ8B3rp/
	NdsStNbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkF1-0000Y6-6g; Tue, 24 Mar 2020 14:09:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkEu-0000Xc-GD
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 14:09:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BA4524FE4;
 Tue, 24 Mar 2020 15:09:02 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 981be7a2;
 Tue, 24 Mar 2020 15:08:48 +0100 (CET)
Date: Tue, 24 Mar 2020 15:08:48 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20200324140848.GA43730@meh.true.cz>
References: <20200320101059.19793-1-mail@aparcar.org>
 <20200320101059.19793-3-mail@aparcar.org>
 <CAJXyS=i6kCLjUkCtRU844_-3vJHr7=m16weJVuE4unUcAp+_Tg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJXyS=i6kCLjUkCtRU844_-3vJHr7=m16weJVuE4unUcAp+_Tg@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_070908_689200_7179DBEC 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/6] x86: switch image generation to new
 code
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
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeffery To <jeffery.to@gmail.com> [2020-03-23 21:53:48]:

> On Fri, Mar 20, 2020 at 6:37 PM Paul Spooren <mail@aparcar.org> wrote:
> 
> > This commit introduces few related changes which need to be done in
> > single commit to keep images buildable between git revisions. In result
> > it retains all previous image creation possibilities with slight name
> > change of generated images. Brief summary of the commit:
> 
> Would it be possible to restore the building of a separate kernel and
> rootfs? It's much easier to resize a rootfs than a disk image.

+1 as having separate kernel/rootfs images is handy for quick testing in QEMU

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
