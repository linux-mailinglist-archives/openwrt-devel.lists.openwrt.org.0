Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5824999E82
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 20:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hMfV4BZD/LiUTuVc1GHoPEXHPd6Rms0YAQc4zagtKAA=; b=K21nwYccJoplnFynVruNVM8Zj
	NWGG3Lzms5VnwVszBgjY7NwtbpEXH7ZLlFHRVwCJtq3qEBp/urQk+3856flc/9cpa+L+T6+RjL17c
	yd5JmPm2ladpOSQofoS2ykNrhxeLsCBkTwJTHZOJUpF+VOLme+j0xWRFDJIw7RaUqVVsgWFt+5aqO
	li14QnzLFOoejBlZQH72ns0zQVGFV4l9M1NS9WZGcPGuPaSDnxQdk+Skyx/HdwGCj6veQcWFC+aqK
	R2GTM68XdcAOGUR/W4X5BdZ3lsRuzSdJlbNACZnD+yD+f0WeoQntc5ejTi+snqpuXiNVpBZPNhh/N
	jM59ngXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rcv-00049K-Nc; Thu, 22 Aug 2019 18:16:01 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rcl-00048z-Go
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 18:15:54 +0000
Received: by mail-ot1-x344.google.com with SMTP id o101so6316984ota.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 11:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iS2fuHBm2bhGqM0uM2XMwX8LP6L+OWMIUwEl0XNf1cw=;
 b=AZPOoQwhFb6pQrdO0cTTMCOUzdBPH+UVHkMetrZ9pZfzWj/LP3dV0g8R96VgI23hNL
 Slvv/hDF+gcJuYqcT5vZDFzvd4kgkDkjAcUUDP48w/u4zz40HIaanzXgmjCkglELPbrC
 QBTY6e2mk+1qmBEypSIqsegQixB3m4fU2l7VehmvFuWPLpdB0a3uaY7WFcAGvt72nW3V
 nC4gwEY1qAHDD+ecRL+7p+NAlQ9lgz8DiMyt4pyrxqIIfPMC++A/syUIHvdMenOM8KRM
 ABe69wH/7zVg1xtWQyTgx+wJXUtgtrk6laf9wNtNwsZUMw2+MqpGmGkXLhDKgpmaK0oI
 RE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iS2fuHBm2bhGqM0uM2XMwX8LP6L+OWMIUwEl0XNf1cw=;
 b=Qhr35RPXC/KtSbxd3hyJzmlK5MamdeRr3kGZIN6YGsjWqSdVjc/OUpvJbSLTRVI1mA
 9cjZ64WroVa7hvYCnwZF7H6Sl2U/VQK0RYgfH2OZ8RfUNJVH6ydmnI6+NvHbqj+XoERA
 HXKl+MrJbSlqL4dgVVXKyn5Qrb71X6lYMFxYB7/7eekF/bJtLbxOUo63TumD/+FcgxPp
 zzqXlVI9TtZ7xwsXn8Y4/ebnkIA3+INymhx20J3ds1fJaxZR4byVFa8LQ2JU20eKsLjX
 +Myfr1432x6kfV/mo27auquMWeOpPWfUSqc+Ib7lQq5y9Oyaak3sjMnk1pYZRM3E6g3A
 BfPw==
X-Gm-Message-State: APjAAAUsr8U0Q6Ey6kLH3ztQA6OXpnm9mRzEmAPgFgewG2Pzy84qdswf
 IDkhTq/QHVXZh2P5MmhFZ3SBQsF5KFAUkW3C4ds=
X-Google-Smtp-Source: APXvYqzb73rMahx+LmxBAPah2jw+S1LkE1dTLaCFcR3knBmdizQYE8q+3ZgXorv0ImNihwQ+8jh7COqdyagKY/2SyPo=
X-Received: by 2002:a9d:624b:: with SMTP id i11mr787372otk.322.1566497749999; 
 Thu, 22 Aug 2019 11:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <068afc56-4da4-36af-0b11-ece86740d428@lank.me>
