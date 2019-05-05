Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C80113D81
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 06:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2I42Jl+fPKpnC7Amdk86uFbgTO9eCUIJjOtjjvJsypY=; b=Db4Vvm2GucdZfW
	MKDIrhpjHUcrXSLTnCGuiyE9WXR6yIIZfqCJqAsSVPnk8NSghsjewWke6M8DS5chwl0qikdRS54C4
	C+r/Mzo7T2ys59Yk7xq0dXbFYc8wf0zY0IgaSiK8e2YLZJqTGjjpFwMFISPm2SUZOhY9vbmbftCjo
	RWogTKAmmLT3MoNx362aAT7bhpTDXP0t+i2GNMA6NEyAIvGp5Y58uQzCrpQV/byR75qjD9Qvb6+9r
	BFaMLrnP+sEehCMwmBSWFpWIPu2yedNdAUBgdjc/AL1vz31o8Qm/CaZFREa++sY4aCzdI1VNr7iY/
	EKLVElqyUXUXsF1PZrAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN9FN-0006pO-DF; Sun, 05 May 2019 04:59:33 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN9F2-0006ob-30
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 04:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1557032346;
 bh=pN+O2rsKMWpqWNubQEpLUheRXpD2XNI8yr3etqVrIMs=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=QPUqb6zvXE1adhnLCH5UcpLlmSn4KaAZrxygJxJ2ZJe/I1rbwzirU1cWr7eNHKadV
 LcKzu5uUC3zHYk05ZWox08nSY2GPvWbeUsq8RFCPRQ00Pequ1DOe2E5QPHlCn/qXns
 DYPcArdh18f3l6Lu4XJD5d6OSjdsHc/vHGBDgny4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([217.249.114.101]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Lqi70-1grxLn45yM-00eNCA; Sun, 05
 May 2019 06:59:06 +0200
Date: Sun, 5 May 2019 06:59:04 +0200
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190505065904.23fb1d9a@mir>
In-Reply-To: <20190504151602.7194-1-hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:c4LiidrTZJcoNPs3StDwYm+crj7CG0sTgMb8ut/d6bldKXyYmEJ
 LSOerx+Gp83emk5E+2KFJMBtsX9rM3PINpasqp3CUbnz5DeoPD6e4A5tQ7cGmCON6MaaNFH
 qIG7DCnRIajnLi/jP9lCboVHzdIWu1xZLlGQ13yM6L/J5nnVFOQgLpqNiiSC3XdUIVDu0JS
 joEpf9LkZea8KGuJsEqgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DFbRDOOF/4Q=:q9sT1S5RjBRaT0sEYVc5X4
 7hbcLKxGEzimBpfiSsyHTqZ+1bX3jlCWfGR/wdWFQO44/ADNgvuMsiLmJKHtRBXXxbGHSrHpZ
 OSmG5WYxVjHKM22h7YPdYKQTrDJ3IF7as4UW7b/h6EG+HcTonlypAUxkBjUuWJ7tFfU6s4eDu
 cWwAYrx10tiq0J6gQDJ3OcZHydeIbjjP2zMS7sORjsS5I/uamYDYCBYaMDPEfHgGqEeybcIuI
 Wrn5vjEng/0QP9491uC42Gm66tUNwMdXsV6+Gsv50BQkJ2IDFjSTfv0xS9W5qbbBxGAEwM9d+
 9Y3mzv6dFfKpVu3X8EprM6nWrr0ekKBw+Vnx0c4HoX2bamyVtOtd6LK3nMQk4Mo19kdY6DTM2
 r5IIk3wG30soF90j+Px5V3yvpUikPGUxBb7AQ+xitPCMHQ4MNN/QvX7FuFzjgDAgbc6TSgeW+
 XFhgQQ6NECerKHzX8WWomHznmFXHgPAqoSutHF1hjJxA0Uk1Bh4LtuSjNz3n09vafC/iCsk52
 oy8QLDGAZOgHL8zvl4DKNrDQBD3tVOd6OVUsez83Zd6TM9ZnVJAUzejjcnpUJD+NXg/SVZosD
 DVV8d9sv5D2AeqTEVUCD55r62xKUZasdU2qkDI4HIRZXPjoDo2x+uQdkJLestJGDwNg4CI+0X
 6lmd88YK7CKrSLEM7fLNQRK59hb2P1PmN2U2AK1xz6v1u7cF5IYq4Ub1OGgR4fUoozLCzw3yu
 lpq5PaAqLOMBMn33Cpsfommy9tWWvE8AJfnzOQcqrX5SulMpRMfO5Ie5ga88BGCzpElfX4gd9
 sSVtSrs2vU3xE2nEhYI2Zef6ZEvCsHfEQV0uH6NO1tF7EQmRKAc+JEhwSciVt5Jr9prd8P9RP
 lDgxhwKbncC98XicSeUyreMPeKaIkun6rb7j2ABIQilhKSFQdQJTP9QGCFcqNT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_215912_473777_662CAAC1 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (s.l-h[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] hostapd: update to version 2.8
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

Successfully build-tested on:
- ath79
- ipq806x
- lantiq

Succeffully runtime tested on:
- ipq806x

On 2019-05-04, Hauke Mehrtens wrote:
> This also syncs the configuration files with the default configuration
> files, but no extra options are activated or deactivated.
>
> The mesh patches were partially merged into hostapd 2.8, the remaining
> patches were extracted from patchwork and are now applied by OpenWrt.
> The patches still have open questions which are not fixed by the author.
> They were taken from this page:
> https://patchwork.ozlabs.org/project/hostap/list/?series=62725&state=*
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Tested-by: Stefan Lippers-Hollmann <s.l-h@gmx.de>

[...]
> --- a/package/network/services/hostapd/Makefile
> +++ b/package/network/services/hostapd/Makefile
> @@ -11,9 +11,9 @@ PKG_RELEASE:=6
>
>  PKG_SOURCE_URL:=http://w1.fi/hostap.git
>  PKG_SOURCE_PROTO:=git
> -PKG_SOURCE_DATE:=2018-12-02
[...]
> +PKG_SOURCE_DATE:=2.8
[...]

The version number goes backwards here, I'd suggest sticking to the
date here (2019-04-21) otherwise opkg would like to install the older
snapshot again:

# opkg update
[...]
# opkg list-upgradable
hostapd-utils - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
wpad-openssl - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
wpa-cli - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6
hostapd-common - 2.8-63962824-6 - 2018-12-02-c2c6c01b-6

You might also want to reset PKG_RELEASE to 1:

--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,11 +7,11 @@
 include $(TOPDIR)/rules.mk

 PKG_NAME:=hostapd
-PKG_RELEASE:=6
+PKG_RELEASE:=1

 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_DATE:=2.8
+PKG_SOURCE_DATE:=2019-04-21
 PKG_SOURCE_VERSION:=63962824309bb428e5f73d9caae08fcb949fbe36
 PKG_MIRROR_HASH:=c3d789b822428c92bd47b3c85d9dc36cced38f7affe885cc2bb15e54248a4566


--
Regards
	Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
