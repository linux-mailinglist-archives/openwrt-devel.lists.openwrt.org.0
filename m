Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26344FB16
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 12:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TYGtol1vuWCcbfNPV9zQOkB7QMTgVUpbdME0kwEK8Po=; b=fPo
	bCbIK/zMqm3mK7UPwYAaZ5AFV/2Ah8qGIg6teKjPLrjsXyu/5K8H7mlH0nQjArGBje9ekWbOAWtWi
	vXxmKDmhsaLXE2Jc+/Paz2EAM8lLkKSS+W+xxYHkeVHpsQWtbysn2grDAljhERM7BjxKqOmXCryQ0
	EeDQVPLRT3Mmfxx2HVTfrFV83rPp/ZLZH+mTHdiCyxiX/o9OZXOF+Txq/TaA5FwZPovFJ+vXRSmqm
	nJV1dHtbfb48XXH56xEkjNJgOCbfT0vXtk7c9Qi2QnNe65t55+10fpDA0CTgJHR8SM5OjZ9s20ugz
	oxmiTJs+7y8kAFG8rg3BhjuQVMSplIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hezp9-00084P-MF; Sun, 23 Jun 2019 10:34:15 +0000
Received: from mail-eopbgr10062.outbound.protection.outlook.com ([40.107.1.62]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hezow-00083g-MW
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 10:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gbCkzl4d23XtrRz4NSy5fK+nY5lOln45gOY6SCkcww=;
 b=ttRes+LsEaPk0xvTrqiGCQmcCX9zg7EmKCmk0ZV3WfozhlTZZc1ixpVKmsz6BpcktlPRh3L/wbCxrl7JCVRrjKGM5O35l7SKS1RWoP0riEGEHLstNyHaF5F+BYf0s61XxEwUQWWWyXe8gCB6S8ZNKYX0VgaPRBEpk7iLnATfc2E=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB2766.eurprd03.prod.outlook.com (10.171.103.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sun, 23 Jun 2019 10:33:44 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3%2]) with mapi id 15.20.1987.014; Sun, 23 Jun 2019
 10:33:44 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Thread-Topic: ath10k-ct crash Archer C7 v2 - OpenWrt r10307-629e6538a1 - k4.19
Thread-Index: AQHVKa8ifTdP/MBUJU2z1Ku3RTLVFw==
Date: Sun, 23 Jun 2019 10:33:44 +0000
Message-ID: <2886BC46-F77D-4F20-83F4-4E7CECCB9716@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03b202fc-0534-4123-b684-08d6f7c644ce
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB2766; 
x-ms-traffictypediagnostic: VI1PR0302MB2766:
x-microsoft-antispam-prvs: <VI1PR0302MB27667E0BCF05F35C66B912E2C9E10@VI1PR0302MB2766.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(136003)(396003)(39830400003)(199004)(189003)(51234002)(6512007)(14444005)(256004)(74482002)(36756003)(6436002)(6486002)(53936002)(486006)(46003)(2616005)(476003)(53946003)(64756008)(86362001)(91956017)(73956011)(25786009)(66446008)(66946007)(66616009)(66476007)(66556008)(30864003)(5660300002)(6116002)(45080400002)(508600001)(7736002)(305945005)(99286004)(99936001)(8936002)(68736007)(186003)(14454004)(2906002)(71200400001)(6916009)(76116006)(71190400001)(81156014)(8676002)(102836004)(316002)(81166006)(33656002)(6506007)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB2766;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0d5S9kxok1aba30z/zYvIdlXV4IGZguP6JUBhUkURgcpsfmdmvGdqtWM84htUSwi5F6M/jO0LvaxvFL3HEjLSLtqS/ohdxDOCFE573C6jZZRqiAZEqZ8EdgQlEo+qS4J2xriZjyXuQ5wcMMPL2Yhw3mkEV8T3g3x09fBd+Aa2uQyWS9trdEl5eWQh3IlUuWollOV+P0K2qnCE3/9HGtFfzkoh1J6SoPz2tT/1X9wj1yISMasF2dVUX3bf43HEQPAkUC7FgpFYzKZ9EUm+gvCj8hf9wtqVyTnGeAknoYD4W9Sn2XkMXtKtClXwrmbetaKsOOohwWF148yfnfoON0sEFg+bD0bwXD9OAsZbDKMb8uAtN/vJ63CbhdhMEkCm5smOrpttCpykZkzFn+TVsTpYmlSitwOf2rzpx9yTvkraHg=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b202fc-0534-4123-b684-08d6f7c644ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 10:33:44.7685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2766
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_033403_149014_0390265F 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] ath10k-ct crash Archer C7 v2 - OpenWrt
 r10307-629e6538a1 - k4.19
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
Content-Type: multipart/mixed; boundary="===============8481067325767236439=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8481067325767236439==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_FEBBCE85-C7DB-4B8C-9E9C-57522FF38C24";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_FEBBCE85-C7DB-4B8C-9E9C-57522FF38C24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Unfortunately flyspray won=E2=80=99t let me create a task, so filing =
this here so it doesn=E2=80=99t get lost.


