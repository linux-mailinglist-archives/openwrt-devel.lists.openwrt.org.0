Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E171AB4011
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 20:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+KTR18lJEvAU7+p0DtTWYg99EA5DZ7l8p3hs70ihXx8=; b=Zd+
	pSVrf8mRVsXU6zFVQOHXrxZCeZ9MNYk1+EWVu6/lEwY7IYBO82dr3kwQdpSEDmPIj4Y6jAqp4tieV
	GACx2hlcXFwq2q2qj000hqhifpjTJWkn4wTpTxsQ1mbYV76EyuA3N7WtlAtXChk2ZbZJvpwzpb+Sh
	wDRLFB7itqsAhj7XG4c+ffIXfsoE0nF8WuRwXi7hqM91FZvnhjoQixzJ/ULNJjCvPppgE4ZuAuIxk
	pBhFNNdzGe8F+YQ4b9+pXjRv+C5KccmNApowJdpNUGhnKBJMh9RS4Z1Y5gwD+0TZN63+JO5tY3RrD
	PAt48ia9P/+sr37x4n7D0M6g7Gj453g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vTB-00041M-IA; Mon, 16 Sep 2019 18:11:25 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vT0-00040Z-LQ
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 18:11:20 +0000
Received: by mail-lf1-x134.google.com with SMTP id r134so666832lff.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 11:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ESDh097G8QcLc1XL3wK9RZqsC/16mKAgkyj4V59/w4U=;
 b=dEvzj9mnriafIz1Pbu55dVu3ZHKhO3VpxoRVIzWob22Ol4vAHPe2/w2ZumO5b3T6Dn
 oyRI/Yg8addUynnuvi1/p6SL81wu8uN55dx/39PULGlVTFz7LJwXYpsZKwlidx/ZD7WY
 NiEQH524mj9KAc6VIxzn8ecqxYx02LewDvOwi4a8mMLCyGhyp7FuRvCo3WrQdVAPw+5N
 bkTaDRqcyvRHKJR0ggeSfEO290V2xq1IlpZ+gH9YeAusp+dyingXUH2l//O1KU8/ooZb
 l3bGWTY//T1vPt+obUlSzYE+swbLRkKb303PzS7Bt7MXfjfsNlpWufQSe1T6A98GKL5H
 xu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ESDh097G8QcLc1XL3wK9RZqsC/16mKAgkyj4V59/w4U=;
 b=S6Y4n8VzF8Ynib0dcmMi1LjzwJdlHcdWfpZm8uqObVNhM+clOHDldImYTcyqhIT746
 DXS+w1tkl3mR3HgZszV7fg4yp3jyoiP5fGbZB9ySX6OlL74rmRQL5YEj7dk9JjatMy/a
 8oq9EXuLQCQfZNnSItHFvGfmDwTS3OJgCRK37AMn+p0ajLel6lidREx5GS8nz9vNTjcn
 2FU8miNHISGtWpwq6sk0YcKxhjvEquMWXhR1dtcGTRYLsTySWLour99nq3gGlMaxqzk9
 Rc30+TxeNEqb2TzJfk+kMZVjSLoEcuYkBrZPKWBoCi+Q7s5fF1AqLj5dA5G8yZ7yPiSb
 toqg==
X-Gm-Message-State: APjAAAXwEuLGXo6tBBdeXsT5RfDYiNUePSEU3hFfsjn/hcs6tZ4/BWRH
 piDmNLWctULnuHjpaigZF8LZj2Kvv0A5wuyX3itsL7m+
X-Google-Smtp-Source: APXvYqyirkqg+il2Z6OrH6abuikXdBVu+1zYXSrlRkEaeHSSHOILSUNIb+98L+PwNpC6436mIWxO1+YRH1pffHM02J4=
X-Received: by 2002:a19:2c1:: with SMTP id 184mr408396lfc.100.1568657469035;
 Mon, 16 Sep 2019 11:11:09 -0700 (PDT)
