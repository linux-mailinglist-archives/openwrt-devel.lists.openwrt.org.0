Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EC3DF20B
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 17:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A77auO6gfE2FNJGPKOk6EPbzRyR51aSb/45MwGby24Y=; b=JTY+HBffSCtONL
	7nfc3lyP5h+YJKJREZON/Meu8VaVu2IpkKNUTlQyJ6nT2HI1JhxzS/45rTFO3tmiji80PkG49FYU2
	NDPE4JlYwKBd1c9Idb2Q39eRQqLHNaFGbbGK0ZRohH5ClYUYyPvdhlyQLk/5LVf0OgujSjjtEXjhO
	kUPcXpVsFHO6+c4wuTvozxGQP+7x3LblKS2MEkrN5ws5J9x/AOCY7yH4zfrdOyH+MvAm93pEKUrrm
	EsB2gq5iLhyg3iFc8D2sS+cAYLr7KxbAAEbAzolNsIcYD6zs7r/9FaknIkocfgvnKa/bhGL1p03vj
	p992Nys6BrC0PzcsotPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZyA-0007kK-DC; Mon, 21 Oct 2019 15:51:42 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZy4-0007jj-BR
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 15:51:37 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mtf7H-1i1l1u3pGx-00v6E1 for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 17:51:34 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 17:51:29 +0200
Message-Id: <20191021155129.51748-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ctGFT6PVL8uOGGy6Z9d71kIvD/X0HnF5TaVBpx7tz+oAuXg+Zdr
 mgBTV9NCkD4gdNTv/EfIQeiGPIzUEvX7ILz2w80iAGRLAywc/tG79F/MfPTfLhaBGvVAB/l
 FacEG/CdTaQ77Pbio+wCarQrgdJtkeXXfgsmIPxCr4rkSoIxFQ7YrRsOFHlm3tUxApz8w8n
 5swKvcAiWpPjNWk7A8KdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JEEM+dudS64=:tHDIGZMe1jFZgUjKvbRB9A
 wLD2BSkwbSBgK7f+euo0hFRZGYMtLSMt8NlTcwjU8iKK+XHdpB1Rk1vxGjeewJUUYpjAnmilS
 fxvyEKWYL8nXYv0G/MPG1a/nopf5AN1+OLBQaTV3EYiA97LdgydDHgT4TQQPdkX8fHki2JwA8
 kInfTbgCzpNsgn6to9rKptLHM+2Zv+2m66jV0XoITYhmb/mpEaU8IBTQgOxRRwCl0beWXQCcX
 y+Xurrc1G/fLa/prwiurfCix0QoBs6BlW06Gc8p+MWjMZXB8p6TgxugF31LOo9EgFbjq8W6uy
 JoVoMdNCj3ceiTgr3M0LFvMlP/Stc3H5elKqcs/gNk+cfXO1sVVdb0diHfcWRugI+qFFNPVSs
 BQ7PwAOt4ye8G+gvUUulpCHmnjMbSyoYFWvgIF6Vmnk3zKd5Dt5BM5HPFfmrVVOhjR/8p1lMa
 Ih2WMv/7MWItzEcCI3A0GFnSn+inx5ugZBzfU75vKxJXWqE46IdyJTwpqR3S93sLcdgvJOPjN
 r9z3eB+pSR05dqHk65Y7mMbKlFolRm6BgiKiIRlZBewfPj+aEuYrBY6GvTSPhtZIDS2qzNZ/z
 xJDwIuulb82B/ZBfMJ/nwvTxM81EE+xcldTboTWzxyrAbhGk6E6WT5mdih4+9h8JHA8Zjrkgf
 cf6NplwpPC+KIBvH5a6IYwjQyDuAiTsO0Xfmp+5w7snxyE7QxKWdBA+c4vQ5d/RMuRneM5euW
 W61jfVqBNPx+6jBFnaG7zUsA5AJ4G8UY9IJUIj3tcKvMRc7Un+g34aah+Sh0VNf2ApFhXxfeQ
 BuMX3n287DYL+4ckf9MT6N66LGIClAzgPr0w5sFyrE29EsgllpvIYmIW/0t/Jjir3nXqM97YZ
 Zv5i9qdMQUs4dapT6XAGMZsb5g4tb+W1KWRe38Cl8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_085136_683422_4ADAC904 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: fix TARGET_DEVICES after UniElec
 rename
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

Device node names were updated, but updating TARGET_DEVICES
was overlooked.

Fixes: 4408723d42e0 ("ramips: remove RAM size from device name
for UniElec devices")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/image/mt7621.mk | 4 ++--
 target/linux/ramips/image/mt76x8.mk | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index afb0502174..488837c5c7 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -691,7 +691,7 @@ define Device/unielec_u7621-06-16m
   DEVICE_PACKAGES := kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-usb3
   SUPPORTED_DEVICES += u7621-06-256M-16M unielec,u7621-06-256m-16m
 endef
-TARGET_DEVICES += unielec_u7621-06-256m-16m
+TARGET_DEVICES += unielec_u7621-06-16m
 
 define Device/unielec_u7621-06-64m
   MTK_SOC := mt7621
@@ -702,7 +702,7 @@ define Device/unielec_u7621-06-64m
   DEVICE_PACKAGES := kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-usb3
   SUPPORTED_DEVICES += unielec,u7621-06-512m-64m
 endef
-TARGET_DEVICES += unielec_u7621-06-512m-64m
+TARGET_DEVICES += unielec_u7621-06-64m
 
 define Device/wevo_11acnas
   MTK_SOC := mt7621
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 4d126bcd06..dbd80a6053 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -463,7 +463,7 @@ define Device/unielec_u7628-01-16m
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
   SUPPORTED_DEVICES += u7628-01-128M-16M unielec,u7628-01-128m-16m
 endef
-TARGET_DEVICES += unielec_u7628-01-128m-16m
+TARGET_DEVICES += unielec_u7628-01-16m
 
 define Device/vocore_vocore2
   MTK_SOC := mt7628an
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
