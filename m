Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A84AC728
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 17:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JGLQI/DP1xeNZao/+e0JGam9aM8gptUypEMuPusSmCo=; b=KdjEn3rPb7N7QB0uh4bRuAlLn0
	irNVp72a68m+up+cWICU+wvAKRluFpTrF5xJw9YNyh8ROxZkkKLBuvWOgWXxpHogV0mPCqHprC/Pj
	J0pUdTPEKcFOAXWilyE2rG4+GQgTN0H8LsgmvGySsqT/FldoWYtvLOd1FXPYxSKXOPT4n2F+u3QSS
	xE9sAMEf9IYlHLtPsCNjQrnNIGIsLgTzS9GDDoswS1pJP8JwVkaV8222oZD4LhhzqtHWNTUyQD9L6
	hzeoclPCmui1C8Sox3kbfhp/jXdXjnM0Fy7phP6D/eOmvhQsVcY2tMhf2z2nVaoIlgusxgBznnslP
	29W4Vm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cIH-0005Aq-2m; Sat, 07 Sep 2019 15:06:29 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cHY-0004zl-Gg
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 15:05:46 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mj8Vx-1ic79T3PHh-00fBU7 for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Sep 2019 17:05:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 17:05:35 +0200
Message-Id: <20190907150535.3373-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907150535.3373-1-freifunk@adrianschmutzler.de>
References: <20190907150535.3373-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:99e9hw0GxT9Q0xwRTLDTJ1azExRc5asiQlRKKHei76Dh/4vVk3D
 m88OtcNJsAKDs5ttgiFy1j+qcKEVJSiPXO+2A139B9LXj5IHvMs1oHI+4Ov5ZBglDeetw17
 gicFZKjTiltHRz1QbyZkz25U+Qhdncl89AKeMihVrp+llegbih46cOjm2o7IZv0DPmHPGtG
 mjkgkkwAFuLVlPMKaXtfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9aM8bL1mnYM=:m6+uA77SYdfyheJ7mHW5NY
 XmEh12kvTMsTLc30E+NEBRkeMBgVhzRfcoZM1+2SSr8WGca8aCSSYUqJTRG7OQALC/an1Qiie
 Gz0M8Fyuz+wl9RUUzmBlywnZEljUguo0MBcD3SDOyB3pW2En18mWcJ8GY1fFf9QLq9lxifMV/
 jyF1oDCWhfcl2M4m0NsFp57tABgGGLgktfwIoQZzXD0Y1/oUQyfcZ9c3/Iq9RlgYipTq8e0sE
 epAJtYxwyyA+ihca6Fpv5hDY+g0+60f3lJNflO7qAJ6VsPcyRsLcf6UlALu5olMRbnV0dhYNT
 AD3cSEnDC+NE5xLlJUmpVfBLGo0xGIIOJvNsjtgVZWI8P5TTfDGtscH1xtZBqJNov1mORKpr5
 Camsgi5yrJ2BhiVgIZadnwbNv3qGKZeqJzW5VdmOMdZwW0Cqcpxa2o+J6yq+EHclZkmWdhzAi
 8QXkQeBtW8RJguLhUXiTA5Tt4E0aWdwgZqTcDKYK/jkfXWIT6v1BPRssCrqxlwBQc971oNHrw
 Ql4BBpY0lubtydnyIh3uJFCFygbf982kEgQhatTy+yVhgnVtgAMvEDMBGdQE+VHFD6ztrCUXW
 vG8FomyuVhzAo5F/J7iZlPrmsuvxFIG6GUsOrLrIBzNNOp9i543qICDKyok7XINscd+t+c7hY
 9CH5M4MLBnujXR3B4Gf4a6YYfqC93X/hYtszj4k73/J+j9qQiqbalMXVlS09Nt6BkWZZ/+RlR
 X7yKZw4AJNSvB5VLss47Gw5+8Sr7G1W/sejzXTNZ6T74ZzJBJElfBroWOYWqjtp5uUFlQ9CHv
 d/wOlmd7aB5l9ekrNx1y8T7ZjtbW/MPt2R+1QoC5nyljg054jADXRV4JpkORmPRMXJdTm5p
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080544_844377_ECD259CC 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 19.07 3/3] ramips: fix ethernet MAC address
 of ASUS RT-AC57U
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

This backports the only non-cosmetic fix from 6640e1c3681b
("ramips: clean and improve MAC address setup in 02_network").

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/RT-AC57U.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/dts/RT-AC57U.dts b/target/linux/ramips/dts/RT-AC57U.dts
index e757716ffb..6fec0cdf61 100644
--- a/target/linux/ramips/dts/RT-AC57U.dts
+++ b/target/linux/ramips/dts/RT-AC57U.dts
@@ -140,7 +140,7 @@
 };
 
 &ethernet {
-	mtd-mac-address = <&factory 0x4e000>;
+	mtd-mac-address = <&factory 0xe000>;
 };
 
 &pinctrl {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
