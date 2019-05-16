Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5BE21032
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 23:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX4TUK6r8cw0/oKnHdfWrmoEhhWiNgM/mFINRrPBj3M=; b=ARR8MC4R1zIFrF
	YyFVdE+5B+hOq+yaLF72CVPh0gkOAqFH4c7+LYzY7OS+15MnLAOz69t0HisBgUCWLWl9S4Ofa1e/R
	yXfg7jbxeHM1E1/CDbixHn8/fdlE5Z13SAcRLIvCTV3X/mIZvY36nKjwvEbW4PbMlF1AOwwapaFYC
	ugtSKr0MY6pDS8IWfWyJcyY8szVU5CxkAn71oOt/IVyNEUNa+Vn5l/BGZ5ciQqwG4TPXBUBVi/Zzc
	6CPrxUF+WuUBMB7AVX2M7RTgZZU85xBKSi4syFnWN9Hnw2ptkxFAKCe1Bn7+v58RyouWJ7E5tb67l
	qHserpoZM08eCEMLIsnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRO8d-0001d3-Hf; Thu, 16 May 2019 21:42:07 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRO8X-0001ck-2s
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 21:42:02 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPS id B0D7963DE6;
 Thu, 16 May 2019 23:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1558042917; bh=GjlCZnvD64PjXChjdrxJcjgkIDl5t+LBvHgJYqE9sB4=;
 h=Date:From:To;
 b=GpQUXw0yNOwBT/oQGkq+tVzWiUZ/wkohMvnJ7mXjhjwUlAoT3pfFru8NVyKR0kAex
 Hiz2sIyTYuT/PCq6cCco1+NDgrZWuoLe1bG9I70ms9T2DLVT++bIF740rCgLSBH02Y
 E+dJPMAI2nKsZje0h2vr4rLGTuChIP4SJn++WxvA=
Date: Thu, 16 May 2019 23:41:57 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190516234157.68c7a78f@nic.cz>
In-Reply-To: <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl>
References: <20190516183828.15647-1-marek.behun@nic.cz>
 <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_144201_437239_7E71E6F8 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Add support for kernel 4.19
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Jeremiah McConnell <miah@miah.com>,
 openwrt-devel@lists.openwrt.org, Marko Ratkaj <marko.ratkaj@sartura.hr>,
 Michael Gray <michael.gray@lantisproject.com>,
 DUPONCHEEL =?UTF-8?B?U8OpYmFzdGllbg==?= <sebastien.duponcheel@corp.ovh.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Ryan Mounce <ryan@mounce.com.au>, Russell King <rmk+kernel@armlinux.org.uk>,
 Rosen Penev <rosenp@gmail.com>, Stijn Segers <foss@volatilesystems.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Imre Kaloz <kaloz@openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 16 May 2019 22:35:35 +0200
Tomasz Maciej Nowak <tomek_n@o2.pl> wrote:

> What I would like to ask is if You've had also link training issues with PCIe port
> and particular Atheros/Qualcomm (AR3890, QCA9890) wifi cards on Turris MOX? Which we
> work around with these patches:
> 527-PCI-aardvark-allow-to-specify-link-capability.patch
> 528-arm64-dts-armada-3720-espressobin-set-max-link-to-ge.patch
> Or do You use different chip vendors?

Hi Tomasz,

yes, the problematic chipsets are 9880 and 9890. Forcing link to PCIe
1.0 did not help on Turris Mox.
After weeks of playing with the card I discovered that it could be
solved by tweaking the length of the PERST signal (reset-gpios) in the
aardvark driver. This is how I made it work on 4.14 on Turris Mox. On
4.19 it is not needed, but with the new patches by Miquel Raynal which
will be in kernel 5.2 or 5.3 (adding support for suspend/resume) this
again breaks, because the PERST signal is manipulated differently. I
did not solve this issue, but I think it will again be done via the
PERST signal.

Marek

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
