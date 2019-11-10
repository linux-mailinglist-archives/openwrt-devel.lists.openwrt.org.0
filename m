Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CD5F6809
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 Nov 2019 10:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=69CGte09x1Ymjw1SiC+jSWvGErYfbpvi/Q6fK1ASPlA=; b=dltq755fMhPHU/zwuLB7Bt0G+V
	5oxhLonC95XvbOU4PMT/566t7vu0q1cIohhGFT0xuIOhjesi5LxM6ZymmhzJkLXwBpV//y9OK7Osg
	AI5SU/Iq524xwrggZtA/hSZArH6Jmd4HSMzRWwMip9RiGiVEceum6pKX3Qr9fqCu7gqFOAHHjpQUA
	ygRGyZBio9tZwXCBjhRL9XWAup1d7Ebtn87dsHa01p7huVbnUV2AiA9sY5jKpYbqC+UYJ78j9sIUd
	KFYoxPArN2A+nnwfsB4nP8o/oQU2Nhqbs4GTVSSqwcdUpLvMc3lNqeDSSpEPu4oxU2MX1kYAXemDL
	G44yPjUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTj8a-0005Wm-HO; Sun, 10 Nov 2019 09:04:00 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTj8T-0005Va-RX
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 09:03:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 84F6755A7;
 Sun, 10 Nov 2019 10:03:48 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5b167799;
 Sun, 10 Nov 2019 10:03:38 +0100 (CET)
Date: Sun, 10 Nov 2019 10:03:38 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jonas Gorski <jonas.gorski@gmail.com>
Message-ID: <20191110090338.GA23168@meh.true.cz>
References: <20191109125521.11981-1-ynezz@true.cz>
 <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOiHx=kDmjTAqgMW1W58-RUStCHvnHOwgM3s92Ooee3CZGSZGg@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_010354_044457_D570AF75 
X-CRM114-Status: UNSURE (   5.93  )
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
Subject: Re: [OpenWrt-Devel] [PATCH maintainer-tools] patchwork-apply.sh:
 help spotting DMARC mangled patches
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

Jonas Gorski <jonas.gorski@gmail.com> [2019-11-09 18:43:04]:

Hi,

> This DMARC thing is nothing the submitter can fix unless they run
> their own mail server. 

I think, that there are some working free email alternatives, one can go pull
request route...

> A better place would be a git hook on our server rejecting any commits
> with it (like we already have for missing SOB).

Indeed, that was my initial idea, but I couldn't find the source code for that
part, so decided to spark some discussion with this patch first.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
