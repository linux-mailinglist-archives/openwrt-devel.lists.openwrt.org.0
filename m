Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC88AA166
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 13:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xpoEmqBxE1aNtd/8psC8pRJ4UiegCJgGuQ/8Ax+8eK0=; b=hmXEF6l9dUdZro
	gNKLGSdfY35xhAcZ8d3Uvyyjkc2fH9gxnj8GWAASrUPe33h776LOiL9+mS5UNvLECFmrE/p/sTAsJ
	Q+EfieUw1hPuUeGbwKguXESDDf/fFgvOcuvfjXMHmUAHLFgLpYSfiTp5vYWBdRNcudeUbOBjycxqI
	QWyrW/uyoxLj/YZJUiXvbyQ50hI0jDDY+I5t/q4KpsaCSGFeBCxooT+4uX1cOUokSS+2qMmkxyPsL
	y1G8CkSu3XLOaSIqoHB+CoF5Kkt/K0HFyDS2Lvtjs34WLjCGfVHHm620aspwcmrQqt0NM40d9Niz7
	jzxu9aiFrvi+8GNC7zJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pxZ-0006Tk-OE; Thu, 05 Sep 2019 11:29:53 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pxP-0006TK-GB
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 11:29:45 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N1whr-1iGsUH3d5l-012KGR for <openwrt-devel@lists.openwrt.org>; Thu, 05
 Sep 2019 13:29:40 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 13:29:37 +0200
Message-Id: <20190905112937.1341-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:2VP4XjHUjULQ1hKjZyHwZBDPRACgjyydYthPTQOJXPjJUCGg4Fa
 XZK9SG2KJQMsQyYNdV7ShXl0FDkpmWK1olN2WP/7usxPvkt8qJTj4O0ubHVFImgUm3ZTh34
 +zy89E+HDd4+oKmnjPPx0M31ZuTOBAaFyW/EigDJ7gJEQ0M1pIB8vC6F+ezqXD3+vYDoGpL
 CcLcgaDZe6ew7QnUr3L8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2omKUlKqVSM=:khuOvBP0zEU7I4JPLGM5KH
 +hoTYrluEJ0dRD+/uBTBoLnnNiYADU4g9hhLL8sLEirFYI1xUt+ZErIYI4SaqohBUbfyHSiT2
 uGvlrmAHVB11g1stEkV1qrozr2Yzb04KLPi+bUhic31shbYMQHGJOBP+va2kQi9ttd4BqYoBn
 HSWKWcEWn653uNw8RYAG+1u8sYz0eAAsrfCAvVITkWfPRmi7DudHSy4zYbEIUA3HPr9cjFhHl
 0bUNB2NtE+pXySIeBhk3PiCGtZzncKgPf9qRoJZMx7gqq9nY98UiVPTSYqgTeyG7zaG60Hxfw
 APGQocZO8aoY6t1ZznglO4wyGZgayDvWzU9df5erhAb0rui5mSmh/tqWQyRvMPb2pZq8P/tZQ
 R1UEt+RLzlFV1jGIeUx9rJ3AUM6ahrPDeAETnDgh9t6Z4LjZixp3L+cVFZ0U3EiBD4gJy6UnY
 ut9VlW6i5QsOYP/Y0aJXF33koNAZGiLUbkYt1YHz+1V89LdktsQGY/kBHwlj8SFruuuHg5k+R
 /YXdQnU+c+PUFRDee3si2PxeCqrEsJ4lGvzUbKesB8eEVugr8ugt4Ybbb/fXL8SOiaM9OFVt0
 G1rGjvc5utlaNAT+1g69t1wyARgpOJN/VkkOgWvG+374uCrNlrob4r6MunJ457TIgtxMpLiKt
 +/n29LBbjT9bXQGJH8K5ZnMezpTacc519Au+izwb4AaZePJSaMGed4PMrW2wbx8cXkLEqkR5P
 wFwDcuiXLL9G3h1SlwDj/4HhCy/a51/Jw6skzIHcDx1XYdgNC3D+Y35QP3LY+AniT0t8+QMGw
 4DojsELPZh/j7i0bswkJkZ/RG0FdbF7v+gOOfA9zm+6fSWLGPEsK9mRW+VNhQeQFcQGgoig
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_042943_834193_4ADB2123 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: use get_mac_binary() in
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

---

This is not tested at all, since I do not own an ubi device myself!
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
