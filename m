Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB2D115F4F
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0E4IjADX05onE6W2qgZ1wMIhuGPGZHMWPddT4CCZAA=; b=aRuwqEPQzOx7V9
	C7YzTTEujQSGkl945RMn7Y1FuAbCpQIjQIzeRcMUa1ryQPqJmHzMp8CY+BWZag33eLnuuvirR9g/L
	vipWHSnLAyX2LWC0rE1CM71cE8a+o7NXgaDeaQmipzuxN+OCDXyiiOe1ADkywUBJbtVsQgb6KJzU3
	GGGNgl3Iveq0yc01n4A0nkGdjtlX/HBiPRo+RAn2mUCkcIJ9E//O5ACFmpwLsywB4zYKUSTVWDyAl
	qbZObCHWe089o656mZw8SkniKkMXfucOn6L12mpqRGNu8staRN/oCEhB8idnG0V5qbme7Yhnl1xQD
	+yCBIq9E6q5prAhQoMAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiZp-0004Tn-C7; Sat, 07 Dec 2019 22:29:25 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiZe-0004Sc-DQ
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:29:15 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mr7iw-1hzgRe3iPG-00oCxt for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Dec 2019 23:29:08 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:28:24 +0100
Message-Id: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:zdXmy4T6+IB/8SWhafHKd7bhFqRwVokRtj7/UqnTltzIsZVnn04
 ESIDdiIeZeg31Seeh9cbGXmEAQVPjzayQbsAU3WyD2/mFbdk3L1VHa9E93qKa5K7OCIqwuM
 VZhn+o9/0ZP0HmCTokb12OfStWkV4aPqWuoGANt4zA+FUbs+6ffzoBXpaQfd1X88HC1XaPg
 cmbpNDOgsspH7uSr3iyFQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:10evEgd4UHE=:tDsdX0Rddg2GYLc78bUUD0
 dIbV0oWKsFEul59pxkZmqoZKmMizaDuUa7a1StnIRqCLZ58cd+XIvAwXYGG2y+kyb5y/l/mKN
 0YzpSReefmihPiTUhxgl109MZ23p0oOp+SnvSaHfg4s9a3IMIdmtOIN5coqsyTQCkUa5vvf6p
 pgTJ0AeWSouGZrumT6ZvtZfWZkAFHnHs0kV+bpD6dQ1UTa0SMQ8p1EVgkuSPxpjCkCNo+e0rn
 xcbWoXiKYghBQVycdxIxG4pZxQ2ZJwVjWl9xUlzyFje+wuA+3g6qJTF60Xd/iNV36Hcw33w3/
 Aj7a8a/EZ0YFxB8gcbV0Wc9ekVFx7hks67C4j/ndtzHRwi0EahrBwIWrEqHknO/jdbyK5/oMT
 XHqeekCFjrq31MYsAWd8FP1gmfRiwNdEW9B8cRGpHdwwjorQ4XJ3UaZpeUzGUvMpgL7rvpa/b
 160cvZRwttXec4m/GNenMGDfGqbB+SvSO86JRUPERcLSFrpSKloOh9aKSW5uW2Qovm9AANGja
 2fqZE6WhGHCWt/yBeOqW6R3HzYXstDGZWpfYjY+Ey6NaJW28i7ZdMWLZdLkjAA07DxZx9rB/0
 72WtLnANW8Y1XEPS1GFlQcg57dLzVqmmo+ndLhgcgtXUh5YpZYms1ZFp+Wmm57JEE6zs4zR0C
 xMVCEibAWDZscJpGTssz6/XN2WY8PhehG+jgEI3YLDtgNVe5TFOiHSnvh4oZgXtk8ghhLSxhI
 warN/YSyzUb3XFcHuzgKpMQkF2l/Qc0jMqyid3UaVcfQIxBXX5NOd9ILkqFb3wUTBmzsUttbh
 vO4PHxYu1B58SnhDs9Bbk4hYIFZgr2EY3dNE6mN/BxoUeEi1qXBgb+Q+gdEY6LDySsfoJyiK+
 zz9biA64DT4A5NtMfluECCfTTcKmCQFtl1Jb/ATvA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142914_742040_152E8572 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/2] Reduce redundant names in sunxi target
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

This consolidates the various repetitions of device names
in sunxi image Makefiles, and makes naming more consistent
in general.

This is achieved by calculating SUPPORTED_DEVICES from the
node name (as in ath79/ramips) and build the DTS name based
on that.

With this change, future device support should be easier,
as there are less cases where you just have to write the same
name again.

I've build-tested this for all subtargets, but I would be glad
about one or two device-testers.

Adrian Schmutzler (2):
  sunxi: use vendor_device scheme for device definitions
  sunxi: construct DTS name from device node name and SOC

 package/boot/uboot-sunxi/Makefile      |  68 +++++------
 target/linux/sunxi/image/Makefile      |   6 +-
 target/linux/sunxi/image/cortex-a53.mk |  46 ++++----
 target/linux/sunxi/image/cortex-a7.mk  | 154 +++++++++++--------------
 target/linux/sunxi/image/cortex-a8.mk  |  42 +++----
 5 files changed, 148 insertions(+), 168 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
