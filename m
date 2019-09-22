Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DD9BA1AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 11:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lYhbti25mXbVU/RJYfYZGtLOcLVUw8/KCLmix29LBfM=; b=XGnfB3XlbJbGNY
	Divq5AWCwcPk/fjXcteVyh749PZQhtnsb6VKNP2ekxmb1bShv8N0u3h38GYybXFcTfKOqvIyO8qR8
	ll6hUUodrUZ5fuadqUyCNLJKZNzHYyNJRF/JdW/nBMrhyXBxr4/dtNOsx3U8JScfyM0BHK+uCzoHJ
	20U83sLdzlxbiid230Q4Oh2IA3c14nxnb+8h7a2GFKfxl/lTnmW/XxEWDXTkZXF8MKLD5U844N4aU
	wl2UHoVwxj/YEoya68suspMtIOKMvK3gBxf9pdqGBhSAMaji5AGSZjoBVm8vBSSldPb84B04xpHVa
	4XpBrrWsN210Mq7v2PZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iByeD-0004Gz-SS; Sun, 22 Sep 2019 09:59:17 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycW-0003VL-2a
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkW10-1hmJ3M2XXy-00m10z for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:22 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:10 +0200
Message-Id: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:hiIWudeCrgX/Gz2IPW7WjX4pwOaPYnwL05YfOHyK8aHEDE7uGr6
 gNCW8RtEWcJ38AVz54tYWn797JVGa10Wfu1lmV43rFYsUGHQ02yLUZEDb+//eClKRSYT+iL
 3b8ckUZketQ/aarVTh/fn4AVDJijcmEOPAkvXQ+cBMEl7YMa9h0IqUGNmmlrZdBl1RPhcrI
 9z70e4dZ5jqeLR1oYRQpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Kw4BlaFDLws=:UybIjduCsa/4VmtZKckYE7
 GXH/D3hXeDpntPo2Pjq6XPU7y8JO+E4xK2aNYpFK/+VNCueYGRcuc/trRkVe1n9Z6R5lKqzq+
 axx2IMVqajW8JoHMWuHloJnRheUCRSWf+ALxp3wCRiFj0Jmdd3dd2hJGZ060QrvnB7ctx23JZ
 1k3jxxlPdeWK7PZGhpSenD1MBA0HPT9kodoE5AVBClQkPHyLHCx0+xIooK10Z4k7skk8wkW9n
 Fc1hdQJTjKzsCTvHGxsWQPM9Qffy86fD+dg/Gq3xxOw908CCilrUD8aBi4kosZRI5EGSLgmxf
 UplfOoOfheoBlGumXH+yESlJbZtXT4EtQq8/8+0/5nG6wGBj14SnIaHLgYCkVxxvApYL1njlC
 Ys8KTxH1kjY0AYN5m479vRwd6IOXuD2unqMxtpiGMinkd5Ezr70gew2MOlO7QflCLkJefqg7J
 YDcZYgB4Kyqbp4JAv+7/GMc855NXtpR5IkR47Q+uOfbzjcgoOzpyugpRqphX5tE9ml40DqZpe
 wKpCtvypWZMtaOW2oYvvqegKRBOrzQwS7gC78IWGkfMwU84IfxKyhzSz2G0vLwNbSnqHHUWtG
 W9hmp2us9qQH9aPMgWOcaKMNuflNionsAAbNGO653KWSz4ra0wEZOCRGRCKk7EKu+78XWWviG
 bq9QuF29Z9JmZv69Ahy/r/z7zMYm5ph3StHj/YbV3KgkY9b7+EnuMjIzwWDBgPIwJTjr43DHq
 LzAhOWJvkTDwy8Dw5JCJFnahEGMHUGTkhGlMzioGRusulR58xmBKDl8568o6Tsc2XdRcO0gYt
 gOoCr9K8r+O5UEBqc6RfWgAGJO+ZpLwoPtfzy1uU4ZAQCuto8IBYF8ABX/dwTpMgPRjxuX69A
 kMcbTDesi+ismCOFnLT+0I3wSEw0+uGeeTibF9O04=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025732_435902_5FB4B587 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 0/7] Move caldata extraction and MAC
 patching to common file
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

This is an update of my patchset unifying caldata extraction
and MAC patching. I've improved some tiny things and despite that
mostly done rebasing.
I've also included the patch for the special situation in lantiq
I sent separately for v1.

The patchset removes 417 lines of redundant code, which despite that
also included several variations of the same approach.

This has been tested on:
- ath79/ath9k: WDR4300 v1
- ath79/ath10k: Archer C60 v2
- ipq806x: TP-Link C2600

I would be happy about other tests, especially for ramips and lantiq.

#
#*** BLURB HERE ***
#
Adrian Schmutzler (7):
  treewide: fix hex2dec conversion for MAC address checksum offset
  base-files: move xor() from caldata extraction to functions.sh
  treewide: move calibration data extraction function to library
  treewide: move MAC address patch functions to common library
  ath79: set checksum when patching MAC address on ath10k
  lantiq: set checksum when patching MAC address on ath10k
  lantiq: modify ath9k caldata extraction to reuse caldata.sh

 package/base-files/files/lib/functions.sh     |  16 ++
 .../base-files/files/lib/functions/caldata.sh | 128 ++++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  61 +------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 162 ++++--------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 159 +++++------------
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  27 +--
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 139 +++------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 100 ++---------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  37 +---
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 151 +++-------------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  25 +--
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  48 +-----
 12 files changed, 318 insertions(+), 735 deletions(-)
 create mode 100644 package/base-files/files/lib/functions/caldata.sh

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