Archer C7 v2 - OpenWrt r10307-629e6538a1 - k4.19

Recently seen the following firmware crashes on the device.  Seems to be =
related to my macbook coming out of power save mode.
There's been a recent ath10k-ct firmware bump so unclear if this is a =
wireless firmware bug or a kernel driver bug, or both.  Maybe the =
crashlog holds a clue.

[76300.806621] ath10k_pci 0000:00:00.0: firmware crashed! (guid n/a)
[76300.812839] ath10k_pci 0000:00:00.0: qca988x hw2.0 target 0x4100016c =
chip_id 0x043202ff sub 0000:0000
[76300.822239] ath10k_pci 0000:00:00.0: kconfig debug 0 debugfs 1 =
tracing 0 dfs 1 testmode 0
[76300.834379] ath10k_pci 0000:00:00.0: firmware ver =
10.1-ct-8x-__fH-022-8f2afb9e api 2 features =
wmi-10.x,mfp,txstatus-noack,wmi-10.x-CT,ratemask-CT,regdump-CT,txrate-CT,f=
lush-all-CT,pingpong-CT,ch-regs-CT,nop-CT,set-special-CT,get-temp-CT,tx-rc=
-CT,cust-stats-CT,retry-gt2-CT,txrate2-CT,beacon-cb-CT,wmi-block-ack-CT =
crc32 98d412c4
[76300.863764] ath10k_pci 0000:00:00.0: board_file api 1 bmi_id N/A =
crc32 bebc7c08
[76300.871195] ath10k_pci 0000:00:00.0: htt-ver 2.2 wmi-op 2 htt-op 2 =
cal file max-sta 128 raw 0 hwcrypto 1
[76300.882843] ath10k_pci 0000:00:00.0: firmware register dump:
[76300.888598] ath10k_pci 0000:00:00.0: [00]: 0x4100016C 0x00000000 =
0x009963E5 0x00000000
[76300.896637] ath10k_pci 0000:00:00.0: [04]: 0x00000000 0x00060324 =
0x00000000 0x00000000
[76300.904670] ath10k_pci 0000:00:00.0: [08]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76300.912706] ath10k_pci 0000:00:00.0: [12]: 0x00000005 0x00000000 =
0x00000000 0x00000000
[76300.920750] ath10k_pci 0000:00:00.0: [16]: 0x009B8BAB 0x0094085D =
0x00000000 0x009963E5
[76300.928793] ath10k_pci 0000:00:00.0: [20]: 0x809430B8 0x00401A40 =
0x00000001 0x00000002
[76300.936837] ath10k_pci 0000:00:00.0: [24]: 0x80940975 0x00401A60 =
0x0000001F 0x00403BEC
[76300.944869] ath10k_pci 0000:00:00.0: [28]: 0x409406B9 0x00401A80 =
0x0000001F 0x000FFFFF
[76300.952905] ath10k_pci 0000:00:00.0: [32]: 0x00000000 0x00401AA0 =
0x00050024 0x04030000
[76300.960953] ath10k_pci 0000:00:00.0: [36]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76300.968991] ath10k_pci 0000:00:00.0: [40]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76300.977034] ath10k_pci 0000:00:00.0: [44]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76300.985066] ath10k_pci 0000:00:00.0: [48]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76300.993103] ath10k_pci 0000:00:00.0: [52]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76301.001146] ath10k_pci 0000:00:00.0: [56]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76301.009186] ath10k_pci 0000:00:00.0: Copy Engine register dump:
[76301.015196] ath10k_pci 0000:00:00.0: [00]: 0x00057400  14  14   3   3
[76301.021745] ath10k_pci 0000:00:00.0: [01]: 0x00057800  20  20  54  55
[76301.028291] ath10k_pci 0000:00:00.0: [02]: 0x00057c00  21  21  84  85
[76301.034826] ath10k_pci 0000:00:00.0: [03]: 0x00058000  28  28  30  28
[76301.041378] ath10k_pci 0000:00:00.0: [04]: 0x00058400 5087 5087  25 =
241
[76301.048100] ath10k_pci 0000:00:00.0: [05]: 0x00058800   6   6 101 102
[76301.054636] ath10k_pci 0000:00:00.0: [06]: 0x00058c00  22  22  22  22
[76301.061186] ath10k_pci 0000:00:00.0: [07]: 0x00059000   0   0   0   0
[76301.069742] ath10k_pci 0000:00:00.0: debug log header, dbuf: 0x412708 =
 dropped: 0
