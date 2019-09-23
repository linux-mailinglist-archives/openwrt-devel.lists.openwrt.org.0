Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC190BB564
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 15:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sm1BOh5VWmzG+/JuFJQlX2MYW8fu+lsmeyqpNX45L5Y=; b=tFZUuYyW/mtv+L
	bpoCP8niyoZ2y9ppdzEvLKVc46h1M/Sb4dUDs1dIbQoqZ2Pn2sujLz7MgxBDa0SjFxydB3bzj+dc3
	lZCqZIkmP4ASMpt1aabU7glfjKRX5Yr7ch4OqmXsZF+nKZ1wGOu1ofbHrqDodBgXKGZAVMggFbU0Z
	sAMFkSlbh7RP2OH+ygXkLc7Q5lCfcPYqvoNJumt8TF5Cwbk+876gpzP8znfhFXzanUuZYIeAGjzTv
	CRFjImmjxYhXw9wgI6Kp0JWicyWR9BpBC8Vv//2WOHhrRFIFTz7L+BmjjVxUMWTEEznHGfM3XX5jQ
	eNvs/QPaPsrajYXPJlHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOU6-0005cu-R6; Mon, 23 Sep 2019 13:34:34 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOTx-0005cK-M8
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 13:34:27 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N9d4t-1i9DVW3DO9-015Y0e for <openwrt-devel@lists.openwrt.org>; Mon, 23
 Sep 2019 15:34:19 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 15:34:17 +0200
Message-Id: <20190923133417.2546-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:zj9HjwwltSfFL8GvJ+XVgLNK0DBhXcHg6/kDEiF8rIRKAXtBRGD
 xAMT11MpY0uyXi8FP3TlvwWkFFlRVYWWTtO6bA8WDZURxYPRhSAeuVw/kTMrf33+LQyDUit
 5bHKpjNnZrqhMeiEQupX/V8vBTdd/UTfYZNdha/WMi9UhX7PiDGXlxO6J9KHvmK+Lxi7RHR
 +QcvQD/Jfe0dEytk/gBog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+P6U7XoxEbw=:Uvf0J2thszkA3utd6teDsj
 y18UyV0sRe+H93n12Nr3ivJv/Fo/g1UvFseFbUu2SsoPyeLfN8PCyWUYM3G51kK8T7NF79ePG
 qYOea0h33d8jN6KAmQWMDfGEHWlN7Tg7+vNUrW1FwoBCQgoDGEM7S1xMnTlWMUjcGB3eGuoST
 Fl8+LA2z0/p6B9j6iwa57ufl1XVXnzYPKBAmP0HF+coPDx8+R9hGi0NhsDbg3Y1RfwNqUyAhr
 4B9MSUFEhmNWA06uof73/UnhG7z45ghjlB8pchEy6ej2YI5e7JfTq4SGTuVTXPSYIOUI1qP4m
 smiP/mVEpgodP/ZEMY6dFdQ4APBBDzlMvIDZeihVfhHKk/IMC8J3YSco9GiIWRxSo+t2Pcyqk
 Z1yG72U0uUYX37fjIpBou8D+bO0FtVvnHwtsvlwFowZpZy2PCs0u09Y0sdKobfHBQgCFdUFLj
 mzFhEFNhr/6TI+qGnvv2VdPQvMUnZMBcqJVFmpgQD1tNzgT0cAbApg22R9Uvm++vSh2Uqtnf0
 SCsxdXI9QmqfdEjGC4waHoaSHNc7+CCIEtEJjGPQeN6uoHmqpJ5XbrBGu29H56HtctVw3q7I/
 vQYxR0hvYPr2d4M36PJ5UGG/RmoaB/BnllL2/Hlp9n05UbVWZIOUvR3O9OjybNwJNnW2PQNsY
 P9QK07IxDZn7J89dw5L/y8c98UoOE6wdp0uxSutGTBw+h3KLhfqQVPIakms4RzI8agvD2b5sU
 euuMyLio4h+ZqyGZWWUl8iONZ0iIiLLLXuE1LrSTOBCo2rFurwm4qmEoFMion+SmaN6Mc+ngO
 YG2C707pMPDqjYIj2i3+UDpBZZqa5/Jw3O5Jpy29t0Fl/NRv4Yd8KrWUde9ewpQkONni3iXzg
 O0yO6cVHvEOiH54VmYWagiNMInWF4Q1+64DcxANJ0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_063426_017030_D0415A3B 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: remove redundant
 ucidef_set_interfaces_* in 02_network
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

If already included in ucidef_add_switch, you do not have to
additionally set the interface mode in ucidef_set_interfaces_*
functions.

This patch removes/adjusts such redundant cases.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is not tested on the affected devices.

However, the same approach is taken for other targets, and
network setup is essentially device-independent concerning the
changes done here.
---
 target/linux/ipq40xx/base-files/etc/board.d/02_network | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index e5ba7260f3..b7631a301c 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -24,14 +24,14 @@ ipq40xx_setup_interfaces()
 		;;
 	asus,rt-ac58u|\
 	zyxel,nbg6617)
-		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
 			"0u@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
 		;;
 	avm,fritzbox-4040|\
 	linksys,ea6350v3|\
 	linksys,ea8300)
-		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
 			"0u@eth0" "1:lan" "2:lan" "3:lan" "4:lan"
 		;;
@@ -51,13 +51,12 @@ ipq40xx_setup_interfaces()
 		ucidef_set_interface_lan "eth0"
 		;;
 	glinet,gl-b1300)
-		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
 			"0u@eth0" "3:lan" "4:lan"
 		;;
 	qxwlan,e2600ac-c1 |\
 	qxwlan,e2600ac-c2)
-		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		ucidef_add_switch "switch0" \
 			"0u@eth0" "3:lan" "4:lan" "0u@eth1" "5:wan"
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
