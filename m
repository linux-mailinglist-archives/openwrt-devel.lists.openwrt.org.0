Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEABD1760A9
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 18:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y6S7E8y/aFItUPaJhfuZTMdpOHXbTbwDXvn9JLikV38=; b=Ph+R4ur83WG8LT
	EuCLHgkBzmac3+4vFwfI3HPqbOD8/xSFVbOiv81B3TnINr48B3YRjVBfUiyMqZwLUiQT+0iLpXybm
	K9lg6PThSi/4SOaFhAeJCjJ0wmvdLadu4UNUW6naBwUma+nfC8myjBPByr9NkOEOAfmdp26TFHV0Q
	9unChGlv+xFIjogTuGONxOx/ld2Ay2Ntnuz+bH+0J2SJgOQI4h0ga3mEVQuap+5cCZSkq8Un4xBcZ
	RWwPFF8brCCfjIAxeo0a/5mUx9dscmJCZjrXdVC7Ey3v6k7YjS5gYIW7oj2mhUFLJE6X2WeT995QX
	gNaw2Ls5Q/ABAJHALDpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8oSl-0002Do-MY; Mon, 02 Mar 2020 17:02:39 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8oSf-0002DL-I4
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 17:02:34 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j8oTi-0003n8-3O; Mon, 02 Mar 2020 17:03:38 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
Date: Mon,  2 Mar 2020 09:02:26 -0800
Message-Id: <1583168546-1821-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_090233_637957_FF4DA7E9 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] imx6: remove unnecessary wildcard from
 board name mathching
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The wildcard used in the network config matching is not necessary
given the board names returned by imx6_board_detect() in lib/imx6.sh.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../linux/imx6/base-files/etc/board.d/02_network   | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/target/linux/imx6/base-files/etc/board.d/02_network b/target/linux/imx6/base-files/etc/board.d/02_network
index 13a140a..bc05313 100755
--- a/target/linux/imx6/base-files/etc/board.d/02_network
+++ b/target/linux/imx6/base-files/etc/board.d/02_network
@@ -11,21 +11,21 @@ board_config_update
 
 case "$board" in
 cubox-i |\
-*gw51xx |\
-*gw52xx |\
-*gw5904 |\
-*gw5907 |\
-*gw5910 |\
-*gw5912 |\
-*gw5913)
+gw51xx |\
+gw52xx |\
+gw5904 |\
+gw5907 |\
+gw5910 |\
+gw5912 |\
+gw5913)
 	ucidef_set_interface_lan 'eth0'
 	;;
-*gw53xx |\
-*gw54xx |\
-*gw552x)
+gw53xx |\
+gw54xx |\
+gw552x)
 	ucidef_set_interfaces_lan_wan 'eth0' 'eth1'
 	;;
-*wandboard)
+wandboard)
 	ucidef_set_interface_wan 'eth0'
 	;;
 esac
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
