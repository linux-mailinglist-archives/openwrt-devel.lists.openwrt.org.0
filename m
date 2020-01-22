Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC45145A95
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 18:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+sbleRfpabXc03jyeRU7HXOxeZEHMpdBnJiGo/648sc=; b=qONl1oeTfwONHO
	phZIYnBkM75j+Q3RSwWDr76M4Ae4V3dbYNiAtN0uHle5wsUjpQKEXVurvdvv1hcAIyt4fCe6mhftv
	QkMRUi3s2yDCFcgIZkonnng4Dkp6G1WqG1GnrahVnJrPxoYBtXvdN0RQDMLerB2pYtm5iR+wUun3v
	QbIEeWlroUtTTZN99CMMEGD/sBTrTVPAGL7W206lK3vOGkE4Uo0zrzBwqHpKmWJaB2fhP/G04YNgc
	p4urd6rANQCBjVXJBcQXYyKDGS9PMmfs235FvRiYO/+XVS/QEMyBIFnWTkHk58ijgfcEkGl9wd9Eo
	cVWhfsn9B6yA/t5sTKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJT5-0005OX-Jw; Wed, 22 Jan 2020 17:07:03 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJSx-0005NZ-GD
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 17:06:57 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MyJx6-1joN600fTo-00ygQG for <openwrt-devel@lists.openwrt.org>; Wed, 22
 Jan 2020 18:06:52 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 Jan 2020 18:06:07 +0100
Message-Id: <20200122170607.16180-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:qCGHM47bEFhP3yKzpqoySaK8dqifk5yhF2vm42MtxtBnsp9qIUG
 6zay5bppkJ4kWYrW4H1MFJzs1OCEyahmsJP8YBGas9dmbhixXBgNIjjInPeLR6Lk5JgAFiQ
 0kFQ8/4CdYCt4xlar7BvMcusWObpnAkPecWc+iumkBMr/+petKe9cuNfbS3UupZKxISrezk
 oR5pJqI9pjTPI/P7bh0oQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FHDLKBwMAy0=:lIyjPJ2Qy8r/0blbgZN2nn
 nkHG4rjSqRVZIsxr5lQlrrSNcLIexr0kS5sWO8ITqri+tgkBS1w7KXAE1xFyrg+vKKKepyQkU
 p3XNROdH5ZknPiS/Y0cFIwuBzis5EM8sPGwDyVpQPqdZDkS5QpNlYAwuq5o3/uiO/HzJ6dZtt
 HGm6X2IHlFC4N+ud99JP69N3idxuc2V918hRBQMnO4gYi9Npcx4JjbUkjcl9l8d3Z1az2HP/f
 bBdabxxYz3dh4/Ux1ZXmKDYqYku28lM9ljOd0YAVrRDZQmTOoQI0A5n3FOs4fD4/SOFmA9wmK
 sqPR3OPtDgkCDFgfMXrD/OSrzJ34Zw6i6CpX/YkOL+rguryk4kp6m6qGRt3MgeTHA5cusxBFN
 gANI/j17+nDivmqQhodr0XstQwCCsN8mTcaoYUpJWlySJ1v7GxzDhQ5r1rLLbukRE845Sfq35
 5BIB2lXTnGNb2Y/j9fU/c5uhRTKQ4/5hNUxnDpX+IgmgQB72tvFPatEp2nDQoNxo8Sf9geBMH
 Rrodj0g6ZhT+bVePnt+MkWlaoj5FOOxNts3K+LTVrCR1dguUo/eASBK7a37b2gkHoffddfBrb
 qf9DSzsQZjfjFQvIL8aam4T2YAn+K+pBRygdXF+9FUW6yMA+cbW2vObfEy5yjMxs8XHo1uU+u
 w7cJzwkvBJ0WoglGQaTJjWPYY+eiCoFTrRFGqSo5WdGuAWG3g2uZ6MM7pCZKltVwd20tPrX0g
 Bianh8xz+RNZOwgDcQ+dLzNves2oIs3a6WJjYdnMmQRA0NVL6RGQCBkFBq/tgzlsiP7g3fI92
 mq+/UeOInoocI72aUvBCihGf2n3dBau4uuyaWo0LJhEg2XZ7gDYiRE83mxFAJx1lt192uCx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_090655_876277_8E46CAAA 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ath79: move lzma-loader to the end of
 available RAM
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

In certain cases, the uncompressed initramfs image will overwrite
the lzma-loader, which is currently only 10 MB away from kernel image
start. To prevent this, change LZMA_TEXT_START to 24 MB, so loader
and compressed image have 8 MB at the end of RAM and uncompressed
image has 24 MB available.

This is only enabled for ath79 at the moment, as there we can be sure
that all devices have 32+ MB RAM and TARGET_INITRAMFS_COMPRESSION_LZMA
is not enabled there.

Despite, since lzma-loader is currently build specifically for ath79
anyway, there is no need to re-specify LOADADDR and LZMA_TEXT_START
in image/Makefile, so the values are set directly in
image/lzma-loader/Makefile and the overwrite in image/Makefile is
removed.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/Makefile             | 1 -
 target/linux/ath79/image/lzma-loader/Makefile | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index 34bd0a2490..a28658ec0b 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -10,7 +10,6 @@ define Build/loader-common
 	$(MAKE) -C lzma-loader \
 		PKG_BUILD_DIR="$@.src" \
 		TARGET_DIR="$(dir $@)" LOADER_NAME="$(notdir $@)" \
-		LZMA_TEXT_START=0x80a00000 LOADADDR=0x80060000 \
 		$(1) compile loader.$(LOADER_TYPE)
 	mv "$@.$(LOADER_TYPE)" "$@"
 	rm -rf $@.src
diff --git a/target/linux/ath79/image/lzma-loader/Makefile b/target/linux/ath79/image/lzma-loader/Makefile
index 738093a958..0ff59bc56a 100644
--- a/target/linux/ath79/image/lzma-loader/Makefile
+++ b/target/linux/ath79/image/lzma-loader/Makefile
@@ -8,11 +8,11 @@
 
 include $(TOPDIR)/rules.mk
 
-LZMA_TEXT_START	:= 0x80a00000
+LZMA_TEXT_START	:= 0x81800000
 LOADADDR	:= 0x80060000
 LOADER		:= loader.bin
 LOADER_NAME	:= $(basename $(notdir $(LOADER)))
-LOADER_DATA 	:=
+LOADER_DATA	:=
 TARGET_DIR	:=
 FLASH_OFFS	:=
 FLASH_MAX	:=
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
