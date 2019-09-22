Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CC3BA1A9
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 11:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tMOChKSR1c+PeTWxHTPPLQGU7r7p2/H8QogCsDBzmmI=; b=V9I0kaLQ6gTsUix8qjAxvZyMiD
	hkbjSUqItkKUwFVW4JKJnwYhln5uV8Coj4FU7zmC/BHAHL7mcKeUk4+lj82dKDZcWd93k7zLJQ1GF
	DydOmS8uyDEMdCTlZCUQuOHTCqJvsl0VdL5X929Rp8XY1fMGMyLDoUqUnfvZSZd5BT0hPXZlQ92rt
	0EYgSkLCiSDV+t3vGVciJesE6ht2CsZhIP39Us1K5b3Qz7nsPOnBjByYCVH7iHO1nZmqns4Z4lyzH
	ofzZ44U8wsa7OKto1smnpi0zBHyUdB8ViukfoHoeM8FRq4BA3If27lLhPBm7RZvUNKcZ5dhP1AoWQ
	PaEVWV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBycu-0003Xk-K6; Sun, 22 Sep 2019 09:57:56 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycV-0003VM-3K
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:33 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mth79-1huj7M2EVb-00vBwm for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:23 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:16 +0200
Message-Id: <20190922095717.1714-7-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rdBYftOsmOrrdaHSIR9YdmO4vlCCSIqwoCooWbyYAgs0mOzySEU
 qRu9LmufKOvAIJNd6oVGks/rjxHjPNnMrVK6L2jtIvM6xqIfrG0zAv57a3Y/N/HytdkqLpQ
 xu9sUou0BVtt6FDVNBijaJQXXK9Dcpae4Qs2BXTg1JisvTBU20M7GSYGuyPnukEzOyeg2h1
 X//25kB0z9hetzty/Karw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zpNFNK5f8pY=:M2zmQfHAdTlNBaoQvXkV2q
 Wdk5nQ5tTpZpZis0jwKGAuQGnETs3TL267Mh5PlRhTI9KqSEg53ih7EynG1lLJACM4Fj/NaWY
 PlfCV9Bfdrz0W4Et9Qn/8x2UITczz/QdqKXdoiyZJRB5BQ6MAMipJtFT4wYufET8651UrAB5M
 /rFlr6YSXtfA6Ra1QEv/KQl5J/Qb9qnrgShh402hz0TwZOzqHbI29mh5vymGKuQOg5MWuKNWv
 XTVmTaiKM3Y/FQV+33FEdJgf97LbNG1Y9w293qC8LOjIBOLIWzea+LyE5bjxAO48WpG8xII7x
 Ghf2Lf/nFfqStMbbkI7ZhAFtaenDMAZ3KdHL9axJH2pJykWKj/V8qgWtv6UtJvmR2XnDj29Sd
 96+lX7h5TbzjCjijgI14VBI5a9TRE+L4NXTNcrHsDWi3OeVEDhTM43e5nojuF10ELSzV9vpdM
 Nk+hJUzBMmzC8qwqWROuAky+f8c7IfkNhgYFjpvCe0ZiFF+d5y6TgL+k0BMzrvrkfGiNBs6tj
 R5SS/khKLNnKUXnKwcgqGl+mLuxLnGKbQKmyRZsrok9mfYhkXSv5w2R/hgxWlCFgBg7YM79uY
 JS5uW9bpyrnFwTYxbZrwwDIS6mWhwD1WK/KXO9xdppEMiVU37twK9qup+Zq0un7ZEcUT3Y5dg
 ljkPsJIcOkmv9irOPR6rlYo7h72QmhF4tm31Y7Uq85zDet8R/OeJivdiVaI0KEW149IhXMGsY
 2Ul2l5tj6lABwT3tMdgx+v2wGdOiJJnQol3WKWNqp8IHOevFXex9ONQdA1xTP/tp5t6avwqle
 PEefxguD+GTq2zxNWEpVRozSwih415sr7cSq0VsWIdcFvTuvOskUtde03x7L/wTSupI9yfe9N
 DuBBW+DvsGDqDb5DyBuB+Ga7oQBRD/jFm7TuUiojk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025731_433052_C7AD02A9 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 6/7] lantiq: set checksum when patching
 MAC address on ath10k
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

One lantiq device uses ath10kcal_patch_mac, although all ath10k
eeproms have a checksum field and should use
ath10kcal_patch_mac_crc.
This might be because the field is not evaluated by the firmware at
the moment.

Nevertheless, this patch will use ath10kcal_patch_mac_crc for all
devices so the correct checksum is in place.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: New patch
---
 .../lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 244635c6db..dbfd201193 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -11,7 +11,7 @@ case "$FIRMWARE" in
 	case $board in
 		bt,homehub-v5a)
 			caldata_extract_ubi "caldata" 0x5000 0x844
-			ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
+			ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
 			;;
 		*)
 			caldata_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
