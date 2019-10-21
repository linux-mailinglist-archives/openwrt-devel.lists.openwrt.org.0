Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FD5DEBF4
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vhlk+QTDcj4RbRQS2UiCf9qtmM7fQp4lUBNYbMrewC4=; b=YSPOkynG4bCTQfR9a17K3avZb
	epJf4pQOY3yDAy94N9J+SpNv0lmYkRulU6THbjBEZ+fEJxghlp3Hv/icWQUgwMQOjFYeXR/bBJipS
	70qQ7Zd6yB6ryh7qd+dZY+VT+mEfmWi6p2eDwPSY+is6e77AOoz7VAu9aRtv5wlnWXZYBZJGschmQ
	fUnTZYRolF4xW5Bh0/tBKZvsCDGsXnHKe5LJePjC0YiEsJwe9d0awWcqaDlid7c02WS/G9Yeg4Ua7
	akrPmlRUKYm/MosH/Sp74fSsLUepNcXWAGid0ehcWDawKZa34CR/6koOm+ZsEFmG23mXIAQXCV/Ra
	sNaZ6+tHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWdK-0005sn-8U; Mon, 21 Oct 2019 12:17:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWd6-0005ry-5z
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:17:50 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMWd4-0000IQ-51; Mon, 21 Oct 2019 14:17:42 +0200
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20190920120303.3295-1-freifunk@adrianschmutzler.de>
From: John Crispin <john@phrozen.org>
Message-ID: <85fe384e-cf49-a1a7-da6f-dd26f239c6bb@phrozen.org>
Date: Mon, 21 Oct 2019 14:17:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190920120303.3295-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_051744_760929_3D73439A 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ramips/mt762x: convert devices
 to interrupt-driven gpio-keys
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

On 20/09/2019 14:03, Adrian Schmutzler wrote:
> This converts all remaining devices to use interrupt-driven
> gpio-keys compatible instead of gpio-keys-polled.
> The poll-interval is removed.
> 
> While at it, add/remove newlines in keys and leds node where
> necessary.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Hi,
was there not an issue on some of the older ralink silicon versions that 
made irq unreliable, which is why we never changed this ?
	John

