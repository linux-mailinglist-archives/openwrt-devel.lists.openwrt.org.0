Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91A71719CD
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 14:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LkZLWEH/Jriy37xhmVfmKLP/K+oapgKmbWUwsx4MsLY=; b=rHIZ6P+cxlhA9y
	djgWJpwZXFecPvK/ynCEbcHiq7tswpXPd2xba+8jM3dk+13K4a2kMwndOsVke4kcObQ7qRr8vZXQi
	IKQCjBXNFhqbyX3X4zdTcpjQjUtQNPF7yqkXRErpnnyPm/UplIzrs8c6lWWVnoc7b+ClEBUlv2FEx
	fPeKLn6P8JzrPQW/xDx3nAHiZ8Rl7hxhRHekNHzSixb8Vm9QSc8ZRj8rcVy0lwltbY32F7um1CVEw
	2EMhbHvZdFu9kJlf9NLeWtmoWj1DZq1ToStGjfSvdXGRefPXrzyPPlLK2qq27cUrtK4gpRL4xHwbR
	mqDugKMLW7T9vMb98WAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JWe-00057m-Kn; Thu, 27 Feb 2020 13:48:28 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JWV-00056K-RS
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 13:48:21 +0000
Received: from buildfff.adridolf.com ([188.193.229.61]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MAOVx-1jHW8T2MSR-00BrEM for <openwrt-devel@lists.openwrt.org>; Thu, 27
 Feb 2020 14:48:14 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 27 Feb 2020 14:46:24 +0100
Message-Id: <20200227134625.48028-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:oK0y7PeZ28ETwqiNNEEa2puNPGtx3cr9JYn/NRwLQQJwaGUMF1Q
 EkPvrSocJpqmHQ+yOMPjtMEnkTFJXggJsikCzDoi6stcytM7UlZZRvsU83YtbJhsnMCFQqF
 aSJ2ZmNYl/HOLVIPF4gA2hMz0WTlhzsCso8WXNalJgfxGnOlHvDUUNBF/GiK6NV8h+kHHet
 pjq9rZmExl5VPrbNNGt8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xam4UUR46Dw=:KSpKTewL+3Ghy4AYCgcgFz
 Sf4821nLfzge4Q7xAgDaoBeeFFibcbDfimFhcwsmodFAeP2OkWSDnil9wl+cuD7n5uV+gf5dl
 Co/S1PmE/SVbTEfYDYfi+VHGAZOX8VZPEKe3e8kvblXYATcfg3tow0RDODCDBj6C+5aoBH/yj
 +0gQtQ/qkEzcOrhri81yftFjqMFluWn975FoeFY81xG198AN1TOH/CfwMNKvsGsWthzENVN92
 DUmztygHBnEfeauLxB/vPhT0To+xYPKrFvdvEVY8BQtOzZq+Ci2sf+uauoiEyWyP80/qJKTw3
 X+1OL/ywnB7U+oVqmo10u2lo2IgRSiOYTBM1OOOH/+t5Um9O5IX5DlcgURAWDjXoHFFU/7xpt
 xgpx5oUCxEG2GkKKYA0gxKwTKJqPe6k0+DKlY2q1VZlUp5ZRUa21FK5G999nasXHTkz9P3cbz
 3GSV/q1Go1VCgL1AjurdX5iaiZbgGE3Rdgx2es+Eo9CYgRm4W+54JGvGbmL5KI+WWsFe/ixNn
 b2ZWPszAEosYoCtR8NH0JUDD1ZSAcjoIQe6jARpuna5NshBtkKzBg9dWV08U43fT0x5Gnhw5q
 ld32N9hRXwCFD00NpcDWqcC9X1vBCpVdoPuhZ/+3oGhWZkz9AlqIbOHAwtr262JwfW9EO3x7F
 CeikXN6csJsJscqUnLtKXkLN5423/hN0PKUmY1j4Ue19/07xv/nXH5ebR/NXf6eFlXcbdZe8O
 z5CjTyGjwgohMfolNA4heqRMindu8SmU3uXa8276YP+h5WKADQJgV9uF9sKsvcRP5vxH0O9Du
 MXRF638eAeiZP+R9aHoL3dgKN+wOvG6sQVBnMS2wB0aOI8muQWy2RTN71dRLsJeOkDicou6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_054820_183847_73703866 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: fix partition offset for D-Link
 DIR-810L
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

The Jffs2 partition for the D-Link DIR-810L is currently off by
0x10000. Apply the correct offset based on the other partitions'
size/offset and the information about stock OS from the Wiki.

This is just based on the named information and _not_ verified
on device.

Fixes: 36e3424fa520 ("ramips: add support for dir810l and asus rp-n53")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
index da8d2238a1..0b1ca26ba4 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
@@ -102,9 +102,9 @@
 				read-only;
 			};
 
-			partition@e0000 {
+			partition@f0000 {
 				label = "Jffs2";
-				reg = <0xe0000 0x80000>;
+				reg = <0xf0000 0x80000>;
 				read-only;
 			};
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
