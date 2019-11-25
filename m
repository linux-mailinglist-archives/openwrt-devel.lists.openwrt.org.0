Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94416109521
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 22:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HiGI/sNC8M6hCb92l6D5XaBQNs4DeAoU3xPxyHxnWNU=; b=MQcEr+EQA70F/L
	AV+frPt8LK7Iga2oMrgh2/Ty0w5m6TTXMi+6+BP8QSWPN/fs4qYWU0ypLvpZp0pBcDCfNrDKYww+v
	aKYbQne2vTH9j9OaiMCPtRm2LYOesO9AYEc0DsFzA+v625ZhPJ0mWN33vkGOtiSt7UyYPrHQSb5Tc
	xzsL4N7IHcDienWF5Lis2jFAm/pOK3Z6ykBjJv0CjMVDESjzRJGIdnI1YXZA8ZSXxz79yCaxlJMRL
	RcU5KTfhBEYyv/xZ0BGZ+58SMxaWpJou+pgCxwpx10H2cLK5Jedh/mtcCBhTdX4J/phZSC6krEs3+
	GggARhD0X4BkCdz/kf4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZLu9-0005ku-HK; Mon, 25 Nov 2019 21:28:21 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZLu0-0005kJ-Fp
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 21:28:14 +0000
Received: by mail-wr1-x432.google.com with SMTP id t2so19965690wrr.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 13:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=3gAJJxalxJBWy+VHcpQ3yBlfO/cfjp33J5hk9D9GaFU=;
 b=AEzVOgx4QnReWzYy2o4NvDB/cZwNtDsFNDFHffT89eardwmclivGlDK9lf6WZa71XT
 e/W8opEOOWG4knCZTN4yc22oMoQdUvqmv0zkcudYrmgvT4tGGY7KUF9ST8hZTLf6kwMc
 VfO6yxPg7TSNLWf7ipZvp1H5VIoxrcnzWF7+xHd7WB8VyBfrIZlMh1MJf83DpCrikNQb
 VsxMy+7n6VCVdcjYzv90MmShNtgvIOzcK3GjfmCc7kNY0WfC7wUGKqPeLYbCgY75yxnx
 CcAeOuFOr2PT504CTDwX5JhesVh7F/9cns7boca8DAcLtqAObzK+850hyeg461SZ5LZM
 4tPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=3gAJJxalxJBWy+VHcpQ3yBlfO/cfjp33J5hk9D9GaFU=;
 b=PRv9WYS37LivBkVKzxMlJS9V5Qa6rpxFEeHENzpwIADsKbFgyApOka+KIPNB7EeiNX
 0rP5rlCaRdkXoZkS9cfKWNqS+bHFBPNY4PCyf49gv+RMtMVKs3BzQd77qf8auqt+bImp
 QSLl0W7+KG+2gXFV3f6Ljrp6Pxy1OYnc6Y3QjqKQLCHckYhxk5SwhwN4twCsUFL3Ku4c
 2PndRD0duHIw9Tn1S2Mv09yjXmwq7sl93iSQvI7HPyWfUHBb8mEoKZNhJTXciKvCX6AH
 95dSwAJkF8FYpr28dw5/b+BzQFKi+3Dn5O4FEyxIW/O8Web5TyS1SaxzSrQQ/4tvXTlP
 9Jyg==
X-Gm-Message-State: APjAAAXX4mIeEOIgOn+HUWZG2dc8s6yeMIdMLWa9ORMxyFnnP1D9feZZ
 dtfblBfCa2iKgPG+WMbBIzVKcjwe
X-Google-Smtp-Source: APXvYqzAT7wc6itOrslyaLLHMopzajqlA7vAzi5TDNJjued89vjhPcFN8YSodkyjYuh0yEX5hBIrZA==
X-Received: by 2002:adf:dc11:: with SMTP id t17mr17091604wri.294.1574717290265; 
 Mon, 25 Nov 2019 13:28:10 -0800 (PST)
Received: from localhost
 (p200300F6670848ACA08372AA74B0AC2E.dip0.t-ipconnect.de.
 [2003:f6:6708:48ac:a083:72aa:74b0:ac2e])
 by smtp.gmail.com with ESMTPSA id x13sm607979wmc.19.2019.11.25.13.28.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Nov 2019 13:28:09 -0800 (PST)
To: yszhou4tech@gmail.com
From: e9hack <e9hack@gmail.com>
Message-ID: <167acbe0-df4b-b180-ead4-0a0f5fbbb640@gmail.com>
Date: Mon, 25 Nov 2019 22:28:06 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_132812_559657_C9E3309B 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] wifi/network is broken
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

this commit:

Commit: b7c58a1eeba5be2e1f77ec05b417be9d87e26916 [b7c58a1]
kernel: nf_conntrack_rtcache: fix cleanup on netns delete and rmmod

floods my log every a few seconds with this message:

