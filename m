Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D309F535B
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8WW2JJeZvw9yvPrzZHcQ7mHg4eHGBWy7M+06ogZeGBQ=; b=IvZ8JTQBbAJwgD
	HdjOnHpYQWMJ0XRvhgKuUbCs3ayL8L4v3wZd1s9anF/XVyNrtyaK8iMawvUqlpuNI2v3U1M2lHsZD
	lcYnf62Af8fpYDRXRoTTcIwg/YQCOaJJVuzY55bMzx0dxLkyOdMkAjX0i23wFmea8uNphLPHdxFYl
	vtDUa2VfcdgYatF3xNSW83WWS9S6lTLdAqSgaEckvzzg4hq2znI9+a3dQmXGPzyqqp7VeJvolF168
	SaOybRR1oaJx1hamlumGzeL8rnMxWzud58fhWTy5El2nWX1t1HvdAkYvrMxzQiqTVntVt5spaYnyk
	mmNUKBYvlFM3De846hxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8nW-0000EO-2t; Fri, 08 Nov 2019 18:15:50 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8m2-0006Ci-Ne
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:14:21 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MSckp-1iMJG116gj-00Sz6j; Fri, 08 Nov 2019 19:14:12 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:14:03 +0100
Message-Id: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:VrAndXjtM+lc+Rq5+rDhIa2rdvBzveowa9PLdHmxTuuypTQMluu
 TAZnMD4z8++CvxOfxAP+A/oyJbmlDcgzE4e4gNrgPQfaqH86LDb3ws094pnXXOlSATfPmDY
 dC0EwpvQdOw9KRyNdZy7uZrScPdHJLAyDGuUdBx+LRfr3Tmz0hhmmDl9+PSKCAzoxwL4nG+
 1XoiXGNmUmr/tfTyaWTfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aAGLEsflcG4=:7JuvWFVlon6ihz+M+iZ56I
 hQRA7TsJ74wvmKcRbNLm8h4pYshkGnbW2PfD/11dnHCYGjpG8zfqiKMG0USRrKBAF4JjBODvF
 nGZHBTk7L87H8IO7a89F9xUzcKAzexKH8gl/OC8C683VUZUUW58xCIJHapI4stQWr4/LpEVm5
 H1KazJW5+hhdl3sNZ9LV0PZsp6JNRedD9Q1/WxHcAg21cgYvl4AwvK1cRmZdMgUAKLjiuS4Zb
 PhlKG91/1h/MPHaJEgzs4iuAocoWEbcH2fEFq9vQUgTQ1T5htg/3mK4YRXflCe6NHk5wz2uot
 /fXV2UbKJH72c6nDhXj8vKfTaFKuCZbICBWxi7HleVKKVZD4AKTgjH/KyLBnjjDYrtyG19F4K
 ri9FLo0T9l6ohpov1naVBTC6QAUYJOsVov3Cwse3HcGnjRgL7ZjfCaAQn5nSZtGIcJT8Bo4SQ
 nZdvVX8ljBigp4Tda+DNPgIWh4rMtzlIZ4x5j35tmqXRfFfZRZRpCVi4UvDKoK/8Yij9Bljxl
 ME0TuqNdv9Ypvc5EGER18EA486ysPL//1MXWJ7g6Kp2D1MtruW9nKQK+pAPpJQmAmY8GuWG84
 qxIk6vpNjYfYpdOxr5kfE5PK4LpiJjor4pajLHmjjNvCDun6YSf2XeANYvnbZI9u3cSEBYK5u
 VIzjK87kMOsJuAtc1AkY+zjEchrMgz4u1fi871VzHgQYk79LtpFeJqduTFeL7lvuYQDUGeWSw
 imIRlZR2OBuBidC6IZE4StxjuH7tM/StlhuaCXOJ0rdBvAEGzr0vKbti/d7uD7NlBh6Sg5KF6
 UznQLPhrM+qSMDXA15aq/ZwekInu1/ru8lATXvHPX3mXfqv8yIT5zG/WjgOBeQH+jRx0XH9ou
 U5EQFVpOMFtyog/bmucxd+DdrLCVDgYzv+U9PjxHs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_101419_070401_85885978 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/5] Add 802.11ad support
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cc: Robert Marko <robimarko@gmail.com>

This is a pick of commits from device support PR #2417:
https://github.com/openwrt/openwrt/pull/2417

There has been a request to merge those particular commits,
as they are required for any 60 GHz capable device, so
merging them will obviously make things easier for other
developers.

The credit for writing them goes to robimarko, I'm just
bringing them to the list to speed things up a little.

I'd be happy to receive comments, Acked-by or Reviewed-by
feedback, as I cannot properly review them on my own.

Robert Marko (5):
  linux-firmware: add wil6210 firmware
  mac80211: add wil6210 driver
  mac80211: add 802.11ad support
  base-files: wifi: add 802.11ad support
  hostapd: wpa_supplicant: enable proper GCMP cipher support

 package/base-files/files/sbin/wifi             |  1 +
 package/firmware/linux-firmware/qca.mk         |  8 ++++++++
 package/kernel/mac80211/ath.mk                 | 18 +++++++++++++++---
 .../kernel/mac80211/files/lib/wifi/mac80211.sh | 18 +++++++++++-------
 .../network/services/hostapd/files/hostapd.sh  |  7 +++++++
 5 files changed, 42 insertions(+), 10 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
