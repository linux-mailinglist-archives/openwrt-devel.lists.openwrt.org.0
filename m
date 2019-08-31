Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3E1A44C4
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 16:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qSOkSDiOGCfs+luiPUX1eS588Hm0EsVdLp4nyCXN9Sc=; b=p7ZYYtfsjkaWhQ
	ijhtvm4dyfpbbx8odvnj+Kz+tESo86IZPxX3FnpA16xSo9aAkXAAVdi2I+mLdsEJFgy6OBT8wSeyg
	pQhwpuFVC949kytvNe/43Lfa9Fwvc8YOhaGP4ZqZM+Uj0Ytyfit0fv2PM7oiz3yEkLHwxGNikn/ar
	I5seWwNuc0lGipE310u6d7YW5lK5okDUoqJImVbOxkrbyI5es5cFKNYG5cm8RyFZlx+x8XqyixdEm
	NAy9usRPRN6wFl5Xp7Swr6M2Kd3yJbvvaMJxtHmUh2bCZWdZYnQRLZonWUG/m7YUUOTTFUnI4d1xm
	602pW8l5M0UyfeZa+jjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i44ZU-0004qP-M0; Sat, 31 Aug 2019 14:41:44 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i44ZL-0004q3-L2
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 14:41:37 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MMG6Y-1hn5Pp05Pa-00JIGQ for <openwrt-devel@lists.openwrt.org>; Sat, 31
 Aug 2019 16:41:31 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 31 Aug 2019 16:41:27 +0200
Message-Id: <20190831144127.4557-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:p+VBou0A202gIcYdBEh0ifhOjeAYEAW2MIwA53SZsNBIETqkspY
 t5GycYiq5mYnVVzUOn5QXjuSslZ8oikhco/wOOWskiGNTnhM49gRbqfLybCDdDVf9N/vvUM
 8ChNWsBPE0S/HLEpnDocVTSrzQu10+VdVhAwtliGDJYsbJTTiw22jpbjvR9Z+stWP3MtRbL
 Q7XbLsX0USfkBSZKBWKig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OmtCfLY1UAI=:eEyt3x3qtLvn8uEBb3RQwL
 RYGtg3wH+jpyKRSD45ZjKsocI2ile2DqU7bldQU29vosaxPSwMbWqNvJox3Z4zIpgQWTMae4u
 4XX5e9cTnoci8kOv4y7/IIkyw2l6O4ODF3zvW+RowYnVGxdt6v8XGTS0wXK1p6oWh7wVKSciD
 hSZ2IOof/k5R8EOzbH9GbXZJiUvmXRlYCZ4ej8ZPW+Hs3cSX0d6w4DdhSxrjUo3loUoRvnrxo
 /DL5DF3DsQy8zWgCRLNdPyIoyt1zWDGL5Hx+s/TaX3c/PgBtBakWPy1Cm6dvLLkhF5VqAtsh+
 YbvgF+JD//IKHs7RRbA4k/DEu63MaJWREV2hCcfPjowRPNgM70mYukK92Oj4iH6pISvfeftMt
 EgxiIRIYAEU/+aCwJ+GCoWXSLtnSNQAs6eoyApRhl0i3fjSiFv7OOi2LfFowvHlyvI4/SilKy
 P5BAE1y4j/WXV8e5fh3AUUlYvlZIBR+6Y74q94D3TOq9s9OG6rAC3fZlBSjEPPb8V+bVfboHE
 CH74cTQ8RUFbUkMo75QR3ii9VGl+FI7KOM/hqoXc+BDwYmt6SABVGCdMsBLz82NU/tTYWuuYp
 3k24X0yXMGvBDHFqYlUwMhv8iVVoJz3hA19b/rj9w6WAqvrgg4F6HqkxUjbZhmTI5dRCXHxc1
 TW0VRDlXjEme3eJ1YFRfFFicmkWgk3EsFp0TtwmMct7lg+SOMz70txvy4EqWgDH7Winz6lmoZ
 2zUAo89HI9qVbbyWaLosW9LbwPYcuLl8AYXpdTc1fD3qC4bG2jsowaESb/kpior1pldd9Hj9U
 rIFRzP4hBLvgIA3bHvn9IoJFJK6GSmq6Y2D7hSd6ey8Tun46TY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_074135_987182_62EE60DF 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ramips: merge cases in 02_network
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

This merges three cases with a single switch port.

6t@eth0 and 6@eth0 should be equivalent.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../linux/ramips/base-files/etc/board.d/02_network | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index e19a618389..17b3af8fce 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -274,9 +274,11 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "5:wan" "6@eth0"
 		;;
 	comfast,cf-wr800n|\
-	hnet,c108)
+	hnet,c108|\
+	tplink,tl-wr902ac-v3|\
+	trendnet,tew-638apb-v2)
 		ucidef_add_switch "switch0" \
-			"4:lan" "6t@eth0"
+			"4:lan" "6@eth0"
 		;;
 	cudy,wr1000)
 		ucidef_add_switch "switch0" \
@@ -446,14 +448,6 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "6t@eth0"
 		ucidef_set_interface_wan "usb0"
 		;;
-	tplink,tl-wr902ac-v3)
-		ucidef_add_switch "switch0" \
-			"4:lan" "6@eth0"
-		;;
-	trendnet,tew-638apb-v2)
-		ucidef_add_switch "switch0" \
-			"4:lan" "6@eth0"
-		;;
 	vocore,vocore2|\
 	vocore,vocore2-lite)
 		ucidef_add_switch "switch0" \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
