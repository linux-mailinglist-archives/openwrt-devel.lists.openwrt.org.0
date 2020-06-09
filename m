Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F751F438D
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 19:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7jwSjE0bVaBEqzvCCbxBbMknSSnmsyHDDD3UtwRCj6Q=; b=r4uP7kAPvxfzSc
	FyB7q2G4tHw+uNhIbaEOCa7K4+zeM3vkraLlv3RS2HnkKtmTmRhY9vPPtuEnmIlpCE1fnnsXOnIMd
	511LuZnImgRmjzufWwFsd/UKub6qKdiVoyljJ7QNzjGyYYLhr+egVWJ49O7tm7JJd0kmoPovfLbes
	j5o8aJ8t9CNAhk6kTf5qPojiGqdUhKrLCKTqZT+4HB9C0qFZg8SFN4xr0/Qx+QoyXzT6xS1Ix5h9a
	8Wlk09anJ9JcLbQW33phgWpWNv+/muXAH1vWwdz7QZi7S01+KUkpKbywYBHKuANp6qQMdE2n+XpQ7
	UKcJM9bqW9KcoRP4mBow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiRv-0004UU-VA; Tue, 09 Jun 2020 17:54:12 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiNC-0006r2-If
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 17:49:26 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MQNAv-1jMO9u1gJN-00MJ6t for <openwrt-devel@lists.openwrt.org>; Tue, 09
 Jun 2020 19:49:11 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  9 Jun 2020 19:48:24 +0200
Message-Id: <20200609174824.26780-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:D8AFkhPn/euGe5t+OZkoL+UhtWflYxA5K0l8bNIs5pcJ8py+O7j
 tW4bIXSWoIgXDfe3LLyV8cuzlIZ84X+Tp5D3hh59J1AAUBkHWqPEAIiynlFgxtcaXyyy9U0
 3lHd0QS7HtrgzOqF3UGGux3W+NvV8Ug5nyc5F6J/aJdHxJRhvivjFPMuhHL5jmRsn5iYnJX
 vJo2hJt+nYnrwnJNWns2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pFgeJjMnB0A=:/3NPkY2gtxPyVyZkBmH77T
 mb09FrjjAuErs4bPb+XeqrCks3P3U6KZExivQRZ0Xc5fRixrRjfCyGyMSpM//tGbZAbNObk1j
 GCKFEbcD7MmEDj44UQurz9uMM5qqpmFafPHKS87S+jCRIqdbvh4YnfoAnl16iOfxLjIjHu6bY
 WiyP/Lt+3URov+hrQReRCwXn3Dv+gJHT6YHVMuzrn0dHn0zgdxPmM+AA3rX/65IoFXOsmRuUx
 PcipoMoe5AoCXb8PrEKOcGqIpC2+cR86yTVHLl5o+NoMf9Y0bIn4AdsflKhcDxPsylwvsjWIF
 wg172suLqLJew0/8zldnGibmfT+KigEVAeVB1V7NTq0JLUH24SKFmJhxTIFCwd/XM2zVayFxB
 YrKHunl5pGsL39wvth7adqveUyrQICvtEAQlOjztR2IeN+h3Wd8s/RnI6CAlrq9EQIDknY92g
 n3q/XCORM0gqMNBhZtWmtmebDfEfb0WIetAmPRGpwdYilw+xMPXrJcLBljusURjJDXCMXzN0x
 vP799we4THy/s8Ae2vQXcJFnu2umzxPxzEOUwYAICy7VFTvDbszBHrzmq8MiNhbIFaiOPzMws
 2w3ShXjLaVNCz70v17dLKLgkjipL/iEZqXPzzs2XyDsoD+fab5s1WOiRVinIznCxd917apdWK
 Z49KhQGXpqMTIIojA5+fFcASBEJ9RPFQkh+e7fa9HmodC2rLq6mDoo7VjhHDIazvwBhzjU1H5
 EpBOg7nHu42PZK15zocKp9E5lBhU4NNGEstxIHz4WRhsHQIFveNEtwoycKbVjZ9ecRNB+uvA9
 Gxpb5tSCYmyHx6Pm0nhz0VNEcYYQn2SaGC5ywSwzaBd7sxx9PGFWsk86LNc9rR2PGnxjfyl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_104918_943956_785E7E88 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mvebu: remove non-existant board name
 solidrun, clearfog-a1
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

In 02_network, the board name solidrun,clearfog-a1 is used in a
case, but it does not seem to be used/exist anywhere else in OpenWrt.

The valid strings are:
- solidrun,clearfog-pro-a1
- solidrun,clearfog-base-a1

Looks like it has been introduced by accident, so remove it.

Fixes: 12795ec9f16b ("mvebu: split interface configuration for
clearfog pro and base")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
index 44188c5fa7..9718b332a7 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
@@ -30,7 +30,6 @@ mvebu_setup_interfaces()
 	marvell,axp-gp)
 		ucidef_set_interface_lan "eth0 eth1 eth2 eth3"
 		;;
-	solidrun,clearfog-a1|\
 	solidrun,clearfog-pro-a1)
 		# eth0 is standalone ethernet
 		# eth1 is switch
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
