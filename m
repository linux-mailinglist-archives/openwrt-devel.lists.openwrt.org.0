Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38E61430AA
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 18:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AZ1/6KJPdKgq7EaT2zzSbEJPaNMkuouPafYfcdCoaSc=; b=uRT5S6RtmwnB84
	TFptPGVw/CwX22jLC3CcISSYWgPnQwA+XKpIqpwaHZ6behnnJEDwSUkwV1HlPC/kEZFOOZNg1bCnp
	NX99Fin98lo0qFLH3YaTL8GyL6ZDOLukqWbni9FuFCEXpthkM/tdUSLWKJiCh+nDWXTqw3aEBPpyI
	r8P82B3lKK2rxlMJfFl02zZABxsdv8HNKoqbE6paBeFhwtvsAs/SH/9TfdOzsLiLgecxxL6bVTokD
	izwmWXlW2vIhOCekcU0w5U6Jz/9/d5YYLIo18s6Z7fEzJTe/gokXM/7Cnl8tj+K09JiaO5bpV7qZS
	Ev61RX1iLVASM7Rhb7qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itabR-00033p-71; Mon, 20 Jan 2020 17:12:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itabI-00033Z-SZ
 for openwrt-devel@bombadil.infradead.org; Mon, 20 Jan 2020 17:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=36WR7LXcHQabKwjtE9rf+rizzCokWrx2NSTLZm7U9Tk=; b=PeWEO5iVNIWeaPd4ah8OQwEUE0
 lISNrhAG13yp2I4BjaG3lJXuU1nGJtkFw6fg7IuTrQnQBQ75dZsqCDjIDG58n82ixJ36ktfEDpm4v
 rZajbHwaj0CspuGUj8dzH2H7etQi2L8dwX5nS+IeHjNqd8CQXw3JfoF7g9wXTEKvte+ufXcuaJQq/
 sEzKwGyZjajTyoADoe9Hupphl0JfuwbDM3eCWb+erwo51exLv0qXwMjnpW3Ufe5jVyMRSz7eTcHt/
 LWgBBajIpss1xPgfBdkRyl62Tmq5aL1/XfAEqv6/YBHrVUuGGHyuA5n1RI5INTgAUndW8Ng5ik1qL
 PC+WJ9Uw==;
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itabc-0003kD-FQ
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 17:12:57 +0000
X-QQ-mid: bizesmtp27t1579539983t1ox5ny2
Received: from P65xSA.lan (unknown [112.94.101.48])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 01:06:23 +0800 (CST)
X-QQ-SSF: 0140000000000060F3F0B00A0000000
X-QQ-FEAT: E2s1enbZWLucBONEFAMUpmbyy83cG8WyyHgvUq0N9lIy4QBZ5E0TmQHA2e5sI
 v7uPYrccg1KSN77CEx8M562P/7g/rxy9ovWJWnLma0N9BAd7z285FZ0uCpxvowzeYMp0zvT
 HpSPs4lg87ou74yV5Rvon30e+LctXnQc9RQVk79gSvPsbSmEAKLotN7lP8Ujt4/JtioYi6O
 pOhARDqAgo/dc8z2zN+LpSzNiyjEpstNEPpBric099GjCcQ8NFEhuF0mSPTrxhXuyDp58hL
 jTATLUn8ITdwNHLLS+SxYbDNieBan6Mxx8I9sY4rpI/lIx6mrOa3g13djiorzkCBdgsg==
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 01:06:22 +0800
Message-Id: <20200120170622.6122-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_171252_696888_0AE6EA1D 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath10k-firmware: fix mirror hash
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

Fixes: 641a93f0f226 ("ath10k-firmware: update wave 1 firmware to 10.2.4-1.0-00047")
Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/firmware/ath10k-firmware/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/firmware/ath10k-firmware/Makefile b/package/firmware/ath10k-firmware/Makefile
index 394580549b..9f1e7e676b 100644
--- a/package/firmware/ath10k-firmware/Makefile
+++ b/package/firmware/ath10k-firmware/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=ath10k-firmware
 PKG_SOURCE_DATE:=2019-10-03
 PKG_SOURCE_VERSION:=d622d160e9f552ead68d9ae81b715422892dc2ef
-PKG_MIRROR_HASH:=9d56a9942b7be7effdeed6d0688a9bdcfae76a2921a630714c3e2d8390ea8934
+PKG_MIRROR_HASH:=2e504e071c3f896d629c4cfffe7ff4b5f1acdb4fecd3f01e8ff8c73e87a67cc7
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
-- 
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
