Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28597B32D
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 21:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxIXt2NtAByZwRhW/ntNJatHlW0dQqcE1VXIywGRMQU=; b=kuyaU1B0zRXxhI
	8T3vgxeZ07M9f4XEbZONxAAfqqlVPIJw9xSvkkFEDcdtNp8g0frRr/jwO9/ouOwcsRlk5DVTxlvi1
	jN4SVKbwmhnu4BERDNyjgj6NOs6rZM7ByPTsr/VGrVhslgqmmr226is2UBb9P5kK48alyH3Y7E7u9
	pBXPOzGAfVhfG84knjykhiN4ypsvqm9nnNdEn6x/JES16Lx8WsDjJ6PFzqWz/KX0T9tCNHdewGHN8
	k08sDhI/a1mBL7jvkhV+rBV8mQf/Og+KxZtr/1dd6BUxT2A1y58EU1rU0ePjBs/FNB1l+rPiMA9AH
	q+XTbHXuiPhBi5IzzGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsXhg-0002Mr-SR; Tue, 30 Jul 2019 19:22:32 +0000
Received: from l5m.de ([2001:1608:34:1001::160])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsXhW-0002H8-Pf
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 19:22:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by l5m.de (Postfix) with ESMTP id CDC13107CA8;
 Tue, 30 Jul 2019 21:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 andreas-ziegler.de; h=content-transfer-encoding:content-language
 :content-type:content-type:in-reply-to:mime-version:date:date
 :message-id:from:from:references:subject:subject:received
 :received; s=default; t=1564514518; bh=c0t/IB38JEpCIgE4tFG74LqGe
 y3RQX608cWWNJJK3ys=; b=HixowJqWblP/j8G1R+A4oADtTj6j+R5Ee7geysMW7
 MkPodYDLsMhYTmY/E9bLDytgdr+JomT1EYMQDdyp3fUM9IL1QI8N4ZphKAF30ri2
 IQpglz1g93BN5hwvpOxl9CgWz39ierMUEFZmUo9EiLoKyF2LpEFL1kaG84Bmf2Io
 6A=
X-Virus-Scanned: Debian amavisd-new at l5m.de
Received: from l5m.de ([127.0.0.1])
 by localhost (l5m.de [127.0.0.1]) (amavisd-new, port 10024) with ESMTP
 id cZ2EwYIimVGY; Tue, 30 Jul 2019 21:21:58 +0200 (CEST)
Received: from [IPv6:2a01:c22:763a:7800:1069:923a:9cc1:c4d3] (unknown
 [IPv6:2a01:c22:763a:7800:1069:923a:9cc1:c4d3])
 by l5m.de (Postfix) with ESMTPSA id EEE38107CA0;
 Tue, 30 Jul 2019 21:21:57 +0200 (CEST)
To: Dmitry Tunin <hanipouspilot@gmail.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>, OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
From: Andreas Ziegler <ml@andreas-ziegler.de>
Message-ID: <2ae7cdad-254f-cb01-1474-8cbeff73638b@andreas-ziegler.de>
Date: Tue, 30 Jul 2019 21:21:55 +0200
MIME-Version: 1.0
In-Reply-To: <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_122223_188091_BC5CD710 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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


Dmitry Tunin schrieb am 30.07.19 um 14:29:
> Are you taking in account that many devices added during the last year
> as ath79 won't be supported by a stable release.
> Master is no good now for normal use. That will mean that for the next
> year or so many users will require custom 19.07 builds.
> That doesn't sound very good.
> 
> Initially ath79 was expected in 19.07, but it appeared that not all
> devices have been ported from ar71xx. So we are not ready to drop
> ar71xx, but we are ready to support ath79.

to me, this is the only big negative thing here.
everyone was told, that new devices have to go into ath79 - and now we
will have a new release, lacking binaries for many many new devices
because new device support in ar71xx was not welcome.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
