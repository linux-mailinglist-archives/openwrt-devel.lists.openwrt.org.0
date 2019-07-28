Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576E37822D
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 00:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=No8i+0eVcc2HvYfrNN3Hy8dTyfFxnUFnHthJkdyVc4s=; b=Kp9kzkGUv+QpDO
	CJGz1ixDdraOJJdwpJGW61y0NsUW4/Klu9h384ZTqvhEtG1nFLug4rnxCQlmo+eYJP3BZiZkENSGZ
	hkwB/kzaaonHEIYw6pv05LB7dt0nOIckrWT8I/gS44RWYSs+Py1s8tpTv4c2yK2gH+n9QZ7Klzf4b
	yOqRvBGUFh3fbJnTOIez2bKLpMqpuycFRRmWn5dyZEky8uunfCzS93T0Q/LV8yQFyos2qXDBBn1Qy
	0dEnWpcLn48FK+8skGeLzGLFkzhnNz81+gPNhs/9r9UH2HR079+LVSSWvhJh6jhGljnU/FAH/WiIF
	n+pkM5Sf3goX15fOLZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrs3J-00089A-De; Sun, 28 Jul 2019 22:54:05 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrs3B-00088W-HB
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 22:53:59 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MUGRh-1i0QWP2YC3-00RKYn for <openwrt-devel@lists.openwrt.org>; Mon, 29
 Jul 2019 00:53:54 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 29 Jul 2019 00:53:50 +0200
Message-Id: <20190728225350.16816-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:VEvZbE5H67aCPKf2vnFfWpZkEQZZ/1+2sAC+ny4Nt78imWmwSeq
 /nxPvE8ZNCJM+HHX2nlj6M5f0p+PcnFgZnxWmnI88kNkzpY/ZambkANMm1peBKjgOA6VrTs
 P8HsoG4SpN4JCj1tPzCUqqdPU2bXnf06OM9qNgacwsWHgG3WSc004dHgz7wF+fH3Kb39ksj
 Tzp2U4zGmu64Lov4QL4gg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tRp/RJCIukI=:P1gyKZvm3becxyXfVSmR/1
 Dam6QnHKfJzpiH8YCFy2IFwr2bzZBTQbQSefTyeyHXB6vKBncNIE75zZDDIawIG0b5NZ9v2qm
 bloL6P1tDhCrar3QOLKUQWzC1BXaeQfo6p3x/0sBsuNndC2R3Iyz6JpUgZn6YCUZ4N/NhamIT
 kySLNGBMdiIMP01/kJq2QbbyrNs7flgWBos9Yt7grggJEpK3ScK1/rwI6ZnkGt+DbIMd5xqRm
 RDRVWlhDjSHh4MJhAlFKqjVT2FoBtXViYpw1GxYO8bmcsEQcUi6NSASlo2+B4LsZ2mtbZjpWo
 mOsnm0ZFZ1d5rTD6w13pdynmnCHW/FcZwwIfgIpxVVX/qCi3IslWZOcOe0lbip9BKk/NLs0dF
 BYKRTEdd0UGgV5OqcjMDw4JRdwkz4/cPChkBphoflrgrnH90NydNHdkSMVOmj5OR/xpygYCX2
 9JJ7AL/YtTo/BXk+ArnUf5cEM8B0+dxPQnF4FSN4muz2JmRt3e4xpQDfnM9H15XNiV4kOeK+l
 D8YplhhqXPXp9w9StEDj3isPk+wwRgoWNn8ohG8YvmNBU75oSJCxDimtylYjthgc9Ljxe5W2H
 /UQJZVUi1M+LQgNyliBk4z1ufa4N7eRlw++dALysA2lVDMG98reflhOZ5ykcgCSH1uj8apxob
 mT+eD5Q8+oxGPLzWKZcPokNfMnU52FUP+HV1+jITvZvCUdTNf0cvo7frSExIphtVJ8RvRk9F9
 6KdJxpuDboAZaSCCoR/+QK4OVdbMoPbaGEnwCdil3Eu9V4HBBbQBuu9GcoM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_155357_918497_155CB510 
X-CRM114-Status: UNSURE (   8.60  )
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
Subject: [OpenWrt-Devel] [PATCH v2] ath79: fix indent in TP-Link TL-WR842N
 v3 DTS file
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

Convert leading spaces to tab to match rest of the file.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts b/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
index c173add252..17fa09dc78 100644
--- a/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
+++ b/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
@@ -110,7 +110,7 @@
 };
 
 &usb_phy {
-        status = "okay";
+	status = "okay";
 };
 
 &spi {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
