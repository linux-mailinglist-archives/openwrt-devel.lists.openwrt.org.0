Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DCCB41E3
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 22:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BtgckkI3bVfvSa0CduKkzwNl4tqCZ+ANwaLwJCik0us=; b=pUZ1WguBBctM1k14tjZl5bVxw
	e2udq+pUbyxs7glHBzh6kD+/IucuQf/sK2QejdHKD7A66HJbQB9TNzBp3qMPvb8VLuw2r8huhwRBW
	EC30LqISH2w92Bu+PKmY8Y/gXwCzSD6ZcZiN4xiKAiKUCNBdtxV8SgSNyw91/WbtIxGTYi2DIWneJ
	tzkN94XhKg7GJsd3G+W0aegRhBuM5Nwyf8iS31DTNFRImTElf3zsObiPkpui81rlQTedfzsKxGn/k
	1JyNZALdMUHIan7TOQ8+xtFrgZfEEoY9vtK/+IIp1jTrlJ2KB0m5LO5CI7OZ1KPL2NtNfu+Y2H5xv
	9XyFJb9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xf4-0000wM-Iz; Mon, 16 Sep 2019 20:31:50 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xen-0000vn-0z
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 20:31:36 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 6736241AF8;
 Mon, 16 Sep 2019 22:31:22 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id MRI4KDTreMGu; Mon, 16 Sep 2019 22:31:18 +0200 (CEST)
To: sven falempin <sven.falempin@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <CA++fYEimKPE60_2EJzU_D1ekuqzVw3jOfONHZW+CDqTAfKCESw@mail.gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <afb867f3-b134-2e33-be4f-67ac22f76a6a@hauke-m.de>
Date: Mon, 16 Sep 2019 22:30:53 +0200
MIME-Version: 1.0
In-Reply-To: <CA++fYEimKPE60_2EJzU_D1ekuqzVw3jOfONHZW+CDqTAfKCESw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_133133_375430_E8816C8A 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 PLING_QUERY            Subject has exclamation mark and question mark
Subject: Re: [OpenWrt-Devel] Bumping net/wireless it s buggy ! 5.3-rc4-1 =>
 5.3 ( rc9) ?
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
Content-Type: multipart/mixed; boundary="===============4398348570611037543=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4398348570611037543==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="6pEnzj6FuXyfBZ42XnzJYkv9QrpOWAyuU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6pEnzj6FuXyfBZ42XnzJYkv9QrpOWAyuU
Content-Type: multipart/mixed; boundary="5DPdfFPR41eUK695iJDQSBfMVbyFUIUGp";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: sven falempin <sven.falempin@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Message-ID: <afb867f3-b134-2e33-be4f-67ac22f76a6a@hauke-m.de>
Subject: Re: [OpenWrt-Devel] Bumping net/wireless it s buggy ! 5.3-rc4-1 =>
 5.3 ( rc9) ?
References: <CA++fYEimKPE60_2EJzU_D1ekuqzVw3jOfONHZW+CDqTAfKCESw@mail.gmail.com>
In-Reply-To: <CA++fYEimKPE60_2EJzU_D1ekuqzVw3jOfONHZW+CDqTAfKCESw@mail.gmail.com>

--5DPdfFPR41eUK695iJDQSBfMVbyFUIUGp
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sven,

On 9/16/19 8:10 PM, sven falempin wrote:
> Dear openWRT gurus,
>=20
> the patch : https://github.com/torvalds/linux/commit/b67fd72e84a88cae64=
cea8ab47ccdaab3bb3094d#diff-35454f3f0395271a0e34581e160bea5f
>=20
> Is missing from my build :
> ./build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/linux-ipq40xx_gen=
eric/backports-5.3-rc4-1
>=20
> # cat  /etc/openwrt_release
> DISTRIB_ID=3D'OpenWrt'
> DISTRIB_RELEASE=3D'SNAPSHOT'
> DISTRIB_REVISION=3D'r10985-4364dd244c'
> DISTRIB_TARGET=3D'ipq40xx/generic'
> DISTRIB_ARCH=3D'arm_cortex-a7_neon-vfpv4'
> DISTRIB_DESCRIPTION=3D'OpenWrt SNAPSHOT r10985-4364dd244c'
> DISTRIB_TAINTS=3D'no-all busybox'
>=20
> I tried to catch up the last commits, but it breaks my release.
> Moreover, util.c exploded ( trace below)
>=20
> I do not know where backports-5.3-rc4-1 is inserted in linux-ipq, so I
> cannot check if it was updated on your side with my missing commit to
> be current.

The Package Makefile for backports is located here:
package/kernel/mac80211/Makefile

