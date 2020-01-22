Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4487145015
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 10:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUNN4LWSs3eEVmKDPZuGS6AMUJ+VGN+f5b3pBvkpBf0=; b=j2I8C9klthJ156
	Ppol20BqR0B7HKTsTiNm7mVKmNTLf8uOPJ42wt7jrlcZu4vujmZ4bidy3f+MUPPvimKcBACErB1gt
	i7IghOr3qbcr1HhQHSgE2UmdwSFGDNCyt+C1+aQIr7ZT23ibsHZR9rEwwiN3ceYw5KWR+g46zXaqR
	himLw7qv7TdyRzOw6j8VMbvmI40h6Hf/hyLzyZD2bV+YbSX0wUX8fzL+DavtWfj2hJHHA4aSBDTwS
	XyM6t56A+wfmIFOgfgk7CgumDDOjiP3rLgRDf4USAHYCW7AQgVFUO+oGNIPvXq4w5w5c3XDxISBad
	1G3p4i8wxA1NaC51nmBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCYA-0004fK-Kk; Wed, 22 Jan 2020 09:43:50 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCY1-0004eh-8o
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 09:43:42 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iuCXz-0006Xi-A7; Wed, 22 Jan 2020 10:43:39 +0100
Date: Wed, 22 Jan 2020 11:43:35 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Mathias Kresin <dev@kresin.me>
Message-ID: <20200122094335.GD1406@makrotopia.org>
References: <20200121181933.GA34748@makrotopia.org>
 <87blqwirf9.fsf@miraculix.mork.no>
 <20200121192200.GB34748@makrotopia.org>
 <a65b54c4-8d6a-25f4-0d0c-96c9f3fc93ae@kresin.me>
 <20200122043406.GA1406@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122043406.GA1406@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_014341_311739_FAD649F6 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Jan 22, 2020 at 06:34:06AM +0200, Daniel Golle wrote:
> On Tue, Jan 21, 2020 at 11:34:22PM +0100, Mathias Kresin wrote:
> > 21/01/2020 20:22, Daniel Golle:
> > > On Tue, Jan 21, 2020 at 07:40:42PM +0100, Bj=F8rn Mork wrote:
> > > > Daniel Golle <daniel@makrotopia.org> writes:
> > > > =

> > > > > On proprietary APs it looks like port isolation is enabled or dis=
abled
> > > > > globally in Linux' bridge code using sysctl or other methods, an
> > > > > approach which is unlikely to get accepted into the Kernel, also =
given
> > > > > that the netlink interface already exists and allows doing the sa=
me
> > > > > thing in a more granular fashion.
> > > > =

> > > > Huh?
> > > > =

> > > > Won't this sysfs attribute set the same flag IFLA_BRPORT_ISOLATED s=
ets?
> > > > =

> > > > =

> > > > root@wrt1900ac-1:~# grep . /sys/class/net/br-lan/brif/*/isolated
> > > > /sys/class/net/br-lan/brif/eth0.7/isolated:0
> > > > /sys/class/net/br-lan/brif/wlan0/isolated:0
> > > > /sys/class/net/br-lan/brif/wlan1/isolated:0
> > > =

> > > Looks like that's the thing I may have missed ;)
> > > Yet we do need a way to set this to '1' once hostapd adds the AP
> > > interface to the bridge. I'm not sure whether setting this via
> > > sysfs is actually more simple than using netlink given that some
> > > general purpose netlink code is already part of hostap.
> > > In the end, either approach would be fine with me and I would
> > > implement whatever is more likely to be merged into hostap.git.
> > =

> > netifd is able to set bridge client isolation via sysfs since commit
> > c06f84238952211b35c2940a82fcce3fcc3221c1.
> > =

> > /etc/config/wireless as expected:
> > =

> > config wifi-iface
> > 	option device 'radio1'
> > 	option ifname 'wlan_guest_leg'
> > 	option network 'guest'
> > 	option isolate '1'
> > =

> > config wifi-iface
> > 	option device 'radio0'
> > 	option ifname 'wlan_guest'
> > 	option network 'guest'
> > 	option isolate '1
> > =

> > The isolation option in /etc/config/network does the trick:
> > =

> > config interface 'guest'
> > 	option type 'bridge'
> > 	option proto 'static'
> > =

> > config device 'wlan_guest'
> > 	option isolate '1'
> > =

> > config device 'wlan_guest_leg'
> > 	option isolate '1'
> > =

> > =

> > Of course, bridge client isolation isn't limited to wireless interface.

What about wlan0.sta1 and such created by AP-WDS? Is there a way to catch
all or set a bridge-wide default?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
