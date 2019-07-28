Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16EB77E53
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 08:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GC8TZePv3xPgUGLAyWcF0qR7GCtIs5leE1UBZwDtHis=; b=djVZrrvzHueeazn5D7GEEbytXo
	3MFfMhWlCPfhqg3i4u109O+KiYFcGXV7ZC1ZMrFoXSWtRj0v2/Zj3SYczQikSOT21lwwIwJtDWQ2k
	Tkys1KX/A+ao41yD0IJYMZJSCH4D6526yqKDeH/uUdKw61unzBfA5rHc6+vopdsoAi9B4X6kMwjta
	B0YwVunQIhxlFfPp17F4XjDI6j2SUjxQH9ALjF4nzS/scnL5PjB19gjQlAoYLXcafpFlYYcAySFUq
	pip6SgNRe8tvkY5b+oehQcqH5rWH5NceaDXTy8yLh2rEpSdamFKb6NNI5Q8bPUTVo4XPmLuzKtCEo
	j746zaxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrd1j-0006Qe-0s; Sun, 28 Jul 2019 06:51:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrd1V-0006QF-Rv
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 06:51:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AFFFC34AC;
 Sun, 28 Jul 2019 08:51:06 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d35c1905;
 Sun, 28 Jul 2019 08:50:59 +0200 (CEST)
Date: Sun, 28 Jul 2019 08:50:59 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20190728065059.GE74752@meh.true.cz>
References: <20190727060221.17084-1-ynezz@true.cz>
 <CAECwjAiv1OOwq5dMx6CyoS_evj5jd6rO8AD-J03guuiuFxa08g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAiv1OOwq5dMx6CyoS_evj5jd6rO8AD-J03guuiuFxa08g@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_235114_055583_E34C79DD 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] scripts/ubinize-image.sh: fix buildbot
 breakage
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

Yousong Zhou <yszhou4tech@gmail.com> [2019-07-27 15:03:48]:

> The change will have endian issue.

Indeed, thanks for spotting this.

>   od -A n -N 2 -t x1 a | tr -d ' '

Converted it to your version.

> On target system by default we have hexdump but no od.  Maybe we
> should revise the docker image to also include hexdump.

I'm with Jow here, as I think, that it's not worth the hassle, especially as
it's just sole user of hexdump, we would need to add hexdump as explicit
dependency to README/wiki etc. as well.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