We backported some patches from more recent version, but the one you
linked is missing as far as I know. Please send a patch if you need it
so we can add it.

> Moreover I am not sure if this bug should be reported upstream on
> linux ASM or some nl80211 mailing list.

I think I also saw this once or twice, please report this upstream. Are
you using ath10k-ct driver which is still based on Linux 4.19 or do you
use the normal ath10k driver?

> Would it be possible to backport 5.3 that was release 22 hours ago
> over the 4.19 ? how to test it ? ( IE where is this backport copied /
> used )

My plan is to update the wireless subsystem to the one from Linux 5.4 in
about 4 weeks in OpenWrt master. Kernel 5.4 should be a LTS kernel so we
can follow that one and get security and other updates for the next few
years. OpenWrt 19.07 will stay at the wireless subsystem of Linux 4.19
and will get updated to the most recent 4.19 stable version every few
months.

Hauke

>=20
> Please advise.
>=20
>=20
> # [ 6872.302513] ------------[ cut here ]------------
> [ 6872.302926] WARNING: CPU: 0 PID: 0 at
> backports-5.3-rc4-1/net/wireless/util.c:1171
> cfg80211_calculate_bitrate+0x1d8/0x24c [cfg80211]
> [ 6872.306319] invalid rate bw=3D4, mcs=3D15, nss=3D4
> [ 6872.318171] Modules linked in: pppoe ppp_async iptable_nat
> ipt_MASQUERADE ath10k_pci ath10k_core ath xt_state xt_nat xt_conntrack
> xt_REDIRECT xt_FLOWOFFLOAD pppox ppp_generic nf_nat_ipv4 nf_nat
> nf_flow_table_hw nf_flow_table nf_conntrack_rtcache
> nf_conntrack_netlink nf_conntrack mac80211 ipt_REJECT cfg80211 xt_time
> xt_tcpudp xt_multiport xt_mark
> xt_mac xt_limit xt_comment xt_TCPMSS xt_LOG slhc nf_reject_ipv4
> nf_log_ipv4 nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle
> iptable_filter ip_tables hwmon crc_ccitt compat xt_set ip_set_list_set
> ip_set_hash_netportnet ip_set_hash_netport ip_set_hash_netnet
> ip_set_hash_netiface ip_set_hash_net ip_set_hash_mac
> ip_set_hash_ipportnet ip_set_hash_ipportip ip_set_hash_ipport
> ip_set_hash_ipmark ip_set_hash_ip ip_set_bitmap_port
> ip_set_bitmap_ipmac ip_set_bitmap_ip
> [ 6872.370738]  ip_set nfnetlink nf_log_ipv6 nf_log_common
> ip6table_mangle ip6table_filter ip6_tables ip6t_REJECT x_tables
> nf_reject_ipv6 ip_tunnel tun vxlan udp_tunnel ip6_udp_tunnel leds_gpio
> xhci_plat_hcd xhci_pci xhci_hcd dwc3 dwc3_qcom gpio_button_hotplug
> [ 6872.393242] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W
>   4.19.69 #0
> [ 6872.415448] Hardware name: Generic DT based system
> [ 6872.422962] [<c030e2c4>] (unwind_backtrace) from [<c030ad20>]
> (show_stack+0x10/0x14)
> [ 6872.427552] [<c030ad20>] (show_stack) from [<c0782d50>]
> (dump_stack+0x88/0x9c)
> [ 6872.435646] [<c0782d50>] (dump_stack) from [<c031b898>] (__warn+0xd4=
/0xf0)
> [ 6872.442671] [<c031b898>] (__warn) from [<c031b8ec>]
> (warn_slowpath_fmt+0x38/0x48)
> [ 6872.450470] [<c031b8ec>] (warn_slowpath_fmt) from [<bf235fbc>]
> (cfg80211_calculate_bitrate+0x1d8/0x24c [cfg80211])
> [ 6872.459339] [<bf235fbc>] (cfg80211_calculate_bitrate [cfg80211])
> from [<bf2d58e8>] (ieee80211s_update_metric+0x78/0x9c [mac80211])
> [ 6872.469580] [<bf2d58e8>] (ieee80211s_update_metric [mac80211]) from
> [<bf288954>] (ieee80211_tx_monitor+0x768/0xb4c [mac80211])
> [ 6872.481163] [<bf288954>] (ieee80211_tx_monitor [mac80211]) from
> [<bf288dc0>] (ieee80211_tx_status+0x88/0x90 [mac80211])
> [ 6872.492320] [<bf288dc0>] (ieee80211_tx_status [mac80211]) from
> [<bf3cd6e4>] (ath10k_txrx_tx_unref+0x540/0x58c [ath10k_core])
> [ 6872.502657] [<bf3cd6e4>] (ath10k_txrx_tx_unref [ath10k_core]) from
> [<bf3c6dd0>] (ath10k_htt_t2h_msg_handler+0x610/0x1fb8 [ath10k_core])
> [ 6872.513377] [<bf3c6dd0>] (ath10k_htt_t2h_msg_handler [ath10k_core])
> from [<bf417fb4>] (ath10k_pci_htt_rx_cb+0x1c8/0x218 [ath10k_pci])
> [ 6872.525404] [<bf417fb4>] (ath10k_pci_htt_rx_cb [ath10k_pci]) from
> [<bf3e3bb8>] (ath10k_ce_per_engine_service+0x80/0xd8 [ath10k_core])
> [ 6872.537968] [<bf3e3bb8>] (ath10k_ce_per_engine_service
> [ath10k_core]) from [<bf3e3c7c>]
> (ath10k_ce_per_engine_service_any+0x6c/0x98 [ath10k_core])
> [ 6872.549388] [<bf3e3c7c>] (ath10k_ce_per_engine_service_any
> [ath10k_core]) from [<bf419cac>] (ath10k_pci_napi_poll+0x64/0x100
> [ath10k_pci])
> [ 6872.561741] [<bf419cac>] (ath10k_pci_napi_poll [ath10k_pci]) from
> [<c067f978>] (net_rx_action+0x138/0x2fc)
> [ 6872.574009] [<c067f978>] (net_rx_action) from [<c03021c8>]
> (__do_softirq+0xe0/0x268)
> [ 6872.583626] [<c03021c8>] (__do_softirq) from [<c031f9e4>]
> (irq_exit+0x9c/0xfc)
> [ 6872.591537] [<c031f9e4>] (irq_exit) from [<c035f130>]
> (__handle_domain_irq+0x9c/0xac)
> [ 6872.598579] [<c035f130>] (__handle_domain_irq) from [<c0537378>]
> (gic_handle_irq+0x5c/0x90)
> [ 6872.606451] [<c0537378>] (gic_handle_irq) from [<c0301a0c>]
> (__irq_svc+0x6c/0x90)
> [ 6872.614508] Exception stack(0xc0b01f30 to 0xc0b01f78)
> [ 6872.622180] 1f20:                                     00000000
> 01a07230 dfb352c4 c0313a40
> [ 6872.627274] 1f40: ffffe000 c0b04c6c 00000001 c0b04cac c0a3bda8
> 00000000 00000000 00000000
> [ 6872.635411] 1f60: 1f0fb000 c0b01f80 c03082f4 c03082f8 60000013 fffff=
fff
> [ 6872.643622] [<c0301a0c>] (__irq_svc) from [<c03082f8>]
> (arch_cpu_idle+0x34/0x38)
> [ 6872.650074] [<c03082f8>] (arch_cpu_idle) from [<c0341ad4>]
> (do_idle+0xf8/0x208)
> [ 6872.657704] [<c0341ad4>] (do_idle) from [<c0341e40>]
> (cpu_startup_entry+0x18/0x20)
> [ 6872.664727] [<c0341e40>] (cpu_startup_entry) from [<c0a00d1c>]
> (start_kernel+0x428/0x438)
> [ 6872.672406] ---[ end trace 0eec939763ac67c4 ]---
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--5DPdfFPR41eUK695iJDQSBfMVbyFUIUGp--

--6pEnzj6FuXyfBZ42XnzJYkv9QrpOWAyuU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl1/8REACgkQ8bdnhZyy
68cOdwf8CHhTP9EameZnULdA0wAKnvGt6tExnU52D6uj7Ne4W30SOAlvwXJLB0WE
WYUvu43PeSF8iSXlIYPy13FhFLuPuYBylv3tFqDug4ANyZsApp3MrJr8Okk27k50
AnE+1txtL0E4+T8hCkyyJRDfrMmx163lqy71XFEGAqIdoeFTzDhqk010MhYFGgc4
BZqW80AYmx+Mx/fpoqmWs+iJNdraBSFy4YhwnJANa5dOf92tvk8qTFJ0Z96dJIzG
1z6LJZ+TdENmeUD4jsIM404Equo7SOOFzDk+muLHVTA5A+xqskWHUBUQH4pPWI0F
JM13Jbe6HTN0C7uPcls4yNnlYptuQw==
=4xVx
-----END PGP SIGNATURE-----

--6pEnzj6FuXyfBZ42XnzJYkv9QrpOWAyuU--


--===============4398348570611037543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4398348570611037543==--

