Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2169F1162D9
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ArOPB6QDjqh4NmG51WyREpJtL60A9Uj1WhYoIN/iVOc=; b=rnJi9qBfH96uBi
	LPio7sSBe5r7QxJxwDvskw6rYAowxkL9p8KG6cU2SQaUlCBdvKYtAAV4hayhtnn9h2RyydqMLJtFL
	INdC+txhmtH4IHImXGa98PxFzHy3nKoy+Xa7cy8iaje8kAtSOJ3CaC42yyhWHqObrM5v21izV1ybL
	KO9ggqfYMC8lKSEmmRnOitmWDwjvjNQ7Gqsvl5e0yFiIAVOZnf0B8aLejDydU6JU8RIe2IDrcHEdy
	vlbJIhExN+cg4qIorCIRcKbUJw41LAUKEj2MBBzsOlsruKGI6AfOSz5v3eKimXh78GidqK95917CN
	xIphpThj9BfaawiqtdaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyb9-0003xy-M2; Sun, 08 Dec 2019 15:35:51 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyaz-0003xM-1K
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:35:42 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N4yJ8-1hdWec3bcq-010qPK for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:35:38 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:34:54 +0100
Message-Id: <20191208153455.27804-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:jtcwD0KBKJyI1Fr2oGbywkGtue1kfl6GOiDszRy3vniSh1ex7Xd
 nI9qzfqig+/LSXIdX6+HeZHK+SaIUfJt7RF1N4aU/90281fdp+SUjU5aCKCw7oXcmkIKiqM
 UnzjC0Mrd5PZKrxCoOOAhtjuWrc2wvvS7/4CnXCa/kg8TJ2P9QSkmVKgZ3gfFgYMqHV2p6D
 bIrgdAnk1Bc5X3EMy2Mkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TeFB8cjWLAY=:97G8LBcBbuIVzee0ftSkLG
 eC5Ev2jWmY9nw1IlxmAZq8X+meOXl4UI0Q747k5vGN4YWea/cI/Wnj2noMNs6Sto5mvOHwoAo
 q2K9ce3NpTOU4IvonvzD+3bSSBeRfrBHbG/tlYawW1s5cXOzUhmjguHkkZStw+z8sS4c0AVU4
 9+1wOe+QXmr59s+Mo/EvfLu2UdUhy0auTZbCq66DzoIrHjPwh48N7LokRvjh9+GpnUExcp9ss
 Y64B39HO9l4FI5mGuBkngcdJQamE0h7pVkpOvBHl6KBG5AT+UVTadvakNMQqD4wLi35z1mh1c
 G4N/clUtI7QEWfLcJTP4UcExQQk/ledIxIM9fey7KwJK1I7G0YqeBIDzyTRm82albNETdL+qA
 kZo7iHlBzGwMPaKqLPbbejKBm6HgGVGo743B3kj0jbXYN0j08EXHngd2RCZyRjeo260R8KT8S
 sYsiBI8YTW3Uf7RbaD/tNIhKko1Bs0YNIK8SbDYV8Suuhn/q8OL+YPIoKf5T97Bt12HXOPzXO
 2HnfiChRuvbSJXqIksv0dRE/rIbXlyHyAWkfPv5bDLsELk3BGG0/S81v2chPCBLgU8JPxMwlR
 qtUctSUzOaSH8xl23sTtAW/X8jS34ODZeSnNczmmoA5Klf6tdxdGBRVjh33139rWQVbMh8XTV
 B4RjbirrA4zgr7yCueYV03ElRKeHrCsOZ6H5qT7EBwNcSlKqZgpXcVrJUapmfMWF2RZQxzkYn
 h1rUHAImz5l66ajw9mWsQmp9MloL/xLkMHrgGm/jkwL7Ls2E4c5i5hTbN/XLfwqJhFuiykumI
 aUp+7a13tMA0jyo9y415ktgLbxTTBtHA90+kkjxiiVFzdoY3fiq8voFqTqRTSxRJglLpyfdMW
 Z2Yk6SuR6535RySqP2jxvgky0n9x48IZW5QrJ32bE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073541_371907_0DA77C00 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: add label MAC address for
 TP-Link Archer C20i
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

Current OpenWrt MAC setup:
eth0             &rom 0xf100    :48
eth0.2           eth0+1         :49
wlan0 (5 GHz)    &radio 0x8004  different OUI
wlan1 (2.4 GHz)  &radio 0x4     same OUI as wlan0

Label MAC address corresponds to eth0 (&ethernet).

No additional addresses found in hexdump of rom/radio.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
index e085162531..5ee6d67192 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
@@ -9,6 +9,10 @@
 	compatible = "tplink,archer-c20i", "ralink,mt7620a-soc";
 	model = "TP-Link Archer C20i";
 
+	aliases {
+		label-mac-device = &ethernet;
+	};
+
 	chosen {
 		bootargs = "console=ttyS0,115200";
 	};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