In-Reply-To: <068afc56-4da4-36af-0b11-ece86740d428@lank.me>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Thu, 22 Aug 2019 23:15:22 +0500
Message-ID: <CALYz8yqOMcmGpJ_L9fUSeHJD-W6GL-RESKwGEDZwpn8Oe0SLcQ@mail.gmail.com>
To: Yaroslav Petrov <info@lank.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_111551_569654_1E0CCD1E 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klukonin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0,
 skipped old beacon
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
Cc: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============9173607127117780539=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9173607127117780539==
Content-Type: multipart/alternative; boundary="000000000000ee25a00590b8ad53"

--000000000000ee25a00590b8ad53
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello.


This bug was fixed in the master branch.
Please try latest snapshot.

Best Regards,
Lukonin Kirill


=D1=87=D1=82, 22 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 23:06, Yaroslav Pe=
trov <info@lank.me>:

> Hello all,
>
>
> I use OpenWrt 19.07 on BT Home Hub 5A, but it seams ath10k-ct driver is
> really unstable (it work only first 2-10 minutes). The ath10k driver
> work without problem. Can somebody help me with this issue ?
>
>
> ---- OpenWrt 19.07-SNAPSHOT, r10323-7d300326ee ----
>
> dmesg:
> ...
> [   16.523669] ath10k_pci 0000:02:00.0: qca988x hw2.0 target 0x4100016c
> chip_id 0x043202ff sub 0000:0000
> [   16.531585] ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1
> tracing 0 dfs 1 testmode 0
> [   16.548528] ath10k_pci 0000:02:00.0: firmware ver
> 10.1-ct-8x-__fW-022-fddd041b api 2 features
> wmi-10.x,has-wmi-mgmt-tx,adaptive-cca,mfp,txstatus-noack,wmi-10.x-CT,rate=
mask-CT,txrate-CT,get-temp-CT,tx-rc-CT,cust-stats-CT,retry-gt2-CT,txrate2-C=
T,beacon-cb-CT,wmi-block-ack-CT
>
> crc32 01d1f13e
> [   16.600527] ath10k_pci 0000:02:00.0: Direct firmware load for
> ath10k/QCA988X/hw2.0/board-2.bin failed with error -2
> [   16.609654] ath10k_pci 0000:02:00.0: Falling back to user helper
> [   16.865926] firmware ath10k!QCA988X!hw2.0!board-2.bin:
> firmware_loading_store: map pages failed
> [   16.874176] ath10k_pci 0000:02:00.0: board_file api 1 bmi_id N/A
> crc32 bebc7c08
> [   17.754597] ath10k_pci 0000:02:00.0: 10.1 wmi init: vdevs: 16 peers:
> 127  tid: 256
> [   17.769910] ath10k_pci 0000:02:00.0: wmi print 'P 128 V 8 T 410'
> [   17.774908] ath10k_pci 0000:02:00.0: wmi print 'msdu-desc: 1424
> sw-crypt: 0 ct-sta: 0'
> [   17.782548] ath10k_pci 0000:02:00.0: wmi print 'alloc rem: 24648
> iram: 26168'
> [   17.846700] ath10k_pci 0000:02:00.0: htt-ver 2.1 wmi-op 2 htt-op 2
> cal file max-sta 128 raw 0 hwcrypto 1
> [   17.858172] ath10k_pci 0000:02:00.0: NOTE:  Firmware DBGLOG output
> disabled in debug_mask: 0x10000000
> ...
> [ 9397.052366] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.154773] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.257174] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.359596] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.461992] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.564396] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.666805] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.769214] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.871646] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9397.974036] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.076445] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.178844] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.281259] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.383675] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.486071] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.588478] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.690883] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.793301] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.895708] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9398.998112] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.100512] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.202918] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.305328] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.407740] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.510149] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.612543] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.714959] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.817366] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9399.919780] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.022177] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.124590] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.184417] ath10k_pci 0000:02:00.0: wmi command 36893 timeout,
> restarting hardware
> [ 9400.191096] ath10k_pci 0000:02:00.0: failed to delete peer
> 99:99:99:99:99:99 for vdev 0: -11
> [ 9400.199527] ath10k_pci 0000:02:00.0: found sta peer 99:99:99:99:99:99
> (ptr 8698a600 id 361) entry on vdev 0 after it was supposedly removed
> [ 9400.212109] ------------[ cut here ]------------
> [ 9400.216791] WARNING: CPU: 1 PID: 3599 at
> backports-4.19.66-1/net/mac80211/sta_info.c:1004
> sta_set_sinfo+0xcdc/0xd88 [mac80211]
> [ 9400.227825] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.235153] Modules linked in: ath9k ath9k_common ath9k_hw ath10k_pci
> ath10k_core ath pppoe nf_conntrack_ipv6 mac80211 iptable_nat ipt_REJECT
> ipt_MASQUERADE cfg80211 xt_time xt_tcpudp xt_state xt_nat xt_multiport
> xt_mark xt_mac xt_limit xt_conntrack xt_comment xt_TCPMSS xt_REDIRECT
> xt_LOG xt_FLOWOFFLOAD wireguard ums_usbat ums_sddr55 ums_sddr09
> ums_karma ums_jumpshot ums_isd200 ums_freecom ums_datafab ums_cypress
> ums_alauda pppox ppp_async owl_loader nf_reject_ipv4 nf_nat_redirect
> nf_nat_masquerade_ipv4 nf_conntrack_ipv4 nf_nat_ipv4 nf_nat nf_log_ipv4
> nf_flow_table_hw nf_flow_table nf_defrag_ipv6 nf_defrag_ipv4
> nf_conntrack_rtcache nf_conntrack ltq_deu_vr9 iptable_mangle
> iptable_filter ip_tables crc_ccitt compat drv_dsl_cpe_api drv_mei_cpe
> ledtrig_oneshot ledtrig_gpio xt_set ip_set_list_set ip_set_hash_netportne=
t
> [ 9400.307991]  ip_set_hash_netport ip_set_hash_netnet
> ip_set_hash_netiface ip_set_hash_net ip_set_hash_mac
> ip_set_hash_ipportnet ip_set_hash_ipportip ip_set_hash_ipport
> ip_set_hash_ipmark ip_set_hash_ip ip_set_bitmap_port ip_set_bitmap_ipmac
> ip_set_bitmap_ip ip_set nfnetlink nf_log_ipv6 nf_log_common
> ip6table_mangle ip6table_filter ip6_tables ip6t_REJECT x_tables
> nf_reject_ipv6 pppoatm ppp_generic slhc ip6_udp_tunnel udp_tunnel br2684
> atm nls_utf8 drv_ifxos usb_storage dwc2 ledtrig_transient sd_mod
> scsi_mod gpio_button_hotplug ext4 mbcache jbd2 crc32c_generic
> [ 9400.356722] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.364303] CPU: 1 PID: 3599 Comm: hostapd Not tainted 4.14.138 #0
> [ 9400.370024] Stack : 00000000 877e3000 00000028 800815a8 80670000
> 8061590c 00000000 00000000
> [ 9400.378376]         805dbdc4 851d3ae4 87da592c 806506a7 805d6c54
> 00000001 851d3a88 74ab3c97
> [ 9400.386733]         00000000 00000000 807b0000 00010000 807a88b0
> 00000000 00000007 00000000
> [ 9400.395087]         000001d3 d5000000 000001d2 00000000 80000000
> 80670000 00000000 00000009
> [ 9400.403443]         86808e9c 000003ec 851d3cac 877e3000 00000001
> 00000000 00000004 807a0004
> [ 9400.411799]         ...
> [ 9400.414240] Call Trace:
> [ 9400.416693] [<80011664>] show_stack+0x58/0x100
> [ 9400.421155] [<804c8824>] dump_stack+0xe4/0x120
> [ 9400.425588] [<80037010>] __warn+0xe0/0x180
> [ 9400.429673] [<80037140>] warn_slowpath_null+0x1c/0x2c
> [ 9400.434832] [<86808e9c>] sta_set_sinfo+0xcdc/0xd88 [mac80211]
> [ 9400.440974] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.448658] ---[ end trace 214aaa49bd7f9de7 ]---
> [ 9400.534228] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.636620] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.739033] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.841432] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9400.943845] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.046257] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.148660] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.251079] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.353475] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.455885] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.558281] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.660685] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.763092] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.865506] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9401.967916] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.070317] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.172726] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.275130] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.377538] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.479940] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.582349] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.684756] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.787167] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.889569] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9402.991969] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9403.094372] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped
> old beacon
> [ 9403.189718] ath10k_pci 0000:02:00.0: removing peer, cleanup-all,
> deleting: peer 8698b600 vdev: 0 addr: 54:64:00:00:00:00
> [ 9403.306730] ieee80211 phy0: Hardware restart was requested
> [ 9403.310992] ath10k_pci 0000:02:00.0: failed to set cts protection for
> vdev 0: -143
> [ 9403.318503] ath10k_pci 0000:02:00.0: failed to set preamble for vdev
> 0: -143
> [ 9403.325542] ath10k_pci 0000:02:00.0: failed to set mgmt tx rate -143
> [ 9404.336772] ath10k_pci 0000:02:00.0: 10.1 wmi init: vdevs: 16 peers:
> 127  tid: 256
> [ 9404.352122] ath10k_pci 0000:02:00.0: wmi print 'P 128 V 8 T 410'
> [ 9404.356800] ath10k_pci 0000:02:00.0: wmi print 'msdu-desc: 1424
> sw-crypt: 0 ct-sta: 0'
> [ 9404.365199] ath10k_pci 0000:02:00.0: wmi print 'alloc rem: 24648
> iram: 26168'
> [ 9404.431453] ath10k_pci 0000:02:00.0: pdev param 0 not supported by
> firmware
> [ 9404.454484] ath10k_pci 0000:02:00.0: device successfully recovered
>
>
> opkg list | grep -e host -e wpa -e ath
>
> ath10k-firmware-qca988x-ct - 2018-10-10-d366b80d-1
> hostapd-common - 2018-12-02-c2c6c01b-6
> hostapd-openssl - 2018-12-02-c2c6c01b-6
> hostapd-utils - 2018-12-02-c2c6c01b-6
> kmod-ath - 4.14.138+4.19.66-1-1
> kmod-ath10k-ct - 4.14.138+2019-05-08-f98b6dc4-1
> kmod-ath9k - 4.14.138+4.19.66-1-1
> kmod-ath9k-common - 4.14.138+4.19.66-1-1
> wpa-cli - 2018-12-02-c2c6c01b-6
> wpa-supplicant-mesh-openssl - 2018-12-02-c2c6c01b-6
>
>
> cat /etc/config/wireless
>
> config wifi-device 'radio0'
>      option type 'mac80211'
>      option channel '36'
>      option hwmode '11a'
>      option path 'pci0000:01/0000:01:00.0/0000:02:00.0'
>      option htmode 'VHT80'
>      option txpower '17'
>      option country 'DE'
>      option legacy_rates '0'
>      option distance '20'
>
> config wifi-iface 'default_radio0'
>      option device 'radio0'
>      option network 'lan'
>      option mode 'ap'
>      option ssid 'WIFI1'
>      option encryption 'sae'
>      option key '1111111111111111'
>
> config wifi-device 'radio1'
>      option type 'mac80211'
>      option channel '11'
>      option hwmode '11g'
>      option path 'pci0000:00/0000:00:0e.0'
>      option htmode 'HT20'
>      option country 'DE'
>      option legacy_rates '0'
>      option distance '30'
>      option txpower '14'
>
> config wifi-iface 'default_radio1'
>      option device 'radio1'
>      option network 'lan'
>      option mode 'ap'
>      option ssid 'WIFI2'
>      option encryption 'sae-mixed'
>      option key '1111111111111111'
>      option ieee80211r '1'
>      option nasid '111111111111'
>      option mobility_domain '2345'
>      option ft_over_ds '1'
>      option ft_psk_generate_local '1'
>      option r1_key_holder '5464D901CE24'
>      list r0kh
> '11:11:11:11:11:11,111111111111,00000000000000000000000000000000'
>      list r0kh
> '22:22:22:22:22:22,222222222222,00000000000000000000000000000000'
>      list r1kh
> '11:11:11:11:11:11,11:11:11:11:11:11,00000000000000000000000000000000'
>      list r1kh
> '22:22:22:22:22:22,22:22:22:22:22:22,00000000000000000000000000000000'
>
> Best regards
> Yaroslav
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000ee25a00590b8ad53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello.<br><br><br></div>This bug was fixed in th=
e master branch.<br></div>Please try latest snapshot.<br><div><br clear=3D"=
all"><div><div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature">Best Regards,<br>Lukonin Kirill<br></div></div>=
<br></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">=D1=87=D1=82, 22 =D0=B0=D0=B2=D0=B3. 2019 =D0=
=B3. =D0=B2 23:06, Yaroslav Petrov &lt;<a href=3D"mailto:info@lank.me">info=
@lank.me</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hello all,<br>
<br>
<br>
I use OpenWrt 19.07 on BT Home Hub 5A, but it seams ath10k-ct driver is <br=
>
really unstable (it work only first 2-10 minutes). The ath10k driver <br>
work without problem. Can somebody help me with this issue ?<br>
<br>
<br>
---- OpenWrt 19.07-SNAPSHOT, r10323-7d300326ee ----<br>
<br>
dmesg:<br>
...<br>
[=C2=A0=C2=A0 16.523669] ath10k_pci 0000:02:00.0: qca988x hw2.0 target 0x41=
00016c <br>
chip_id 0x043202ff sub 0000:0000<br>
[=C2=A0=C2=A0 16.531585] ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1=
 <br>