Mon Nov 25 20:57:28 2019 kern.warn kernel: [  318.310769] ath10k_pci 0000:00:00.0: SWBA overrun on vdev 0, skipped old beacon
Mon Nov 25 20:57:28 2019 kern.warn kernel: [  318.318202] ath10k_pci 0000:00:00.0: SWBA overrun on vdev 1, skipped old beacon
Mon Nov 25 20:57:28 2019 kern.warn kernel: [  318.325678] ath10k_pci 0000:00:00.0: SWBA overrun on vdev 2, skipped old beacon
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  320.919241] ------------[ cut here ]------------
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  320.924032] WARNING: CPU: 0 PID: 0 at net/netfilter/nf_conntrack_rtcache.c:197 0x866ec314
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  320.932345] Modules linked in: ifb ath9k ath9k_common pppoe ppp_async ath9k_hw ath10k_pci ath10k_core ath pppox ppp_generic nf_nat_pptp nf_flow_table_ipv6 nf_flow_table_ipv4 nf_flow_table_inet nf_conntrack_pptp mac80211 lz4 iptable_nat ipt_REJECT ipt_MASQUERADE cfg80211 xt_time xt_tcpudp xt_tcpmss xt_string xt_statistic xt_state xt_recent xt_quota xt_pkttype xt_owner xt_nat xt_multiport xt_mark xt_mac xt_limit xt_length xt_iprange xt_hl xt_helper xt_ecn xt_dscp xt_conntrack xt_connmark xt_connlimit xt_connbytes xt_comment xt_bpf xt_addrtype xt_TCPMSS xt_REDIRECT xt_NFQUEUE xt_NFLOG xt_NETMAP xt_LOG xt_HL xt_FLOWOFFLOAD xt_DSCP xt_CT xt_CLASSIFY wireguard vhci_hcd usbip_host usbip_core ums_usbat ums_sddr55 ums_sddr09 ums_karma ums_jumpshot ums_isd200 ums_freecom ums_datafab ums_cypress ums_alauda
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.003959]  ts_fsm ts_bm slhc nft_reject_ipv6 nft_reject_ipv4 nft_reject_inet nft_reject nft_redir_ipv4 nft_redir nft_quota nft_numgen nft_nat nft_masq_ipv4 nft_masq nft_log nft_limit nft_flow_offload nft_ct nft_counter nft_chain_route_ipv6 nft_chain_route_ipv4 nft_chain_nat_ipv4 nfnetlink_queue nfnetlink_log nf_tables nf_reject_ipv4 nf_nat_tftp nf_nat_snmp_basic nf_nat_sip nf_nat_proto_gre nf_nat_irc nf_nat_ipv4 nf_nat_h323 nf_nat_ftp nf_nat_amanda nf_nat nf_log_ipv4 nf_flow_table_hw nf_flow_table nf_conntrack_tftp nf_conntrack_snmp nf_conntrack_sip nf_conntrack_rtcache nf_conntrack_proto_gre nf_conntrack_netlink nf_conntrack_irc nf_conntrack_h323 nf_conntrack_ftp nf_conntrack_broadcast ts_kmp nf_conntrack_amanda nf_conncount lz4_decompress lz4_compress iptable_raw iptable_mangle iptable_filter
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.075610]  ipt_ECN ip_tables crc_ccitt compat asn1_decoder act_connmark sch_tbf sch_ingress sch_htb sch_hfsc em_u32 cls_u32 cls_tcindex cls_route cls_matchall cls_fw cls_flow cls_basic act_skbedit act_mirred hid evdev input_core i2c_dev i2c_core ledtrig_usbport cryptodev xt_set ip_set_list_set ip_set_hash_netportnet ip_set_hash_netport ip_set_hash_netnet ip_set_hash_netiface ip_set_hash_net ip_set_hash_mac ip_set_hash_ipportnet ip_set_hash_ipportip ip_set_hash_ipport ip_set_hash_ipmark ip_set_hash_ip ip_set_bitmap_port ip_set_bitmap_ipmac ip_set_bitmap_ip ip_set nfnetlink ip6t_rt ip6t_mh ip6t_ipv6header ip6t_hbh ip6t_frag ip6t_eui64 ip6t_ah nf_log_ipv6 nf_log_common ip6table_mangle ip6table_filter ip6_tables ip6t_REJECT x_tables nf_reject_ipv6 msdos ip6_udp_tunnel udp_tunnel tun vfat fat nls_utf8
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.147453]  nls_iso8859_1 nls_cp437 authenc uas usb_storage uhci_hcd ohci_platform ohci_hcd ehci_platform sd_mod scsi_mod ehci_hcd gpio_button_hotplug f2fs exfat usbcore nls_base usb_common aead crypto_null crc32_generic crc32c_generic cryptomgr lzo lzo_decompress lzo_compress crypto_acompress ext4 mbcache jbd2 crypto_hash crc16 zram zsmalloc [last unloaded: ifb]
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.180234] CPU: 0 PID: 0 Comm: swapper Tainted: G        W         4.19.85 #0
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.187563] Stack : 00000001 00000003 80580000 800b5580 00000001 00000000 00000000 214d75cf
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.196062]         8055fbd8 87c0980c 80580000 80587f24 80587b47 00000001 87c097b0 214d75cf
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.204553]         00000000 00000000 80710000 806e7cd8 00000000 00000000 00000008 00000000
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.213046]         000003ca d037dda6 00000000 0002c00a 80580000 00000000 866ec314 866ed018
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.221536]         000000c5 00000000 00000001 00000003 00000001 802a6c6c 00000000 806e0000
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.230022]         ...
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.232514] Call Trace:
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.235017] [<8006b284>] show_stack+0x68/0x128
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.239542] [<80085d88>] __warn+0xe4/0x13c
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.243710] [<80085e28>] warn_slowpath_null+0x48/0x60
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.248918] [<866ec314>] 0x866ec314
Mon Nov 25 20:57:30 2019 kern.warn kernel: [  321.252507] ---[ end trace 5e0b762f3e837848 ]---

I'm using a TP-Link archer C7 router.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
