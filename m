Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FA5BB569
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 15:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PGbLhcGqD0aVUomZz3hWx2mL4O8BuUak40dP0gDMKuk=; b=PZZTBLQYrRoaPo
	qu+OE2pHdtCzFW1cHB0VIRY9Iu86kc6fHX/Q//HyYOnbeoEM5Z2QBUkYT7vOgXF84dOqclN+NOzDf
	GiX+te8vIevPz1nKoLqRAs8a0vo7VLeAOWH2OP7hHyuQTy7gMVsNYVmB+pxHLZAQwdEdk13oh//hb
	cRaMnmpzh7FJVRE9QRUs04OfMGZqvwXub40UcoCiZ9wiO+oJiZy3lmEwyi0+Zyap01m/8IhYA3U2i
	PjzdkIeQlNMD0dnxBx7yt1XMkReCdXehA/Ij2OQkAZ1/pH7zLIrtpq2urBpMzlaZy0TuhcC9Y15Dt
	reIdh5qrKJ9Qrn3P0Oyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOUS-0005so-Io; Mon, 23 Sep 2019 13:34:56 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOUI-0005qE-Dl
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 13:34:47 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MlwJv-1hmiZI3tvH-00j1zs for <openwrt-devel@lists.openwrt.org>; Mon, 23
 Sep 2019 15:34:40 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Sep 2019 15:34:34 +0200
Message-Id: <20190923133434.2651-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6KZjW/AN6Tc3w+xSYLM6BlrAMHvVi1JTZ0UjCia9D/5t/7TNwFJ
 JeYx9ujzEeUgw+AdFxtM32AI4bB1T4TZMhODa/IfqkYXNqDddQ+toXovML1fucjTNj7F5No
 ac3E9PlLsmN6JUTzh/HJpmftzbg+Q2pLMaUWVVPMSBztlj9fQdTUAlGvU4/w9NBJFu7iY3u
 WqE9vqSJCmgUqvqoKd5Dw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eXKNRXZzvz4=:ovl+UoNNJctuadeS227K5g
 MpfdKm3qVB9J1DqE4zDpNpguIIKnJPvSMN3+AY4yd7LuyeI84kuJMMTxdYnaAR9755QcoCYya
 +I2N2v7kkis4/4KE2/FMKufavDnHSt9JjugCquJxPBZ+K90P+PPxQGc+ItxxtM7jlMs9Vcufb
 Nek5vwrjwvfEPEpLU2GdGKue/CiWuBtFK1tMSZGG16N/4XySeoqogL+de0gkP6LLO9sPLTalh
 RU3l0J56wpR4KR8oNMLpLT5aPQtWpNP/YowZoUrctPnzCRwv6375ZSA2VCGGqQFSTkkKiDk1H
 kMouL3GUSuKCfhKna2kzbf58/zQc3W9zRABcwEFc2O5lqhWv70q0OYBos6/kS0hECE7afcc6q
 dm+9SlM0tjTwPWzAC+2NwXGdc22xOWGaGXRDadtwlqHe+yHf8rPelLN4tSC7Df+xkEajbCne3
 lD0TJwxD4Qkq5/iUsHZl8zdPSii+8O1FZ8ozGaDohmedcEcdq5GE7oza5acRtM8iHeL9p+IAS
 gbsO85WKqMJ7TaPfeWnZlh23G4BR+W+FmH0b43P2/hmyxy33Er9rHyw/bKTol0XbVUeeabdVZ
 SDesJ+TsGa4qIQZ1ObWT4vV2o2qZhAPctcB8xgXzTWL7EuHxegLU66bDurwUeccVFGnfUpZIk
 lZ38EWN5SCbdSVy7xNsDfrKsAnMZK1/dFPMEOuJ5PLTSPNwAIB2+OdSKq/hPZ7kaGf/P8WtPg
 dVrkW85KGAQPeDb4XIbHFfIhV/N2MJQoCzZ4+CnsdW7/axq6oyJOiY8+KXBf2Byqj/RKK880D
 uLYD0bJhsvIoMOg+Zu/2WpkahPBZWzQMgybtwOADOWLjellH6FyjulUxk0CbncWxckrrNxRF0
 r1vfiQ2C+QoOu69CX5gVWW+qJ9TD+CPrwQtYEIZ7A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_063446_764337_D8018506 
X-CRM114-Status: UNSURE (   9.71  )
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
Subject: [OpenWrt-Devel] [PATCH] ath79: remove redundant
 ucidef_set_interfaces_* calls in 02_network
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

However, since network setup is essentially device-independent,
the other cases which are already set up the same way should be
sufficient as "test".
---
 target/linux/ath79/base-files/etc/board.d/02_network | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 0608a1fc43..15371a1dd9 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -116,7 +116,6 @@ ath79_setup_interfaces()
 		;;
 	comfast,cf-wr650ac-v1|\
 	comfast,cf-wr650ac-v2)
-		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
 		;;
@@ -196,7 +195,7 @@ ath79_setup_interfaces()
 	netgear,wndr3700v2|\
 	netgear,wndr3800|\
 	netgear,wndr3800ch)
-		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5u@eth0"
 		ucidef_add_switch_attr "switch0" "blinkrate" 2
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
