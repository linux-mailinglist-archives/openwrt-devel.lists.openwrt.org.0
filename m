Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B312F144AD3
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 05:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zws8mwS8jYqEirG4++bNcR6twQ0SO/l+JNXV7yQAH8M=; b=hCHqNjmUW4N6EC
	ix025Lv66Bl+1yeqkYbBixLj6Q4Z2HWf+Jy8WFcA5cAq45ln7z595lUDf4FjBu3gUjhXj7y3BxesF
	9lhBnqRydyRrErf+kFMDn4ZdD/C9Zs+htefJ7s5MkZaiNdihZLzLc1683s4kcdWVKcnR6KnwdawOA
	ho11Iqu1Wmn+MiSYVpThqv+5Y92bcNVIXK00opqc8Al9cA5yrs4TFezj9Av2DBJftrVNZQJx+eY//
	sGF8il0yC+gE8k9pDDBzzk9dgKMJKBvDRfsOE2KBDC90RRNC4vZ1hBmaEtH02W4fG8mj3icL3aZ/e
	BhimKo77UMWgJpPAhQRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu7in-0005dy-40; Wed, 22 Jan 2020 04:34:29 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu7ii-0005dZ-O9
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 04:34:26 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iu7id-0005p7-4e; Wed, 22 Jan 2020 05:34:19 +0100
Date: Wed, 22 Jan 2020 06:34:06 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Mathias Kresin <dev@kresin.me>
Message-ID: <20200122043406.GA1406@makrotopia.org>
References: <20200121181933.GA34748@makrotopia.org>
 <87blqwirf9.fsf@miraculix.mork.no>
 <20200121192200.GB34748@makrotopia.org>
 <a65b54c4-8d6a-25f4-0d0c-96c9f3fc93ae@kresin.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a65b54c4-8d6a-25f4-0d0c-96c9f3fc93ae@kresin.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_203424_781126_074AEC99 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] hostapd and Linux bridges
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
Cc: openwrt-devel@lists.openwrt.org,
 =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jan 21, 2020 at 11:34:22PM +0100, Mathias Kresin wrote:
> 21/01/2020 20:22, Daniel Golle:
> > On Tue, Jan 21, 2020 at 07:40:42PM +0100, Bj=F8rn Mork wrote:
> > > Daniel Golle <daniel@makrotopia.org> writes:
> > > =

> > > > On proprietary APs it looks like port isolation is enabled or disab=
led
> > > > globally in Linux' bridge code using sysctl or other methods, an
> > > > approach which is unlikely to get accepted into the Kernel, also gi=
ven
> > > > that the netlink interface already exists and allows doing the same
> > > > thing in a more granular fashion.
> > > =

> > > Huh?
> > > =

> > > Won't this sysfs attribute set the same flag IFLA_BRPORT_ISOLATED set=
s?
> > > =

> > > =

> > > root@wrt1900ac-1:~# grep . /sys/class/net/br-lan/brif/*/isolated
> > > /sys/class/net/br-lan/brif/eth0.7/isolated:0
> > > /sys/class/net/br-lan/brif/wlan0/isolated:0
> > > /sys/class/net/br-lan/brif/wlan1/isolated:0
> > =

> > Looks like that's the thing I may have missed ;)
> > Yet we do need a way to set this to '1' once hostapd adds the AP
> > interface to the bridge. I'm not sure whether setting this via
> > sysfs is actually more simple than using netlink given that some
> > general purpose netlink code is already part of hostap.
> > In the end, either approach would be fine with me and I would
> > implement whatever is more likely to be merged into hostap.git.
> =

> netifd is able to set bridge client isolation via sysfs since commit
> c06f84238952211b35c2940a82fcce3fcc3221c1.
> =

> /etc/config/wireless as expected:
> =

> config wifi-iface
> 	option device 'radio1'
> 	option ifname 'wlan_guest_leg'
> 	option network 'guest'
> 	option isolate '1'
> =

> config wifi-iface
> 	option device 'radio0'
> 	option ifname 'wlan_guest'
> 	option network 'guest'
> 	option isolate '1
> =

> The isolation option in /etc/config/network does the trick:
> =

> config interface 'guest'
> 	option type 'bridge'
> 	option proto 'static'
> =

> config device 'wlan_guest'
> 	option isolate '1'
> =

> config device 'wlan_guest_leg'
> 	option isolate '1'
> =

> =

> Of course, bridge client isolation isn't limited to wireless interface.

Nice one, this is exactly what I was looking for.
Maybe we should document this somewhere...

> =

> I'm not yet sure, whether you are looking for something like that or an
> automatic bridge client isolation as soon as wireless client isolation is
> enabled.
> =

> Albeit something automatic would be nice, there might be a use case were =
you
> want to have wireless client isolation but no bridge client isolation.

I believe it should be the default in case wireless client isolation
is enabled. Users may then still use the above syntax in
/etc/config/network to explicitely disable it.


Thanks a lot for the hint!


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