MIME-Version: 1.0
From: sven falempin <sven.falempin@gmail.com>
Date: Mon, 16 Sep 2019 14:10:42 -0400
Message-ID: <CA++fYEimKPE60_2EJzU_D1ekuqzVw3jOfONHZW+CDqTAfKCESw@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_111114_728667_B11937B9 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sven.falempin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 PLING_QUERY            Subject has exclamation mark and question mark
Subject: [OpenWrt-Devel] Bumping net/wireless it s buggy ! 5.3-rc4-1 => 5.3
 ( rc9) ?
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

Dear openWRT gurus,

the patch : https://github.com/torvalds/linux/commit/b67fd72e84a88cae64cea8ab47ccdaab3bb3094d#diff-35454f3f0395271a0e34581e160bea5f

Is missing from my build :
./build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/linux-ipq40xx_generic/backports-5.3-rc4-1

# cat  /etc/openwrt_release
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='SNAPSHOT'
DISTRIB_REVISION='r10985-4364dd244c'
DISTRIB_TARGET='ipq40xx/generic'
DISTRIB_ARCH='arm_cortex-a7_neon-vfpv4'
DISTRIB_DESCRIPTION='OpenWrt SNAPSHOT r10985-4364dd244c'
DISTRIB_TAINTS='no-all busybox'

I tried to catch up the last commits, but it breaks my release.
Moreover, util.c exploded ( trace below)

I do not know where backports-5.3-rc4-1 is inserted in linux-ipq, so I
cannot check if it was updated on your side with my missing commit to
be current.
Moreover I am not sure if this bug should be reported upstream on
linux ASM or some nl80211 mailing list.

Would it be possible to backport 5.3 that was release 22 hours ago
over the 4.19 ? how to test it ? ( IE where is this backport copied /
used )

Please advise.


# [ 6872.302513] ------------[ cut here ]------------
[ 6872.302926] WARNING: CPU: 0 PID: 0 at
backports-5.3-rc4-1/net/wireless/util.c:1171
cfg80211_calculate_bitrate+0x1d8/0x24c [cfg80211]
[ 6872.306319] invalid rate bw=4, mcs=15, nss=4
[ 6872.318171] Modules linked in: pppoe ppp_async iptable_nat
ipt_MASQUERADE ath10k_pci ath10k_core ath xt_state xt_nat xt_conntrack
xt_REDIRECT xt_FLOWOFFLOAD pppox ppp_generic nf_nat_ipv4 nf_nat
nf_flow_table_hw nf_flow_table nf_conntrack_rtcache
nf_conntrack_netlink nf_conntrack mac80211 ipt_REJECT cfg80211 xt_time
xt_tcpudp xt_multiport xt_mark
xt_mac xt_limit xt_comment xt_TCPMSS xt_LOG slhc nf_reject_ipv4
nf_log_ipv4 nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle
iptable_filter ip_tables hwmon crc_ccitt compat xt_set ip_set_list_set
ip_set_hash_netportnet ip_set_hash_netport ip_set_hash_netnet
ip_set_hash_netiface ip_set_hash_net ip_set_hash_mac
ip_set_hash_ipportnet ip_set_hash_ipportip ip_set_hash_ipport
ip_set_hash_ipmark ip_set_hash_ip ip_set_bitmap_port
ip_set_bitmap_ipmac ip_set_bitmap_ip
[ 6872.370738]  ip_set nfnetlink nf_log_ipv6 nf_log_common
ip6table_mangle ip6table_filter ip6_tables ip6t_REJECT x_tables
nf_reject_ipv6 ip_tunnel tun vxlan udp_tunnel ip6_udp_tunnel leds_gpio
xhci_plat_hcd xhci_pci xhci_hcd dwc3 dwc3_qcom gpio_button_hotplug
[ 6872.393242] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W
  4.19.69 #0