> 
> ---
> 
> v2: rebase
> ---
>   target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts   |  3 +--
>   .../ramips/dts/mt7620a_alfa-network_ac1200rm.dts      |  3 +--
>   target/linux/ramips/dts/mt7620a_asus_rp-n53.dts       |  3 +--
>   target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts     |  3 +--
>   target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts  |  3 +--
>   target/linux/ramips/dts/mt7620a_buffalo_whr-1166d.dts |  3 +--
>   .../linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts  |  3 +--
>   target/linux/ramips/dts/mt7620a_dlink_dch-m225.dts    |  3 +--
>   target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts    |  4 +---
>   target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts    |  3 +--
>   target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts  |  3 +--
>   target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts  |  3 +--
>   target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts    |  3 +--
>   .../linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts  |  6 ++++--
>   target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts |  3 +--
>   target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts  |  4 ++--
>   target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts  |  4 ++--
>   target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts   |  4 ++--
>   .../linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts |  3 +--
>   target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi    |  3 +--
>   target/linux/ramips/dts/mt7620a_hnet_c108.dts         |  3 +--
>   .../linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts   |  3 +--
>   .../linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_kimax_u25awf-h1.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts    |  3 +--
>   target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dtsi |  3 +--
>   target/linux/ramips/dts/mt7620a_linksys_e1700.dts     |  3 +--
>   .../linux/ramips/dts/mt7620a_microduino_microwrt.dts  |  3 +--
>   target/linux/ramips/dts/mt7620a_netgear_ex2700.dts    |  3 +--
>   target/linux/ramips/dts/mt7620a_netgear_ex3700.dts    |  3 +--
>   .../linux/ramips/dts/mt7620a_netgear_wn3000rp-v3.dts  |  3 +--
>   target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts    |  3 +--
>   target/linux/ramips/dts/mt7620a_phicomm_k2g.dts       |  3 +--
>   target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi  |  3 +--
>   target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts  |  1 +
>   target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts  |  1 +
>   target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts    |  3 +--
>   target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts |  3 +--
>   .../linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts   |  3 +--
>   .../linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts   |  3 +--
>   .../linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts   |  1 -
>   .../ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts |  1 -
>   .../ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_sanlinking_d240.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_sercomm_na930.dts     |  3 +--
>   .../linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts |  3 +--
>   .../linux/ramips/dts/mt7620a_tplink_archer-c20i.dts   |  6 ++++++
>   .../linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts |  6 +++---
>   .../linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts   |  3 +--
>   target/linux/ramips/dts/mt7620a_youku_yk1.dts         |  8 ++++++--
>   target/linux/ramips/dts/mt7620a_yukai_bocco.dts       |  3 +--
>   .../linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi   |  5 +++--
>   .../linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts |  3 +--
>   .../linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi   |  7 +++++--
>   target/linux/ramips/dts/mt7620a_zte_q7.dts            |  3 +--
>   .../linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts  |  1 -
>   target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts      |  3 +--
>   target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts      |  3 +--
>   target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts   |  3 +--
>   target/linux/ramips/dts/mt7620n_comfast_cf-wr800n.dts |  3 +--
>   target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts  |  3 +--
>   target/linux/ramips/dts/mt7620n_dlink_dwr-921-c1.dts  |  3 +--
>   target/linux/ramips/dts/mt7620n_dlink_dwr-922-e2.dts  |  3 +--
>   target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts  |  5 ++---
>   target/linux/ramips/dts/mt7620n_kimax_u35wf.dts       |  3 +--
>   target/linux/ramips/dts/mt7620n_kingston_mlw221.dts   |  3 +--
>   target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts    |  3 +--
>   target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi      |  3 +--
>   target/linux/ramips/dts/mt7620n_ravpower_wd03.dts     |  4 +---
>   target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts |  3 +--
>   .../linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts   |  3 +--
>   target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts  |  3 +--
>   .../linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts   |  3 +--
>   .../linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts |  3 +--
>   .../ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts     |  1 -
>   .../linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts  |  1 -
>   target/linux/ramips/dts/mt7621_afoundry_ew1200.dts    |  3 +--
>   .../linux/ramips/dts/mt7621_buffalo_wsr-1166dhp.dts   |  3 +--
>   target/linux/ramips/dts/mt7621_buffalo_wsr-600dhp.dts |  3 +--
>   target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts   |  3 +--
>   target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts      |  3 +--
>   target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts  |  3 +--
>   .../ramips/dts/mt7621_elecom_wrc-1167ghbk2-s.dts      |  3 +--
>   target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi    |  3 +--
>   target/linux/ramips/dts/mt7621_firefly_firewrt.dts    |  3 +--
>   target/linux/ramips/dts/mt7621_gehua_ghl-r-001.dts    |  3 +--
>   target/linux/ramips/dts/mt7621_gnubee_gb-pc1.dts      |  3 +--
>   target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts      |  3 +--
>   target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts      |  3 +--
>   target/linux/ramips/dts/mt7621_iodata_wn-ax1167gr.dts |  3 +--
>   target/linux/ramips/dts/mt7621_iodata_wn-gx300gr.dts  |  3 +--
>   target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts   |  3 +--
>   target/linux/ramips/dts/mt7621_linksys_re6500.dts     |  3 +--
>   target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts  |  3 +--
>   target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts    |  4 ++--
>   target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts    |  3 +--
>   target/linux/ramips/dts/mt7621_mqmaker_witi.dts       |  3 +--
>   target/linux/ramips/dts/mt7621_mtc_wr1201.dts         |  3 +--
>   target/linux/ramips/dts/mt7621_netgear_ex6150.dts     |  3 +--
>   target/linux/ramips/dts/mt7621_netgear_r6220.dtsi     |  3 +--
>   target/linux/ramips/dts/mt7621_netis_wf-2881.dts      |  3 +--
>   target/linux/ramips/dts/mt7621_phicomm_k2p.dts        |  3 +--
>   target/linux/ramips/dts/mt7621_planex_vr500.dts       |  3 +--
>   .../linux/ramips/dts/mt7621_samknows_whitebox-v8.dts  |  5 +++--
>   .../linux/ramips/dts/mt7621_storylink_sap-g3200u3.dts |  3 +--
>   .../linux/ramips/dts/mt7621_telco-electronics_x1.dts  |  3 +--
>   target/linux/ramips/dts/mt7621_thunder_timecloud.dts  |  3 +--
>   target/linux/ramips/dts/mt7621_tplink_re350-v1.dts    |  3 +--
>   .../linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi |  3 +--
>   target/linux/ramips/dts/mt7621_unielec_u7621-06.dtsi  |  3 +--
>   target/linux/ramips/dts/mt7621_wevo_w2914ns-v2.dtsi   |  3 +--
>   target/linux/ramips/dts/mt7621_xiaomi_mir3g.dts       |  3 +--
>   target/linux/ramips/dts/mt7621_xiaomi_mir3p.dts       |  3 +--
>   .../linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts |  3 +--
>   target/linux/ramips/dts/mt7621_youhua_wr1200js.dts    |  3 +--
>   target/linux/ramips/dts/mt7621_youku_yk-l2.dts        |  3 +--
>   target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts |  3 +--
>   target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts |  3 +--
>   target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts |  3 +--
>   .../linux/ramips/dts/mt7621_zbtlink_zbt-wg3526.dtsi   |  3 +--
>   .../ramips/dts/mt7628an_alfa-network_awusfree1.dts    |  3 +--
>   .../linux/ramips/dts/mt7628an_buffalo_wcr-1166ds.dts  |  3 +--
>   target/linux/ramips/dts/mt7628an_cudy_wr1000.dts      |  3 +--
>   target/linux/ramips/dts/mt7628an_d-team_pbr-d1.dts    |  3 +--
>   target/linux/ramips/dts/mt7628an_duzun_dm06.dts       |  3 +--
>   .../linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts |  3 +--
>   target/linux/ramips/dts/mt7628an_glinet_vixmini.dts   |  3 +--
>   target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts |  3 +--
>   .../dts/mt7628an_mediatek_linkit-smart-7688.dts       |  3 +--
>   .../linux/ramips/dts/mt7628an_mercury_mac1200r-v2.dts |  1 +
>   target/linux/ramips/dts/mt7628an_netgear_r6120.dts    |  3 +--
>   target/linux/ramips/dts/mt7628an_onion_omega2.dtsi    |  3 +--
>   target/linux/ramips/dts/mt7628an_skylab_skw92a.dts    |  3 +--
>   target/linux/ramips/dts/mt7628an_tama_w06.dts         |  3 +--
>   target/linux/ramips/dts/mt7628an_totolink_lr1200.dts  | 11 +++++++++--
>   .../ramips/dts/mt7628an_tplink_archer-c20-v4.dts      |  3 +--
>   .../ramips/dts/mt7628an_tplink_archer-c50-v3.dts      |  3 +--
>   .../ramips/dts/mt7628an_tplink_archer-c50-v4.dts      |  3 +--
>   .../linux/ramips/dts/mt7628an_tplink_tl-mr3020-v3.dts |  3 +--
>   .../linux/ramips/dts/mt7628an_tplink_tl-mr3420-v5.dts |  3 +--
>   .../ramips/dts/mt7628an_tplink_tl-wa801nd-v5.dts      |  3 +--
>   .../linux/ramips/dts/mt7628an_tplink_tl-wr802n-v4.dts |  3 +--
>   .../linux/ramips/dts/mt7628an_tplink_tl-wr840n-v4.dts |  3 +--
>   .../linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts |  4 ++--
>   .../ramips/dts/mt7628an_tplink_tl-wr841n-v13.dts      |  3 +--
>   .../ramips/dts/mt7628an_tplink_tl-wr841n-v14.dts      |  3 +--
>   .../linux/ramips/dts/mt7628an_tplink_tl-wr842n-v5.dts |  3 +--
>   .../ramips/dts/mt7628an_tplink_tl-wr902ac-v3.dts      |  3 +--
>   .../linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi   |  4 ++--
>   .../linux/ramips/dts/mt7628an_wavlink_wl-wn570ha1.dts |  3 +--
>   .../linux/ramips/dts/mt7628an_wavlink_wl-wn575a3.dts  |  3 +--
>   target/linux/ramips/dts/mt7628an_widora_neo.dtsi      |  3 +--
>   target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts |  5 ++---
>   .../linux/ramips/dts/mt7628an_wrtnode_wrtnode2.dtsi   |  3 +--
>   .../linux/ramips/dts/mt7628an_xiaomi_mir4a-100m.dts   |  3 +--
>   .../linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts  |  5 +++--
>   .../linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts  |  3 +--
>   .../ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts   |  3 +--
>   161 files changed, 197 insertions(+), 314 deletions(-)
> 
> diff --git a/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts b/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts
> index 8de4b5877a..019fdf92cd 100644
> --- a/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts
> +++ b/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts
> @@ -31,8 +31,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts b/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts
> index 388b088d92..0be685844f 100644
> --- a/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts
> +++ b/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts
> @@ -51,8 +51,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_asus_rp-n53.dts b/target/linux/ramips/dts/mt7620a_asus_rp-n53.dts
> index 2d2820ed79..c9c440fe82 100644
> --- a/target/linux/ramips/dts/mt7620a_asus_rp-n53.dts
> +++ b/target/linux/ramips/dts/mt7620a_asus_rp-n53.dts
> @@ -10,8 +10,7 @@
>   	model = "Asus RP-N53";
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		touch {
>   			label = "touch";
> diff --git a/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts b/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
> index 3e54ffdad2..69b1f9c870 100644
> --- a/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
> +++ b/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
> @@ -38,8 +38,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts b/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts
> index e71d14c6ab..898deee7e5 100644
> --- a/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts
> +++ b/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts
> @@ -41,8 +41,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_buffalo_whr-1166d.dts b/target/linux/ramips/dts/mt7620a_buffalo_whr-1166d.dts
> index 4be719a249..64fbeb0fe5 100644
> --- a/target/linux/ramips/dts/mt7620a_buffalo_whr-1166d.dts
> +++ b/target/linux/ramips/dts/mt7620a_buffalo_whr-1166d.dts
> @@ -56,8 +56,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts b/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts
> index 7dbc58fee7..8bdf87501e 100644
> --- a/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts
> +++ b/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts
> @@ -56,8 +56,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts b/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts
> index f4b5661eac..a99910db8e 100644
> --- a/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts
> +++ b/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts
> @@ -56,8 +56,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_dlink_dch-m225.dts b/target/linux/ramips/dts/mt7620a_dlink_dch-m225.dts
> index 0644378ba2..b08edfadf7 100644
> --- a/target/linux/ramips/dts/mt7620a_dlink_dch-m225.dts
> +++ b/target/linux/ramips/dts/mt7620a_dlink_dch-m225.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <100>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts b/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts
> index 885e64f9f2..cbd8d4cb80 100644
> --- a/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts
> +++ b/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts
> @@ -22,8 +22,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> @@ -50,7 +49,6 @@
>   			label = "dir-510l:red:status";
>   			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
>   		};
> -
>   	};
>   };
>   
> diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
> index 687d80fa5d..88942a4161 100644
> --- a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
> +++ b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
> @@ -18,8 +18,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
> index 707bc1c3d3..44ca663694 100644
> --- a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
> +++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
> index 26b23aa6d1..449f4ff4b6 100644
> --- a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
> +++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
> @@ -15,8 +15,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts b/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
> index e36af1dc7f..d0229e4718 100644
> --- a/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
> +++ b/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
> @@ -30,8 +30,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
> index 5c90aa1549..a30250e74f 100644
> --- a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
> +++ b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
> @@ -34,8 +34,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset_wps {
>   			label = "reset_wps";
> @@ -51,14 +50,17 @@
>   			label = "br-6478ac-v2:white:power";
>   			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		internet {
>   			label = "br-6478ac-v2:blue:internet";
>   			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		wlan {
>   			label = "br-6478ac-v2:blue:wlan";
>   			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		usb {
>   			label = "br-6478ac-v2:blue:usb";
>   			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts b/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts
> index bd1768b34e..da5b428fa5 100644
> --- a/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts
> +++ b/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts
> @@ -22,8 +22,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset_wps {
>   			label = "reset_wps";
> diff --git a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts
> index ba446a4c8d..6b2e2d115b 100644
> --- a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts
> +++ b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts
> @@ -42,8 +42,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts
> index 444ffb0440..1c2b296a9c 100644
> --- a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts
> +++ b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts
> @@ -37,8 +37,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts b/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts
> index 8fc0df2a33..08451d8a8c 100644
> --- a/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts
> +++ b/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts
> @@ -37,8 +37,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts b/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
> index ad16d02716..7bf63b3287 100644
> --- a/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
> +++ b/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
> @@ -41,8 +41,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi b/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
> index 09b303fd33..a7e3bd199a 100644
> --- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
> +++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
> @@ -11,8 +11,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_hnet_c108.dts b/target/linux/ramips/dts/mt7620a_hnet_c108.dts
> index 2d89d34ad5..c122b6dfd5 100644
> --- a/target/linux/ramips/dts/mt7620a_hnet_c108.dts
> +++ b/target/linux/ramips/dts/mt7620a_hnet_c108.dts
> @@ -94,8 +94,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts b/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts
> index 3e61f51598..5da91071db 100644
> --- a/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts
> +++ b/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts
> @@ -43,8 +43,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts b/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts
> index ad96d94849..12e6e12f00 100644
> --- a/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts
> +++ b/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts
> @@ -43,8 +43,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_kimax_u25awf-h1.dts b/target/linux/ramips/dts/mt7620a_kimax_u25awf-h1.dts
> index 4b4d0b6356..e1aeb4fa8a 100644
> --- a/target/linux/ramips/dts/mt7620a_kimax_u25awf-h1.dts
> +++ b/target/linux/ramips/dts/mt7620a_kimax_u25awf-h1.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts b/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
> index 20974c93e2..3130365b96 100644
> --- a/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
> +++ b/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dtsi b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dtsi
> index 5d6c9922fd..a5262ffca6 100644
> --- a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dtsi
> +++ b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dtsi
> @@ -11,8 +11,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_linksys_e1700.dts b/target/linux/ramips/dts/mt7620a_linksys_e1700.dts
> index 2ea7400a71..256b306306 100644
> --- a/target/linux/ramips/dts/mt7620a_linksys_e1700.dts
> +++ b/target/linux/ramips/dts/mt7620a_linksys_e1700.dts
> @@ -27,8 +27,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts b/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts
> index a010a9c626..76ab099a16 100644
> --- a/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts
> +++ b/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts
> @@ -14,8 +14,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_netgear_ex2700.dts b/target/linux/ramips/dts/mt7620a_netgear_ex2700.dts
> index 7d7b2220f7..5db2a7ae9c 100644
> --- a/target/linux/ramips/dts/mt7620a_netgear_ex2700.dts
> +++ b/target/linux/ramips/dts/mt7620a_netgear_ex2700.dts
> @@ -71,8 +71,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_netgear_ex3700.dts b/target/linux/ramips/dts/mt7620a_netgear_ex3700.dts
> index d971909b29..311f27781d 100644
> --- a/target/linux/ramips/dts/mt7620a_netgear_ex3700.dts
> +++ b/target/linux/ramips/dts/mt7620a_netgear_ex3700.dts
> @@ -63,8 +63,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_netgear_wn3000rp-v3.dts b/target/linux/ramips/dts/mt7620a_netgear_wn3000rp-v3.dts
> index 40ae5ee58a..66a5ad5ece 100644
> --- a/target/linux/ramips/dts/mt7620a_netgear_wn3000rp-v3.dts
> +++ b/target/linux/ramips/dts/mt7620a_netgear_wn3000rp-v3.dts
> @@ -73,8 +73,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts b/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts
> index a4fd86bbd6..6ef7e84154 100644
> --- a/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts
> +++ b/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		s1 {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts b/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts
> index 4ca5229745..e71211e681 100644
> --- a/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts
> +++ b/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts
> @@ -37,8 +37,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts b/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
> index 564b083f82..310f78ec51 100644
> --- a/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
> +++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
> @@ -31,8 +31,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi b/target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi
> index 33eabb6f78..87e44f0b61 100644
> --- a/target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi
> +++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi
> @@ -7,8 +7,7 @@
>   	compatible = "phicomm,psg1218", "ralink,mt7620a-soc";
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts b/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
> index dbde2a8047..4e023ed6b0 100644
> --- a/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
> +++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
> @@ -15,6 +15,7 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		led_blue: blue {
>   			label = "psg1218a:blue:status";
>   			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts b/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts
> index 0f38b4fc57..f451b43ae3 100644
> --- a/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts
> +++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts
> @@ -15,6 +15,7 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		led_blue: blue {
>   			label = "psg1218b:blue:status";
>   			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts b/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts
> index dadd37acba..c5efb39563 100644
> --- a/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts
> +++ b/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts
> @@ -26,8 +26,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		s1 {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts b/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts
> index bb2c14e096..ecbf91083a 100644
> --- a/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts
> +++ b/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts
> @@ -26,8 +26,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		s1 {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts b/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts
> index a4a6c9b8be..be7a569838 100644
> --- a/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts
> +++ b/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts
> @@ -36,8 +36,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		s1 {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts b/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts
> index 6578d952c0..ea2a11b82f 100644
> --- a/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts
> +++ b/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts
> @@ -51,8 +51,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts b/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts
> index 497693d393..7fe329f03e 100644
> --- a/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts
> +++ b/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts
> @@ -56,8 +56,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts
> index c9d3d76729..5b62fd92db 100644
> --- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts
> +++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts
> @@ -11,7 +11,6 @@
>   
>   	keys {
>   		compatible = "gpio-keys";
> -		poll-interval = <20>;
>   
>   		s2 {
>   			label = "S2";
> diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts
> index a2864de94f..b4554675c7 100644
> --- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts
> +++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts
> @@ -11,7 +11,6 @@
>   
>   	keys {
>   		compatible = "gpio-keys";
> -		poll-interval = <20>;
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts
> index 33d23f2201..7b3517c135 100644
> --- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts
> +++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts
> @@ -10,8 +10,7 @@
>   	model = "Ralink MT7620a V22SG High Power evaluation board";
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts b/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
> index 2110959ee8..c2b94eebb3 100644
> --- a/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
> +++ b/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
> @@ -92,8 +92,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_sercomm_na930.dts b/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
> index 6d85914265..76e1eb79bc 100644
> --- a/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
> +++ b/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
> @@ -55,8 +55,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
> index 258c2f21c9..bc47f52d23 100644
> --- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
> +++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
> @@ -68,8 +68,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
> index 36dceecce1..1da2f483dc 100644
> --- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
> +++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
> @@ -15,24 +15,29 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		lan {
>   			label = "archer-c20i:blue:lan";
>   			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		usb {
>   			label = "archer-c20i:blue:usb";
>   			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
>   			trigger-sources = <&ohci_port1>, <&ehci_port1>;
>   			linux,default-trigger = "usbport";
>   		};
> +
>   		wps {
>   			label = "archer-c20i:blue:wps";
>   			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		wan {
>   			label = "archer-c20i:blue:wan";
>   			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		wlan {
>   			label = "archer-c20i:blue:wlan";
>   			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
> @@ -47,6 +52,7 @@
>   			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
>   			linux,code = <KEY_RFKILL>;
>   		};
> +
>   		reset_wps {
>   			label = "reset_wps";
>   			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
> index 20000374b1..c23538ca52 100644
> --- a/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
> +++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
> @@ -68,8 +68,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> @@ -81,7 +80,8 @@
>   			label = "rfkill";
>   			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
>   			linux,code = <KEY_RFKILL>;
> -		};	};
> +		};
> +	};
>   };
>   
>   &gpio1 {
> diff --git a/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts b/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts
> index 15493e9783..8bf6565d2f 100644
> --- a/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts
> +++ b/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts
> @@ -42,8 +42,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_youku_yk1.dts b/target/linux/ramips/dts/mt7620a_youku_yk1.dts
> index 6ddb2c5d39..82be9c4c97 100644
> --- a/target/linux/ramips/dts/mt7620a_youku_yk1.dts
> +++ b/target/linux/ramips/dts/mt7620a_youku_yk1.dts
> @@ -18,20 +18,24 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		wan {
>   			label = "yk1:blue:wan";
>   			gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		air {
>   			label = "yk1:blue:air";
>   			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		usb {
>   			label = "yk1:blue:usb";
>   			gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
>   			trigger-sources = <&ohci_port1>, <&ehci_port1>;
>   			linux,default-trigger = "usbport";
>   		};
> +
>   		led_power: power {
>   			label = "yk1:blue:power";
>   			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
> @@ -39,8 +43,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_yukai_bocco.dts b/target/linux/ramips/dts/mt7620a_yukai_bocco.dts
> index cc9c6688dc..7abc34d194 100644
> --- a/target/linux/ramips/dts/mt7620a_yukai_bocco.dts
> +++ b/target/linux/ramips/dts/mt7620a_yukai_bocco.dts
> @@ -10,8 +10,7 @@
>   	model = "YUKAI Engineering BOCCO";
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
> index e7e64e251a..42702893c7 100644
> --- a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
> @@ -45,6 +45,7 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		lan {
>   			label = "we1026-5g:green:lan";
>   			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
> @@ -64,8 +65,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
> index 70ad0f0b58..91e9695e89 100644
> --- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
> @@ -43,8 +43,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
> index 0776ea7a79..41c6b07dbd 100644
> --- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
> +++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
> @@ -19,16 +19,19 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		led_power: power {
>   			label = "zbt-we826:green:power";
>   			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
>   		};
> +
>   		usb {
>   			label = "zbt-we826:green:usb";
>   			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
>   			trigger-sources = <&ohci_port1>, <&ehci_port1>;
>   			linux,default-trigger = "usbport";
>   		};
> +
>   		air {
>   			label = "zbt-we826:green:wifi";
>   			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
> @@ -36,8 +39,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7620a_zte_q7.dts b/target/linux/ramips/dts/mt7620a_zte_q7.dts
> index 5b4c5ee047..50368b8bd5 100644
> --- a/target/linux/ramips/dts/mt7620a_zte_q7.dts
> +++ b/target/linux/ramips/dts/mt7620a_zte_q7.dts
> @@ -31,8 +31,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts b/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
> index 725339e77a..16a606ea1a 100644
> --- a/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
> +++ b/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
> @@ -49,7 +49,6 @@
>   
>   	keys {
>   		compatible = "gpio-keys";
> -		poll-interval = <20>;
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts b/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts
> index 83a7b6adf0..76c362f593 100644
> --- a/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts
> +++ b/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts
> @@ -45,8 +45,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts b/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts
> index 834eb0ddf3..960d2acaec 100644
> --- a/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts
> +++ b/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts
> @@ -48,8 +48,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts b/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts
> index f0f1cc1337..f7c24ec481 100644
> --- a/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts
> +++ b/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts
> @@ -36,8 +36,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_comfast_cf-wr800n.dts b/target/linux/ramips/dts/mt7620n_comfast_cf-wr800n.dts
> index 65f44e43d7..b033ef90c4 100644
> --- a/target/linux/ramips/dts/mt7620n_comfast_cf-wr800n.dts
> +++ b/target/linux/ramips/dts/mt7620n_comfast_cf-wr800n.dts
> @@ -40,8 +40,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts b/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts
> index 6f76a64039..14bfc0f30c 100644
> --- a/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts
> +++ b/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620n_dlink_dwr-921-c1.dts b/target/linux/ramips/dts/mt7620n_dlink_dwr-921-c1.dts
> index 92bcd54a42..8214e4a780 100644
> --- a/target/linux/ramips/dts/mt7620n_dlink_dwr-921-c1.dts
> +++ b/target/linux/ramips/dts/mt7620n_dlink_dwr-921-c1.dts
> @@ -15,8 +15,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620n_dlink_dwr-922-e2.dts b/target/linux/ramips/dts/mt7620n_dlink_dwr-922-e2.dts
> index c2dd26a09d..ab38ad0577 100644
> --- a/target/linux/ramips/dts/mt7620n_dlink_dwr-922-e2.dts
> +++ b/target/linux/ramips/dts/mt7620n_dlink_dwr-922-e2.dts
> @@ -16,8 +16,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts b/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts
> index eb6dbe6d1a..b1eceeed8e 100644
> --- a/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts
> +++ b/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts
> @@ -16,7 +16,7 @@
>   		led-upgrade = &led_wps;
>   	};
>   
> -		leds {
> +	leds {
>   		compatible = "gpio-leds";
>   
>   		led_wps: wps {
> @@ -36,8 +36,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_kimax_u35wf.dts b/target/linux/ramips/dts/mt7620n_kimax_u35wf.dts
> index d058b83949..c49cb02bb5 100644
> --- a/target/linux/ramips/dts/mt7620n_kimax_u35wf.dts
> +++ b/target/linux/ramips/dts/mt7620n_kimax_u35wf.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts b/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts
> index 815370e6fd..9658f6c4de 100644
> --- a/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts
> +++ b/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts
> @@ -31,8 +31,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts b/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts
> index f88af71896..6d7d2d06b7 100644
> --- a/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts
> +++ b/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts
> @@ -31,8 +31,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi b/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi
> index 701701c1de..2fc3662645 100644
> --- a/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi
> +++ b/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi
> @@ -15,8 +15,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> index bbb2ca3dc9..7dcff46917 100644
> --- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> +++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> @@ -21,7 +21,6 @@
>   			gpios = <&gpio2 0 GPIO_ACTIVE_HIGH>;
>   		};
>   
> -
>   		blue-wifi {
>   			label = "wd03:blue:wifi";
>   			gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
> @@ -29,8 +28,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts b/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts
> index cf4b7c54a1..184d947e36 100644
> --- a/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts
> +++ b/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts
> @@ -26,8 +26,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
> index 6f0213bf70..10d8ca0eb6 100644
> --- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
> +++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
> @@ -39,8 +39,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts
> index 21b56dcae1..7949c48383 100644
> --- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts
> +++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts
> @@ -42,8 +42,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts
> index be8d13be90..0cadbddcb4 100644
> --- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts
> +++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts
> index 5292c70dbb..cdfeaff39f 100644
> --- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts
> +++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts
> @@ -38,8 +38,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
> index b57c008ef3..98c5609211 100644
> --- a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
> +++ b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
> @@ -44,7 +44,6 @@
>   
>   	keys {
>   		compatible = "gpio-keys";
> -		poll-interval = <20>;
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
> index 2d7d3e8386..ff9a9ee1a3 100644
> --- a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
> +++ b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
> @@ -44,7 +44,6 @@
>   
>   	keys {
>   		compatible = "gpio-keys";
> -		poll-interval = <20>;
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_afoundry_ew1200.dts b/target/linux/ramips/dts/mt7621_afoundry_ew1200.dts
> index ad6ed7fc43..a165c20742 100644
> --- a/target/linux/ramips/dts/mt7621_afoundry_ew1200.dts
> +++ b/target/linux/ramips/dts/mt7621_afoundry_ew1200.dts
> @@ -27,8 +27,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_buffalo_wsr-1166dhp.dts b/target/linux/ramips/dts/mt7621_buffalo_wsr-1166dhp.dts
> index 232c0c3f18..1b99f8147c 100644
> --- a/target/linux/ramips/dts/mt7621_buffalo_wsr-1166dhp.dts
> +++ b/target/linux/ramips/dts/mt7621_buffalo_wsr-1166dhp.dts
> @@ -65,8 +65,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		power {
>   			label = "power";
> diff --git a/target/linux/ramips/dts/mt7621_buffalo_wsr-600dhp.dts b/target/linux/ramips/dts/mt7621_buffalo_wsr-600dhp.dts
> index 3f20002fea..36bcd15e48 100644
> --- a/target/linux/ramips/dts/mt7621_buffalo_wsr-600dhp.dts
> +++ b/target/linux/ramips/dts/mt7621_buffalo_wsr-600dhp.dts
> @@ -65,8 +65,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		power {
>   			label = "power";
> diff --git a/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts b/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
> index 39c16a569f..896d9f6037 100644
> --- a/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
> +++ b/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
> @@ -63,8 +63,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts b/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
> index 3eb0fac46e..fd598de4bb 100644
> --- a/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
> +++ b/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
> @@ -63,8 +63,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts b/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> index 13b1dc0519..f189365bad 100644
> --- a/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> +++ b/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> @@ -46,8 +46,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_elecom_wrc-1167ghbk2-s.dts b/target/linux/ramips/dts/mt7621_elecom_wrc-1167ghbk2-s.dts
> index cf5c9a2d24..3d0b726526 100644
> --- a/target/linux/ramips/dts/mt7621_elecom_wrc-1167ghbk2-s.dts
> +++ b/target/linux/ramips/dts/mt7621_elecom_wrc-1167ghbk2-s.dts
> @@ -56,8 +56,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi b/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi
> index 9ab8df6631..1776db8fc0 100644
> --- a/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi
> +++ b/target/linux/ramips/dts/mt7621_elecom_wrc-gst.dtsi
> @@ -43,8 +43,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_firefly_firewrt.dts b/target/linux/ramips/dts/mt7621_firefly_firewrt.dts
> index 09b6fc5bf5..773cf82e36 100644
> --- a/target/linux/ramips/dts/mt7621_firefly_firewrt.dts
> +++ b/target/linux/ramips/dts/mt7621_firefly_firewrt.dts
> @@ -30,8 +30,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7621_gehua_ghl-r-001.dts b/target/linux/ramips/dts/mt7621_gehua_ghl-r-001.dts
> index 12becc2b1d..b7ddc51fb6 100644
> --- a/target/linux/ramips/dts/mt7621_gehua_ghl-r-001.dts
> +++ b/target/linux/ramips/dts/mt7621_gehua_ghl-r-001.dts
> @@ -31,8 +31,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_gnubee_gb-pc1.dts b/target/linux/ramips/dts/mt7621_gnubee_gb-pc1.dts
> index 0d951e98c4..c7a6105903 100644
> --- a/target/linux/ramips/dts/mt7621_gnubee_gb-pc1.dts
> +++ b/target/linux/ramips/dts/mt7621_gnubee_gb-pc1.dts
> @@ -21,8 +21,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts b/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts
> index a5fe411d0e..19fa7f3131 100644
> --- a/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts
> +++ b/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts
> @@ -21,8 +21,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts b/target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
> index 598d33035f..1d0471fd37 100644
> --- a/target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
> +++ b/target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_iodata_wn-ax1167gr.dts b/target/linux/ramips/dts/mt7621_iodata_wn-ax1167gr.dts
> index 2449112baf..40e11014d7 100644
> --- a/target/linux/ramips/dts/mt7621_iodata_wn-ax1167gr.dts
> +++ b/target/linux/ramips/dts/mt7621_iodata_wn-ax1167gr.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_iodata_wn-gx300gr.dts b/target/linux/ramips/dts/mt7621_iodata_wn-gx300gr.dts
> index 020f78aba6..1e692ea3cb 100644
> --- a/target/linux/ramips/dts/mt7621_iodata_wn-gx300gr.dts
> +++ b/target/linux/ramips/dts/mt7621_iodata_wn-gx300gr.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts b/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
> index 1ab3390093..7403a8760f 100644
> --- a/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
> +++ b/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
> @@ -42,8 +42,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_linksys_re6500.dts b/target/linux/ramips/dts/mt7621_linksys_re6500.dts
> index c7705bdb5e..a7f1fdd262 100644
> --- a/target/linux/ramips/dts/mt7621_linksys_re6500.dts
> +++ b/target/linux/ramips/dts/mt7621_linksys_re6500.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts b/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
> index 0b39fa240a..b164ed2c70 100644
> --- a/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
> +++ b/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
> @@ -37,8 +37,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		mode {
>   			label = "mode";
> diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> index 66ce61db3d..a03133cf68 100644
> --- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> +++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
> @@ -55,8 +55,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		res {
>   			label = "reset";
>   			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
> index 8abc08e200..bab97a6a90 100644
> --- a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
> +++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
> @@ -30,8 +30,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		res {
>   			label = "res";
> diff --git a/target/linux/ramips/dts/mt7621_mqmaker_witi.dts b/target/linux/ramips/dts/mt7621_mqmaker_witi.dts
> index 803b35f8c2..6d13ac1479 100644
> --- a/target/linux/ramips/dts/mt7621_mqmaker_witi.dts
> +++ b/target/linux/ramips/dts/mt7621_mqmaker_witi.dts
> @@ -26,8 +26,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_mtc_wr1201.dts b/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
> index 885f6dcc8d..34f3840f81 100644
> --- a/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
> +++ b/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
> @@ -48,8 +48,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_netgear_ex6150.dts b/target/linux/ramips/dts/mt7621_netgear_ex6150.dts
> index 4798a99c61..fc8a68a135 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_ex6150.dts
> +++ b/target/linux/ramips/dts/mt7621_netgear_ex6150.dts
> @@ -73,8 +73,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7621_netgear_r6220.dtsi b/target/linux/ramips/dts/mt7621_netgear_r6220.dtsi
> index 44dec9ef85..1d64c6741e 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_r6220.dtsi
> +++ b/target/linux/ramips/dts/mt7621_netgear_r6220.dtsi
> @@ -49,8 +49,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7621_netis_wf-2881.dts b/target/linux/ramips/dts/mt7621_netis_wf-2881.dts
> index 487d92d9c6..50f9592e2c 100644
> --- a/target/linux/ramips/dts/mt7621_netis_wf-2881.dts
> +++ b/target/linux/ramips/dts/mt7621_netis_wf-2881.dts
> @@ -37,8 +37,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_phicomm_k2p.dts b/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
> index a2bac13c7b..909df622f4 100644
> --- a/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
> +++ b/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
> @@ -40,8 +40,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_planex_vr500.dts b/target/linux/ramips/dts/mt7621_planex_vr500.dts
> index f0116944b1..3d8d346488 100644
> --- a/target/linux/ramips/dts/mt7621_planex_vr500.dts
> +++ b/target/linux/ramips/dts/mt7621_planex_vr500.dts
> @@ -30,8 +30,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_samknows_whitebox-v8.dts b/target/linux/ramips/dts/mt7621_samknows_whitebox-v8.dts
> index 0319f05351..84cc4541e9 100644
> --- a/target/linux/ramips/dts/mt7621_samknows_whitebox-v8.dts
> +++ b/target/linux/ramips/dts/mt7621_samknows_whitebox-v8.dts
> @@ -36,13 +36,14 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		wps {
>   			label = "wps";
>   			gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
>   			linux,code = <KEY_WPS_BUTTON>;
>   		};
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7621_storylink_sap-g3200u3.dts b/target/linux/ramips/dts/mt7621_storylink_sap-g3200u3.dts
> index 38ae614ed1..4194154f07 100644
> --- a/target/linux/ramips/dts/mt7621_storylink_sap-g3200u3.dts
> +++ b/target/linux/ramips/dts/mt7621_storylink_sap-g3200u3.dts
> @@ -25,8 +25,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_telco-electronics_x1.dts b/target/linux/ramips/dts/mt7621_telco-electronics_x1.dts
> index abba2ea8b1..9e8f9f75ed 100644
> --- a/target/linux/ramips/dts/mt7621_telco-electronics_x1.dts
> +++ b/target/linux/ramips/dts/mt7621_telco-electronics_x1.dts
> @@ -23,8 +23,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_thunder_timecloud.dts b/target/linux/ramips/dts/mt7621_thunder_timecloud.dts
> index 23f972406d..4ff845543d 100644
> --- a/target/linux/ramips/dts/mt7621_thunder_timecloud.dts
> +++ b/target/linux/ramips/dts/mt7621_thunder_timecloud.dts
> @@ -35,8 +35,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_tplink_re350-v1.dts b/target/linux/ramips/dts/mt7621_tplink_re350-v1.dts
> index 54ba203170..7859f611ee 100644
> --- a/target/linux/ramips/dts/mt7621_tplink_re350-v1.dts
> +++ b/target/linux/ramips/dts/mt7621_tplink_re350-v1.dts
> @@ -60,8 +60,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		led {
>   			label = "led";
> diff --git a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi b/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi
> index b8de4113e2..d03c3256e6 100644
> --- a/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi
> +++ b/target/linux/ramips/dts/mt7621_ubiquiti_edgerouterx.dtsi
> @@ -15,8 +15,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_unielec_u7621-06.dtsi b/target/linux/ramips/dts/mt7621_unielec_u7621-06.dtsi
> index 301edfe680..5bd7f0b92d 100644
> --- a/target/linux/ramips/dts/mt7621_unielec_u7621-06.dtsi
> +++ b/target/linux/ramips/dts/mt7621_unielec_u7621-06.dtsi
> @@ -63,8 +63,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_wevo_w2914ns-v2.dtsi b/target/linux/ramips/dts/mt7621_wevo_w2914ns-v2.dtsi
> index 63cff0c10d..4e6cccaa76 100644
> --- a/target/linux/ramips/dts/mt7621_wevo_w2914ns-v2.dtsi
> +++ b/target/linux/ramips/dts/mt7621_wevo_w2914ns-v2.dtsi
> @@ -11,8 +11,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_xiaomi_mir3g.dts b/target/linux/ramips/dts/mt7621_xiaomi_mir3g.dts
> index fe1ab3122d..5044890d6c 100644
> --- a/target/linux/ramips/dts/mt7621_xiaomi_mir3g.dts
> +++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3g.dts
> @@ -55,8 +55,7 @@
>   	};
>   
>   	button {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_xiaomi_mir3p.dts b/target/linux/ramips/dts/mt7621_xiaomi_mir3p.dts
> index 34efb1f6d4..f36a920b6b 100644
> --- a/target/linux/ramips/dts/mt7621_xiaomi_mir3p.dts
> +++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3p.dts
> @@ -61,8 +61,7 @@
>   	};
>   
>   	button {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts b/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
> index 73bfd6a4f0..f33a6fce43 100644
> --- a/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
> +++ b/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
> @@ -54,8 +54,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_youhua_wr1200js.dts b/target/linux/ramips/dts/mt7621_youhua_wr1200js.dts
> index af397490a1..7f7d5cb276 100644
> --- a/target/linux/ramips/dts/mt7621_youhua_wr1200js.dts
> +++ b/target/linux/ramips/dts/mt7621_youhua_wr1200js.dts
> @@ -40,8 +40,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_youku_yk-l2.dts b/target/linux/ramips/dts/mt7621_youku_yk-l2.dts
> index dc5599302a..3a9794da02 100644
> --- a/target/linux/ramips/dts/mt7621_youku_yk-l2.dts
> +++ b/target/linux/ramips/dts/mt7621_youku_yk-l2.dts
> @@ -44,8 +44,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts
> index 819c851c73..d61b9fb593 100644
> --- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts
> +++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we1326.dts
> @@ -18,8 +18,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts
> index 7973626fad..2bd27c5ed5 100644
> --- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts
> +++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-we3526.dts
> @@ -20,8 +20,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts
> index ca2044f73e..8761dc61a2 100644
> --- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts
> +++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg2626.dts
> @@ -27,8 +27,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526.dtsi b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526.dtsi
> index a2ab252b7e..f1b126ad15 100644
> --- a/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526.dtsi
> +++ b/target/linux/ramips/dts/mt7621_zbtlink_zbt-wg3526.dtsi
> @@ -25,8 +25,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts b/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
> index c03f060b2d..ffb8dbac62 100644
> --- a/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
> +++ b/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
> @@ -53,8 +53,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_buffalo_wcr-1166ds.dts b/target/linux/ramips/dts/mt7628an_buffalo_wcr-1166ds.dts
> index 602ea8c5de..2c878ff8a2 100644
> --- a/target/linux/ramips/dts/mt7628an_buffalo_wcr-1166ds.dts
> +++ b/target/linux/ramips/dts/mt7628an_buffalo_wcr-1166ds.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		aoss {
>   			label = "aoss";
> diff --git a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
> index 074a5ab1ae..3dca680b11 100644
> --- a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
> +++ b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
> @@ -18,8 +18,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_d-team_pbr-d1.dts b/target/linux/ramips/dts/mt7628an_d-team_pbr-d1.dts
> index 6b3855ff09..cef92c5bf8 100644
> --- a/target/linux/ramips/dts/mt7628an_d-team_pbr-d1.dts
> +++ b/target/linux/ramips/dts/mt7628an_d-team_pbr-d1.dts
> @@ -42,8 +42,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_duzun_dm06.dts b/target/linux/ramips/dts/mt7628an_duzun_dm06.dts
> index 1060f857bf..20d3bd83b8 100644
> --- a/target/linux/ramips/dts/mt7628an_duzun_dm06.dts
> +++ b/target/linux/ramips/dts/mt7628an_duzun_dm06.dts
> @@ -10,8 +10,7 @@
>   	model = "DuZun DM06";
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <100>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts b/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
> index 785088b633..48dcfc0e5c 100644
> --- a/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
> +++ b/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
> @@ -42,8 +42,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> index 1d2ba8b7b0..b2e82c64b5 100644
> --- a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> +++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
> @@ -38,8 +38,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts b/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts
> index 77e9abacb9..6463a5867b 100644
> --- a/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts
> +++ b/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts
> @@ -15,8 +15,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_mediatek_linkit-smart-7688.dts b/target/linux/ramips/dts/mt7628an_mediatek_linkit-smart-7688.dts
> index b29a815529..d4eadf68ee 100644
> --- a/target/linux/ramips/dts/mt7628an_mediatek_linkit-smart-7688.dts
> +++ b/target/linux/ramips/dts/mt7628an_mediatek_linkit-smart-7688.dts
> @@ -40,8 +40,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_mercury_mac1200r-v2.dts b/target/linux/ramips/dts/mt7628an_mercury_mac1200r-v2.dts
> index 82adae13db..715f4d1ff7 100644
> --- a/target/linux/ramips/dts/mt7628an_mercury_mac1200r-v2.dts
> +++ b/target/linux/ramips/dts/mt7628an_mercury_mac1200r-v2.dts
> @@ -22,6 +22,7 @@
>   
>   	leds {
>   		compatible = "gpio-leds";
> +
>   		led_status: status {
>   			label = "mac1200rv2:green:status";
>   			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7628an_netgear_r6120.dts b/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
> index 9f1ea1d68a..e27406aed4 100644
> --- a/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
> +++ b/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
> @@ -18,8 +18,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_onion_omega2.dtsi b/target/linux/ramips/dts/mt7628an_onion_omega2.dtsi
> index e36602d6c9..8b761d7814 100644
> --- a/target/linux/ramips/dts/mt7628an_onion_omega2.dtsi
> +++ b/target/linux/ramips/dts/mt7628an_onion_omega2.dtsi
> @@ -26,8 +26,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts b/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts
> index 41fd5f2135..b33b27e80d 100644
> --- a/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts
> +++ b/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts
> @@ -34,8 +34,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tama_w06.dts b/target/linux/ramips/dts/mt7628an_tama_w06.dts
> index b4d5595a69..2a906c2669 100644
> --- a/target/linux/ramips/dts/mt7628an_tama_w06.dts
> +++ b/target/linux/ramips/dts/mt7628an_tama_w06.dts
> @@ -29,8 +29,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts b/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts
> index c2aac3edf4..4a712e917a 100644
> --- a/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts
> +++ b/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts
> @@ -24,35 +24,43 @@
>   			label = "lr1200:blue:sys";
>   			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		sms {
>   			label = "lr1200:blue:sms";
>   			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		wifi {
>   			label = "lr1200:blue:wifi";
>   			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
>   			linux,default-trigger = "phy0tpt";
>   		};
> +
>   		3g {
>   			label = "lr1200:blue:3g";
>   			gpios = <&gpio0 4 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		4g {
>   			label = "lr1200:blue:4g";
>   			gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		rssi1 {
>   			label = "lr1200:blue:rssi1";
>   			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		rssi2 {
>   			label = "lr1200:blue:rssi2";
>   			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		rssi3 {
>   			label = "lr1200:blue:rssi3";
>   			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		rssi4 {
>   			label = "lr1200:blue:rssi4";
>   			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
> @@ -60,8 +68,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_archer-c20-v4.dts b/target/linux/ramips/dts/mt7628an_tplink_archer-c20-v4.dts
> index 641e5089a5..91401b5a32 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_archer-c20-v4.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_archer-c20-v4.dts
> @@ -56,8 +56,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v3.dts b/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v3.dts
> index 3da6128897..2f0576f2fd 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v3.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v3.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v4.dts b/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v4.dts
> index 30132b4c85..197773db07 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v4.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_archer-c50-v4.dts
> @@ -18,8 +18,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-mr3020-v3.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-mr3020-v3.dts
> index d1b5dd49dc..84fe3224b6 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-mr3020-v3.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-mr3020-v3.dts
> @@ -21,8 +21,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "wps";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-mr3420-v5.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-mr3420-v5.dts
> index 9573b86dcc..2bc4fac508 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-mr3420-v5.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-mr3420-v5.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wa801nd-v5.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wa801nd-v5.dts
> index 684ce32de4..0336730a4b 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wa801nd-v5.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wa801nd-v5.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr802n-v4.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr802n-v4.dts
> index 6460ede251..5e97733d0e 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr802n-v4.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr802n-v4.dts
> @@ -18,8 +18,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v4.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v4.dts
> index 8d379cffd4..32d4cdf4eb 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v4.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v4.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts
> index eb00d11273..17b8ff4d0f 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts
> @@ -21,8 +21,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> @@ -30,6 +29,7 @@
>   			linux,code = <KEY_RESTART>;
>   		};
>   	};
> +
>   	/* LED used is dual-color,dual lead LED */
>   	leds {
>   		compatible = "gpio-leds";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v13.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v13.dts
> index 1af6354d1a..5bfabe4bdc 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v13.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v13.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v14.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v14.dts
> index c19db91620..554300c972 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v14.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr841n-v14.dts
> @@ -23,8 +23,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr842n-v5.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr842n-v5.dts
> index 7b8b258655..648e64766f 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr842n-v5.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr842n-v5.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr902ac-v3.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr902ac-v3.dts
> index 0e31d41061..33449d9651 100644
> --- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr902ac-v3.dts
> +++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr902ac-v3.dts
> @@ -17,8 +17,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi b/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi
> index 03da1f88f2..ab6bd6bf00 100644
> --- a/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi
> +++ b/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi
> @@ -52,8 +52,8 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
> +
>   		reset {
>   			label = "reset";
>   			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ramips/dts/mt7628an_wavlink_wl-wn570ha1.dts b/target/linux/ramips/dts/mt7628an_wavlink_wl-wn570ha1.dts
> index 21659644d1..fa59a8b105 100644
> --- a/target/linux/ramips/dts/mt7628an_wavlink_wl-wn570ha1.dts
> +++ b/target/linux/ramips/dts/mt7628an_wavlink_wl-wn570ha1.dts
> @@ -13,8 +13,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_wavlink_wl-wn575a3.dts b/target/linux/ramips/dts/mt7628an_wavlink_wl-wn575a3.dts
> index 7a71740bcc..0aed99c459 100644
> --- a/target/linux/ramips/dts/mt7628an_wavlink_wl-wn575a3.dts
> +++ b/target/linux/ramips/dts/mt7628an_wavlink_wl-wn575a3.dts
> @@ -13,8 +13,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_widora_neo.dtsi b/target/linux/ramips/dts/mt7628an_widora_neo.dtsi
> index eabb5c69b4..5457ca85cf 100644
> --- a/target/linux/ramips/dts/mt7628an_widora_neo.dtsi
> +++ b/target/linux/ramips/dts/mt7628an_widora_neo.dtsi
> @@ -28,8 +28,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		wps {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts b/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts
> index 13475fe324..a756900dcd 100644
> --- a/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts
> +++ b/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts
> @@ -48,10 +48,10 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> +		compatible = "gpio-keys";
> +
>   		#address-cells = <1>;
>   		#size-cells = <0>;
> -		poll-interval = <20>;
>   
>   		reset {
>   			label = "reset";
> @@ -76,7 +76,6 @@
>   			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
>   			linux,code = <BTN_2>;
>   		};
> -
>   	};
>   };
>   
> diff --git a/target/linux/ramips/dts/mt7628an_wrtnode_wrtnode2.dtsi b/target/linux/ramips/dts/mt7628an_wrtnode_wrtnode2.dtsi
> index b8fa634e50..206da8b168 100644
> --- a/target/linux/ramips/dts/mt7628an_wrtnode_wrtnode2.dtsi
> +++ b/target/linux/ramips/dts/mt7628an_wrtnode_wrtnode2.dtsi
> @@ -11,8 +11,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_xiaomi_mir4a-100m.dts b/target/linux/ramips/dts/mt7628an_xiaomi_mir4a-100m.dts
> index bdca8d95ad..2de28041e4 100644
> --- a/target/linux/ramips/dts/mt7628an_xiaomi_mir4a-100m.dts
> +++ b/target/linux/ramips/dts/mt7628an_xiaomi_mir4a-100m.dts
> @@ -36,8 +36,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts b/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts
> index 347ce6489c..8b2a3d6c9d 100644
> --- a/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts
> +++ b/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts
> @@ -27,10 +27,12 @@
>   			label = "miwifi-nano:blue:status";
>   			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		status_red {
>   			label = "miwifi-nano:red:status";
>   			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
>   		};
> +
>   		status_amber {
>   			label = "miwifi-nano:amber:status";
>   			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
> @@ -38,8 +40,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts b/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts
> index cd7a33e7b5..b89e689508 100644
> --- a/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts
> +++ b/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts
> @@ -20,8 +20,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> diff --git a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
> index 1d083ed8bb..644882c6a2 100644
> --- a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
> +++ b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
> @@ -21,8 +21,7 @@
>   	};
>   
>   	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <20>;
> +		compatible = "gpio-keys";
>   
>   		reset {
>   			label = "reset";
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
