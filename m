Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF736EB096
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 13:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yYQFiGauMN2HTl2d8dbS8fQJfOTZ26Swal3mQ+/g81E=; b=ogJcr18czbM32k6gCFqyLuDAm2
	Y9e+c0QK5JwM+CV33wNByvUcdOfRGiEvbuvuiDon79bC45J4Ngx3rU4PAm5A029TqZVXfHw7VnOVs
	LeYUTCX7SbLIBEGQ4A2b6LnLn+ySDICMCbb5vpI1FbI5ijuQB5KkpYqKlPsgnJfNkMgR14VVzwMPD
	oGVEa1eRv+I0AlCmXsBxOq5QZuQZJMvwlqhbUAP+8ah/1WjQkHvkZozJ46bJfRp8jmvpfmvKmDWrW
	rCl0QU6E22FLx+mnXoGRWEJN3cDGARRQ8BB6gMHv0J7CZZlg6jVkVthuebBmp4slwJJHYZvttZii4
	eB0aIy2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9uP-0007Ce-1T; Thu, 31 Oct 2019 12:50:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9uE-0007CF-6b
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 12:50:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B6E3E3FA9;
 Thu, 31 Oct 2019 13:50:23 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d7d9f990;
 Thu, 31 Oct 2019 13:50:13 +0100 (CET)
Date: Thu, 31 Oct 2019 13:50:22 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Ben Greear <greearb@candelatech.com>
Message-ID: <20191031125022.GA30865@meh.true.cz>
References: <fa883a60-0d29-5cb9-7b54-3cab5485ec84@candelatech.com>
 <20191029061412.GF22393@meh.true.cz>
 <7364b927-20ae-1f46-2151-4a0266cd5463@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7364b927-20ae-1f46-2151-4a0266cd5463@candelatech.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_055026_394154_5BD24BE7 
X-CRM114-Status: UNSURE (   8.10  )
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
Subject: Re: [OpenWrt-Devel] Any interest in a 'ct' iperf3?
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

Ben Greear <greearb@candelatech.com> [2019-10-29 06:23:52]:

> The original SO_BINDTODEVICE patches were offered upstream
> and there is no interest.

It seems like there's finally some interest[1] and you do a good job over there.

> My recent changes would need rebasing to clean them up before upstreaming,
> and I am not going to spend any serious time on that since I'd still have to
> run my own tree to get the SO_BINDTODEVICE patches and anything else not
> accepted upstream.

I think, that there's no need for iperf3-ct package.  In general, I would like
to move iperf3 to package feeds, where I think it belongs[2].

I assume, that nobody is going to object against any additional upstreamable
patches on top of iperf3 package if they provide widely useful
features/improvements and fixes. It should be enough to just put relevant link
to the upstream PR/patchwork/mailinglist to get them included.

1. https://github.com/esnet/iperf/pull/817
2. http://lists.infradead.org/pipermail/openwrt-devel/2019-August/018399.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
