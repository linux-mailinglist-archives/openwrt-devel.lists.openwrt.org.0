Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BF239ED8
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 13:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1o9eWYOcLeAOrBpVIZqYfbtVKQwd5LFaCgk0ViebVQ8=; b=I475hMN34pyCNu
	dMaWhceZHINtlBdBksMFOtWjrQGaiFB1BH7O5sGKe691j2l8PrETNpJkzeJzWEwLzwsJXeefMtcOi
	y4qYdkBASjHMEKsI8+AzPcQy+s+VgBdVCPuO+2zMfAbQD/WsBz7cnX4eS2DJzs5aPrndHenRgztSZ
	nySpXaRINFy/qkv0C6A9twtw87o6EXtAZG6Fx3wJgOR5KE5RGituJBpAAJulxj8osyW7afozf7CHR
	4GtkaJQ8LufkdYBLYHz91/AH4yUv2hn4yWzQ9Z7nFd3BnCLWxP7+EU9vhDMTVKpk4LqzMDPL6a1Zb
	kzujO0Z2bhq+tr4/wNVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZte-0004up-Un; Sat, 08 Jun 2019 11:52:31 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZtW-0004u6-Kd
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 11:52:24 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <daniel@makrotopia.org>)
 id 1hZZtO-0007F8-Sa; Sat, 08 Jun 2019 13:52:15 +0200
Date: Sat, 8 Jun 2019 13:51:59 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <20190608115159.GA1559@makrotopia.org>
References: <5316c6da-1966-4896-6f4d-8120d9f1ff6e@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5316c6da-1966-4896-6f4d-8120d9f1ff6e@pobox.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_045222_672498_68E2E4F8 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Using ethtool or swconfig to change link
 settings for mt7620a?
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
Cc: Vitaly Chekryzhev <13hakta@gmail.com>, netdev@vger.kernel.org,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Daniel,

On Sat, Jun 08, 2019 at 04:06:54AM -0500, Daniel Santos wrote:
> Hello,
> =

> I need to change auto-negotiate, speed and duplex for a port on my
> mt7620a-based device, but I'm not quite certain that I understand the
> structure here.=A0 When using ethtool on eth0 I always get ENODEV,
> apparently because priv->phy_dev is always NULL in fe_get_link_ksettings
> of drivers/net/ethernet/mtk/ethtool.c.=A0 But I'm being told that eth0 is
> only an internal device between the =B5C and the switch hardware, so it
> isn't even the one I need to change.

That's correct.

> If this is true, then it looks like I will need to implement a
> get_port_link function for struct switch_dev_ops?=A0 Can anybody confirm
> this to be the case?=A0 Also, are there any examples aside from the
> Broadcom drivers?=A0 I have the mt7620 programmer's guide and it specifies
> the registers I need to change.

Currently MT7620 still uses our legacy swconfig switch driver, which
also doesn't support setting autoneg, speed and duplex. However, rather
than implementing it there, it'd be great to add support for the FE-
version of the MT7530 swtich found in the MT7620(A/N) WiSoC to the now
upstream DSA driver[1]. While this driver was originally intended for
use with standalone MT7530 GE switch chip or the ARM-based MT7623 SoC,
the same switch fabric is also implemented in MT7621 and support for
that chip was added to the driver recently[2]. MT7620 basically also
features the same switch internally, however, it comes with only one
CPU port, supports only FastEthernet and lacks some of the management
counters.

Assuming your MT7620 datasheet includes the decription of the MT7530
switch registers, it'd be great if you can help working on supporting
MT7620 in the DSA driver as well -- gaining per-port ethtool support
as a reward :)


Cheers


Daniel


[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/drivers/net/dsa/mt7530.c
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/?id=3Dddda1ac116c852bb969541ed53cffef7255c4961

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
