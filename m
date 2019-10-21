Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1F1DEF45
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 16:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pLlpnP+zVYXBxJFJj32t1223NMXTlirVU06qI2uPcwU=; b=cNXMpGbkVZd4d2
	PicR0UwRz7sceAK06I6sdBP4hdTjji4WDAxz1AxEpsNj0TeTmUde7fT4DJKHTqVYVT5eYoJ7NXnjD
	hgL3F2rT5cVMD5pXN+UTrDuH+1xOB1m91PetmGpEYGWTEmDqMFVFqxRJL4ZCxvZBfqzgbMJr1OuOY
	b/Gjr5m6IziM6ya2A7LZpYTKPhTG+M5S3DE2S30MQUUNIFf4GmDVJCSkn7Urr/oTPjbBiiFYgElp5
	4khi6QewCmJWuSCwwWOv+mMS8RD9Zw0hlC08m22jCi1RjJXR7/BjJJHeMpn8Vm5M93mxtKhJJjgP0
	TdRs1vVeaCzs2anDMF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYXW-0002Tt-5y; Mon, 21 Oct 2019 14:20:06 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYXJ-0002Su-Sh
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:19:55 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M3Eqr-1iIyAV1qLl-003i61; Mon, 21 Oct 2019 16:19:50 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 16:19:47 +0200
Message-Id: <20191021141947.16723-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:skJzbHrhZn6kvDctFjY9XMcH64I1dXKHg0KuK8MXEzsxK5BwtVZ
 a2SKfq2ZNxG/fM687Yz0D3lEFILd2EHGes1H30r7koxTG+ANSrbXtmd1wDlKTNUaq5fVcKi
 hrmfQ8Jn/U9DJBiDmjazdid8A1MYIIbzyoKF+UNvCxYGXdS9v0Doij2uBr0bVm1IVsb6uWQ
 8RI4hgkJ9bvAM4zvoAgyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:N/CKW6zOPug=:N1Cv3Iv+t2EpNp/nk+5wCA
 TznA+9jXMwiRlUQfSnT6HtkAJHlTukdKTkLgaI5XPRxy8O00Ri/6xcmLOga/tZmGmnkPLEFWI
 frriiSMtKJ7vMMzHwDpe4I/EHanclUyN4Lz+MuA5SfivkWH1Zof2kAP1DuEBRdZosROtUQBr3
 bB2C8RKIM1YsfYVghLumDR1cD6eBrmN1vZWU9+qty65EIJzIesO2ISRR6fQUdi0YYrvxm3qR0
 oaaCj3hAqLIIDJ3sM88zsmaVIv4XiB+RLVklLg3yAEU0tD1hcy0KjcuFGkLbBzLUNTZEfkh5w
 7wjCxQk07W5CHeUavYuN/KkygabcDbP92xGwzC2LBMYYtDfy0xIlblGAa+q2Dqx/XtkrU5Ito
 ppdxtd58Fw6TyMV822Nrv55ve/oRP5vjAlTYHABFa3BaOIG2b1KhXa7WA9QUL5+bODf9FFOTT
 FCd8RjLQZuQpUT8BYa2SEPadl+EUFScmnI490zOraoiysnsuoVM9UuHbS3Ii9mN+NQCotBj82
 PXipn9+K26MHrVudleRUef2V8HVeL8eKTLWE4JTPzjqvvcYNS594Nm0ShE41qOkC4xPA+0Dn1
 WPz9hHC1oCjc8gmh8jDUuehHzplNXdP2poGsyqp0HJfKhfdkpXUBw/RLE0Tb97m+uVqUa5aIx
 140lindPR9WM0lI1DtB5lIO5Zg7Bj+CcfoN9mY9ROi2fs161zsX6ASdh6LyKxNmwsqab2BlKy
 QKeGWzi7LUTLw9sRQua4gj5/AqBfnEfir1hbvn3KpD+25BOVbPqpkI0xWopaAhpcpvEsDx2rL
 SQeJLi7RCOrNQDRaQUJZdUm9UJg669uNAuONULgr2e9FFd6snY2Dyk6k++7uKPhG4tqLIC8Ee
 NdpY+0rPiIwASFSrSU8hl0QbAs8iQEnwjK7OywHhY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_071954_222348_A0711E04 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] ath79: fix patching ath9k MAC address
 for MyNet WiFi Range Extender
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
Cc: Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The code line patching ath9k MAC address for this device contains
a wrong number of arguments including an unset "$mac", which
looks like a typo or copy/paste mistake.

This has been introduced already in the device support commit
745dee11ac78 ("ath79: add support for WD My Net Wi-Fi Range
Extender").

This patch just removes the "$mac" argument, leaving a formally
valid line. (No on-device test has been performed.)

Cc: Christian Lamparter <chunkeey@gmail.com>

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit 6b5303378315084bf080a6408c2ca5b2a911aa5d)
---
 .../ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f2b1433448..a063a3f9ca 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -188,7 +188,7 @@ case "$FIRMWARE" in
 		;;
 	wd,mynet-wifi-rangeextender)
 		ath9k_eeprom_extract "art" 4096 4096
-		ath9k_patch_fw_mac $(nvram get wl0_hwaddr) "$mac" 2
+		ath9k_patch_fw_mac $(nvram get wl0_hwaddr) 2
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