[ 6872.415448] Hardware name: Generic DT based system
[ 6872.422962] [<c030e2c4>] (unwind_backtrace) from [<c030ad20>]
(show_stack+0x10/0x14)
[ 6872.427552] [<c030ad20>] (show_stack) from [<c0782d50>]
(dump_stack+0x88/0x9c)
[ 6872.435646] [<c0782d50>] (dump_stack) from [<c031b898>] (__warn+0xd4/0xf0)
[ 6872.442671] [<c031b898>] (__warn) from [<c031b8ec>]
(warn_slowpath_fmt+0x38/0x48)
[ 6872.450470] [<c031b8ec>] (warn_slowpath_fmt) from [<bf235fbc>]
(cfg80211_calculate_bitrate+0x1d8/0x24c [cfg80211])
[ 6872.459339] [<bf235fbc>] (cfg80211_calculate_bitrate [cfg80211])
from [<bf2d58e8>] (ieee80211s_update_metric+0x78/0x9c [mac80211])
[ 6872.469580] [<bf2d58e8>] (ieee80211s_update_metric [mac80211]) from
[<bf288954>] (ieee80211_tx_monitor+0x768/0xb4c [mac80211])
[ 6872.481163] [<bf288954>] (ieee80211_tx_monitor [mac80211]) from
[<bf288dc0>] (ieee80211_tx_status+0x88/0x90 [mac80211])
[ 6872.492320] [<bf288dc0>] (ieee80211_tx_status [mac80211]) from
[<bf3cd6e4>] (ath10k_txrx_tx_unref+0x540/0x58c [ath10k_core])
[ 6872.502657] [<bf3cd6e4>] (ath10k_txrx_tx_unref [ath10k_core]) from
[<bf3c6dd0>] (ath10k_htt_t2h_msg_handler+0x610/0x1fb8 [ath10k_core])
[ 6872.513377] [<bf3c6dd0>] (ath10k_htt_t2h_msg_handler [ath10k_core])
from [<bf417fb4>] (ath10k_pci_htt_rx_cb+0x1c8/0x218 [ath10k_pci])
[ 6872.525404] [<bf417fb4>] (ath10k_pci_htt_rx_cb [ath10k_pci]) from
[<bf3e3bb8>] (ath10k_ce_per_engine_service+0x80/0xd8 [ath10k_core])
[ 6872.537968] [<bf3e3bb8>] (ath10k_ce_per_engine_service
[ath10k_core]) from [<bf3e3c7c>]
(ath10k_ce_per_engine_service_any+0x6c/0x98 [ath10k_core])
[ 6872.549388] [<bf3e3c7c>] (ath10k_ce_per_engine_service_any
[ath10k_core]) from [<bf419cac>] (ath10k_pci_napi_poll+0x64/0x100
[ath10k_pci])
[ 6872.561741] [<bf419cac>] (ath10k_pci_napi_poll [ath10k_pci]) from
[<c067f978>] (net_rx_action+0x138/0x2fc)
[ 6872.574009] [<c067f978>] (net_rx_action) from [<c03021c8>]
(__do_softirq+0xe0/0x268)
[ 6872.583626] [<c03021c8>] (__do_softirq) from [<c031f9e4>]
(irq_exit+0x9c/0xfc)
[ 6872.591537] [<c031f9e4>] (irq_exit) from [<c035f130>]
(__handle_domain_irq+0x9c/0xac)
[ 6872.598579] [<c035f130>] (__handle_domain_irq) from [<c0537378>]
(gic_handle_irq+0x5c/0x90)
[ 6872.606451] [<c0537378>] (gic_handle_irq) from [<c0301a0c>]
(__irq_svc+0x6c/0x90)
[ 6872.614508] Exception stack(0xc0b01f30 to 0xc0b01f78)
[ 6872.622180] 1f20:                                     00000000
01a07230 dfb352c4 c0313a40
[ 6872.627274] 1f40: ffffe000 c0b04c6c 00000001 c0b04cac c0a3bda8
00000000 00000000 00000000
[ 6872.635411] 1f60: 1f0fb000 c0b01f80 c03082f4 c03082f8 60000013 ffffffff
[ 6872.643622] [<c0301a0c>] (__irq_svc) from [<c03082f8>]
(arch_cpu_idle+0x34/0x38)
[ 6872.650074] [<c03082f8>] (arch_cpu_idle) from [<c0341ad4>]
(do_idle+0xf8/0x208)
[ 6872.657704] [<c0341ad4>] (do_idle) from [<c0341e40>]
(cpu_startup_entry+0x18/0x20)
[ 6872.664727] [<c0341e40>] (cpu_startup_entry) from [<c0a00d1c>]
(start_kernel+0x428/0x438)
[ 6872.672406] ---[ end trace 0eec939763ac67c4 ]---

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
