Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B3961B9E
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 10:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6DtwF7oFHslXFuVouDACzsmOHT4k2OehEh3HloA78OQ=; b=igDFHDmV1zmmB8
	0DVpy6N4809K5kuOlEI9Lspif8xSplda1e7cLafB2/6yjylKE+uZeHLCPMoMKn8AwqBIuQkntsyVZ
	sk7C4xmF8uAwiDiOVcKSwZbjRqhnuYtyLUdMO3wdIAW6HBunY1/TEsRMstCW1e1X3BOByGp6oaiEy
	dzn28zFIUSS5xQzYKtPXift1OQzCG+U0D9guOQ7zIvjxIkM3BgIwNFj2UqyDA+2yQ94goTTZAxUAg
	MoLsYARb46SzE5oFxQ+AmCSsOs9nfy4y9TiYC0tkaLY2ncWsQyIL1Qmewd++P1TFLsdu5e5AmYR9K
	WC9cOG19d3nCMSxToZfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOrT-0006p9-KJ; Mon, 08 Jul 2019 08:18:59 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOr9-0006fE-Pr
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 08:18:42 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MvJo7-1ibGac1ckD-00rHd5; Mon, 08 Jul 2019 10:18:31 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jul 2019 10:17:28 +0200
Message-Id: <20190708081728.909-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:coLDukvKwNa3pkLpzLCYW2JU4jUaibGdX4lgoBF0omjdyklt1kb
 vINBL6OP7+RgB8+ku4HQFWweE2he2MaHw0FTN0oFUdKuHwC4jAG0QtzMEuxeK0T5GSO8QdL
 oEYEZbWfl51d2/iY7TRGyNrMOotdQxdCZ7zpEENfTSTzmKTzB8RLIshdDTBujOSnT4DDDsx
 1wx+RBJRH1h3qXG0rHynw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pU9/4YhDECQ=:8aS06n+PrRbVMz6P1v7Qv8
 LD2tAAMBPc6WyCuh7i5BFijJ7kzG5Pk4zhA+KQcmOWGxd9vcH2uMwCDEI27nHtePCXPuJpuyT
 6AZYmIyfDUPJQZuetzsNv7oFuMRa50VCEf2GnoxjA0awWXe1tJ/7NaSi2U9Y11CK2/eOvunOH
 o0dHtPYg5xwVbki+ulKXutMeD+K4/95OQNWf6yKZ8mQ/J6O6C4/FUU68423TFFd9gOp+J+D/R
 U0Z4TjVLUwBZ0czwJrxfTHMEqjiSYL9cPvMCTRQUbNOSI2isSxwABcCUvx93/bdxEYUOCXkMU
 QpBGyP1/zZIR6m5ATEvSzPUzU3KZAogN2QyWx3GUnUFAV1qquIlIP2lHW1Q8JxxNd1Sgr37Vy
 zyTdOIIhMibAtE61sDnNkA2Ws6CKb4prQNLiL9SH39d0C09o6iCGe+Ro4w0COtl6VX/Bxm8aM
 vUa4J86GDYyqq1QX4E29M4PlvJjsbx1Zwm7gF+aAeRY2m+vHyEcwESxWE//qoBD9qUvYfDBbH
 lhl7pO9D97BpkfZyFcNPBUS5mBwMI3bdGBl08JVRyvTo+gvm2WRxRaoY2DD/dGuuJNsV1zz/Z
 dnQGh8WJTK9fnBnhDYSplFK01DIMCBKCfQM1fIOBnDtqnl4dr516B4Vti1wB13afh3LgjEfHm
 drqux2rcJKqrdD8kmLvmF+NxVkx1q3+ybJ7NZmmZMJ8TC886efzf/+0rJBMY9PtDFeEbc0aIU
 W+/mdBpVsscFVZEOVnunfdfNEwinY8wmC8q/W55W7zJUn2GH86RNiwfIKT0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_011840_137368_B1D323C0 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: Fix path check in get_mac_binary
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Logic was inverted when changing from string check to file check.
Fix it.

Fixes: 8592602d0a88 ("base-files: Really check path in get_mac_binary")
Reported-by: Matthias Schiffer <mschiffer@universe-factory.net>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This needs to be fixed in master, 19.07 and 18.06.
---
 package/base-files/files/lib/functions/system.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index df671465be..9b9d03df7b 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -4,7 +4,7 @@ get_mac_binary() {
 	local path="$1"
 	local offset="$2"
 
-	if [ -e "$path" ]; then
+	if ! [ -e "$path" ]; then
 		echo "get_mac_binary: file $path not found!" >&2
 		return
 	fi
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
