Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62D1100387
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 12:07:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=25hWXXSOPlKlIwPJxACj1GGDlR7oxLVUCjS5GVFfx/E=; b=PGNuyXls2UTggnNlwnkxp0LVvp
	IMmP9jMOh+pNBLywR5N+IytuFy/JPQwdtMNWhdLdvkLlDx8jR+Jle7PaM82wbq8fMD3O6ZjUdsX7V
	3by+rM2A+7iewWBDsGsvwCdwYqOGdr7o7cY8lU4JpRd9YjvYqdFQvP2BIrD13S76+OPijZn0ZyZqp
	OaBjVOVKt3AE70HzzKGukXX4Tbz+FpF9MZ16XQAEMisjhcN3uJxKbkVo6J3h2DTudMt3Mi0jxRjO8
	5QOi6rFT2/K3NMzXUa1y3MrFmkat+COrMa+PnosF9PTDX9lBQip/BWR5ldc6PekV0CZClMpy+Jam6
	xZS0wisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWesY-0002nE-Kj; Mon, 18 Nov 2019 11:07:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWesT-0002mK-7Z
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 11:07:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A02B24EA4;
 Mon, 18 Nov 2019 12:07:26 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d59be9a4;
 Mon, 18 Nov 2019 12:07:16 +0100 (CET)
Date: Mon, 18 Nov 2019 12:07:16 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Joe Ayers <joe@ayerscasa.com>
Message-ID: <20191118110716.GB19872@meh.true.cz>
References: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030729_428373_C8FD5CD6 
X-CRM114-Status: UNSURE (   6.97  )
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
Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
 entries
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
Cc: Andrew Cameron <apcameron@softhome.net>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Joe Ayers <joe@ayerscasa.com> [2019-11-16 15:37:28]:

Hi,

> On nanostation-m-xw ath79 target in master and 19.07,
> "/sys/devices/pci0000:00"  does not exist.  Unable to access vendor
> and device IDs, and no longer reported in "iwinfo <dev> info"
> 
> This is working on ath79 for 'nanostation-m'.   I'm guessing the pcie
> entry in dts needs more definition on the nanostation-m-xw?

I don't own the device, so you either need to `git bisect` the problem down or
at least start reverting kernel/mac80211 and find out which commit broke it.
Ot at least provide last working Git hash for you.

It would be better to create a bug report on bugs.openwrt.org, attach your
.config (if you've custom image) and full dmesg as well.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