[76301.078358] ath10k_pci 0000:00:00.0: [0] next: 0x412720 buf: 0x41056c =
sz: 1500 len: 52 count: 2 free: 0
[76301.088905] ath10k_pci 0000:00:00.0: ath10k_pci ATH10K_DBG_BUFFER:
[76301.095175] ath10k: [0000]: 184AA804 0600FC13 00001091 00000000 =
00000000 08080000 184AA804 0100FC17
[76301.104362] ath10k: [0008]: 00000000 00000000 30194000 6C010041 =
00000000
[76301.111168] ath10k_pci 0000:00:00.0: ATH10K_END
[76301.116785] ath10k_pci 0000:00:00.0: [1] next: 0x412708 buf: 0x410b5c =
sz: 1500 len: 0 count: 0 free: 0
[76301.129238] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 1e425dff vdev: 0 addr: 8c:85:90:36:ea:10
[76301.140415] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 29f27609 vdev: 0 addr: 08:e6:89:40:12:7e
[76301.151549] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 7cbbd9a3 vdev: 0 addr: c4:61:8b:23:6d:ca
[76301.162681] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 15825a2b vdev: 0 addr: c8:f6:50:68:97:e5
[76301.173808] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 8f0f5636 vdev: 0 addr: 14:cc:20:be:89:31
[76301.349424] ieee80211 phy0: Hardware restart was requested
[76302.616934] ath10k_pci 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: =
127  tid: 256
[76302.634435] ath10k_pci 0000:00:00.0: wmi print 'P 128 V 8 T 410'
[76302.640835] ath10k_pci 0000:00:00.0: wmi print 'msdu-desc: 1424  =
sw-crypt: 0 ct-sta: 0'
[76302.649021] ath10k_pci 0000:00:00.0: wmi print 'alloc rem: 24632 =
iram: 26408'
[76302.732331] ath10k_pci 0000:00:00.0: pdev param 0 not supported by =
firmware
[76302.747560] ath10k_pci 0000:00:00.0: set-coverage-class, phyclk: 88  =
value: 0
[76303.766367] ath10k_pci 0000:00:00.0: device successfully recovered
[76303.772803] ath10k_pci 0000:00:00.0: Invalid state: 3 in =
ath10k_htt_tx_32, warning will not be repeated.
[76303.772809] ------------[ cut here ]------------
[76303.772891] WARNING: CPU: 0 PID: 5588 at =
/Users/kevin/wrt/build_dir/target-mips_74kc+dsp2_musl/linux-ath79_generic/=
ath10k-ct-2019-06-13-a045b1ce/ath10k-4.19/htt_tx.c:1220 =
ieee80211_is_robust_mgmt_frame_tx+0x194/0xb38 [ath10k_core]
[76303.772893] Modules linked in: ath9k ath9k_common xt_connlimit =
nf_conncount iptable_nat ipt_MASQUERADE ath9k_hw ath10k_pci ath10k_core =
ath xt_state xt_nat xt_helper xt_conntrack xt_connmark xt_connbytes =
xt_REDIRECT xt_FLOWOFFLOAD xt_CT nf_nat_ipv4 nf_nat nf_flow_table_hw =
nf_flow_table nf_conntrack_rtcache nf_conntrack mac80211 ipt_REJECT =
cfg80211 xt_time xt_tcpudp xt_tcpmss xt_statistic xt_recent xt_multiport =
xt_mark xt_mac xt_limit xt_length xt_hl xt_ecn xt_dscp xt_comment =
xt_TCPMSS xt_LOG xt_HL xt_DSCP xt_CLASSIFY nf_reject_ipv4 nf_log_ipv4 =
nf_defrag_ipv6 nf_defrag_ipv4 iptable_raw iptable_mangle iptable_filter =
ipt_ECN ip_tables compat sch_tbf sch_ingress sch_htb sch_hfsc em_u32 =
cls_u32 cls_tcindex cls_route cls_matchall cls_fw cls_flow cls_basic =
act_skbedit act_mirred ledtrig_usbport ledtrig_heartbeat
[76303.773064]  xt_set ip_set_list_set ip_set_hash_netportnet =
ip_set_hash_netport ip_set_hash_netnet ip_set_hash_netiface =
ip_set_hash_net ip_set_hash_mac ip_set_hash_ipportnet =
ip_set_hash_ipportip ip_set_hash_ipport ip_set_hash_ipmark =
ip_set_hash_ip ip_set_bitmap_port ip_set_bitmap_ipmac ip_set_bitmap_ip =
ip_set nfnetlink nf_log_ipv6 nf_log_common ip6table_mangle =
ip6table_filter ip6_tables ip6t_REJECT x_tables nf_reject_ipv6 vfat fat =
autofs4 nls_utf8 nls_iso8859_1 nls_cp437 usb_storage ehci_platform =
sd_mod scsi_mod ehci_hcd gpio_button_hotplug ext4 mbcache jbd2 exfat =
usbcore nls_base usb_common crc16 crc32c_generic crypto_hash
[76303.773185] CPU: 0 PID: 5588 Comm: kworker/0:1 Not tainted 4.19.53 #0
[76303.773301] Workqueue: events_freezable ieee80211_alloc_hw_nm =
[mac80211]
[76303.773307] Stack : 804f4ea8 86dd50b8 000004c4 00000000 84679960 =
800b3728 804f4ea8 00000017
[76303.773330]         84be21b8 00000000 804f4e90 87c09c5c 86dd50b8 =
00000000 87c09c30 5b1aa754
[76303.773350]         00000000 00000000 0000014b 00000000 00000004 =
8044df8c 00000001 68775f6e
[76303.773370]         735f6672 806c0000 806c0000 65657a61 00000000 =
00000000 86da4d2c 86dd50b8
[76303.773390]         000004c4 00000000 84679960 86870d18 00000000 =
0000014a 00000000 806a0000
[76303.773410]         ...
[76303.773416] Call Trace:
[76303.773439] [<8006aeb4>] show_stack+0x58/0x100
[76303.773464] [<8008543c>] __warn+0xe4/0x13c
[76303.773475] [<800854dc>] warn_slowpath_null+0x48/0x6c
[76303.773539] [<86da4d2c>] =
ieee80211_is_robust_mgmt_frame_tx+0x194/0xb38 [ath10k_core]
[76303.773569] [<86d81a44>] 0x86d81a44
[76303.773584] ---[ end trace 97eb6450efc74215 ]---
[76303.773597] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773609] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773616] ath10k_pci 0000:00:00.0: failed to transmit frame: -19
[76303.773629] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773637] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773644] ath10k_pci 0000:00:00.0: failed to transmit frame: -19
[76303.773654] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773662] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773669] ath10k_pci 0000:00:00.0: failed to transmit frame: -19
[76303.773678] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773686] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773693] ath10k_pci 0000:00:00.0: failed to transmit frame: -19
[76303.773702] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773710] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773717] ath10k_pci 0000:00:00.0: failed to transmit frame: -19
[76303.773726] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773733] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773740] ath10k_pci 0000:00:00.0: failed to transmit frame: -19
[76303.773780] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.773788] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.773795] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.783537] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.783548] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.783555] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.783580] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.783588] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.783596] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.788438] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76303.788453] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.788461] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.809289] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.809298] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.809410] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.809419] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.881751] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.881760] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.881784] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.881791] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.882126] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.882136] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.882265] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.882274] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938461] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938470] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938513] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938521] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938546] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938553] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938575] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938583] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938605] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938612] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938634] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938641] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.938756] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.938765] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.945587] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.945597] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.952639] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.952648] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.969720] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.969730] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.969758] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.969766] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76303.995492] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76303.995502] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.005128] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.005137] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.005162] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.005170] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.005192] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.005199] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.005220] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.005228] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.005423] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.005432] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.022697] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.022706] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.022734] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.022742] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.022763] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.022771] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.022792] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.022800] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.022939] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.022948] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.031379] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.031389] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.044843] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.044852] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.044878] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.044885] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.044906] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.044914] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.044945] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.044953] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.044974] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.044982] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.045003] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.045011] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.045101] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.045110] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.051579] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.051589] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.058983] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.058993] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.071578] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.071588] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.071812] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.071822] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.085489] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.085499] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.099102] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.099112] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.111642] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.111652] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.131477] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.131487] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.145029] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.145040] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.145175] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.145185] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.158885] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.158895] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.158925] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.158933] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.159001] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.159009] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.223236] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.223246] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.223274] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.223282] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.277855] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.277865] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.277893] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.277900] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.290260] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.290271] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.290304] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.290312] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.290332] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.290340] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.290361] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.290368] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.290536] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.290545] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.302724] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.302734] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.302760] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.302767] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.302789] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.302797] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.302818] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.302826] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.315052] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.315061] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.327271] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.327281] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.339513] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.339524] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.339634] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.339642] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.339668] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.339676] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.339731] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.339739] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.339885] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.339895] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.352048] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.352058] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.352096] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.352104] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.352193] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.352202] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.352322] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.352331] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.358697] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.358707] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.364820] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.364830] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.377009] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.377019] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.389187] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.389197] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.401345] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.401355] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.443675] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.443685] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.455906] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.455916] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.468141] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.468151] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.516674] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.516684] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.516796] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.516804] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.516832] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.516839] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.517031] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.517040] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.529199] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.529209] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.529232] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.529240] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.529260] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.529268] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.529288] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.529295] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.529314] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.529322] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.541519] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.541529] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.553661] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.553670] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.553694] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.553701] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.553730] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.553737] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.553796] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.553805] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.566132] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.566142] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.572257] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.572267] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.584391] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.584400] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.584567] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.584577] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.596826] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.596836] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.596861] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.596869] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.609074] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.609084] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.633348] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.633358] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.645592] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.645602] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.645706] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.645715] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.664057] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.664067] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.682253] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.682263] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.724636] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.724646] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.724750] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.724758] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.724798] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.724806] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.749057] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.749067] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.761204] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.761213] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.761338] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.761347] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.773590] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.773600] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.773737] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.773747] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.785870] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.785880] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.786007] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.786016] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.798352] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.798363] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.810468] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.810477] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.822679] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.822689] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.840852] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.840862] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.840886] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.840894] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.840915] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.840922] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.853328] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.853339] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.853365] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.853373] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.853395] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.853402] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.865514] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.865524] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.871871] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.871880] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.871904] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.871911] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.877969] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.877978] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.896458] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.896468] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.902498] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.902507] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.950943] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.950954] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.950978] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.950986] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.951236] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.951246] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.963412] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.963422] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.963446] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.963454] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.963547] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.963556] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.975907] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.975917] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.982087] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.982096] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.982237] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.982245] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.982274] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.982281] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.982364] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.982372] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76304.994628] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76304.994638] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.006882] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.006892] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.006915] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.006923] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.006943] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.006951] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.007064] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.007073] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.019196] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.019206] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.019228] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.019236] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.092283] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.092293] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.104700] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.104711] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.104735] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.104743] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.116871] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.116880] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.134971] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.134981] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.159284] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.159294] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.159319] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.159326] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.159347] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.159355] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.159375] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.159383] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.220138] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.220149] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.220173] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.220180] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.232396] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.232406] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.232430] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.232438] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.250768] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.250778] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.250807] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.250814] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.250850] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.250858] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.250925] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.250932] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.281122] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.281131] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.287348] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.287357] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.287493] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.287502] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348500] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348510] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348623] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348631] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348659] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348667] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348775] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348784] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348810] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348818] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348846] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348853] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.348958] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.348966] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.361119] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.361129] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.361255] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.361264] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.373402] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.373411] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.373436] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.373444] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.373464] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.373471] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.373523] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.373531] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.403974] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.403984] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.404015] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.404023] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.404044] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.404051] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.416307] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.416317] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.488874] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.488884] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.543511] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.543521] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.604361] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.604371] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.616714] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.616725] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.616750] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.616757] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.628954] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.628964] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.628988] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.628996] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.629017] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.629025] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.629048] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.629055] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.647175] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.647185] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.659303] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.659313] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.659336] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.659344] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.671537] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.671547] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.683725] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.683735] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.695970] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.695980] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.696005] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.696013] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.847568] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.847578] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.859777] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.859787] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.872012] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.872022] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.872046] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.872054] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.890179] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.890189] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.902419] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.902429] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.926752] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.926762] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.945178] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.945188] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.945211] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.945219] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.945525] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.945534] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.945604] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.945612] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76305.987832] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76305.987843] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.000178] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.000188] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.018405] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.018414] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.091289] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.091299] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.091413] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.091421] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.091446] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.091454] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.091555] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.091564] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.116024] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.116034] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.128399] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.128410] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.128437] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.128444] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.158621] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.158631] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.182924] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.182935] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.182959] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.182966] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.219513] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.219524] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.219549] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.219557] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.274015] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.274026] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.274051] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.274058] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.274079] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.274087] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.304301] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.304310] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.371479] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.371490] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.371603] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.371611] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.371638] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.371646] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.371770] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.371778] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.389843] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.389853] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.389993] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.390002] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.402140] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.402150] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.414428] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.414438] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.414462] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.414470] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.414489] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.414497] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.414517] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.414524] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.414544] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.414551] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.421775] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.421785] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.427882] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.427891] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.440157] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.440167] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.440192] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.440200] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.512664] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.512674] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.567243] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.567253] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.640300] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.640310] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.640335] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.640343] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.658454] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.658464] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.658492] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.658499] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.670698] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.670708] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.683068] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.683078] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.683110] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.683118] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.683173] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.683181] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.707472] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.707482] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.719667] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.719677] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.731914] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.731924] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.756129] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.756139] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.786430] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.786440] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.786466] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.786474] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.822999] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.823009] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.835282] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.835293] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.835343] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.835351] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.859744] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.859754] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.871991] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.872001] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.884251] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.884261] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.884286] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.884293] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.884313] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.884321] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.884341] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.884348] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.884368] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.884376] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.896636] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.896646] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.896671] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.896679] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.908879] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.908889] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.908913] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.908921] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.921151] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.921161] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.951502] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.951512] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76306.963685] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76306.963696] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.012096] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.012106] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.012131] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.012138] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.012159] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.012167] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.012187] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.012194] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.018559] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.018570] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.018597] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.018605] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.018632] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.018640] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.024618] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.024627] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.042860] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.042869] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.042943] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.042951] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.042973] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.042981] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.043002] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.043009] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.043028] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.043036] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.043056] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.043063] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.043084] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.043091] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.055284] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.055294] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.067424] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.067434] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.067458] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.067466] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.067557] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.067566] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.128291] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.128301] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.140615] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.140625] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.146760] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.146770] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.153016] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.153025] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.153049] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.153057] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.153077] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.153085] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.165196] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.165205] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.165300] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.165333] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.183351] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.183361] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.195555] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.195565] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.231879] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.231889] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.268284] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.268295] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.268321] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.268329] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.280517] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.280527] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.298726] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.298735] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.298759] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.298767] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.310867] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.310877] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.310902] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.310910] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.310932] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.310940] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.310962] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.310970] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.310991] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.310999] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.323103] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.323112] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.323137] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.323145] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.323257] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.323266] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.329349] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.329358] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.335596] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.335606] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.408438] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.408449] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.408473] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.408481] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.426597] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.426607] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.426907] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.426917] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.427017] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.427026] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.439246] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.439256] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.439318] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.439326] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.458332] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.458342] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.500636] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.500647] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.530982] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.530992] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.531017] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.531025] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.531046] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.531053] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.531076] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.531084] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.531105] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.531112] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.549193] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.549203] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.555431] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.555440] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.555490] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.555498] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.555520] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.555527] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.579842] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.579852] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.579935] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.579943] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.592047] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.592056] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.604200] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.604210] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.652796] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.652806] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.652832] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.652839] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.658953] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.658963] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.665195] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.665204] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.677323] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.677332] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.677357] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.677365] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.695472] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.695482] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.719711] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.719722] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.743974] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.743984] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.756157] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.756166] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.762325] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.762334] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.780428] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.780439] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.780463] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.780471] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.786653] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.786662] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.810783] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.810792] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.810817] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.810825] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.810969] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.810979] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.859454] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.859464] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.883728] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.883737] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.895953] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.895963] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.908187] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.908197] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.908222] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.908230] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.920405] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.920415] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.950606] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.950616] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76307.975817] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76307.975826] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.011931] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.011940] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.036218] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.036228] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.036254] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.036261] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.090874] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.090885] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.090996] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.091005] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.091031] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.091038] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.103250] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.103260] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.139554] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.139564] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.164059] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.164069] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.164095] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.164103] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.218363] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.218374] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.218397] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.218405] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.242503] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.242512] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.297278] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.297288] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.297313] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.297320] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.351877] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.351887] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.352001] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.352009] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.352035] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.352043] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.352178] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.352187] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.424958] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.424968] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.424993] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.425001] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.449249] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.449259] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.473715] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.473726] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.479930] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.479939] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.552321] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.552332] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.836416] net_ratelimit: 399 callbacks suppressed
[76308.836431] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76308.836441] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.836449] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.836560] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76308.836570] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.836577] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.836603] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76308.836611] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.836618] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.843050] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76308.843063] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.843071] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.843142] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76308.843152] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.843160] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76308.861404] ath10k_pci 0000:00:00.0: failed to transmit packet, =
dropping: -19
[76308.861418] ath10k_pci 0000:00:00.0: failed to submit frame: -19
[76308.861426] ath10k_pci 0000:00:00.0: failed to push frame: -19
[76401.295938] ath10k_pci 0000:00:00.0: firmware crashed! (guid n/a)
[76401.302157] ath10k_pci 0000:00:00.0: qca988x hw2.0 target 0x4100016c =
chip_id 0x043202ff sub 0000:0000
[76401.311543] ath10k_pci 0000:00:00.0: kconfig debug 0 debugfs 1 =
tracing 0 dfs 1 testmode 0
[76401.323700] ath10k_pci 0000:00:00.0: firmware ver =
10.1-ct-8x-__fH-022-8f2afb9e api 2 features =
wmi-10.x,mfp,txstatus-noack,wmi-10.x-CT,ratemask-CT,regdump-CT,txrate-CT,f=
lush-all-CT,pingpong-CT,ch-regs-CT,nop-CT,set-special-CT,get-temp-CT,tx-rc=
-CT,cust-stats-CT,retry-gt2-CT,txrate2-CT,beacon-cb-CT,wmi-block-ack-CT =
crc32 98d412c4
[76401.353108] ath10k_pci 0000:00:00.0: board_file api 1 bmi_id N/A =
crc32 bebc7c08
[76401.360538] ath10k_pci 0000:00:00.0: htt-ver 2.2 wmi-op 2 htt-op 2 =
cal file max-sta 128 raw 0 hwcrypto 1
[76401.372187] ath10k_pci 0000:00:00.0: firmware register dump:
[76401.377942] ath10k_pci 0000:00:00.0: [00]: 0x4100016C 0x00000000 =
0x009963E5 0x00000000
[76401.385981] ath10k_pci 0000:00:00.0: [04]: 0x00000000 0x00060324 =
0x00000000 0x00000000
[76401.394017] ath10k_pci 0000:00:00.0: [08]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.402058] ath10k_pci 0000:00:00.0: [12]: 0x00000005 0x00000000 =
0x00000000 0x00000000
[76401.410102] ath10k_pci 0000:00:00.0: [16]: 0x009B8BAB 0x0094085D =
0x00000000 0x009963E5
[76401.418146] ath10k_pci 0000:00:00.0: [20]: 0x809430B8 0x00401A40 =
0x00000001 0x00000002
[76401.426188] ath10k_pci 0000:00:00.0: [24]: 0x80940975 0x00401A60 =
0x0000001F 0x00403BEC
[76401.434221] ath10k_pci 0000:00:00.0: [28]: 0x409406B9 0x00401A80 =
0x0000001F 0x000FFFFF
[76401.442267] ath10k_pci 0000:00:00.0: [32]: 0x00000000 0x00401AA0 =
0x00050024 0x04030000
[76401.450309] ath10k_pci 0000:00:00.0: [36]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.458352] ath10k_pci 0000:00:00.0: [40]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.466395] ath10k_pci 0000:00:00.0: [44]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.474434] ath10k_pci 0000:00:00.0: [48]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.482462] ath10k_pci 0000:00:00.0: [52]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.490498] ath10k_pci 0000:00:00.0: [56]: 0x00000000 0x00000000 =
0x00000000 0x00000000
[76401.498538] ath10k_pci 0000:00:00.0: Copy Engine register dump:
[76401.504555] ath10k_pci 0000:00:00.0: [00]: 0x00057400  14  14   3   3
[76401.511093] ath10k_pci 0000:00:00.0: [01]: 0x00057800  28  28 190 191
[76401.517642] ath10k_pci 0000:00:00.0: [02]: 0x00057c00  32  32  31  32
[76401.524179] ath10k_pci 0000:00:00.0: [03]: 0x00058000  31  31   1  31
[76401.530730] ath10k_pci 0000:00:00.0: [04]: 0x00058400 1975 1975   5 =
221
[76401.537453] ath10k_pci 0000:00:00.0: [05]: 0x00058800   9   9 104 105
[76401.543989] ath10k_pci 0000:00:00.0: [06]: 0x00058c00  22  22  22  22
[76401.550538] ath10k_pci 0000:00:00.0: [07]: 0x00059000   0   0   0   0
[76401.559089] ath10k_pci 0000:00:00.0: debug log header, dbuf: 0x412708 =
 dropped: 0
