Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C581A6B0E
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IPKBfMyxM91Jm1+qWbIOuic0edTRQAEs2j+M6auQhvY=; b=VoR6ENlgvuznKw
	wyada+XRzz4PC2go0FNSMcXh1TW+OSMT85eQweG9b7WpLCDRNPxZ/VNBtl0Pv4ERZwDUGujBMyqQo
	BSyZ3VedLLT8nggYmHjmF6Fb/hx1RQKNq/QYDgX8pbMqTibKBsdNAW8m+syRP2HtMnqu4gZN3p+bd
	XEn0bzTWVOmDpnSSTGWH7vYEA84hs5/sO8kmbIqL2EsbNjqx+E05FxRHc4ytlUl2UP3mz86ee8JzB
	WnC5JUWKTOmf/7+k4jFZUVbL1XYumihyNNDe57ixDk3HN6PfOHimrrjaOnlA9YCRuEe9MLblY2Idk
	usHqYkU5s85wF1V3zu5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2di-0006NU-1k; Mon, 13 Apr 2020 17:12:54 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Cb-IA
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:33 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mt8cD-1j8q5z02qf-00tVna for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:26 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:17 +0200
Message-Id: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:lJPSG75yFKmVO/oJYOHdh9qAjn09MgZgY8hRRaIhavj+BoYBEFw
 UDPN8nLBnw0VGfPPgTNdIpfHd9VoHJMZv6MdCHfG0gFUFF6M8MOU+W77PocR/YyUGvefWOf
 J25aHwBlZzIhtn5w2LQq1ooth0dfSIPdip4HNPyHW7Alz88EiC5SkMci8T2z/q1cFbjcc5Q
 dW3hAjFiPIquqFD3E+gCw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uYh4vhuFoOw=:+EUOdMDUnMmueAfvihp4iy
 kZUGqgJ5/A6wAAiYLwFfCEsf7SA3gaaW82qkXxOyj9JI5hPXj+9C+1KHX/bVIM+gQ8b6KJlUN
 mxm4WJ6OJo1BKZsS5/a7QZK44Y7/Du3AQ6FLJlDRRk6MKe1qmEYNjRQtKAZor+e35F79aY8Io
 cqRtDJp/BaC+EJrCRZgil0h3QXMG70uacGCMF93DrPkywlHvs9XBSBAIHiPcrEyFMgvEFGG85
 YN2J9kylMYM9dWssAqEuEqKJzC4/S69APalSdVntjgD5UNLQyGllu//dddK01P14EYLBIEzHI
 ekjBzylEaDOpWW2B/+PKKA/6w17rsSVBzslLOiNIyaqv54oZVwLvnNnGJjDmPtkLVhdRYn9i/
 Z0pJWqlK5oUbSw6BH+5f/rNXaZTM9ZBpWJ7W9OcLutcuur2yeS2fu5S1RgsyGYpTnyv1l1Sa7
 4DubMbb7gH36UOTd3jM7wUua+W3H8NLmv7buxdM3+14VC+lTY7mdexRDxOe39C/g5tIB1iqmE
 tVD50VyWwTSOqtTakKq8QN5yLoMHGFcKujaBInyUye9+T+iXGe07NKiF6rA9JAvmj1kjpT1Sv
 Gn7qIaZfR85/FaGAb3qifvOv5xt6JEOb1sor2iX3iK2AUegxsa50jjNXGf+8V2xAmOWAaJ178
 rZt1Q1JgiJzewd1Q4pBEAoRU94iqGaS+c9dHEHck0QAFJWqo17nci5dkg9XM1BZt5GsrOMl8C
 TMDE4L8KcKIOuJ985cq6nL/pbh7Vcti5Q1rk1EsbOQzkf/uSpKkVK9qc2ehCxOQZPYy+IsQqh
 C7aqiRmBreLoWh/IPSGeWdSNPb2LRONPs7YNDeQ88ULSrJ18WjogTEOULklTgUMgIBBH8dL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101231_890938_E4246AF2 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFT PATCH 0/6] ath25: bump to kernel 5.4
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

This is another episode in just-make-it-compile kernel bumps.

This has been built-tested for all devices, but not tested on device.

Since there is only a few devices, I did not include a testing kernel,
but bumped directly as I do not think anyone will test in master anyway.

Adrian Schmutzler (6):
  kernel: fix include of myloader.o since kernel 5.4
  ath25: copy files to kernel 5.4
  ath25: refresh patches for kernel 5.4
  ath25: update config for kernel 5.4
  ath25: fix compilation with kernel 5.4
  ath25: switch to kernel 5.4

 target/linux/ath25/Makefile                   |    2 +-
 target/linux/ath25/config-5.4                 |  180 ++
 .../ath25/patches-5.4/107-ar5312_gpio.patch   |  212 ++
 .../ath25/patches-5.4/108-ar2315_gpio.patch   |  363 ++++
 .../patches-5.4/110-ar2313_ethernet.patch     | 1724 +++++++++++++++++
 .../ath25/patches-5.4/120-spiflash.patch      |  631 ++++++
 .../ath25/patches-5.4/130-watchdog.patch      |  277 +++
 .../patches-5.4/140-redboot_boardconfig.patch |   60 +
 .../141-redboot_partition_scan.patch          |   44 +
 .../142-redboot_various_erase_size_fix.patch  |   72 +
 .../ath25/patches-5.4/210-reset_button.patch  |   71 +
 .../220-enet_micrel_workaround.patch          |  111 ++
 .../ath25/patches-5.4/330-board_leds.patch    |  116 ++
 .../405-mtd-tp-link-partition-parser.patch    |    6 +-
 .../generic/files/drivers/mtd/myloader.c      |  182 --
 ...30-mtd-add-myloader-partition-parser.patch |  190 +-
 ...30-mtd-add-myloader-partition-parser.patch |  190 +-
 ...30-mtd-add-myloader-partition-parser.patch |  207 +-
 ...cat-add-dt-driver-for-concat-devices.patch |    2 +-
 19 files changed, 4431 insertions(+), 209 deletions(-)
 create mode 100644 target/linux/ath25/config-5.4
 create mode 100644 target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
 create mode 100644 target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
 create mode 100644 target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
 create mode 100644 target/linux/ath25/patches-5.4/120-spiflash.patch
 create mode 100644 target/linux/ath25/patches-5.4/130-watchdog.patch
 create mode 100644 target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
 create mode 100644 target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
 create mode 100644 target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
 create mode 100644 target/linux/ath25/patches-5.4/210-reset_button.patch
 create mode 100644 target/linux/ath25/patches-5.4/220-enet_micrel_workaround.patch
 create mode 100644 target/linux/ath25/patches-5.4/330-board_leds.patch
 delete mode 100644 target/linux/generic/files/drivers/mtd/myloader.c

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
