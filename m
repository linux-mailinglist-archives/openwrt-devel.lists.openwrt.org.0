Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44850D61FC
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hiC4X1PlPLkQifYkGFIx3hzmHrWNJ0t7ph7TsZyW5/U=; b=fn9EdITlUDbbcU
	z00gRJvQRwze0sFZEc5BzMboTCUavR7/wH5Fjse0GLBYmUHJETDZw5MtiBSpJbBG/RdciGFZ4Lk1x
	enCbGyVm85B0L4bCsCV6w914gfkqU5yzRNnIir95G22oUuHMLhhMDZPSl1Trm9UeNNVUulHQBcZIg
	LinNmEUe8oiDpxOWbeIyGp3pQdNwzIfdPBz/evXTQE0irCfdiAT77Pma+mjb7oU9nC6MrHLdnBxeL
	DTT1W8RPrV/PiVgpnim6SHXHAhke9orchTbLDn6nFjTgXG7EvuwHJ3KtBIsEQ2J2pvr+Abje0LNLZ
	knAFRqQeACTbYydFpPRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz6i-0005tu-Uq; Mon, 14 Oct 2019 12:05:48 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz6W-0005sW-NX
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:05:38 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M1Yl9-1iN1N83UJH-0031vg; Mon, 14 Oct 2019 14:05:33 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 14 Oct 2019 14:05:31 +0200
Message-Id: <20191014120531.2878-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:3NUlUcLMDYlHF54RCF+VE68yNTKAPV+sUj7WHR8pssZVIUE4ED4
 bZv25CZUcXzv76i/4Yxm3diaeZLcg0V+VumEAgUlVRKmBeVehCbqduhrntLEeGRcTR6X5nz
 bPaAaIG82VqFgyAIIXppsW27d7+UvSj+YwvS8u9jc9TrFawRdjB8w4ymZI5ZTpv/X4FpRWY
 h5cC/7/tKluRt2PuucoQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:56g4L4Y0Xvk=:HGKxAC9K0EuYz/yo0+i5t7
 +g8/9O/V6CMe6tzX8ufztkp+Clb4DgZTvhqkqa1tCdas5HH3qWVbtaL1lkIQ1qtWYZl+UjIim
 Cg2bRdrVWjnXmVy/T0aZ0kvQA8ivfaQA/DIopr9lxCYTezP0DajayX4k5We/YcgHZ04H9JS5m
 RwtgujPrbFYH4Nq263gO8TmirWhig2lXi1fhGhqcIajFDrjmCat/Cv7H7Y5cDx7uGsxZMvSq4
 cqOdhDG7kWDdAGRBaUc0r/9sy6VSTjgOpkwhbaSxoJk1FQy9JaKkXfQiv0Kku/5C4VbOOrxYZ
 Dcsok3mBTo5tHEwVMSFyONWZ8a+y3hFch0RrXOVYnXiIGj4LuN06p/HEhE8vDmomYLH5z6tx5
 fkSN0Qs2A1pCCGStnrUtqPIpObETkRg2a5hp3PtG3x55P02hRRB1XCZWlPINLSZVYs5gYp1ED
 458NxuLL/WiTws64bT5Kn6LDNqrG2jghjonC5kMdxfouZV2t5fQtrZX183MiMLmQzgNOOFjbv
 RfuOK19DQqyr+B6omOCHHhTjmTIEYKiA/zjRicbXFTETeMm/iSkW0jj8qE7aUBFPVvIz8XX11
 6nwenlEsi0JykbvehlXaQfghU93cI4/3fT0IXdbOZtvLTXRDH2uHdWAC2J2kzQNZwjv4Jupqo
 Trq+UFBou4Ctf85rHcgcU4jIcA26l3Nmb9OcsEkImn7+U5BViNBsxcBmRtFln0ah+0Oi1btoP
 SzQBJIu5Z6uSW2+pvgKL57K+098fbSEZFB4EvzI+qKA1kBbtOIURtHtNXcmV5gf62dCVXMjGE
 lO7EdzVcMLc3hrcuf23TooX2/22nE5YxiDgncicUq9KUSEXqKxBGPBGPt9KreASAuPJS3OgR4
 gTKb+bYMh6rbN0We5TOUf+tw5k0FhcjaMPX1gMGCQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_050537_061040_7013AF4B 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2] ath79: fix patching ath9k MAC address
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

---

v2: Rebased on master (due to caldata patchset)
---
 .../ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3240026aec..69d36383d5 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -108,7 +108,7 @@ case "$FIRMWARE" in
 		;;
 	wd,mynet-wifi-rangeextender)
 		caldata_extract "art" 0x1000 0x1000
-		ath9k_patch_mac $(nvram get wl0_hwaddr) "$mac"
+		ath9k_patch_mac $(nvram get wl0_hwaddr)
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