tracing 0 dfs 1 testmode 0<br>
[=C2=A0=C2=A0 16.548528] ath10k_pci 0000:02:00.0: firmware ver <br>
10.1-ct-8x-__fW-022-fddd041b api 2 features <br>
wmi-10.x,has-wmi-mgmt-tx,adaptive-cca,mfp,txstatus-noack,wmi-10.x-CT,ratema=
sk-CT,txrate-CT,get-temp-CT,tx-rc-CT,cust-stats-CT,retry-gt2-CT,txrate2-CT,=
beacon-cb-CT,wmi-block-ack-CT <br>
crc32 01d1f13e<br>
[=C2=A0=C2=A0 16.600527] ath10k_pci 0000:02:00.0: Direct firmware load for =
<br>
ath10k/QCA988X/hw2.0/board-2.bin failed with error -2<br>
[=C2=A0=C2=A0 16.609654] ath10k_pci 0000:02:00.0: Falling back to user help=
er<br>
[=C2=A0=C2=A0 16.865926] firmware ath10k!QCA988X!hw2.0!board-2.bin: <br>
firmware_loading_store: map pages failed<br>
[=C2=A0=C2=A0 16.874176] ath10k_pci 0000:02:00.0: board_file api 1 bmi_id N=
/A <br>
crc32 bebc7c08<br>
[=C2=A0=C2=A0 17.754597] ath10k_pci 0000:02:00.0: 10.1 wmi init: vdevs: 16 =
peers: <br>
127=C2=A0 tid: 256<br>
[=C2=A0=C2=A0 17.769910] ath10k_pci 0000:02:00.0: wmi print &#39;P 128 V 8 =
T 410&#39;<br>
[=C2=A0=C2=A0 17.774908] ath10k_pci 0000:02:00.0: wmi print &#39;msdu-desc:=
 1424=C2=A0 <br>