[76401.567700] ath10k_pci 0000:00:00.0: [0] next: 0x412720 buf: 0x41056c =
sz: 1500 len: 52 count: 2 free: 0
[76401.578248] ath10k_pci 0000:00:00.0: ath10k_pci ATH10K_DBG_BUFFER:
[76401.584527] ath10k: [0000]: 0DDCA904 0600FC13 00001091 00000000 =
00000000 08080000 0DDCA904 0100FC17
[76401.593701] ath10k: [0008]: 00000000 00000000 30194000 6C010041 =
00000000
[76401.600503] ath10k_pci 0000:00:00.0: ATH10K_END
[76401.606116] ath10k_pci 0000:00:00.0: [1] next: 0x412708 buf: 0x410b5c =
sz: 1500 len: 0 count: 0 free: 0
[76401.623222] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer d2f4cad3 vdev: 0 addr: 8c:85:90:36:ea:10
[76401.634406] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer a3bf1a3a vdev: 0 addr: 08:e6:89:40:12:7e
[76401.645541] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 8f0f5636 vdev: 0 addr: c4:61:8b:23:6d:ca
[76401.656671] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer 3bb8d1ff vdev: 0 addr: c8:f6:50:68:97:e5
[76401.667804] ath10k_pci 0000:00:00.0: removing peer, cleanup-all, =
deleting: peer f46f106e vdev: 0 addr: 14:cc:20:be:89:31
[76401.838549] ieee80211 phy0: Hardware restart was requested
[76403.106444] ath10k_pci 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: =
127  tid: 256
[76403.123941] ath10k_pci 0000:00:00.0: wmi print 'P 128 V 8 T 410'
[76403.130408] ath10k_pci 0000:00:00.0: wmi print 'msdu-desc: 1424  =
sw-crypt: 0 ct-sta: 0'
[76403.138585] ath10k_pci 0000:00:00.0: wmi print 'alloc rem: 24632 =
iram: 26408'
[76403.221621] ath10k_pci 0000:00:00.0: pdev param 0 not supported by =
firmware
[76404.241885] ath10k_pci 0000:00:00.0: device successfully recovered

