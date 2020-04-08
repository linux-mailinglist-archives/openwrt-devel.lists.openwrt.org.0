Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B941A2AC8
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 23:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5vIzn1gqarue7R6bikuFTo08wzeNAXHHDCoMP7dY/Ew=; b=ngNNpqvZgEI47H
	g0Ed6Yr2JY/KONbFIJ1vX4OhDRPXCJM7ry1tiuO3uHA1gf45drJTtDb463HlBv957kjQbThd6D/vE
	gtN/6T8D4fSUF6ehnekvQVdkE4SF/67yRaQYKbdZI7wq+ck38Eryd4Q6Ve0GqGZgpCODH9ggliakO
	/a6hnWxiTxzz491rSdCoh2aMqI2sDFtBtu1mHgaEElTY9cr3Le8pEUhwPRP0Qs/WRhB4lXEPPCfAV
	mIUPQq5zEtwJm78LDxR3TcWTI7nyPZDzm2ZV3Xep64ZOir3DNXU+5FSXNLPQEKu+2ETvSFtDVIZxi
	jU18OXkbYmLycwTCoBAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMHvU-0004oP-Nm; Wed, 08 Apr 2020 21:08:00 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMHvO-0004nu-RD
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 21:07:56 +0000
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 54C88200005
 for <openwrt-devel@lists.openwrt.org>; Wed,  8 Apr 2020 21:07:47 +0000 (UTC)
Message-ID: <0953c8498417154e5590c80b3c6a29f4c4280de1.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 08 Apr 2020 11:07:42 -1000
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_140755_014527_1B60040A 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Configuration management for OpenWrt
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

Hi all,

I was wondering if there are some best practices for configuration
management of OpenWrt devices. I understand that it is fairly easy to
get/restore a backup of the etc/config folder, but though maybe there
are some smarter ways.

Ideally a local state (e.g. git repository) would deploy multiple
devices and automatically update them via a command (or even cron).

Other projects came up with solutions which seem to heavy for common
WiFi routers. Ansible[0] is great and all, however requires plenty of
Python to work conveniently. Then cloud-init[1] is Python as well, I
think even heavier on the client side than Ansible and also doesn't
seem to be the right use case.

Some time ago I came up with a MAC based init system[2] but that's not
really to keep things up to date.

Last thing I know of is the approach to convert folders into opkg
install-able packages[3], so whenever there is a new configuration all
pre-configured routers would install it via opkg. However this would
require an opkg cron on client device and building the config-packages
appear to be quite some overhead. On the other side it handles
authentication via usign keys.

Anyway, please recommend me a better way which I'm not aware of!

Best,
Paul

[0]: https://www.ansible.com/
[1]: https://cloud-init.io/
[2]: https://github.com/openwrt/packages/pull/6071
[3]: https://github.com/libremesh/network-profiles-builder


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
