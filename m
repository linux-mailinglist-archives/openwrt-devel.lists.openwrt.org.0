Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6781A22DB
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 15:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZxSgL6U2jevEmDZ+oqGCNjI1CFS+3osf/S6aflQjoBY=; b=e7QAtlQNlAqR7m
	fTQf1Lo6dhuPkt/6+IB4lp5sn2yXqXIxHLTY+eTf3qVgyDGlkmp+yrjhZ8mj7FzKVajWW3FubbaTZ
	+F9gmT8prqciDCGp5SwWaNhdiRHz7tZqnS2GTNs/owtjo4DsIWUUcAKVAh1RGsmy5hhcEd3niRUpt
	UkF8y8+GZ+WwL75HYjHm3UD4wSLSStLq/YQsEvd5+I1oO7fL08RgganADv60UeXkMXqgioByKNuN/
	t0xa57k32t1yMwqFtAm/KQDcZNVJfrEKgLUskA14zNiw2prUZdy2goDdriPWiboO9dPvi2lt3Wkc8
	PzHL6rZ5A9dbQXAvuK/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAfy-0007wM-4B; Wed, 08 Apr 2020 13:23:30 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAfr-0007v3-19
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 13:23:24 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MzTCy-1j8kUg3PdI-00vSR8 for <openwrt-devel@lists.openwrt.org>; Wed, 08
 Apr 2020 15:23:18 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 15:22:26 +0200
Message-Id: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:SrXyC6U4RzQq7K/byLM607Lj3J2T3+7AQh2VJfrf9D1n/PRUle6
 GttJhSy/JblUu5juuZ4HSvReTUktBCBAMcWEX0nLkc9rXt8oIKBuVg/TRZ4CI+rp0YOKaIh
 b1FKSokt8rhUWF1MFUxzuli3yfmbckaASaTttjIiJCyNNxdcvTgSlur3wYVgxG+bqMfeP3Q
 p7iSYcSyCk7hVZ3TlVjxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9kpOha7o27g=:/TpjbKxWRhIt7hBn0P6hOR
 OBpv6xMY4za8S5nkJ7RTXuVsbI7W7j5g3/mXYTYssfRE/yfeVMO8Aut6rbXBiDvWDVZktm27R
 1v2+dqOMTJZWnIpHYDx8ALpSiMyb3KgG+54QLZKpMqPdn1BxorfdK6nWg/d9bPE5/60w8hQPv
 Fiip1i4aGThVNmbCNp7iiDbBXGGWyk7TT8LeNpX5vyQiPgK/xPglQTv7oJZvzMSmXkANG0R4R
 Jkgbd9q+/yYXvtB2FNfe/BnKbgf1lvFf2oq5CgLm3UP5lTdUaAdJPF9DP0U5izexP9/aqroYm
 YnTx3rm0GZT1sTsKgGLA1MNEbSyLxVsRPFh4tPG2y9zwQ0dcpYsLyJMHtQ88MNxTSdrjz6V4m
 PXmDTL1k64+HOdoijNM+qP16FO6TtwYRQKGklAacEBryBR0Kl9KVPHsCj/w3GnGlpMY8/hcXJ
 8j4IQi+GYvpMLV0NxmmPlfEmtqmOU2aO3GFfsCD+ioO+YiJyzTpmaOQC1i6MXBx4cQ1EeSunA
 wOroHeTbMGq3ZWQf/EiqcxNmWdeRmOE5XnkBE3gIx0qVuNJeTvsBLNmcuToJL51n2j9YdfKQj
 cBYfuLxPFroPITq0BgOvKghr9XJqyZiaWKMKmBHcAYIWUiTeCQQnPt6orLA0x7rrPDos5gZHG
 Btw+bzpqWHRPKxnUxYSoLRXnUWV35ye+Uu6YpY13firbamiNq7c3XJBYt/oUh0isipnugHwzI
 PnZvfBfSi0fD69uQH9Qjq/wBF8lEVe+e677/iChtp1FNOCU3l1sgyoAG5Kjks+yk/KW42FIf7
 MzlyDCgUb/BV9RcSSaRfOg2Abv1EYE+XATb1q9068is47vbpBH/PpiqYj3Ggjzzlxgz3nwB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_062323_365054_329C4468 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH 0/3] ath79: further fixes for Zyxel
 NBG6716 support
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

This adds a collection of further fixes for Zyxel NBG6716.

All of these patches are RFC, as I do not own the device and have just
collected stuff based on discontinued PRs and what I found when comparing
to ar71xx. Despite, some solution are only working partially, need some
adjustment, or are just untested.

I'm posting this here to look for feedback, and to have it tested.

In worst case, at least my work collecting this stuff will be documented
somewhere :-)

Note that despite what I'm addressing here, the device also exists with
two different NAND sizes, which both were supported in ar71xx, but aren't
anymore in ath79.

Adrian Schmutzler (2):
  ath79: further fixes for ZyXEL NBG6716
  ath79: fix 5 GHz Wi-Fi on Zyxel NBG6716

Guillaume Lefebvre (1):
  ath79: fix wmac initialization for Zyxel NBG6716

 .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 17 ++++++++++------
 .../ath79/nand/base-files/etc/board.d/01_leds |  3 +++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  4 ----
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 20 ++++++++++++++++++-
 .../etc/hotplug.d/ieee80211/10-fix-wifi-mac   | 18 +++++++++++++++++
 5 files changed, 51 insertions(+), 11 deletions(-)
 create mode 100644 target/linux/ath79/nand/base-files/etc/hotplug.d/ieee80211/10-fix-wifi-mac

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
