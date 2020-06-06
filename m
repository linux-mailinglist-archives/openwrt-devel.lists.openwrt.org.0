Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681CF1F0540
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 07:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7kk10E+OsQswFqcLyK+sCDqdLmlgSKIFKoIRR6XmPFw=; b=uf+ikAbYS1lFGf1D+D48p8tKca
	Hivt1PabH5S2j3BsNxzMVwYGSvmnzHMDMuy/fd4peCoOCg7FXZxKCpek+JUnW4/k09Gj1QZgJ1JZ1
	Ied5JqyZR2g8Am56/AnQe1Z7GCGj6woPWKhDWtu0IJ4jawqc3OY07anexrTUuuNdbm8Ew486cEPoD
	VhAJzS52DPoiXsUWLLKLEZJWHYclJjhJmnXpiLYdGI2kjqnrAKfl1PZnZSPygtblkRWaMPdioQW5F
	gJQUUYSwmYHIQwqOY5QO8vUXDQLezetYB+Eoc1NkEY4CA8wk/65Bh+zeDbFu2N6IRIR0+iKNWU2uG
	RtxgS5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhRGr-0001nN-G7; Sat, 06 Jun 2020 05:21:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhRGk-0001mp-3N
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 05:21:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C907618564;
 Sat,  6 Jun 2020 07:21:18 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id db2dc1c9;
 Sat, 6 Jun 2020 07:21:02 +0200 (CEST)
Date: Sat, 6 Jun 2020 07:21:16 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Bailey <danielb@meshplusplus.com>
Message-ID: <20200606052116.GA17315@meh.true.cz>
References: <CABzx=O0AbY5mRN0NiPHdr36OyEGduczpzDrYXfehCkTvMKRvqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABzx=O0AbY5mRN0NiPHdr36OyEGduczpzDrYXfehCkTvMKRvqQ@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_222122_292310_7AA5FB47 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] procd: add service instance watchdog
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Bailey <danielb@meshplusplus.com> [2020-05-29 18:32:55]:

Hi,

BTW I'm not going to apply this, see my reasoning in the other thread[1], just
reviewing this from the patch content perspective:

1. http://lists.infradead.org/pipermail/openwrt-devel/2020-May/023393.html

> + if (in->watchdog.mode != INSTANCE_WATCHDOG_MODE_DISABLED) {
> + uloop_timeout_set(&in->watchdog.timeout, in->watchdog.freq * 1000);
> + DEBUG(2, "Started instance %s::%s watchdog timer : timeout = %d\n",
> in->srv->name, in->name, in->watchdog.freq);
> + }

This looks like a weird indent, you should follow surrounding code formatting.
I wanted to double check this in my tree, but your patch doesn't apply:

 $ curl https://patchwork.ozlabs.org/series/180315/mbox/ | git am

 Applying: procd: add service instance watchdog
 error: patch fragment without header at line 13: @@ -797,6 +864,7 @@ static struct ubus_method main_object_methods[] = {
 Patch failed at 0001 procd: add service instance watchdog

> + // TODO(danielb): change mode integers to strings (0 = disabled, 1 =
> passive, 2 = active)

Either implement it or remove the TODO comment.

> + // TODO(danielb): change mode from u32 to string (0 = disabled, 1 =
> passive, 2 = active)

Ditto.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
