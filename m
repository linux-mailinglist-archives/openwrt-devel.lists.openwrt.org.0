Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EAFACF28
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 16:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q/MXw104PfSXPiQu7Ex0nIWnktF98g8NLKhPgevvNVc=; b=pT7fx/VLZq80Pr
	CTpLb1i1jpnV6GnSXTJpa5vkHlYHQDnS5zk8gV1/qPyn4OfmTWDfVZ2/Ei9Jo06Em0wfk+IBnIkog
	4SIUwI/JTbbLfEfwAab3+WaI73HHfRALLSCU7GHn7o/eZmeYMrkf1qDci5Ux8gvUlgipcPDmdv58a
	CB/DD2d5v0QHcGPFinz+C+8/0yJP3NR9AlJNAWwR30K31jsCKcoGW1ZVBBeUwI1rJT59a0W3qiDEu
	lOY41Ox6oDk0Vznow0+AJGx4JtJC16Rj0nohW4ylrqY18ATUGtDRbC1V/G9YZTWtpa4zJka3zeHhj
	iF3T/T0ka/Jpt4zsyH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xuF-0007MW-SU; Sun, 08 Sep 2019 14:11:07 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xu7-000728-O2
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 14:11:01 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MRBWU-1hjxMy1KCa-00NByU for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Sep 2019 16:10:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 16:10:48 +0200
Message-Id: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:hG4YndiX9AfnQXNlVAZibEb/VHGENhDsC3RhLOWGxGiGnwMhEqt
 dY5LAauWhUd5TGx2Zh7bfn4DBXoFo74JE3aayJFVhAGBQEcjnMWSYgqaQxIQw7GQO3W0KUT
 MDzZyVNqstwjKBKz28yJPm9yrrGZpMtUf6ADrwJOZRCOCQi2ytPDxZ4ehkkGyPBxMnp2jU1
 su5N1QRWjLwUHMnunXuLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mEXzSnXUKjc=:4qmn8FQ/aD/8+DOPBezEN8
 DQvVrUYpvgbPW56+oDhmH3S9wGThL8QcCmFeH2x2+LN+1FAV6N5TlSAFYTIp/g620pRzMhv2m
 jYaD4kaj4omJTw/H//69PwWdHQZtWZoPTUfDz+Na8PYJ86fOb+c7LucKcRrgeF91zXVA70psc
 jPM/yk2yuFmMb6IR7nwsXPsey1nFQlXpgoic8aEh8Mi3Oea+VeH2EJSicv1Ru0hWDqCVd/1ui
 W/e+pncnOM1NM5QuWSzp9wDvganIdz0qFgtIHWpbhMj3nz3tmSF+fJGX3mSdRy41lyojmadAy
 s2mcfJFyhbfMT+GOjvOC1ZBg6wU4yebtJGR02Dq3TzReoLmdQhBzoeR9/qAgLsiddEfKN2IKN
 i9riy2M97kJrGmCKOYP0xi0sYcrSn4ZRTT6UE6knsBqDOjGo1OyJlSHU7cb2S8KJlFYtZ6v95
 X7568JHNed3/Qog8kFsTWZs3mgswn/vpSTU16p2vHdZTmz2PI8XS/pdqmSSzDzvVl5bKv0Qkm
 rGwD2hZauDaWF1pF5USuBV1AIzgRET/jXKL2GuPyyGtdlQY+QV1rvdKc7Bf86sek2Ugfb+Vui
 YrEr0XAt8TI2IxhlfIHw8Pj8p+Az4L8OMhrgIX43vETcJld/W3sfD2lC6sRTOINIYYL+ixD+N
 EysZUdqtao3MAMei8E9v2DGhkgP419MHaIlsY/b6ZHmXxbKCeGBYFKqO6sTmx1jXFYo9/KOG/
 F2Z+UotzNVvflKDF6I1nMwtRFgcckCwSAmA0OsnZaIoQh0RkQ6DDvvzmXYCDjQPNbHMsV289H
 AvFAQMXgDG+i76aBtdDySMV9cElsPdNnydhkyvrv0BhR3Tfvr6lHOxxD4a3X++rwlT+TkHo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_071100_091454_406C098A 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 0/4] Move caldata extraction and MAC
 patching to common file
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

This is another attempt to unify caldata extraction and MAC patching.

Compared to my first attempt half a year ago, this includes more targets
and does more code cleanup, particularly by merging several differently
implemented function spread across the code which effectively do the
same.

I also plan to address the special situation in lantiq when a find some
additional time.

Note that the current state is only slightly above RFC quality. It has
not been tested so far on any target.

Adrian Schmutzler (4):
  base-files: move xor() from caldata extraction to functions.sh
  treewide: move calibration data extraction function to library
  treewide: move MAC address patch functions to common library
  base-files: fix hex2dec conversion for checksum offset

 package/base-files/files/lib/functions.sh     |  16 ++
 .../base-files/files/lib/functions/caldata.sh | 122 +++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  61 +------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 162 ++++--------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 129 +++-----------
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  27 +--
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 139 +++------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 100 ++---------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  37 +---
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    |  95 ++--------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  25 +--
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  48 +-----
 12 files changed, 285 insertions(+), 676 deletions(-)
 create mode 100644 package/base-files/files/lib/functions/caldata.sh

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