sw-crypt: 0 ct-sta: 0&#39;<br>
[=C2=A0=C2=A0 17.782548] ath10k_pci 0000:02:00.0: wmi print &#39;alloc rem:=
 24648 <br>
iram: 26168&#39;<br>
[=C2=A0=C2=A0 17.846700] ath10k_pci 0000:02:00.0: htt-ver 2.1 wmi-op 2 htt-=
op 2 <br>
cal file max-sta 128 raw 0 hwcrypto 1<br>
[=C2=A0=C2=A0 17.858172] ath10k_pci 0000:02:00.0: NOTE:=C2=A0 Firmware DBGL=
OG output <br>
disabled in debug_mask: 0x10000000<br>
...<br>
[ 9397.052366] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.154773] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.257174] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.359596] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.461992] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.564396] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.666805] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.769214] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.871646] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9397.974036] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.076445] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.178844] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.281259] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.383675] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.486071] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.588478] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.690883] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.793301] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.895708] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9398.998112] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.100512] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.202918] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.305328] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.407740] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.510149] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.612543] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.714959] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.817366] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9399.919780] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.022177] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.124590] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.184417] ath10k_pci 0000:02:00.0: wmi command 36893 timeout, <br>
restarting hardware<br>
[ 9400.191096] ath10k_pci 0000:02:00.0: failed to delete peer <br>
99:99:99:99:99:99 for vdev 0: -11<br>
[ 9400.199527] ath10k_pci 0000:02:00.0: found sta peer 99:99:99:99:99:99 <b=
r>
(ptr 8698a600 id 361) entry on vdev 0 after it was supposedly removed<br>
[ 9400.212109] ------------[ cut here ]------------<br>
[ 9400.216791] WARNING: CPU: 1 PID: 3599 at <br>
backports-4.19.66-1/net/mac80211/sta_info.c:1004 <br>
sta_set_sinfo+0xcdc/0xd88 [mac80211]<br>
[ 9400.227825] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.235153] Modules linked in: ath9k ath9k_common ath9k_hw ath10k_pci <b=
r>
ath10k_core ath pppoe nf_conntrack_ipv6 mac80211 iptable_nat ipt_REJECT <br=
>
ipt_MASQUERADE cfg80211 xt_time xt_tcpudp xt_state xt_nat xt_multiport <br>
xt_mark xt_mac xt_limit xt_conntrack xt_comment xt_TCPMSS xt_REDIRECT <br>
xt_LOG xt_FLOWOFFLOAD wireguard ums_usbat ums_sddr55 ums_sddr09 <br>
ums_karma ums_jumpshot ums_isd200 ums_freecom ums_datafab ums_cypress <br>
ums_alauda pppox ppp_async owl_loader nf_reject_ipv4 nf_nat_redirect <br>
nf_nat_masquerade_ipv4 nf_conntrack_ipv4 nf_nat_ipv4 nf_nat nf_log_ipv4 <br=
>
nf_flow_table_hw nf_flow_table nf_defrag_ipv6 nf_defrag_ipv4 <br>
nf_conntrack_rtcache nf_conntrack ltq_deu_vr9 iptable_mangle <br>
iptable_filter ip_tables crc_ccitt compat drv_dsl_cpe_api drv_mei_cpe <br>
ledtrig_oneshot ledtrig_gpio xt_set ip_set_list_set ip_set_hash_netportnet<=
br>
[ 9400.307991]=C2=A0 ip_set_hash_netport ip_set_hash_netnet <br>
ip_set_hash_netiface ip_set_hash_net ip_set_hash_mac <br>
ip_set_hash_ipportnet ip_set_hash_ipportip ip_set_hash_ipport <br>
ip_set_hash_ipmark ip_set_hash_ip ip_set_bitmap_port ip_set_bitmap_ipmac <b=
r>
ip_set_bitmap_ip ip_set nfnetlink nf_log_ipv6 nf_log_common <br>
ip6table_mangle ip6table_filter ip6_tables ip6t_REJECT x_tables <br>
nf_reject_ipv6 pppoatm ppp_generic slhc ip6_udp_tunnel udp_tunnel br2684 <b=
r>
atm nls_utf8 drv_ifxos usb_storage dwc2 ledtrig_transient sd_mod <br>
scsi_mod gpio_button_hotplug ext4 mbcache jbd2 crc32c_generic<br>
[ 9400.356722] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.364303] CPU: 1 PID: 3599 Comm: hostapd Not tainted 4.14.138 #0<br>
[ 9400.370024] Stack : 00000000 877e3000 00000028 800815a8 80670000 <br>
8061590c 00000000 00000000<br>
[ 9400.378376]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 805dbdc4 851=
d3ae4 87da592c 806506a7 805d6c54 <br>
00000001 851d3a88 74ab3c97<br>
[ 9400.386733]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00000000 000=
00000 807b0000 00010000 807a88b0 <br>
00000000 00000007 00000000<br>
[ 9400.395087]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 000001d3 d50=
00000 000001d2 00000000 80000000 <br>
80670000 00000000 00000009<br>
[ 9400.403443]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 86808e9c 000=
003ec 851d3cac 877e3000 00000001 <br>
00000000 00000004 807a0004<br>
[ 9400.411799]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ...<br>
[ 9400.414240] Call Trace:<br>
[ 9400.416693] [&lt;80011664&gt;] show_stack+0x58/0x100<br>
[ 9400.421155] [&lt;804c8824&gt;] dump_stack+0xe4/0x120<br>
[ 9400.425588] [&lt;80037010&gt;] __warn+0xe0/0x180<br>
[ 9400.429673] [&lt;80037140&gt;] warn_slowpath_null+0x1c/0x2c<br>
[ 9400.434832] [&lt;86808e9c&gt;] sta_set_sinfo+0xcdc/0xd88 [mac80211]<br>
[ 9400.440974] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.448658] ---[ end trace 214aaa49bd7f9de7 ]---<br>
[ 9400.534228] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.636620] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.739033] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.841432] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9400.943845] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.046257] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.148660] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.251079] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.353475] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.455885] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.558281] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.660685] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.763092] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.865506] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9401.967916] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.070317] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.172726] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.275130] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.377538] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.479940] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.582349] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.684756] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.787167] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.889569] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9402.991969] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9403.094372] ath10k_pci 0000:02:00.0: SWBA overrun on vdev 0, skipped <br=
>
old beacon<br>
[ 9403.189718] ath10k_pci 0000:02:00.0: removing peer, cleanup-all, <br>
deleting: peer 8698b600 vdev: 0 addr: 54:64:00:00:00:00<br>
[ 9403.306730] ieee80211 phy0: Hardware restart was requested<br>
[ 9403.310992] ath10k_pci 0000:02:00.0: failed to set cts protection for <b=
r>
vdev 0: -143<br>
[ 9403.318503] ath10k_pci 0000:02:00.0: failed to set preamble for vdev <br=
>
0: -143<br>
[ 9403.325542] ath10k_pci 0000:02:00.0: failed to set mgmt tx rate -143<br>
[ 9404.336772] ath10k_pci 0000:02:00.0: 10.1 wmi init: vdevs: 16 peers: <br=
>
127=C2=A0 tid: 256<br>
[ 9404.352122] ath10k_pci 0000:02:00.0: wmi print &#39;P 128 V 8 T 410&#39;=
<br>
[ 9404.356800] ath10k_pci 0000:02:00.0: wmi print &#39;msdu-desc: 1424=C2=
=A0 <br>
sw-crypt: 0 ct-sta: 0&#39;<br>
[ 9404.365199] ath10k_pci 0000:02:00.0: wmi print &#39;alloc rem: 24648 <br=
>
iram: 26168&#39;<br>
[ 9404.431453] ath10k_pci 0000:02:00.0: pdev param 0 not supported by <br>
firmware<br>
[ 9404.454484] ath10k_pci 0000:02:00.0: device successfully recovered<br>
<br>
<br>
opkg list | grep -e host -e wpa -e ath<br>
<br>
ath10k-firmware-qca988x-ct - 2018-10-10-d366b80d-1<br>
hostapd-common - 2018-12-02-c2c6c01b-6<br>
hostapd-openssl - 2018-12-02-c2c6c01b-6<br>
hostapd-utils - 2018-12-02-c2c6c01b-6<br>
kmod-ath - 4.14.138+4.19.66-1-1<br>
kmod-ath10k-ct - 4.14.138+2019-05-08-f98b6dc4-1<br>
kmod-ath9k - 4.14.138+4.19.66-1-1<br>
kmod-ath9k-common - 4.14.138+4.19.66-1-1<br>
wpa-cli - 2018-12-02-c2c6c01b-6<br>
wpa-supplicant-mesh-openssl - 2018-12-02-c2c6c01b-6<br>
<br>
<br>
cat /etc/config/wireless<br>
<br>
config wifi-device &#39;radio0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option type &#39;mac80211&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option channel &#39;36&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option hwmode &#39;11a&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option path &#39;pci0000:01/0000:01:00.0/0000:02:0=
0.0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option htmode &#39;VHT80&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option txpower &#39;17&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option country &#39;DE&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option legacy_rates &#39;0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option distance &#39;20&#39;<br>
<br>
config wifi-iface &#39;default_radio0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option device &#39;radio0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option network &#39;lan&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option mode &#39;ap&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option ssid &#39;WIFI1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option encryption &#39;sae&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option key &#39;1111111111111111&#39;<br>
<br>
config wifi-device &#39;radio1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option type &#39;mac80211&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option channel &#39;11&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option hwmode &#39;11g&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option path &#39;pci0000:00/0000:00:0e.0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option htmode &#39;HT20&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option country &#39;DE&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option legacy_rates &#39;0&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option distance &#39;30&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option txpower &#39;14&#39;<br>
<br>
config wifi-iface &#39;default_radio1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option device &#39;radio1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option network &#39;lan&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option mode &#39;ap&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option ssid &#39;WIFI2&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option encryption &#39;sae-mixed&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option key &#39;1111111111111111&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option ieee80211r &#39;1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option nasid &#39;111111111111&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option mobility_domain &#39;2345&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option ft_over_ds &#39;1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option ft_psk_generate_local &#39;1&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 option r1_key_holder &#39;5464D901CE24&#39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 list r0kh <br>
&#39;11:11:11:11:11:11,111111111111,00000000000000000000000000000000&#39;<b=
r>
=C2=A0=C2=A0=C2=A0=C2=A0 list r0kh <br>
&#39;22:22:22:22:22:22,222222222222,00000000000000000000000000000000&#39;<b=
r>
=C2=A0=C2=A0=C2=A0=C2=A0 list r1kh <br>
&#39;11:11:11:11:11:11,11:11:11:11:11:11,00000000000000000000000000000000&#=
39;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 list r1kh <br>
&#39;22:22:22:22:22:22,22:22:22:22:22:22,00000000000000000000000000000000&#=
39;<br>
<br>
Best regards<br>
Yaroslav<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000ee25a00590b8ad53--


--===============9173607127117780539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9173607127117780539==--

