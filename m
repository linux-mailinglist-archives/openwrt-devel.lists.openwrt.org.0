Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9A314F0D2
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 17:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rGeAEqJBhnTsz80BglBy0acOhMqgycYlRa61iuIQVSE=; b=EXsAe/zJJ43Ozm
	u/oaO/MyKQ6pZ5QqnQ1NvavsS9EIsmQ7zLPp+6KMbJ0jb/H0tHFIJdm3gwMauujuMCT7Mg9L3kCqr
	cFGLqb9GpKjan9Ho8EFGYJR3icz7nrdJBM7DPOzKeJemc64bPo2G7hmRCUc2NkNlwPTxfYIJOkTNz
	pSK2Os56/OMRF+Pv6kEBLfFJ7ZQOzpUVr5teMr5Hm2LbTHrm/tCb9ElyEnNg9/Ewh1HnLePRlFk8H
	O7kxciL0yLGXbAq0keetcYTxcxE0ggDuK66oO+3kWQMaCsAbdcx8rRxNqVIEfBlrMl23GAA71hIVq
	OvDr1LI05GWmKDEOSJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixZQU-0004fI-NC; Fri, 31 Jan 2020 16:45:50 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixZQM-0004er-37
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 16:45:44 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MZAvp-1j2Bzn3NwX-00V6Fv
 for
 <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 17:45:38 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 31 Jan 2020 17:45:38 +0100
Message-ID: <011e01d5d855$de245340$9a6cf9c0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdXYVdxf+sxrdyzuQZS94b54nbqKOA==
X-Provags-ID: V03:K1:KE1WaXOh3nb/Q/XyunJrGoQfbkhLuFoWvVoBrD2rocxdv6wA1fw
 p2u2f6N38sXN9uRcMt+syBCBJ2gsI6PkDc2NVcQhwKkCsWW6DvodUqlsKeG1LaYwdTqWYR/
 U6vn94SHBtrPatZIZKFJnprsyREoOw1BdzW/iPcrPA3jEN3TuvvPMOjlyf8WIGoAnSuNtgv
 FUdQyUEqHfKP+ACUlLgsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Rmuna5C4Y/M=:TVymx2Jd24YJ3rXHfhNNRt
 +HvYTU5dZOmer4BXESCotVqIAvc+TPwFltmdyciDW5xv5f1QYwu+8BSEiM+26w5XevRdfouFY
 ETPBzXj8f4M8ACWHTrH6nVdOh93P3UtURT80Kkn4wgc2AtzygTgpezokczuJfnC1RiAkyxUK+
 +GbT7C/jjy+dgc6XiEmbF1enWx8FNWUrYs8R08MJyAO6eOf2YXziGKypv3AKZXiNUP9tmjr9N
 P1pcWMHW8+i2eV9lKBXahOG0ze0v5HiVa71oYLDhTTszut8kiaWs7lJnejGAzf/whyY2e6mu0
 SVlkW4GNpPgzIdXD7/yg/8jTtYeHe5sP5vTbogLENjdhMMdQf+FtLE0nnH3KepWpPmZmN+lKq
 lyCCXT0PvWDrmHvG3I2nhOBOZgKpIMt2Es13NosFSHsYGj8poAM4b4MZZ8wXbjta5JGXPC0dt
 ybJOvrqCLXSdaRLj34v69I5Mp+qEMsMuchv+h6gzsDBGRrrNJJxHua5i/MZtIwaf+TaWzqcDN
 sBq0sCAH9Xyo6qAQ5tXiJwbIoT1VyHWl3gq/hx+jyvmQ+NJGHF1jxLJWsBYyCrIM3oMtoU5ym
 vMQaGPYL34GGIrjcLyg36ffbgBXUQ2ti/U6P8kTLPfRtDLsUV5FxXVu5TmakTXYSFoGeU7s66
 RNiMomKLu+0dcl59JIKLZFWNADItnMM2FRzjMZvBSY1WwXmwQYfwXBgsLCgC1K/xBVfMKnGE/
 DmjIi0kmVAu4mVXUxjabdKtt/UNyrQRSP99H34hsgzwoibZSws3I0FI3NrlCVaLYSPtedSmC4
 fm8/Y57jqTAoThH3QaNqmryJlhWShQp2ONLq7YkauQrSozvfwGw/Zpa3UjQb/A7YRin2qwj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_084542_282842_14B42F9C 
X-CRM114-Status: UNSURE (   4.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] ar71xx/ath79: at803x_platform_data: reset_gpio
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

Hi,

during support of the Ubiquiti Nanostation Loco XW, we encountered the following
blocks in ar71xx which are only present for devices not migrated to ath79 yet:

static struct mdio_board_info ubnt_loco_m_xw_mdio_info[] = {
	{
		[...]
		.platform_data = &ubnt_loco_m_xw_at803x_data,
	},
};
static struct at803x_platform_data ubnt_loco_m_xw_at803x_data = {
	.has_reset_gpio = 1,
	.reset_gpio = 0,
};

How is this translated into ath79? The Loco XW (just merged to master [1]) seems
to work well with the setup we have right now, other devices with reset_gpio are
few:

adsc@buildfff:/data/openwrt$ grep -rn "reset_gpio"
target/linux/ar71xx/files/arch/
target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:35:   .has_reset_gpio
= 1,
target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:36:   .reset_gpio =
17,
target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:48:   .has_reset_gpio
= 1,
target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:50:   .reset_gpio =
23,
target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c:485:   .has_reset_gpio
= 1,
target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c:486:   .reset_gpio = 0,
target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c:124: .has_reset_gpio
= 1,
target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c:126: .reset_gpio =
FRITZ450E_GPIO_PHY_RESET,

Can anyone enlighten me?

Best

Adrian

[1]
https://github.com/openwrt/openwrt/commit/633c4304ad42d18d180ba65a264ba668de445d
91



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
