Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDABAB92E
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 15:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fQ7OqT23MIqvPkLjp2goUJUwadtm2vwHnwO3BzSk+LI=; b=P7u82+uP7r6LIz
	snQ6gI/abngjRwR+ZyWObKrDzM1uLaQ/jj1YgIDIOaqUR3TOf1Zu5jejXDe262KJB9HhSoG1py3az
	K1wd/CJFH2uuTAYCimP5eVJ2HOYklcHt+97SUdqjh79dQrOL35if7rDwp+PxHtVgN6fKwnmC4omAw
	bMmkVeH4BwfxcdkQ3nSF9JR68W964jC0ZH65toMttoBQ+DAPNEaL4GQJ0TXyJ0TTcIemMnRj3BBOo
	EW9f6iElXBqDcEt5SVOojF0m4VLsrTyDqpvIodbjawX/wKsRfqyLOcMUXKSFBpeflh6aZyxHrHN8W
	rXWUjbI4RDeWLIMbCFlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EDG-00056b-D2; Fri, 06 Sep 2019 13:23:42 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ED8-00055v-Vp
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 13:23:36 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N9doJ-1iC5Bf3okX-015e1D for <openwrt-devel@lists.openwrt.org>; Fri, 06
 Sep 2019 15:23:30 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 15:23:28 +0200
Message-Id: <20190906132328.3736-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:isgQbGOTGglJqmYxonvZN4ovh1Txo9NKsBMo7QW2lJWIukx1y/I
 xk9xB57YR1echIaDAl/VEtqX6S3xLFU41QLOjyicKl2S3HOGsGhY+9d6myO4haqmdn0Eo0W
 SSLbsZbJwZHKvNRY+JMdr77dqUKYxxxxcWQMxki0BibCG+q39aR3RXkamX4RBveXn8peEzn
 oYjrzao0cXQXg/KSQxx9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BOssCdGWnLs=:B0m8aaISJIaZIPxCHRbaeN
 CswN3ux/Umu84c19noEwYYfYuNriZpLWto3Am+Nryd72JjLW3C+b+Qm/1doFqc49DGvJSsYgt
 6WsYygI+ccvRN1/Yh5yNoevxlRMPi6OzEldiExk+FBuNUfFjmYuCqXm4+HJCh+U8JsQpdm5jF
 VBerePGfbGa3r7ZVLQeodXHjYCoLZfc1iEuzG0Mb2YpvsbaRYrNha76GthLAbm72hkZQn5dJL
 /dISPQTaAHB9d10yp823cArDS0afjT5LnYqOLVtlDC8eAPk43+bhDNTRVDdCcS5hoJP+We7/E
 JEOJG2NA2nY8CQiK54xtUfPBqj3B4IW8jLxowMQwLqsnNywp7QspjBdtUFixkUhF02P8jUyEQ
 UI7E1io+/9V1dEKbqp+oLBQFqHlrPvxbj/FqoEzTJ+YrVu5a5/ifs55vOm3gJJeoKREdhS8lU
 qYO4tBNMCkPE3dYcv1c9fyPdXWT9NfMXQSL6mTBloUmNNiBpSCcCI56+dQV7qgKMsOLjNsTNU
 OyQqgV6T7pg0ZRp+3o7a4k3LREZX4e8yfM1Q91Ps1FCBWlzluSCcCxHPVSXTQhFajXjT83+3c
 5GTdxLQrz4o0SNJ0yqE2rTs3XC9o8f9pZmAQnRyC++sgiL7n5CWskDhIsGoYMyo/t1W2pVJ+H
 1u6aq6I2WDhsb9pKjIz/qsbQd5gI82DhQrQLMR6uiQr9nUDARi8cAgjhKnKm93PJqh29Vgonp
 AzahfQHALOZtZ3vCthMv6KzU6CAa/O7DlrL3EudNj4VHwNZOxHY8vLJ69tsKOicGcnzr7sc2j
 Y0Bdi3+7W8yvGj3psLwaKkzcykgRWOVvZhvm9brznnDM+WA160mkl+C7JHFKMr88VvUmgBx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_062335_321049_386A342B 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] base-files: use get_mac_binary() in
 mtd_get_mac_binary_ubi()
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

The actual retrieval of the MAC address in mtd_get_mac_binary_ubi()
is the same as in get_mac_binary(). Thus, use the latter function
in the former to reduce duplicate code.

This will also allow to benefit from the enhanced path check there
and bring mtd_get_mac_binary_ubi() more in line with the similar
mtd_get_mac_binary().

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit 45600124fcbd14ece6e289cb59b318ea44c598fe)

---

The enhanced path check in get_mac_binary has been backported a while
ago. Enable mtd_get_mac_binary_ubi to use it also on 19.07.
---
 package/base-files/files/lib/functions/system.sh | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index 9b9d03df7b..dceb66a851 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -79,12 +79,7 @@ mtd_get_mac_binary_ubi() {
 	local ubidev=$(nand_find_ubi $CI_UBIPART)
 	local part=$(nand_find_volume $ubidev $1)
 
-	if [ -z "$part" ]; then
-		echo "mtd_get_mac_binary: ubi volume $mtdname not found!" >&2
-		return
-	fi
-
-	hexdump -v -n 6 -s $offset -e '5/1 "%02x:" 1/1 "%02x"' /dev/$part 2>/dev/null
+	get_mac_binary "/dev/$part" "$offset"
 }
 
 mtd_get_part_size() {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
