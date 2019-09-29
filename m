Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6C6C19BA
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Sep 2019 00:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+AVQKtSTDVYfGsi9BlXAoQMY4G2J53i6aJO5LsbEHig=; b=ODp8UJcpNvxxDH
	83Tp5dgDsv+qzGpKNFOXfNJSE+uAhZm4y3+vaN2NafZF6rkygqrOdGdKtiREMMD/yt5BK+IGlirYE
	T3jE9nZwsTNiVSm7MGF+2nqZZgF+iT+H0XcwxGDsZ3hr30czbaY9O+bcxKMXbYDOaeRKs0e3qkYK3
	EcK/7HF5dGyN3b7l4U7AoZUyq0s7iHqMipHz3lsk7hq0mcXPIHDVwbsSucu19+q2HccIqgXbw/sEA
	N31KHoz0yA0oe1diBHCqD6/ep/jZi8UC5JxPwTrMPUaoiXwg0i7NsXlkrKwIMWXxNtlkepA+8E0zd
	KCDUcrIqC84bNv+gUUbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEhXZ-0003WB-SP; Sun, 29 Sep 2019 22:19:41 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEhXO-0003Vo-OF
 for openwrt-devel@lists.openwrt.org; Sun, 29 Sep 2019 22:19:32 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MeCd5-1hh0oN3Lkd-00bLli for <openwrt-devel@lists.openwrt.org>; Mon, 30
 Sep 2019 00:19:24 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Sep 2019 00:19:22 +0200
Message-Id: <20190929221922.64460-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:GixJm+zbpmNaHNaLZLwgov7z2LDiTRqAsRqz1NAQkHuSR61c5vl
 imeXIXKLlS2MAVLb1TO9s9MlKtZ0TRg3IGacCu8bNIuGB8Up4ifHU4NQlRb/jfUoGY94A5z
 77xbr3DtVYkR+RcKwlRzq+hUbhXguDgOR/pZEMe9o+MUzzQsrBhoil9KOUmFqPIpAm9KOF2
 ep5s1+cXYeUqEUzYMh8Ew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3qkafMlCFLg=:0KZ0wlVfXrvJysf8rnGNON
 pxLDAYEJTVIgUSxxPgZs2kMxUlwM0HdwJEfI38Shx0wIspw1LYwDgv45q4sz5cpnic6nbIfXe
 8oqlOe/2a1pbhoCpY6sakrCa+5UdrLKbqS06MCd92HGOmwOo3fPAeTnQ5nYuAZgQZ/1IS8IWh
 UZqN0T/gzeq5+LZXd+iRr+t1olZKuhICJnsNe+zD0pdq8QA4SgloH6XbDaAArcVO51jS1mSzj
 te9c8b9JbY8ZI/OkmBCy06qCHY2rfWXADOE3FlEDkuEU8T4mjKE3JjrO5F5yV2Bfd1NGw1Qmw
 kDrh0a2u/p8f7vYkbiqh5Cvj9m4+6yyI9/QBUNvSWDrffgGDAAf+QXs+qcOKr6wM8jk+BX6C2
 gEdTJSaXZS01oCODZctHfIJfKEug5oSHe4D3hiy5Kr4XPZbVVX1wWPu+xBOKodMEirpD/90j6
 xTbksHr5nAbPXJZsVv4V1O1lDoDi0xgj4foU/nA5TkuI0kDYQ7Nrpgbbli21xgCBOVtA3yC1n
 NpI+E26EnCxcFqlcl7VMxbELc8yzi3OUr/Iyw+mQ/7PzywTNDNmt/3JgWqqGIJVJ5PvDvCBbs
 wAYFSTOdd2N+FxttQjfX1OHzNuk/UjTEYQJeq6ubQYaBHHpS+PgXPV2FHxjTNASjLOQ59HF+D
 bq+nPZU7vT8TtpZ5vF8FSSiWitu/IhNJuHPwcq2VU/2ZGX7RGsCcKrI9Pii+xeXegP3BZOuOb
 iw03jk7UAnBavtTOeshMixeynYDCTOTjntVTQtcYoFlCFE74U1pnxGlqLNRZytO09QRmnkyMh
 Woet1OkpAnt8AEqiqTQUo8KcoNZRBPkB3lSH//fTxviDNeNQQi6ZRdShCi7B1fX4IGGSXpFbE
 fXuWtKooETNxzByIvL/Xh3GwhJyuDGWs918ZOewsQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_151931_082779_600DCBE5 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: add label MAC address for FritzBox
 4040
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

The CWMP-Account on the device's label contains the eth0 MAC
address.

This only changes 4.19 files as label-mac-device is introduced
after 19.07 branch, so there won't be a 4.14 release anymore.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
index f9508cc460..b2a32946d9 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
@@ -14,6 +14,7 @@
 		led-failsafe = &flash;
 		led-running = &power;
 		led-upgrade = &flash;
+		label-mac-device = &gmac0;
 	};
 
 	soc {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
