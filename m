Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C63144500
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 20:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGDX/Rr8KPRFGJql+moq98yD9WjZpRpUfCCZekj69V0=; b=UeRmtDzIanjPZ+
	h6Uz7tZgJfF7+JI9Bw3yB+w+Dmz8O26QDq806S+w3BBumYOs/zkpd+ZWyKfI5aKyDudF9A/g1rtCA
	h0e7pYegPErFAbp7MzP2lYrYwHUR7RIBNKQeiV7FUX6O2qA1t/SSp070mYLCFdfX/7gvvkIhJyILX
	a8dnzZWvT+wdivVcAUwHZSkEAuaj8J2/KvzcoUpXrFMiGLdEI20xlbYrMlysWYx7sgzTiTChAKRhI
	IH+TiU9eJsG4yM9hm+EJvm7DkwbPfSOL22SiX5eFCsbLeEHZvnv1JxEvomjsmpgjfs/tlvjJv1k1D
	Y+9lE5GduuPoXIWNyeBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itz6u-0004H1-Pu; Tue, 21 Jan 2020 19:22:48 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itz6M-00044m-9z
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 19:22:20 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1itz6J-0004VM-Ii; Tue, 21 Jan 2020 20:22:12 +0100
Date: Tue, 21 Jan 2020 21:22:00 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Message-ID: <20200121192200.GB34748@makrotopia.org>
References: <20200121181933.GA34748@makrotopia.org>
 <87blqwirf9.fsf@miraculix.mork.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blqwirf9.fsf@miraculix.mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_112214_417588_A2D99688 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jan 21, 2020 at 07:40:42PM +0100, Bj=F8rn Mork wrote:
> Daniel Golle <daniel@makrotopia.org> writes:
> =

> > On proprietary APs it looks like port isolation is enabled or disabled
> > globally in Linux' bridge code using sysctl or other methods, an
> > approach which is unlikely to get accepted into the Kernel, also given
> > that the netlink interface already exists and allows doing the same
> > thing in a more granular fashion.
> =

> Huh?
> =

> Won't this sysfs attribute set the same flag IFLA_BRPORT_ISOLATED sets?
> =

> =

> root@wrt1900ac-1:~# grep . /sys/class/net/br-lan/brif/*/isolated =

> /sys/class/net/br-lan/brif/eth0.7/isolated:0
> /sys/class/net/br-lan/brif/wlan0/isolated:0
> /sys/class/net/br-lan/brif/wlan1/isolated:0

Looks like that's the thing I may have missed ;)
Yet we do need a way to set this to '1' once hostapd adds the AP
interface to the bridge. I'm not sure whether setting this via
sysfs is actually more simple than using netlink given that some
general purpose netlink code is already part of hostap.
In the end, either approach would be fine with me and I would
implement whatever is more likely to be merged into hostap.git.


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
