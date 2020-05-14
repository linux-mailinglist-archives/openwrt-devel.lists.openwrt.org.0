Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F151D3211
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 16:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5zd8gKG7XU0RJVPrisP54KsgNETJkrCDwV4t/OvNsUc=; b=Vbhv9HlC5Ioa/7rJhGWWgRoi2h
	RLSWui0AMG0ht8CHaKiCPFluF3WRgsfpGoSVoUt23ujqGZS1tkw7/hEosL0DrG8q9PFpZYyvB3Uh/
	s5lum/IdWGvYPSh9Ju5vBYHhjAQQR73kHCL8yBtaj/CnEOTFYK+CX8DJqgxcAA71UINVjupyFUoHK
	EZutuhlMorXPBt33EVvO50xu5wWtLLgBzWGtYfTPtXfFZqPI6Ap62SREm6qdAr4LZvWK2B3n9ACa1
	xos4HLbrDgqY43Dku6Uzjps8EJ/OhIETxosCxqqmCUSiZorxxCEcDO599Fe7YwrK7lnKS6tuGRn2z
	PyxjiovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZETC-0001tW-9y; Thu, 14 May 2020 14:04:18 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZET6-0001su-3z
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 14:04:13 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M5Q6l-1jXqtJ0K73-001RZZ for <openwrt-devel@lists.openwrt.org>; Thu, 14
 May 2020 16:04:08 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 14 May 2020 16:02:52 +0200
Message-Id: <20200514140252.42880-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514140252.42880-1-freifunk@adrianschmutzler.de>
References: <20200514140252.42880-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:WcyWDHnAAvhnIwRQDtv2SlYiJ+BY1m9kOeTzJVUZORZ0YBfKVlL
 wM5omFPtXBLtR13jVlVk1KmRy2KaK6efhp6Jn7PywNCJsW1kwniLml0NCfkGKIVEkrF9ula
 Jpol6NHHmevbhKwnsPS3DMGVVcRpbWcyzSzTn0ziAFpXotSuXEdvnp3dzNeZetrHVIk7GUA
 hs8As/qb1y3TbdpRgvJFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:shzyvvY44Zw=:H+fqCbMe37kfGUZxzt6aL8
 e+/c4zO1N6e6SeVOtB8/fb6kQP4Yd+jbKw0DTWXIwaZ9GALtzW+WPq6NsAUBxm/MEE4kNrpRx
 sMWrNz0GUD0+ay7b/pP/JbAEX5i3Kx2DGQtPn5td0ShXnIOyMJRDxMH1Zdvpw+jmR+8JkoHrz
 fbVoKDIXfbbXzaqObXF4p3kbwJFLv8djVEEJikzGD47k6Kcs4ZT9dqYmnJB1TQniJ53ZAxBmG
 ghi/N2DTLIEopu8x0Wp9e5oxwheP6U9hIrmIk28azl4/YXAB7o7N8LI89x7RsIkIeERoFsT29
 nfgssqivcOIpvKpegKpTEPpIulTWND9oKtkL5OMihkahus7Qmc6waE3kCRNOWZkmD+OYlrT2w
 jrglCZUVpe7pjYm9UJGVHtEB/TvW59cEorNFzSE5NLgdxPyJl7aiijUrkfLJkrNsdc+Cayw9z
 pU4/eSHfQqI7EKO6NRK5L0hCHOYRZ+1jGu4aqdoKX9K1XX2o3AJOZoQ6mQee6kB3wH3tnxjid
 pKSK80/2Hjw3d8h6nT04Pu+iCPcH1grBh4yamVrhEuJuhsYluGKsFxj8kpJyZ2CWOvkMly3Oo
 rS6uGRSfVLhl3HWl+o0PrRaD5NSn9rVeVfP1KWlehtfbuQy8QWiDDKXCc0BE0bbVmElJh4BRy
 MQrn3rwiBNxmiRQw7fbBCbNzsXIryGcdhGlXv74SlpWYJp65Xf15LrN6fotZNKkN22xGro8No
 vtxAo51K8Qlsv4j797y8BtvMWbwpN0gdrDOE6tomgJ8tCCSyHV/hPQ9IDt5Iisw/oqNat3TD1
 JY2lmbAMdTnVMnwjCz+myr6WAxEVrmGoto6UC5Mjjp3hzg+/xgSgNu/fcunSEZ6ELQDQjnv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_070412_457084_31FB520A 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: drop non-existant ralink,
 port-map for Ravpower WD03
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

The property "ralink,port-map" never existed, and the device is a
one-port anyway. Just remove it.

Fixes: 5ef79af4f80f ("ramips: add support for Ravpower WD03")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/mt7620n_ravpower_wd03.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
index 6d734bb836..f67f186be1 100644
--- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
+++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
@@ -100,7 +100,6 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4000>;
-	ralink,port-map = "wllll";
 };
 
 &wmac {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