Hopefully!



Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_FEBBCE85-C7DB-4B8C-9E9C-57522FF38C24
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0PVYgACgkQs6I4m53i
M0pk2Q/+N+2fWZiEk2I/YRXuApQVglzsJapf2ZVFGiMHhelpcjNqLHI1/KG/0b30
kRufaZyl/GPyh8LDcpGoywrQTUczqzI1su+6o/YBV3O30jkAT4rMKksg62vqOeHv
uQq0K6vOS7YQYM4xy5IwrgFwS5ndNaAAv/SmKMybDDFiNAiV9JQSM40Mj7X8qC2+
ljyxUMIadB/B6sORkngwXQOF5035vrlXPP6D0D9E6FgUDdmbdYl0rOclOaZDjPGK
TbRFqmixNotranoZAqU6tG0+levWgYshCnbux0nrgQ0JxARtyE4F21L30JMhjVrL
vf86aa0eTYzO6EH7hH7sFm0tSNlmB9O5mQHN1Gj+XHzdp67D7SaTqOqo4Pi0AIse
teSpHj4RshfYLYTaU0sPses5RWTiMRWbH8O4s2pNPeIW7kUcq38C9dXDydc9f6HG
rdL/sFxeY6xKuM3XleY2Rw+sD82tZ8vmn9vz2BAXqZ6CTF5cfsnYsxYLA2EnfhEh
5w5hMWStnAfqPqyrYlwkIqdNDG3ulyeYwinVB8Acx+E2BcRtnK00QlcjxKTtPwi2
y9E5Q6PlK7kXOILI3LxhLZXrk1TR5HeCIEMZ+Xvj0qjHU1/StMFdSLRieMIXewXj
rnwQsWN14a0F6mu+8rkTgpOPH+hFRuZnnZKPtHmCB8vT217OdUM=
=RevP
-----END PGP SIGNATURE-----

--Apple-Mail=_FEBBCE85-C7DB-4B8C-9E9C-57522FF38C24--


--===============8481067325767236439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8481067325767236439==--

