Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EDAB66CE
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 17:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i7Db4u79rx6Jl6zgCXdSD0RdM1h11pBEXWrSBfq+B2M=; b=aYLKur4jz9hKux
	HdkgVJw/OupoOyi/dhlUeNWo0GjW2d49QmjeWyx7kaawjYLmgZISuoD+F8s6UeW2hp99xOa/PAk4f
	IS50VED6kvsp/XuFb+vmKAx/ZyANCen7xBowp4eYNTx4RSh6be/A9F+9IotBLydNpYG7r6Qi0OPNn
	ExMQLskJPqtPCQ94lnlJXV1nvRzOiOzPiIxDpzqIyaxat2GL8r10+kwN7DAr+LSPZt5k9c3wVRs8i
	qKaB52mmdL1P1I42OB7idfddKScEEHv9+GqSCjuYLU6yTgUNpHHdKf1NuIb9zo/i/mA/zvUngt6mE
	QYyc2oBLYt4Cqb/Qa6+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbc2-0003dC-IC; Wed, 18 Sep 2019 15:11:22 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbbt-0003ca-3h
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 15:11:14 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MuDPh-1hwe5g15un-00ud9E for <openwrt-devel@lists.openwrt.org>; Wed, 18
 Sep 2019 17:11:09 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 17:11:06 +0200
Message-Id: <20190918151106.3681-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:E9tDYblimGW9Ul6qsFNYmGa2E3y8CIBWqpuBm7DswrtafbcygH5
 pDbk20V4T/q2ymaYjdYlQNOp2ik9BI0bJChPhAVEnHAl3hbVNyvddEjucLAfKmoYIEv0jMZ
 KrH61KXQh92u5r03wRaMpguyxQgiMA37zw7zVxsP7jTrj/VLObsmQpjKSHUrDtRHmMUhVF+
 3OXMLGtQdnUghAFQIP9bA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iL/EzRpj7Cw=:UvC8Wx4UEGrNe3hdJZRm44
 b6ONbDgIwBeE45XG3hVgGJmZ0hnC9w/zH0pAJgm+5lPNMcUxW8+DMjcvcoELSg91UFyApv7nu
 ciIlmm8F66V7WUV5zb8dovbd+cRc2ngd0OQGVBqmV65V718LJaO9EQX9bx51kOzp0F1ThQN9F
 kg+oJ/jeOLEUQT8S69/L8+7/PgqMEOEFc01ZbrWBFjRnzI2exMdUuLqTJbInoswQZ0mhtvcJr
 /0a6xVBE49nKUTnw+eh1KrZ+m5/L9GZGFuRRtxiXICX625evzNfFyfn9iAb27OYcBuIRes4fb
 CpdJQe6WkWpmh6TUIR4UVeE3UVYgrWkrBX3UmIkRmEu9WrGRAHBzHcFSZ6wuJxdnowT/frsGF
 ByfAMKuD3/lj4zea2jXwJNO+v2q1pFOu4CfysILoptA0xV51k1xavMjmIF5JYOx4lJOVf4HuE
 hITTYT6d//13XzIzS/7d+YhGcvqN5YKmo+txA7MLdOXjeKkr2E/uaZD+6g/CUAmhUTnjYd4Pu
 yIPo++4kLgfekZgkX68jh/95bp2KOdUEvXgn2o6vbWM7S9rIZg3FLwyXZ/d7y9PBAee5XbkNu
 qja68TEY/FRZnHTY+Nw4+mdxYrHObNYkIIc0CF2H9vBD2mP2M/B/2x85KUNRzGEfRfTLUOd9J
 AaDCVg8tFMXTp4PSEZkD1qiOCVi6bSj+JL2SdE40vXLdTjn40g26xMdk+VBunebxM7we1PY4g
 EALRq8jG6q9LHcjBs1hoazMc+eEkVwyOU3IBzdEoLRoP8/cL3w0YKs0ZT6pyZO6u3zCZI7KiL
 YD2GnHSHg1y0BKYTsRYlrD0mc0E6tB38JvNZY1YRg4sjvye/rVfA8yS7V7q3H8MTJrtoF2hAz
 QPCYicELHSJP2J3L/tVWhOmAnNYdu9pOgJIXrYAjw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_081113_448677_5DFE57DB 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: remove invalid uses of
 ath9k_patch_fw_mac_crc
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

Some ar9344-based devices are using ath9k_patch_fw_mac_crc, which
is meant to generate a checksum, for fixing their ath9k MAC
addresses.
However, those do not have a checksum field, and the calculated
checksum offset would be negative.

This patch will use ath9k_patch_fw_mac function for those devices.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This should be backported, too, as the negative offset for hexdump
and dd might do interesting things.
---
 .../ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f07dbf83c4..63879cca47 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -103,7 +103,7 @@ case "$FIRMWARE" in
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		ath9k_eeprom_extract "art" 0x1000 0x440
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
+		ath9k_patch_fw_mac $(mtd_get_mac_text "mac" 0x4) 0x2
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
@@ -156,7 +156,7 @@ case "$FIRMWARE" in
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		ath9k_eeprom_extract "art" 0x5000 0x440
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
+		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
 		;;
 	ocedo,raccoon|\
 	tplink,tl-wdr3500-v1|\
@@ -196,7 +196,7 @@ case "$FIRMWARE" in
 		;;
 	wd,mynet-wifi-rangeextender)
 		ath9k_eeprom_extract "art" 0x1000 0x1000
-		ath9k_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 0x2
+		ath9k_patch_fw_mac $(nvram get wl0_hwaddr) "$mac" 0x2
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
