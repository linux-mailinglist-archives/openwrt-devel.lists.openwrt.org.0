Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC481A1334
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 19:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kcB0JUTsT9tgcupf4z2erPmAPdo6B5TAjJj2FMUW3E=; b=B9Xyqiw7vWgI9m
	DsWAcZBAQT8NLjGXDCBV9zdAZyFOykQcOdatLig4STfCTycaQQ33aWLvEhd6N5HGg+YxR83Hqgp2Y
	BQR1+TkL+oJg9rU9oxCDLRUIMt7ei6AAyS7xXFSvwlXeCiJcaje33kOP6j1W1FEpwtazU/JCbZaS2
	TISRfKu2uVAFEd3/GS3jd5fa2ppX1JBOL49Slw0gSc7kap8XfI+flTutUwspM8wr95EyCttT5wWzE
	Po9B3ljBZ7/obuCDPRhoFC+SGRnL2t30RvyvTEiJaSVqcy7ZVkSA/OJS/kuEQVVHpa+RROctxIjOH
	F3DkvCVTMDEzbMqbn4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsTr-0006V9-It; Tue, 07 Apr 2020 17:57:47 +0000
Received: from mail.rdts.de ([195.243.153.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsTl-0006UR-Jz
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 17:57:43 +0000
Received: from webmail.rdts.de (php1.rdts.de [82.223.13.20])
 by mail.rdts.de (Postfix) with ESMTPSA id 2435CAFED3
 for <openwrt-devel@lists.openwrt.org>; Tue,  7 Apr 2020 19:57:31 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 19:57:30 +0200
From: Gerhard Bertelsmann <info@gerhard-bertelsmann.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <c1d2b1bacd957fcd0871c7a19d360b39@gerhard-bertelsmann.de>
X-Sender: info@gerhard-bertelsmann.de
User-Agent: Roundcube Webmail/1.2.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_105741_954059_FCED6D11 
X-CRM114-Status: UNSURE (   3.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.243.153.28 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] ramips mt76x8: bug: mtk_soc_eth 10100000.ethernet
 eth0: transmit timed out
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

since a few days I get following Kernel Oops. The Omega2+ board doesn't 
get any ethernet connection. Any hints ?

[    0.000000] Linux version 4.14.172 (gerd@nizza) (gcc version 8.4.0 
(OpenWrt GCC 8.4.0 r12649-ecef29b294)) #0 PREEMPT Mon Apr 6 18:42:45 
2020
[    0.000000] Board has DDR2
[    0.000000] Analog PMU set to hw control
[    0.000000] Digital PMU set to hw control
[    0.000000] SoC Type: MediaTek MT7688 ver:1 eco:2
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019655 (MIPS 24KEc)
[    0.000000] MIPS: machine is Onion Omega2+
....
[   32.260721] rt3050-esw 10110000.esw: link changed 0x00
[   36.387574] rt3050-esw 10110000.esw: link changed 0x01
[   36.750035] br-lan: port 1(eth0) entered blocking state
[   36.755353] br-lan: port 1(eth0) entered disabled state
[   36.780959] device eth0 entered promiscuous mode
[   36.818338] br-lan: port 1(eth0) entered blocking state
[   36.823656] br-lan: port 1(eth0) entered forwarding state
[   36.883276] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   37.786743] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
[   47.146685] ------------[ cut here ]------------
[   47.151416] WARNING: CPU: 0 PID: 1494 at net/sched/sch_generic.c:320 
dev_watchdog+0x1ac/0x2e8
[   47.160090] NETDEV WATCHDOG: eth0 (mtk_soc_eth): transmit queue 0 
timed out
[   47.167164] Modules linked in: pppoe ppp_async pppox ppp_generic 
pl2303 nf_conntrack_ipv6 mt7603e mt76 mac80211 iptable_nat ipt_REJECT 
ipt_MASQUERADE ftdi_sio cp210x c
h341 cfg80211 xt_time xt_tcpudp xt_state xt_nat xt_multiport xt_mark 
xt_mac xt_limit xt_conntrack xt_comment xt_TCPMSS xt_REDIRECT xt_LOG 
xt_FLOWOFFLOAD usbserial usbmon
slhc slcan nf_reject_ipv4 nf_nat_redirect nf_nat_masquerade_ipv4 
nf_conntrack_ipv4 nf_nat_ipv4 nf_nat nf_log_ipv4 nf_flow_table_hw 
nf_flow_table nf_defrag_ipv6 nf_defrag_
ipv4 nf_conntrack_rtcache nf_conntrack iptable_mangle iptable_filter 
ip_tables crc_ccitt compat can_raw can_gw can_dev can ledtrig_oneshot 
ledtrig_heartbeat ledtrig_gpio
nf_log_ipv6 nf_log_common ip6table_mangle ip6table_filter ip6_tables 
ip6t_REJECT x_tables nf_reject_ipv6 nfsv4 nfsv3 nfs msdos vfat
[   47.239021]  fat ntfs lockd sunrpc grace dns_resolver nls_utf8 
nls_iso8859_1 nls_cp437 mmc_block mtk_sd mmc_core leds_gpio 
ohci_platform ohci_hcd ledtrig_transient ehc
i_platform ehci_hcd gpio_button_hotplug reiserfs ext4 mbcache jbd2 
usbcore nls_base usb_common crc16 crc32c_generic crypto_hash
[   47.265490] CPU: 0 PID: 1494 Comm: sh Not tainted 4.14.172 #0
[   47.271325] Stack : 80500000 804aeb0c 00000000 00000000 80486490 
87c07e14 87d69a04 804d9967
[   47.279825]         80482428 000005d6 80633660 00000140 87c1f800 
00000001 87c07dc8 5a9508c0
[   47.288329]         00000000 00000000 80630000 80637d78 00000000 
000000e6 00000007 00000000
[   47.296831]         00000000 00000000 00040d12 ffffffff 80000000 
00000009 00000000 802f0bd8
[   47.305321]         804a8da4 00000140 87c1f800 00000200 00000000 
8024d408 00000000 80630000
[   47.313819]         ...
[   47.316309] Call Trace:
[   47.318823] [<8000b004>] show_stack+0x58/0x100
[   47.323337] [<80027e0c>] __warn+0xe4/0x148
[   47.327505] [<80027a54>] warn_slowpath_fmt+0x30/0x3c
[   47.332548] [<802f0bd8>] dev_watchdog+0x1ac/0x2e8
[   47.337348] [<8006f7f0>] call_timer_fn.isra.29+0x24/0x84
[   47.342739] [<8006fa38>] run_timer_softirq+0x1e8/0x294
[   47.347985] [<803efb80>] __do_softirq+0xe8/0x2b4
[   47.352676] [<8002b404>] irq_exit+0x88/0xe0
[   47.356936] [<80006090>] except_vec_vi_end+0xb8/0xc4
[   47.361971] ---[ end trace 5b34084e49d21194 ]---
[   47.366674] mtk_soc_eth 10100000.ethernet eth0: transmit timed out
[   47.372944] mtk_soc_eth 10100000.ethernet eth0: dma_cfg:00000057
[   47.379056] mtk_soc_eth 10100000.ethernet eth0: tx_ring=0, 
base=06db4000, max=1024, ctx=2, dtx=0, fdx=0, next=2
[   47.389309] mtk_soc_eth 10100000.ethernet eth0: rx_ring=0, 
base=06e00000, max=1024, calc=23, drx=26
[   48.566897] jffs2_scan_eraseblock(): End of filesystem marker found 
at 0x0
[   48.573914] jffs2_build_filesystem(): unlocking the mtd device...
[   48.573919] done.
[   48.594224] jffs2_build_filesystem(): erasing all blocks after the 
end marker...
[   59.386631] mtk_soc_eth 10100000.ethernet eth0: transmit timed out
[   59.400512] mtk_soc_eth 10100000.ethernet eth0: dma_cfg:00000057
[   59.406636] mtk_soc_eth 10100000.ethernet eth0: tx_ring=0, 
base=06ff4000, max=1024, ctx=1, dtx=0, fdx=0, next=1
[   59.416888] mtk_soc_eth 10100000.ethernet eth0: rx_ring=0, 
base=06008000, max=1024, calc=26, drx=27
[   70.106634] mtk_soc_eth 10100000.ethernet eth0: transmit timed out

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
