Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF005884D
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 19:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ctMR2YvvQquIi4ygvMLgMhwpAitx6pMEvw81u2YfQr0=; b=J4llVqz7HcqHud
	tw1rGCjlGGfJ+WjnwKMk931W7KH4cy4NNvon08iXaHSOEE/huHgGysj5XtxW4rWuz25gLLX+RSwjy
	UVzfPYPEyyhCCH6zYIXhbT7ET5zUAzOQu8JR5CA8gxG8UvTGOhnEuqOMvImgbADVHwhSlTU9SXHxr
	iyaafPGt5wdJB3FhffKpeqAyrpDh/kOhvAggrgtPSakYYX3MXJxLZQ0SSe0w/8jzN/HXYhewv/R8i
	89N14bvKYs50o3XElx+1g8OQw5iuaC8hyoToC5CwzjumFTTEZGIkv2xfQLw5047U1SvKbmYITtwUp
	FLz2brVe4uDEaagGLYEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYBa-0006jQ-Ru; Thu, 27 Jun 2019 17:27:51 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYB8-0006hg-OC
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 17:27:24 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mt7Ll-1iZbm21Fu5-00tTg3 for <openwrt-devel@lists.openwrt.org>; Thu, 27
 Jun 2019 19:27:19 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 27 Jun 2019 19:27:10 +0200
Message-Id: <20190627172710.4573-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:cNCSlbwoTCj9aMlts32pigtpAYP+ggafoiQEic5wUcNEcWIZlJ0
 KM1maWCsBVRzsOGBBabEWyF4SWV00dHZa+1xvD0EouRkbME0iSCnOxaOwKbjN9AG8InWip2
 SkmhNyoeYcB16Qp/EXw59Cr/HtwFtkVD5JxDmHwVeqeQApCoLeQh85Gtl+RDesxVA1+wDup
 HCNGtJJl0Cmi/mfdiRbmw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IE1OyxDrD40=:/WHhRPPNlWGoUploumWVCl
 AFiCJNRmchZJ5aIh5EhIbj3GeX+iZ/W2xwvIlPUab48E1qVhNRqoGorotPrKPVkuS1vB3HU+Y
 VHibp+YD/BghzwLnXw46aIpsjsWqhAGuW2cr/w343gJ7rtyJGhgmeyjIeTdZcU6AqQhLe5l6k
 Ps2NaxAvPDlj0rYLrhYEwMNY3bgxQ+cnbHAdJke6VmcpqZ16id+SZV4KZ3gAGmOrmzA4ExwBj
 Nq2sYripEawza6CSCGTRJy59tOGsZJfjyzKdBGdh/iu5FvUmeGGgqbxnwQM0yFXXfQLPfUEDs
 REqk35XYvA44bSQuZQn/B8AnuzbLfKiQ/rthRyxypW1dC7rkcGDByOJa+0lmOiiom6RPKLFDB
 URa+Ds7dNVSmYP8gYuJbk0wKlXenMlLItoGLH/4W8tTI6/9ACp8mVUVJw8fE2iluuXjyCCsuO
 HSQF9e6TjM0li+GN5MNR2cjd8c0EMVmsVw6am0Xa32A2ze3sgsEmdRzsny5wi+cIilf+LjJn+
 SyEjXaf99/fVxrHVuXQksgDmsLeQ4ISZlawn19LC2HRdophrezOub28jKrCNJLVdlnm5j9oXG
 tiDI0FqbMbnjxXS6KJE2toK2mmnFes9yxoGCq/nGz1KHt9fhkAm2h58PIEOrq3R781gY1oTBP
 Yi0aJ2jP1cX5bs/39ul9mMyR+jUUF2peLdlLQxX5njyb2QbRJIGOB5bI6sHq2sUQWLSaD/4vk
 H6X1Gv0EG81MSA9gTLsWuA8fTGSAwe+yDuE0JbJcwAZSwdwoUONXAl/8Fz8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_102723_099685_75007BAF 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: Fix compatible for YUKAI
 Engineering BOCCO
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

Looks like an undetected copy/paste error.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- Removed SUPPORTED_DEVICES again, as it is not required
---
 target/linux/ramips/dts/BOCCO.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/dts/BOCCO.dts b/target/linux/ramips/dts/BOCCO.dts
index 6b6ac754ea..cc9c6688dc 100644
--- a/target/linux/ramips/dts/BOCCO.dts
+++ b/target/linux/ramips/dts/BOCCO.dts
@@ -6,7 +6,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	compatible = "planex,cs-qr10", "ralink,mt7620a-soc";
+	compatible = "yukai,bocco", "ralink,mt7620a-soc";
 	model = "YUKAI Engineering BOCCO";
 
 	keys {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
