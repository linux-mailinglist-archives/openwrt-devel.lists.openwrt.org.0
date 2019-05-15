Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D91F58B
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 15:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qM46WoodauhjvcH9JkWrMyQHjhAFd9uF4Ah92Bho6DI=; b=Q8tqAwrEY1/Uer0sLM9a02rNu4
	EYeFRS+raqt4qbHPDbGiaDgmbRj6I0M5q/IgHujTaxs7Zw7p2q9JjeA/e4EPQ2NzeIXH7Krzw/i5b
	1iIKOhaLqrTyPMz+KiSRKT9iVLfOpO808bdpQY4m5dVYkW9+Hd8UT3PJBqHJwf6dQtPokNZq+9MZa
	iSri1H5zODscH6nrXVN8fT7Dwq1Bqmid1C2YzRPcn4Ax1x1Krckrq4qjXURIglOwWPBdqerSTmnl3
	Mf9EO1hKALZ6G1SXobuN4/Q03UdsXpK1oQ68raZqyJLAdMeLm0mlCf9enO8eZhX2CZznZUgOIS422
	XW/aesbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQttT-00065R-An; Wed, 15 May 2019 13:24:27 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQttM-00064t-Am
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 13:24:21 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FDODVR033668
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 15:24:13 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CC83830C8;
 Wed, 15 May 2019 15:24:10 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8fe2edc6;
 Wed, 15 May 2019 15:24:09 +0200 (CEST)
Date: Wed, 15 May 2019 15:24:09 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20190515132409.GB30259@meh.true.cz>
References: <20190502173327.23285-1-jeffery.to@gmail.com>
 <20190503093959.GG346@meh.true.cz>
 <CAJXyS=gLNzkQ4aMavWd6adrS0OiKWU-uwTMxu3bEoUztRWD2PQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJXyS=gLNzkQ4aMavWd6adrS0OiKWU-uwTMxu3bEoUztRWD2PQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_062420_684660_345C09ED 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix STAGING_DIR cleaning when
 filenames contain spaces
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Jeffery To <jeffery.to@gmail.com> [2019-05-15 19:03:16]:

> I finally remembered, I copied this syntax from
> package/network/services/openvpn/files/openvpn.init[3]:
> 
> LIST_SEP="
> "

it just looks weird as well.

> If you prefer, I can change this to use ksh93 syntax[5]:
> 
> IFS=$'\n'

indeed, I like this a lot more, and 

 IFS="$(printf '\n\t')"

from that TLDP page you've linked looks good as well, seems even more readable
to me. Anyway, I'll leave the decision up to you, both are fine with me.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
