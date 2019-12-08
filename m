Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FD81162D0
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EZrbRL6Xbj9ZmXFkeKnccY8rueQyDW3GSu9yn35aacA=; b=DIumYVDs8rplM1
	jRuHR7oa5AfOuXGFCe3ho+nbQ/hQz4J6xDGmlpEXzT7J7+QP85R5s31LatkTUE3JHt0Arj5MClY9A
	Bl5i50UQEVKE0Cm1rCEt76gVM2nw0/uQdRCKgETJo3/gsdZmwORoWnX/8aK3Or+Wsg8c6fmEjHdkr
	9LprwKSWFaZkS6cr2hWjqCOwbYjVZijwvYJFe7/q1X/uzLaq1Sz1NTFmUE7QMIBjySeACXPmCgQtk
	NTtGsaK5oWzbza2NzML81xvUMk+lDviiw3oRF3UkYPB/+TW6rIIBa2FhbS5UsDK0Ck7AcBJKag7zf
	5bt/WFtgrmjyTPh1x8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyZJ-00011w-OU; Sun, 08 Dec 2019 15:33:57 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zH-9O
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:50 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N95mR-1hiAaH267z-016904 for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:42 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:49 +0100
Message-Id: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:z8UWqdpgRKIlKcWu93MPoWq1KBjD5psBkfi0/gMb8AhDIRAHklv
 P/vEbhNXZxTAboGNs4toO/WrPa5b1pKN4E/qGoklaakmIdpDP6gdEwviJlBuZGoQn1ndA57
 CbGYMWMt79rKepaFhHKvBlFn/8FDw1EiC2PrqPWH3HZ1zJtpsUhws/vmPoViJx8GBzQIgMn
 ljAC9jF03LmYSBkgqpiYg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aihuOKavqgc=:q71vfAVRtBiH23JluKFQQH
 mUJFTPy/FpEDSWRUdCOSDUs4DtfGPoTuUsZT1r4JUPladg8GO2PMfaOC79unVA99rxg6zYrxz
 CMHTWEIkRS3G+Y7QC7ZQI6jdteIOty7UIWeVHuK+gEMfJpXsmgx0ewbcLihPr81FV3Bjo3v1P
 Mgizl01iHmhORs5PuNRym2rGZzh+M+qQiH15l9DE4DiKGjjBBEOp79YtATBM0p3LEqK1U5uoL
 2KUN15HSPsX6zjAxBFfxWXsZpW5NhvhlvL7DDxmeq8VLNNZjAHxJgAJ8oGfgoILU+eAQX3do2
 xfWFbqDO4mksCuRHtrPhdt6ZBSDvDn7NeiBZe3mIM5MVXvEvwqJVAIoO/kTc+kChJ5m4lDVbA
 IIfuysrrUzVV0UKil6k39K8lvI0ZAPHb6JXfNN2yaoTQW+cW2c+8PxLhdtgzegfhIlLuDYrIZ
 ryH6WfLvSOUd8hD15X+fO8Y5dADxq0iky19EncUdI54aKwRpToU6UBZEEpip7by9RkFryCdPH
 V1cmvdopyVv6gz3BQBd77VM2U6HvGOkOK8cu5SuwrIr9D/YoC7rVDEf4sy3SsLv25bQ0D82AG
 rtcPxyU3xtEHliId5Xzh2WfqqVIG2nacNAgYE0bID7jGEqaiU5RanNQLbcow+Ei6bNPji+PGQ
 Z1NdrKouN2O95UxzLaHVii4rUIF2TLyviYvH4gJkJN39xz9JC06JUDSapxYfbm2qUE90/cvPi
 5U4bXc5wOnhh2Lmn3rJ2dAtUm2sqIvEe/8WvJGPAfGeJgHL6ZPsKEC1saK3HKebUemO7chmvz
 /e8k0R1z2BT/+51LEQj3zlHFiyEEo6koQ6XuRAVy3fGZYGZ4virezm3qk12e0Z+W0R1d12Qxm
 Ij10q3trngKIvWHnnm5zXoFPP+vrP0VQTAJZyPi88=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_638549_2656A3BC 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/6] ramips: use flash location for wan_mac
 in 02_network
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

This uses the flash locations instead of eth0 MAC address to
alculate MAC address increments for WAN is 02_network.

The change will make the MAC address setup of a particular device
more obvious and removes the dependency of 02_network on the eth0
initialization.
As a side effect, changes to ethernet MAC address setup won't
indirectly affect wan_mac anymore.

This should both help people trying to improve MAC setup further
in the future and make obvious to device supporters that setting
MAC address is more than just having eth0 +1.

Adrian Schmutzler (6):
  ramips: remove wan_mac setup for evaluation boards
  ramips: mt7620: use flash location for wan_mac in 02_network
  ramips: mt7621: use flash location for wan_mac in 02_network
  ramips: mt76x8: use flash location for wan_mac in 02_network
  ramips: rt288x: use flash location for wan_mac in 02_network
  ramips: rt305x: use flash location for wan_mac in 02_network

 .../dts/mt7628an_zyxel_keenetic-extra-ii.dts  |   2 +-
 .../ramips/dts/rt3050_dlink_dir-300-b1.dts    |   2 +-
 .../ramips/dts/rt5350_7links_px-4885-4m.dts   |   2 +-
 .../ramips/dts/rt5350_7links_px-4885-8m.dts   |   2 +-
 .../ramips/dts/rt5350_7links_px-4885.dtsi     |   4 +-
 .../mt7620/base-files/etc/board.d/02_network  |  32 +++---
 .../mt7621/base-files/etc/board.d/02_network  |  43 +++++---
 .../mt76x8/base-files/etc/board.d/02_network  |  47 ++++----
 .../rt288x/base-files/etc/board.d/02_network  |   9 +-
 .../rt305x/base-files/etc/board.d/02_network  | 100 ++++++++++--------
 10 files changed, 136 insertions(+), 107 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
