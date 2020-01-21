Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB81437DE
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 08:49:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iRO2+h/rB83dvkK8TcgQlX2/QHEj4YT/awODSZVzeNA=; b=oEKXZK5qxsr6y02dntGts1Stkj
	55fAzRr19jb+ZR30wt9F56s3TerBMDh/2vLzimvlNHaHMTEwven8tWEBR7wRavbS80itHltyCLcXH
	on+MygnQZBdsdT/zpw3r+4srJzyPCuM0fW+wjgO6BRIbJsUhCDmu7GMNl5IMwI2mXaOfBGhbGGcS5
	TDAFQ2YwgRo+y9AE9WdCd2+B5/uXy9PW9Zy8gOxmL4wnsp32USGwHrXQCOTYlWVdIsVMrBIhkJJtQ
	2xeUnsKh4BeXVEDp6Dh97LE6djfLi6ZDgiCwDGNiwOIuKMi694PZDrNT5WyvtYRUAo845UC0D4yPy
	/IdcrFSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itoHg-0006QY-AY; Tue, 21 Jan 2020 07:49:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itoHU-0006Ou-Lz
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 07:49:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B763149DE;
 Tue, 21 Jan 2020 08:48:57 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 389cacf7;
 Tue, 21 Jan 2020 08:48:47 +0100 (CET)
Date: Tue, 21 Jan 2020 08:48:47 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: mail@adrianschmutzler.de
Message-ID: <20200121074847.GI69327@meh.true.cz>
References: <20200120194024.25841-1-ynezz@true.cz>
 <00d101d5cfe9$126a1790$373e46b0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00d101d5cfe9$126a1790$373e46b0$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_234900_869718_CED4F0ED 
X-CRM114-Status: UNSURE (   4.78  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
 sysupgrade from master
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

mail@adrianschmutzler.de <mail@adrianschmutzler.de> [2020-01-21 00:26:41]:

Hi,

> Note that I changed somewhat between 100 and 150 devices when reorganizing
> board names in ramips between master and 19.07.

and I thank you for that, it names makes more sense now.

> So, unless you have a specific reason to deal with this particular device,

It's one of my testing devices, and I sometimes check master -> 19.07 -> master
sysupgrade, to probe different codepaths and to check, that the upgrade to the
next release still works.

Thanks for review.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
