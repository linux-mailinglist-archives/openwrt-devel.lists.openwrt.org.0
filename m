Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7BC12D514
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 00:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iAaUcGKJWmUtKOsLAH9QBX3ASRi2iCQ8SuvOPp0U4MA=; b=OU2yHFa5AbQ9Khvv4+B69f5hj3
	u2uzSop1Bv2YoA5t9L5W2+5pVGoIqgZM+uQwt1j75t6VK3yf2icHgaMRQJ4FFifu7TgTo4bhxpy0/
	uSUk5JLnJ0WpgYw+16keo/cjtEC6XCStspg2yLmYqv0BsSY1Qe8xlJqoaf5bStP4PMLIF6ZKSME9x
	eBKwbBnjMtfXYlLKD6zgtuZjl1UFjLO/652ARX3STZEooQjBgtziZylOEp2aRhQyVLJ8+gZeYs4gT
	Tjldj/xfc5sSZfsqSyf74HzM7A89tJ3tnbw6yTTNbyTTYG84Y26YQhpystD2EAL6UFMTGASdjCpHS
	PohO9RQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im4Th-0001Th-SL; Mon, 30 Dec 2019 23:29:37 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im4Sh-0000Tr-74
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 23:28:44 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mzy6q-1jhlyi1AFK-00wzTG for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 00:28:30 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 00:27:44 +0100
Message-Id: <20191230232747.5357-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
References: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:hCm1EiWuaM5B8+twqx5AcUInGemHpfYGS/MrDayGugkWel4WffD
 V5s7x96bEG+tSW/mKEJeftikWrFEVWzNfUmN2pP7RgvCDhNs+O7JPjlKyxJbdNKzufD5EHx
 EYLxaHGdF9Lav9sdDfsgvQJ5o2ZCjeAPMYx+l2uyXKpBgAs1AbV4d2cwF1IFbEIcF5jpqrG
 Yjq9i1nTUy8XEqGrl7hLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sFyHHf9qIlQ=:Jq7yGQKFBbhqr1b+KmMskX
 ZQpMpPJ16Bl63fwhCrSMF9L9cv61uwbZTp21sFUN3g561Sxzxu0Km6WvFM76eMauzMWbFp56L
 0neMIgo+h69cIcT/bPyQp9rDL+s+6GdeaYJJC50f+yfRqPHGesLOrFlBGgv6gC/suIHy4vfEQ
 OuxQopGWCp+jwhur6AYYFgxKYtwDHTm7J74t7KBkTQT3ocwRd6Ash40r3JMQJhqKpKKNSW8z4
 frm53a2LmO3Eb1ZKobQ5fF55UJt4hT9DoMI+BELFc5QefjCBaeq9ul/F/1JJsWd6I/TLJNagy
 XLWT/mtTuQ5e/i+kVGPKAZ+lCaTF+683CsL4hkxi6xwxxJewNYn6+c8axq+/0SlJdlRkB57U+
 KGqTkavyPLkPezZJ+oz/e/T5vNF5zfozRF3Mzyc1t9rXmvOqAy99ezo9xGcNF6MI/eS1u737k
 08ysHxpLM5+kdmfcQGIbN7XLhACsVbtDvlTbaZomBKtCUv3/DV/j2uh+2+M8RBtMQiAgg3hsp
 osKEOOaUjOXCBTcad5puv0PpwdTd8TyCFMpREZXvuMIILbnyQz36CnLB91JlMahvUI0n38g56
 FEtGofhxTLaprDfrfc4scD1VaoRjhnAjdOUNalVehv08t+FKaQey2ezRwT99KAFftG5iq04BJ
 jEUAGy4tBBMITlBTiRYzrXSv3M8enlenIWeTIWa8xmAh4xISEE334WgyVFKi5iRb1B0VBBeKa
 VXz6a67qHYqYCBFs7tFWRL8oK7Ep+4cD480IahPQlu/Rsh9HAoqWByyHLUQHkEtl4NT+M+kiH
 yAVEjSEbUz6AqGwvaiQKbZav185codTwlKYB7UPff9ZBSW7B78RRhe51Ls/+zNC00T9MRBwxi
 gU09bi5uj5QNL6Q68LG6Fx/0h1VcLSBjC6OyAF70k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_152835_868343_02F2CD21 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/4] brcm63xx: use soc_vendor_model scheme
 for image and DTS files
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

This changes brcm63xx target to achieve consistency between image
names, device nodes names, compatible, DTS name and device name
as much as possible. As with other targets, having consistent
names is supposed to make life easier for developers and reduces
the number of "variables" in the system. In particular, applying
the DTS scheme will make it easier to find the correct file and
architecture.

DTS files are named based on the increasingly common
soc_vendor_model scheme. Since the compatible is not used at the
moment, I took the chance to also align them with this patch.

For the SOC, the already existing CFE_CHIP_ID can be exploiting
for all but two devices.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 ...vg834g.dts => bcm3368_netgear_cvg834g.dts} |   0
 ....dts => bcm6318_brcm_bcm96318ref-p300.dts} |   2 +-
 ...18ref.dts => bcm6318_brcm_bcm96318ref.dts} |   0
 ...315u.dts => bcm6318_comtrend_ar-5315u.dts} |   0
 ...-d.dts => bcm6318_d-link_dsl-275xb-d1.dts} |   2 +-
 ...2704n.dts => bcm6318_sagem_fast-2704n.dts} |   2 +-
 ...dts => bcm63268_brcm_bcm963268bu-p300.dts} |   2 +-
 ...bhr.dts => bcm63268_brcm_bcm963269bhr.dts} |   0
 .../{vg50.dts => bcm63268_inteno_vg50.dts}    |   0
 .../dts/{sr102.dts => bcm63268_sky_sr102.dts} |   0
 .../{a4001n.dts => bcm6328_adb_a4001n.dts}    |   0
 .../{a4001n1.dts => bcm6328_adb_a4001n1.dts}  |   0
 ...1TAN.dts => bcm6328_brcm_bcm963281tan.dts} |   2 +-
 ...avng.dts => bcm6328_brcm_bcm96328avng.dts} |   0
 ...381u.dts => bcm6328_comtrend_ar-5381u.dts} |   0
 ...7un.dts => bcm6328_comtrend_ar-5387un.dts} |   0
 ...-f.dts => bcm6328_d-link_dsl-274xb-f1.dts} |   2 +-
 ...0unv2.dts => bcm6328_nucom_r5010un-v2.dts} |   2 +-
 ...4v2.dts => bcm6328_sagem_fast-2704-v2.dts} |   2 +-
 ...nor.dts => bcm6328_sercomm_ad1018-nor.dts} |   0
 ...6338GW.dts => bcm6338_brcm_bcm96338gw.dts} |   0
 ...m96338W.dts => bcm6338_brcm_bcm96338w.dts} |   0
 ...2640u.dts => bcm6338_d-link_dsl-2640u.dts} |   0
 ...a1320.dts => bcm6338_dynalink_rta1320.dts} |   0
 ...45GW2.dts => bcm6345_brcm_bcm96345gw2.dts} |   0
 ...70bw.dts => bcm6345_dynalink_rta770bw.dts} |   0
 ...a770w.dts => bcm6345_dynalink_rta770w.dts} |   0
 ...ar1004g.dts => bcm6348_asmax_ar-1004g.dts} |   2 +-
 ...f5d7633.dts => bcm6348_belkin_f5d7633.dts} |   0
 ...-10.dts => bcm6348_brcm_bcm96348gw-10.dts} |   0
 ...-11.dts => bcm6348_brcm_bcm96348gw-11.dts} |   0
 ...6348GW.dts => bcm6348_brcm_bcm96348gw.dts} |   0
 ...m96348R.dts => bcm6348_brcm_bcm96348r.dts} |   0
 ...{v2110.dts => bcm6348_bt_voyager-2110.dts} |   2 +-
 ...bb.dts => bcm6348_bt_voyager-2500v-bb.dts} |   2 +-
 ...-5365.dts => bcm6348_comtrend_ct-5365.dts} |   0
 ...us.dts => bcm6348_comtrend_ct-536plus.dts} |   2 +-
 ...b-b.dts => bcm6348_d-link_dsl-2640b-b.dts} |   0
 ...amr.dts => bcm6348_davolink_dv-201amr.dts} |   0
 ...025w.dts => bcm6348_dynalink_rta1025w.dts} |   0
 ...-5g.dts => bcm6348_inventel_livebox-1.dts} |   2 +-
 ...g_v4.dts => bcm6348_netgear_dg834g-v4.dts} |   0
 ...tpn.dts => bcm6348_netgear_dg834gt-pn.dts} |   2 +-
 ...st2404.dts => bcm6348_sagem_fast-2404.dts} |   2 +-
 ...st2604.dts => bcm6348_sagem_fast-2604.dts} |   2 +-
 ...dts => bcm6348_t-com_speedport-w-500v.dts} |   2 +-
 .../{gw6000.dts => bcm6348_tecom_gw6000.dts}  |   0
 .../{gw6200.dts => bcm6348_tecom_gw6200.dts}  |   0
 ...lus.dts => bcm6348_telsey_cpva502plus.dts} |   2 +-
 .../{magic.dts => bcm6348_telsey_magic.dts}   |   0
 ...0gb.dts => bcm6348_tp-link_td-w8900gb.dts} |   0
 ...108.dts => bcm6348_usrobotics_usr9108.dts} |   2 +-
 ...{rg100a.dts => bcm6358_alcatel_rg100a.dts} |   0
 ...6358VW.dts => bcm6358_brcm_bcm96358vw.dts} |   0
 ...58VW2.dts => bcm6358_brcm_bcm96358vw2.dts} |   0
 ...ehub2a.dts => bcm6358_bt_home-hub-2-a.dts} |   2 +-
 ...-6373.dts => bcm6358_comtrend_ct-6373.dts} |   0
 ...2650u.dts => bcm6358_d-link_dsl-2650u.dts} |   0
 ...-c.dts => bcm6358_d-link_dsl-274xb-c2.dts} |   0
 ....dts => bcm6358_d-link_dva-g3810bn-tl.dts} |   2 +-
 ...dts => bcm6358_huawei_echolife-hg520v.dts} |   2 +-
 ....dts => bcm6358_huawei_echolife-hg553.dts} |   2 +-
 ...s => bcm6358_huawei_echolife-hg556a-a.dts} |   2 +-
 ...s => bcm6358_huawei_echolife-hg556a-b.dts} |   2 +-
 ...s => bcm6358_huawei_echolife-hg556a-c.dts} |   2 +-
 .../{a226g.dts => bcm6358_pirelli_a226g.dts}  |   0
 ...-fwb.dts => bcm6358_pirelli_a226m-fwb.dts} |   0
 .../{a226m.dts => bcm6358_pirelli_a226m.dts}  |   0
 ...gpf-s0.dts => bcm6358_pirelli_agpf-s0.dts} |   0
 ...s => bcm6358_sfr_neufbox-4-foxconn-r1.dts} |   2 +-
 ...s => bcm6358_sfr_neufbox-4-sercomm-r0.dts} |   2 +-
 ...dts => bcm6358_t-com_speedport-w-303v.dts} |   2 +-
 ...cpva642.dts => bcm6358_telsey_cpva642.dts} |   0
 ...2504n.dts => bcm6362_sagem_fast-2504n.dts} |   2 +-
 ...s => bcm6362_sfr_neufbox-6-sercomm-r0.dts} |   2 +-
 ...1000h.dts => bcm6368_actiontec_r1000h.dts} |   0
 .../{av4202n.dts => bcm6368_adb_av4202n.dts}  |   0
 ...Ngr.dts => bcm6368_brcm_bcm96368mvngr.dts} |   0
 ...MVWG.dts => bcm6368_brcm_bcm96368mvwg.dts} |   0
 ...025u.dts => bcm6368_comtrend_vr-3025u.dts} |   0
 ...5un.dts => bcm6368_comtrend_vr-3025un.dts} |   0
 ...026e.dts => bcm6368_comtrend_vr-3026e.dts} |   0
 ...13n.dts => bcm6368_comtrend_wap-5813n.dts} |   0
 ....dts => bcm6368_huawei_echolife-hg622.dts} |   2 +-
 ...dts => bcm6368_huawei_echolife-hg655b.dts} |   2 +-
 ...v1.dts => bcm6368_netgear_dgnd3700-v1.dts} |   2 +-
 ...vg2000.dts => bcm6368_netgear_evg2000.dts} |   0
 ...h4032n.dts => bcm6368_observa_vh4032n.dts} |   0
 ...v2.dts => bcm6368_zyxel_p870hw-51a-v2.dts} |   0
 target/linux/brcm63xx/image/Makefile          |   2 +
 target/linux/brcm63xx/image/bcm63xx.mk        | 466 +++++++-----------
 91 files changed, 226 insertions(+), 310 deletions(-)
 rename target/linux/brcm63xx/dts/{cvg834g.dts => bcm3368_netgear_cvg834g.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96318ref_p300.dts => bcm6318_brcm_bcm96318ref-p300.dts} (96%)
 rename target/linux/brcm63xx/dts/{bcm96318ref.dts => bcm6318_brcm_bcm96318ref.dts} (100%)
 rename target/linux/brcm63xx/dts/{ar-5315u.dts => bcm6318_comtrend_ar-5315u.dts} (100%)
 rename target/linux/brcm63xx/dts/{dsl-275xb-d.dts => bcm6318_d-link_dsl-275xb-d1.dts} (97%)
 rename target/linux/brcm63xx/dts/{fast2704n.dts => bcm6318_sagem_fast-2704n.dts} (97%)
 rename target/linux/brcm63xx/dts/{bcm963268bu_p300.dts => bcm63268_brcm_bcm963268bu-p300.dts} (94%)
 rename target/linux/brcm63xx/dts/{bcm963269bhr.dts => bcm63268_brcm_bcm963269bhr.dts} (100%)
 rename target/linux/brcm63xx/dts/{vg50.dts => bcm63268_inteno_vg50.dts} (100%)
 rename target/linux/brcm63xx/dts/{sr102.dts => bcm63268_sky_sr102.dts} (100%)
 rename target/linux/brcm63xx/dts/{a4001n.dts => bcm6328_adb_a4001n.dts} (100%)
 rename target/linux/brcm63xx/dts/{a4001n1.dts => bcm6328_adb_a4001n1.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm963281TAN.dts => bcm6328_brcm_bcm963281tan.dts} (95%)
 rename target/linux/brcm63xx/dts/{bcm96328avng.dts => bcm6328_brcm_bcm96328avng.dts} (100%)
 rename target/linux/brcm63xx/dts/{ar-5381u.dts => bcm6328_comtrend_ar-5381u.dts} (100%)
 rename target/linux/brcm63xx/dts/{ar-5387un.dts => bcm6328_comtrend_ar-5387un.dts} (100%)
 rename target/linux/brcm63xx/dts/{dsl-274xb-f.dts => bcm6328_d-link_dsl-274xb-f1.dts} (97%)
 rename target/linux/brcm63xx/dts/{r5010unv2.dts => bcm6328_nucom_r5010un-v2.dts} (97%)
 rename target/linux/brcm63xx/dts/{fast2704v2.dts => bcm6328_sagem_fast-2704-v2.dts} (97%)
 rename target/linux/brcm63xx/dts/{ad1018-nor.dts => bcm6328_sercomm_ad1018-nor.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96338GW.dts => bcm6338_brcm_bcm96338gw.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96338W.dts => bcm6338_brcm_bcm96338w.dts} (100%)
 rename target/linux/brcm63xx/dts/{dsl-2640u.dts => bcm6338_d-link_dsl-2640u.dts} (100%)
 rename target/linux/brcm63xx/dts/{rta1320.dts => bcm6338_dynalink_rta1320.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96345GW2.dts => bcm6345_brcm_bcm96345gw2.dts} (100%)
 rename target/linux/brcm63xx/dts/{rta770bw.dts => bcm6345_dynalink_rta770bw.dts} (100%)
 rename target/linux/brcm63xx/dts/{rta770w.dts => bcm6345_dynalink_rta770w.dts} (100%)
 rename target/linux/brcm63xx/dts/{ar1004g.dts => bcm6348_asmax_ar-1004g.dts} (96%)
 rename target/linux/brcm63xx/dts/{f5d7633.dts => bcm6348_belkin_f5d7633.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96348GW-10.dts => bcm6348_brcm_bcm96348gw-10.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96348GW-11.dts => bcm6348_brcm_bcm96348gw-11.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96348GW.dts => bcm6348_brcm_bcm96348gw.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96348R.dts => bcm6348_brcm_bcm96348r.dts} (100%)
 rename target/linux/brcm63xx/dts/{v2110.dts => bcm6348_bt_voyager-2110.dts} (96%)
 rename target/linux/brcm63xx/dts/{v2500v-bb.dts => bcm6348_bt_voyager-2500v-bb.dts} (96%)
 rename target/linux/brcm63xx/dts/{ct-5365.dts => bcm6348_comtrend_ct-5365.dts} (100%)
 rename target/linux/brcm63xx/dts/{ct536plus.dts => bcm6348_comtrend_ct-536plus.dts} (95%)
 rename target/linux/brcm63xx/dts/{dsl-2640b-b.dts => bcm6348_d-link_dsl-2640b-b.dts} (100%)
 rename target/linux/brcm63xx/dts/{dv-201amr.dts => bcm6348_davolink_dv-201amr.dts} (100%)
 rename target/linux/brcm63xx/dts/{rta1025w.dts => bcm6348_dynalink_rta1025w.dts} (100%)
 rename target/linux/brcm63xx/dts/{livebox-blue-5g.dts => bcm6348_inventel_livebox-1.dts} (95%)
 rename target/linux/brcm63xx/dts/{dg834g_v4.dts => bcm6348_netgear_dg834g-v4.dts} (100%)
 rename target/linux/brcm63xx/dts/{dg834gtpn.dts => bcm6348_netgear_dg834gt-pn.dts} (96%)
 rename target/linux/brcm63xx/dts/{fast2404.dts => bcm6348_sagem_fast-2404.dts} (93%)
 rename target/linux/brcm63xx/dts/{fast2604.dts => bcm6348_sagem_fast-2604.dts} (96%)
 rename target/linux/brcm63xx/dts/{spw500v.dts => bcm6348_t-com_speedport-w-500v.dts} (96%)
 rename target/linux/brcm63xx/dts/{gw6000.dts => bcm6348_tecom_gw6000.dts} (100%)
 rename target/linux/brcm63xx/dts/{gw6200.dts => bcm6348_tecom_gw6200.dts} (100%)
 rename target/linux/brcm63xx/dts/{cpva502plus.dts => bcm6348_telsey_cpva502plus.dts} (95%)
 rename target/linux/brcm63xx/dts/{magic.dts => bcm6348_telsey_magic.dts} (100%)
 rename target/linux/brcm63xx/dts/{td-w8900gb.dts => bcm6348_tp-link_td-w8900gb.dts} (100%)
 rename target/linux/brcm63xx/dts/{usr9108.dts => bcm6348_usrobotics_usr9108.dts} (94%)
 rename target/linux/brcm63xx/dts/{rg100a.dts => bcm6358_alcatel_rg100a.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96358VW.dts => bcm6358_brcm_bcm96358vw.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96358VW2.dts => bcm6358_brcm_bcm96358vw2.dts} (100%)
 rename target/linux/brcm63xx/dts/{homehub2a.dts => bcm6358_bt_home-hub-2-a.dts} (97%)
 rename target/linux/brcm63xx/dts/{ct-6373.dts => bcm6358_comtrend_ct-6373.dts} (100%)
 rename target/linux/brcm63xx/dts/{dsl-2650u.dts => bcm6358_d-link_dsl-2650u.dts} (100%)
 rename target/linux/brcm63xx/dts/{dsl-274xb-c.dts => bcm6358_d-link_dsl-274xb-c2.dts} (100%)
 rename target/linux/brcm63xx/dts/{dva-g3810bn_tl.dts => bcm6358_d-link_dva-g3810bn-tl.dts} (96%)
 rename target/linux/brcm63xx/dts/{hg520v.dts => bcm6358_huawei_echolife-hg520v.dts} (94%)
 rename target/linux/brcm63xx/dts/{hg553.dts => bcm6358_huawei_echolife-hg553.dts} (96%)
 rename target/linux/brcm63xx/dts/{hg556a-a.dts => bcm6358_huawei_echolife-hg556a-a.dts} (97%)
 rename target/linux/brcm63xx/dts/{hg556a-b.dts => bcm6358_huawei_echolife-hg556a-b.dts} (97%)
 rename target/linux/brcm63xx/dts/{hg556a-c.dts => bcm6358_huawei_echolife-hg556a-c.dts} (97%)
 rename target/linux/brcm63xx/dts/{a226g.dts => bcm6358_pirelli_a226g.dts} (100%)
 rename target/linux/brcm63xx/dts/{a226m-fwb.dts => bcm6358_pirelli_a226m-fwb.dts} (100%)
 rename target/linux/brcm63xx/dts/{a226m.dts => bcm6358_pirelli_a226m.dts} (100%)
 rename target/linux/brcm63xx/dts/{agpf-s0.dts => bcm6358_pirelli_agpf-s0.dts} (100%)
 rename target/linux/brcm63xx/dts/{nb4-fxc-r1.dts => bcm6358_sfr_neufbox-4-foxconn-r1.dts} (96%)
 rename target/linux/brcm63xx/dts/{nb4-ser-r0.dts => bcm6358_sfr_neufbox-4-sercomm-r0.dts} (96%)
 rename target/linux/brcm63xx/dts/{spw303v.dts => bcm6358_t-com_speedport-w-303v.dts} (96%)
 rename target/linux/brcm63xx/dts/{cpva642.dts => bcm6358_telsey_cpva642.dts} (100%)
 rename target/linux/brcm63xx/dts/{fast2504n.dts => bcm6362_sagem_fast-2504n.dts} (97%)
 rename target/linux/brcm63xx/dts/{nb6-ser-r0.dts => bcm6362_sfr_neufbox-6-sercomm-r0.dts} (96%)
 rename target/linux/brcm63xx/dts/{r1000h.dts => bcm6368_actiontec_r1000h.dts} (100%)
 rename target/linux/brcm63xx/dts/{av4202n.dts => bcm6368_adb_av4202n.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96368MVNgr.dts => bcm6368_brcm_bcm96368mvngr.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96368MVWG.dts => bcm6368_brcm_bcm96368mvwg.dts} (100%)
 rename target/linux/brcm63xx/dts/{vr-3025u.dts => bcm6368_comtrend_vr-3025u.dts} (100%)
 rename target/linux/brcm63xx/dts/{vr-3025un.dts => bcm6368_comtrend_vr-3025un.dts} (100%)
 rename target/linux/brcm63xx/dts/{vr-3026e.dts => bcm6368_comtrend_vr-3026e.dts} (100%)
 rename target/linux/brcm63xx/dts/{wap-5813n.dts => bcm6368_comtrend_wap-5813n.dts} (100%)
 rename target/linux/brcm63xx/dts/{hg622.dts => bcm6368_huawei_echolife-hg622.dts} (96%)
 rename target/linux/brcm63xx/dts/{hg655b.dts => bcm6368_huawei_echolife-hg655b.dts} (97%)
 rename target/linux/brcm63xx/dts/{dgnd3700v1.dts => bcm6368_netgear_dgnd3700-v1.dts} (98%)
 rename target/linux/brcm63xx/dts/{evg2000.dts => bcm6368_netgear_evg2000.dts} (100%)
 rename target/linux/brcm63xx/dts/{vh4032n.dts => bcm6368_observa_vh4032n.dts} (100%)
 rename target/linux/brcm63xx/dts/{p870hw-51a-v2.dts => bcm6368_zyxel_p870hw-51a-v2.dts} (100%)

diff --git a/target/linux/brcm63xx/dts/cvg834g.dts b/target/linux/brcm63xx/dts/bcm3368_netgear_cvg834g.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/cvg834g.dts
rename to target/linux/brcm63xx/dts/bcm3368_netgear_cvg834g.dts
diff --git a/target/linux/brcm63xx/dts/bcm96318ref_p300.dts b/target/linux/brcm63xx/dts/bcm6318_brcm_bcm96318ref-p300.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/bcm96318ref_p300.dts
rename to target/linux/brcm63xx/dts/bcm6318_brcm_bcm96318ref-p300.dts
index 99f8af2189..4edab6418c 100644
--- a/target/linux/brcm63xx/dts/bcm96318ref_p300.dts
+++ b/target/linux/brcm63xx/dts/bcm6318_brcm_bcm96318ref-p300.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Broadcom BCM96318REF_P300 reference board";
-	compatible = "brcm,bcm96318ref_p300", "brcm,bcm6318";
+	compatible = "brcm,bcm96318ref-p300", "brcm,bcm6318";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/bcm96318ref.dts b/target/linux/brcm63xx/dts/bcm6318_brcm_bcm96318ref.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96318ref.dts
rename to target/linux/brcm63xx/dts/bcm6318_brcm_bcm96318ref.dts
diff --git a/target/linux/brcm63xx/dts/ar-5315u.dts b/target/linux/brcm63xx/dts/bcm6318_comtrend_ar-5315u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/ar-5315u.dts
rename to target/linux/brcm63xx/dts/bcm6318_comtrend_ar-5315u.dts
diff --git a/target/linux/brcm63xx/dts/dsl-275xb-d.dts b/target/linux/brcm63xx/dts/bcm6318_d-link_dsl-275xb-d1.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/dsl-275xb-d.dts
rename to target/linux/brcm63xx/dts/bcm6318_d-link_dsl-275xb-d1.dts
index 2052a6e305..cf5b296cb7 100644
--- a/target/linux/brcm63xx/dts/dsl-275xb-d.dts
+++ b/target/linux/brcm63xx/dts/bcm6318_d-link_dsl-275xb-d1.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "D-Link DSL-2750B/DSL-2751 rev D1";
-	compatible = "d-link,dsl-275xb-d", "brcm,bcm6318";
+	compatible = "d-link,dsl-275xb-d1", "brcm,bcm6318";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/fast2704n.dts b/target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/fast2704n.dts
rename to target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts
index 33842cc646..3ceddd09a2 100644
--- a/target/linux/brcm63xx/dts/fast2704n.dts
+++ b/target/linux/brcm63xx/dts/bcm6318_sagem_fast-2704n.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Sagem F@ST2704N";
-	compatible = "sagem,f@st2704n", "brcm,bcm6318";
+	compatible = "sagem,fast-2704n", "brcm,bcm6318";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/bcm963268bu_p300.dts b/target/linux/brcm63xx/dts/bcm63268_brcm_bcm963268bu-p300.dts
similarity index 94%
rename from target/linux/brcm63xx/dts/bcm963268bu_p300.dts
rename to target/linux/brcm63xx/dts/bcm63268_brcm_bcm963268bu-p300.dts
index 57046a7878..b4176885ed 100644
--- a/target/linux/brcm63xx/dts/bcm963268bu_p300.dts
+++ b/target/linux/brcm63xx/dts/bcm63268_brcm_bcm963268bu-p300.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Broadcom BCM963268BU_P300 reference board";
-	compatible = "brcm,bcm963268bu_p300", "brcm,bcm63268";
+	compatible = "brcm,bcm963268bu-p300", "brcm,bcm63268";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/bcm963269bhr.dts b/target/linux/brcm63xx/dts/bcm63268_brcm_bcm963269bhr.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm963269bhr.dts
rename to target/linux/brcm63xx/dts/bcm63268_brcm_bcm963269bhr.dts
diff --git a/target/linux/brcm63xx/dts/vg50.dts b/target/linux/brcm63xx/dts/bcm63268_inteno_vg50.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/vg50.dts
rename to target/linux/brcm63xx/dts/bcm63268_inteno_vg50.dts
diff --git a/target/linux/brcm63xx/dts/sr102.dts b/target/linux/brcm63xx/dts/bcm63268_sky_sr102.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/sr102.dts
rename to target/linux/brcm63xx/dts/bcm63268_sky_sr102.dts
diff --git a/target/linux/brcm63xx/dts/a4001n.dts b/target/linux/brcm63xx/dts/bcm6328_adb_a4001n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/a4001n.dts
rename to target/linux/brcm63xx/dts/bcm6328_adb_a4001n.dts
diff --git a/target/linux/brcm63xx/dts/a4001n1.dts b/target/linux/brcm63xx/dts/bcm6328_adb_a4001n1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/a4001n1.dts
rename to target/linux/brcm63xx/dts/bcm6328_adb_a4001n1.dts
diff --git a/target/linux/brcm63xx/dts/bcm963281TAN.dts b/target/linux/brcm63xx/dts/bcm6328_brcm_bcm963281tan.dts
similarity index 95%
rename from target/linux/brcm63xx/dts/bcm963281TAN.dts
rename to target/linux/brcm63xx/dts/bcm6328_brcm_bcm963281tan.dts
index 956ca59d69..6fbac7d461 100644
--- a/target/linux/brcm63xx/dts/bcm963281TAN.dts
+++ b/target/linux/brcm63xx/dts/bcm6328_brcm_bcm963281tan.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Broadcom bcm963281TAN reference board";
-	compatible = "brcm,bcm963281TAN", "brcm,bcm6328";
+	compatible = "brcm,bcm963281tan", "brcm,bcm6328";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/bcm96328avng.dts b/target/linux/brcm63xx/dts/bcm6328_brcm_bcm96328avng.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96328avng.dts
rename to target/linux/brcm63xx/dts/bcm6328_brcm_bcm96328avng.dts
diff --git a/target/linux/brcm63xx/dts/ar-5381u.dts b/target/linux/brcm63xx/dts/bcm6328_comtrend_ar-5381u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/ar-5381u.dts
rename to target/linux/brcm63xx/dts/bcm6328_comtrend_ar-5381u.dts
diff --git a/target/linux/brcm63xx/dts/ar-5387un.dts b/target/linux/brcm63xx/dts/bcm6328_comtrend_ar-5387un.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/ar-5387un.dts
rename to target/linux/brcm63xx/dts/bcm6328_comtrend_ar-5387un.dts
diff --git a/target/linux/brcm63xx/dts/dsl-274xb-f.dts b/target/linux/brcm63xx/dts/bcm6328_d-link_dsl-274xb-f1.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/dsl-274xb-f.dts
rename to target/linux/brcm63xx/dts/bcm6328_d-link_dsl-274xb-f1.dts
index 1d09232ba5..f3fab05062 100644
--- a/target/linux/brcm63xx/dts/dsl-274xb-f.dts
+++ b/target/linux/brcm63xx/dts/bcm6328_d-link_dsl-274xb-f1.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "D-Link DSL-2740B/DSL-2741B rev F1";
-	compatible = "d-link,dsl-274xb-f", "brcm,bcm6328";
+	compatible = "d-link,dsl-274xb-f1", "brcm,bcm6328";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/r5010unv2.dts b/target/linux/brcm63xx/dts/bcm6328_nucom_r5010un-v2.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/r5010unv2.dts
rename to target/linux/brcm63xx/dts/bcm6328_nucom_r5010un-v2.dts
index a782126300..5084bd8877 100644
--- a/target/linux/brcm63xx/dts/r5010unv2.dts
+++ b/target/linux/brcm63xx/dts/bcm6328_nucom_r5010un-v2.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "NuCom R5010UN v2";
-	compatible = "nucom,r5010unv2", "brcm,bcm6328";
+	compatible = "nucom,r5010un-v2", "brcm,bcm6328";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/fast2704v2.dts b/target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/fast2704v2.dts
rename to target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts
index 1de853a025..1fe0d44810 100644
--- a/target/linux/brcm63xx/dts/fast2704v2.dts
+++ b/target/linux/brcm63xx/dts/bcm6328_sagem_fast-2704-v2.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Sagem F@ST2704V2";
-	compatible = "sagem,f@st2704v2", "brcm,bcm6328";
+	compatible = "sagem,fast-2704-v2", "brcm,bcm6328";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/ad1018-nor.dts b/target/linux/brcm63xx/dts/bcm6328_sercomm_ad1018-nor.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/ad1018-nor.dts
rename to target/linux/brcm63xx/dts/bcm6328_sercomm_ad1018-nor.dts
diff --git a/target/linux/brcm63xx/dts/bcm96338GW.dts b/target/linux/brcm63xx/dts/bcm6338_brcm_bcm96338gw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96338GW.dts
rename to target/linux/brcm63xx/dts/bcm6338_brcm_bcm96338gw.dts
diff --git a/target/linux/brcm63xx/dts/bcm96338W.dts b/target/linux/brcm63xx/dts/bcm6338_brcm_bcm96338w.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96338W.dts
rename to target/linux/brcm63xx/dts/bcm6338_brcm_bcm96338w.dts
diff --git a/target/linux/brcm63xx/dts/dsl-2640u.dts b/target/linux/brcm63xx/dts/bcm6338_d-link_dsl-2640u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/dsl-2640u.dts
rename to target/linux/brcm63xx/dts/bcm6338_d-link_dsl-2640u.dts
diff --git a/target/linux/brcm63xx/dts/rta1320.dts b/target/linux/brcm63xx/dts/bcm6338_dynalink_rta1320.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/rta1320.dts
rename to target/linux/brcm63xx/dts/bcm6338_dynalink_rta1320.dts
diff --git a/target/linux/brcm63xx/dts/bcm96345GW2.dts b/target/linux/brcm63xx/dts/bcm6345_brcm_bcm96345gw2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96345GW2.dts
rename to target/linux/brcm63xx/dts/bcm6345_brcm_bcm96345gw2.dts
diff --git a/target/linux/brcm63xx/dts/rta770bw.dts b/target/linux/brcm63xx/dts/bcm6345_dynalink_rta770bw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/rta770bw.dts
rename to target/linux/brcm63xx/dts/bcm6345_dynalink_rta770bw.dts
diff --git a/target/linux/brcm63xx/dts/rta770w.dts b/target/linux/brcm63xx/dts/bcm6345_dynalink_rta770w.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/rta770w.dts
rename to target/linux/brcm63xx/dts/bcm6345_dynalink_rta770w.dts
diff --git a/target/linux/brcm63xx/dts/ar1004g.dts b/target/linux/brcm63xx/dts/bcm6348_asmax_ar-1004g.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/ar1004g.dts
rename to target/linux/brcm63xx/dts/bcm6348_asmax_ar-1004g.dts
index ffda187fda..bf7b4a3ec4 100644
--- a/target/linux/brcm63xx/dts/ar1004g.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_asmax_ar-1004g.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "ASMAX AR 1004g";
-	compatible = "asmax,ar1004g", "brcm,bcm6348";
+	compatible = "asmax,ar-1004g", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/f5d7633.dts b/target/linux/brcm63xx/dts/bcm6348_belkin_f5d7633.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/f5d7633.dts
rename to target/linux/brcm63xx/dts/bcm6348_belkin_f5d7633.dts
diff --git a/target/linux/brcm63xx/dts/bcm96348GW-10.dts b/target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348gw-10.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96348GW-10.dts
rename to target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348gw-10.dts
diff --git a/target/linux/brcm63xx/dts/bcm96348GW-11.dts b/target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348gw-11.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96348GW-11.dts
rename to target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348gw-11.dts
diff --git a/target/linux/brcm63xx/dts/bcm96348GW.dts b/target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348gw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96348GW.dts
rename to target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348gw.dts
diff --git a/target/linux/brcm63xx/dts/bcm96348R.dts b/target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348r.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96348R.dts
rename to target/linux/brcm63xx/dts/bcm6348_brcm_bcm96348r.dts
diff --git a/target/linux/brcm63xx/dts/v2110.dts b/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2110.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/v2110.dts
rename to target/linux/brcm63xx/dts/bcm6348_bt_voyager-2110.dts
index a1b6c2177b..1eac7e3745 100644
--- a/target/linux/brcm63xx/dts/v2110.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2110.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "BT Voyager 2110";
-	compatible = "bt,v2110", "brcm,bcm6348";
+	compatible = "bt,voyager-2110", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/v2500v-bb.dts b/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/v2500v-bb.dts
rename to target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts
index 591d00d503..a77362f2f6 100644
--- a/target/linux/brcm63xx/dts/v2500v-bb.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_bt_voyager-2500v-bb.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "BT Voyager V2500V";
-	compatible = "bt,v2500v-bb", "brcm,bcm6348";
+	compatible = "bt,voyager-2500v-bb", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/ct-5365.dts b/target/linux/brcm63xx/dts/bcm6348_comtrend_ct-5365.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/ct-5365.dts
rename to target/linux/brcm63xx/dts/bcm6348_comtrend_ct-5365.dts
diff --git a/target/linux/brcm63xx/dts/ct536plus.dts b/target/linux/brcm63xx/dts/bcm6348_comtrend_ct-536plus.dts
similarity index 95%
rename from target/linux/brcm63xx/dts/ct536plus.dts
rename to target/linux/brcm63xx/dts/bcm6348_comtrend_ct-536plus.dts
index d6664ab81c..ead9bc3a20 100644
--- a/target/linux/brcm63xx/dts/ct536plus.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_comtrend_ct-536plus.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Comtrend CT-536+/CT-5621T";
-	compatible = "comtrend,ct-536+", "brcm,bcm6348";
+	compatible = "comtrend,ct-536plus", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/dsl-2640b-b.dts b/target/linux/brcm63xx/dts/bcm6348_d-link_dsl-2640b-b.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/dsl-2640b-b.dts
rename to target/linux/brcm63xx/dts/bcm6348_d-link_dsl-2640b-b.dts
diff --git a/target/linux/brcm63xx/dts/dv-201amr.dts b/target/linux/brcm63xx/dts/bcm6348_davolink_dv-201amr.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/dv-201amr.dts
rename to target/linux/brcm63xx/dts/bcm6348_davolink_dv-201amr.dts
diff --git a/target/linux/brcm63xx/dts/rta1025w.dts b/target/linux/brcm63xx/dts/bcm6348_dynalink_rta1025w.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/rta1025w.dts
rename to target/linux/brcm63xx/dts/bcm6348_dynalink_rta1025w.dts
diff --git a/target/linux/brcm63xx/dts/livebox-blue-5g.dts b/target/linux/brcm63xx/dts/bcm6348_inventel_livebox-1.dts
similarity index 95%
rename from target/linux/brcm63xx/dts/livebox-blue-5g.dts
rename to target/linux/brcm63xx/dts/bcm6348_inventel_livebox-1.dts
index 9d5c2e100b..6e80675ff7 100644
--- a/target/linux/brcm63xx/dts/livebox-blue-5g.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_inventel_livebox-1.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Inventel Livebox 1";
-	compatible = "inventel,livebox-blue-5g", "brcm,bcm6348";
+	compatible = "inventel,livebox-1", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/dg834g_v4.dts b/target/linux/brcm63xx/dts/bcm6348_netgear_dg834g-v4.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/dg834g_v4.dts
rename to target/linux/brcm63xx/dts/bcm6348_netgear_dg834g-v4.dts
diff --git a/target/linux/brcm63xx/dts/dg834gtpn.dts b/target/linux/brcm63xx/dts/bcm6348_netgear_dg834gt-pn.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/dg834gtpn.dts
rename to target/linux/brcm63xx/dts/bcm6348_netgear_dg834gt-pn.dts
index 32ab365a8d..f7e203227c 100644
--- a/target/linux/brcm63xx/dts/dg834gtpn.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_netgear_dg834gt-pn.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Netgear DG834GT/PN";
-	compatible = "netgear,dg834gtpn", "brcm,bcm6348";
+	compatible = "netgear,dg834gt-pn", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/fast2404.dts b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts
similarity index 93%
rename from target/linux/brcm63xx/dts/fast2404.dts
rename to target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts
index c9f75f389f..60b945555b 100644
--- a/target/linux/brcm63xx/dts/fast2404.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2404.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Sagem F@ST2404";
-	compatible = "sagem,f@st2404", "brcm,bcm6348";
+	compatible = "sagem,fast-2404", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/fast2604.dts b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/fast2604.dts
rename to target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts
index 52458a253f..a3394dd70d 100644
--- a/target/linux/brcm63xx/dts/fast2604.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_sagem_fast-2604.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Sagem F@ST2604";
-	compatible = "sagem,f@st2604", "brcm,bcm6348";
+	compatible = "sagem,fast-2604", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/spw500v.dts b/target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/spw500v.dts
rename to target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts
index 8ca6dddd10..aa2f337253 100644
--- a/target/linux/brcm63xx/dts/spw500v.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_t-com_speedport-w-500v.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "T-Com Speedport W500 V";
-	compatible = "t-com,spw500v", "brcm,bcm6348";
+	compatible = "t-com,speedport-w-500v", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/gw6000.dts b/target/linux/brcm63xx/dts/bcm6348_tecom_gw6000.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/gw6000.dts
rename to target/linux/brcm63xx/dts/bcm6348_tecom_gw6000.dts
diff --git a/target/linux/brcm63xx/dts/gw6200.dts b/target/linux/brcm63xx/dts/bcm6348_tecom_gw6200.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/gw6200.dts
rename to target/linux/brcm63xx/dts/bcm6348_tecom_gw6200.dts
diff --git a/target/linux/brcm63xx/dts/cpva502plus.dts b/target/linux/brcm63xx/dts/bcm6348_telsey_cpva502plus.dts
similarity index 95%
rename from target/linux/brcm63xx/dts/cpva502plus.dts
rename to target/linux/brcm63xx/dts/bcm6348_telsey_cpva502plus.dts
index db08e7a97d..71620bc655 100644
--- a/target/linux/brcm63xx/dts/cpva502plus.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_telsey_cpva502plus.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Telsey CPVA502+";
-	compatible = "telsey,cpva502+", "brcm,bcm6348";
+	compatible = "telsey,cpva502plus", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/magic.dts b/target/linux/brcm63xx/dts/bcm6348_telsey_magic.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/magic.dts
rename to target/linux/brcm63xx/dts/bcm6348_telsey_magic.dts
diff --git a/target/linux/brcm63xx/dts/td-w8900gb.dts b/target/linux/brcm63xx/dts/bcm6348_tp-link_td-w8900gb.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/td-w8900gb.dts
rename to target/linux/brcm63xx/dts/bcm6348_tp-link_td-w8900gb.dts
diff --git a/target/linux/brcm63xx/dts/usr9108.dts b/target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts
similarity index 94%
rename from target/linux/brcm63xx/dts/usr9108.dts
rename to target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts
index fd0d6d4bcd..35ce1b010d 100644
--- a/target/linux/brcm63xx/dts/usr9108.dts
+++ b/target/linux/brcm63xx/dts/bcm6348_usrobotics_usr9108.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "USRobotics 9108";
-	compatible = "usr,9108", "brcm,bcm6348";
+	compatible = "usrobotics,usr9108", "brcm,bcm6348";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/rg100a.dts b/target/linux/brcm63xx/dts/bcm6358_alcatel_rg100a.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/rg100a.dts
rename to target/linux/brcm63xx/dts/bcm6358_alcatel_rg100a.dts
diff --git a/target/linux/brcm63xx/dts/bcm96358VW.dts b/target/linux/brcm63xx/dts/bcm6358_brcm_bcm96358vw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96358VW.dts
rename to target/linux/brcm63xx/dts/bcm6358_brcm_bcm96358vw.dts
diff --git a/target/linux/brcm63xx/dts/bcm96358VW2.dts b/target/linux/brcm63xx/dts/bcm6358_brcm_bcm96358vw2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96358VW2.dts
rename to target/linux/brcm63xx/dts/bcm6358_brcm_bcm96358vw2.dts
diff --git a/target/linux/brcm63xx/dts/homehub2a.dts b/target/linux/brcm63xx/dts/bcm6358_bt_home-hub-2-a.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/homehub2a.dts
rename to target/linux/brcm63xx/dts/bcm6358_bt_home-hub-2-a.dts
index 836c43cae7..351b2945d3 100644
--- a/target/linux/brcm63xx/dts/homehub2a.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_bt_home-hub-2-a.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "BT Home Hub 2.0 Type A";
-	compatible = "thomson,homehub2a", "brcm,bcm6358";
+	compatible = "bt,home-hub-2-a", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/ct-6373.dts b/target/linux/brcm63xx/dts/bcm6358_comtrend_ct-6373.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/ct-6373.dts
rename to target/linux/brcm63xx/dts/bcm6358_comtrend_ct-6373.dts
diff --git a/target/linux/brcm63xx/dts/dsl-2650u.dts b/target/linux/brcm63xx/dts/bcm6358_d-link_dsl-2650u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/dsl-2650u.dts
rename to target/linux/brcm63xx/dts/bcm6358_d-link_dsl-2650u.dts
diff --git a/target/linux/brcm63xx/dts/dsl-274xb-c.dts b/target/linux/brcm63xx/dts/bcm6358_d-link_dsl-274xb-c2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/dsl-274xb-c.dts
rename to target/linux/brcm63xx/dts/bcm6358_d-link_dsl-274xb-c2.dts
diff --git a/target/linux/brcm63xx/dts/dva-g3810bn_tl.dts b/target/linux/brcm63xx/dts/bcm6358_d-link_dva-g3810bn-tl.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/dva-g3810bn_tl.dts
rename to target/linux/brcm63xx/dts/bcm6358_d-link_dva-g3810bn-tl.dts
index 95a627dfb2..fcf112a7e0 100644
--- a/target/linux/brcm63xx/dts/dva-g3810bn_tl.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_d-link_dva-g3810bn-tl.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "D-Link DVA-G3810BN/TL";
-	compatible = "d-link,dva-g3810bn/tl", "brcm,bcm6358";
+	compatible = "d-link,dva-g3810bn-tl", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/hg520v.dts b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg520v.dts
similarity index 94%
rename from target/linux/brcm63xx/dts/hg520v.dts
rename to target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg520v.dts
index ebbf1f3afe..2176ea88d2 100644
--- a/target/linux/brcm63xx/dts/hg520v.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg520v.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei EchoLife HG520v";
-	compatible = "huawei,hg520v", "brcm,bcm6358";
+	compatible = "huawei,echolife-hg520v", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/hg553.dts b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg553.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/hg553.dts
rename to target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg553.dts
index 92e5e48ac2..d23066866e 100644
--- a/target/linux/brcm63xx/dts/hg553.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg553.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei EchoLife HG553";
-	compatible = "huawei,hg553", "brcm,bcm6358";
+	compatible = "huawei,echolife-hg553", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/hg556a-a.dts b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-a.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/hg556a-a.dts
rename to target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-a.dts
index 018b913a88..1827e8e235 100644
--- a/target/linux/brcm63xx/dts/hg556a-a.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-a.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei EchoLife HG556a (version A)";
-	compatible = "huawei,hg556a-a", "brcm,bcm6358";
+	compatible = "huawei,echolife-hg556a-a", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/hg556a-b.dts b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-b.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/hg556a-b.dts
rename to target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-b.dts
index 034e736f01..fa804bef9e 100644
--- a/target/linux/brcm63xx/dts/hg556a-b.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-b.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei EchoLife HG556a (version B)";
-	compatible = "huawei,hg556a-b", "brcm,bcm6358";
+	compatible = "huawei,echolife-hg556a-b", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/hg556a-c.dts b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-c.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/hg556a-c.dts
rename to target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-c.dts
index 2e5aeb86e1..5ed847baab 100644
--- a/target/linux/brcm63xx/dts/hg556a-c.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_huawei_echolife-hg556a-c.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei EchoLife HG556a (version C)";
-	compatible = "huawei,hg556a-c", "brcm,bcm6358";
+	compatible = "huawei,echolife-hg556a-c", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/a226g.dts b/target/linux/brcm63xx/dts/bcm6358_pirelli_a226g.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/a226g.dts
rename to target/linux/brcm63xx/dts/bcm6358_pirelli_a226g.dts
diff --git a/target/linux/brcm63xx/dts/a226m-fwb.dts b/target/linux/brcm63xx/dts/bcm6358_pirelli_a226m-fwb.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/a226m-fwb.dts
rename to target/linux/brcm63xx/dts/bcm6358_pirelli_a226m-fwb.dts
diff --git a/target/linux/brcm63xx/dts/a226m.dts b/target/linux/brcm63xx/dts/bcm6358_pirelli_a226m.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/a226m.dts
rename to target/linux/brcm63xx/dts/bcm6358_pirelli_a226m.dts
diff --git a/target/linux/brcm63xx/dts/agpf-s0.dts b/target/linux/brcm63xx/dts/bcm6358_pirelli_agpf-s0.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/agpf-s0.dts
rename to target/linux/brcm63xx/dts/bcm6358_pirelli_agpf-s0.dts
diff --git a/target/linux/brcm63xx/dts/nb4-fxc-r1.dts b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/nb4-fxc-r1.dts
rename to target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts
index 33ad3ed82c..e1a3046c7f 100644
--- a/target/linux/brcm63xx/dts/nb4-fxc-r1.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-foxconn-r1.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "SFR Neuf Box 4 (Foxconn)";
-	compatible = "sfr,nb4-fxc-r1", "brcm,bcm6358";
+	compatible = "sfr,neufbox-4-foxconn-r1", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/nb4-ser-r0.dts b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/nb4-ser-r0.dts
rename to target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts
index 86cd31be60..b28aaa3fe7 100644
--- a/target/linux/brcm63xx/dts/nb4-ser-r0.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_sfr_neufbox-4-sercomm-r0.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "SFR Neuf Box 4 (Sercomm)";
-	compatible = "sfr,nb4-ser-r0", "brcm,bcm6358";
+	compatible = "sfr,neufbox-4-sercomm-r0", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/spw303v.dts b/target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/spw303v.dts
rename to target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts
index 04bbb5a112..68f8588f55 100644
--- a/target/linux/brcm63xx/dts/spw303v.dts
+++ b/target/linux/brcm63xx/dts/bcm6358_t-com_speedport-w-303v.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "T-Com Speedport W303 V";
-	compatible = "t-com,spw303v", "brcm,bcm6358";
+	compatible = "t-com,speedport-w-303v", "brcm,bcm6358";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/cpva642.dts b/target/linux/brcm63xx/dts/bcm6358_telsey_cpva642.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/cpva642.dts
rename to target/linux/brcm63xx/dts/bcm6358_telsey_cpva642.dts
diff --git a/target/linux/brcm63xx/dts/fast2504n.dts b/target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/fast2504n.dts
rename to target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts
index 293620664c..d1bf98a2b1 100644
--- a/target/linux/brcm63xx/dts/fast2504n.dts
+++ b/target/linux/brcm63xx/dts/bcm6362_sagem_fast-2504n.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Sagem F@ST2504n";
-	compatible = "sagem,f@st2504n", "brcm,bcm6362";
+	compatible = "sagem,fast-2504n", "brcm,bcm6362";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/nb6-ser-r0.dts b/target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/nb6-ser-r0.dts
rename to target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts
index 202386a770..a5184ff555 100644
--- a/target/linux/brcm63xx/dts/nb6-ser-r0.dts
+++ b/target/linux/brcm63xx/dts/bcm6362_sfr_neufbox-6-sercomm-r0.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "SFR neufbox 6 (Sercomm)";
-	compatible = "sfr,nb6-ser-r0", "brcm,bcm6362";
+	compatible = "sfr,neufbox-6-sercomm-r0", "brcm,bcm6362";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/r1000h.dts b/target/linux/brcm63xx/dts/bcm6368_actiontec_r1000h.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/r1000h.dts
rename to target/linux/brcm63xx/dts/bcm6368_actiontec_r1000h.dts
diff --git a/target/linux/brcm63xx/dts/av4202n.dts b/target/linux/brcm63xx/dts/bcm6368_adb_av4202n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/av4202n.dts
rename to target/linux/brcm63xx/dts/bcm6368_adb_av4202n.dts
diff --git a/target/linux/brcm63xx/dts/bcm96368MVNgr.dts b/target/linux/brcm63xx/dts/bcm6368_brcm_bcm96368mvngr.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96368MVNgr.dts
rename to target/linux/brcm63xx/dts/bcm6368_brcm_bcm96368mvngr.dts
diff --git a/target/linux/brcm63xx/dts/bcm96368MVWG.dts b/target/linux/brcm63xx/dts/bcm6368_brcm_bcm96368mvwg.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm96368MVWG.dts
rename to target/linux/brcm63xx/dts/bcm6368_brcm_bcm96368mvwg.dts
diff --git a/target/linux/brcm63xx/dts/vr-3025u.dts b/target/linux/brcm63xx/dts/bcm6368_comtrend_vr-3025u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/vr-3025u.dts
rename to target/linux/brcm63xx/dts/bcm6368_comtrend_vr-3025u.dts
diff --git a/target/linux/brcm63xx/dts/vr-3025un.dts b/target/linux/brcm63xx/dts/bcm6368_comtrend_vr-3025un.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/vr-3025un.dts
rename to target/linux/brcm63xx/dts/bcm6368_comtrend_vr-3025un.dts
diff --git a/target/linux/brcm63xx/dts/vr-3026e.dts b/target/linux/brcm63xx/dts/bcm6368_comtrend_vr-3026e.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/vr-3026e.dts
rename to target/linux/brcm63xx/dts/bcm6368_comtrend_vr-3026e.dts
diff --git a/target/linux/brcm63xx/dts/wap-5813n.dts b/target/linux/brcm63xx/dts/bcm6368_comtrend_wap-5813n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/wap-5813n.dts
rename to target/linux/brcm63xx/dts/bcm6368_comtrend_wap-5813n.dts
diff --git a/target/linux/brcm63xx/dts/hg622.dts b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts
similarity index 96%
rename from target/linux/brcm63xx/dts/hg622.dts
rename to target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts
index a7569a7808..36598645a3 100644
--- a/target/linux/brcm63xx/dts/hg622.dts
+++ b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg622.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei HG622";
-	compatible = "huawei,hg622", "brcm,bcm6368";
+	compatible = "huawei,echolife-hg622", "brcm,bcm6368";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/hg655b.dts b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts
similarity index 97%
rename from target/linux/brcm63xx/dts/hg655b.dts
rename to target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts
index f62f238510..10fdcc6fd1 100644
--- a/target/linux/brcm63xx/dts/hg655b.dts
+++ b/target/linux/brcm63xx/dts/bcm6368_huawei_echolife-hg655b.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Huawei HG655b";
-	compatible = "huawei,hg655b", "brcm,bcm6368";
+	compatible = "huawei,echolife-hg655b", "brcm,bcm6368";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/dgnd3700v1.dts b/target/linux/brcm63xx/dts/bcm6368_netgear_dgnd3700-v1.dts
similarity index 98%
rename from target/linux/brcm63xx/dts/dgnd3700v1.dts
rename to target/linux/brcm63xx/dts/bcm6368_netgear_dgnd3700-v1.dts
index b6aec06e6b..0354d8eddd 100644
--- a/target/linux/brcm63xx/dts/dgnd3700v1.dts
+++ b/target/linux/brcm63xx/dts/bcm6368_netgear_dgnd3700-v1.dts
@@ -6,7 +6,7 @@
 
 / {
 	model = "Netgear DGND3700v1/DGND3800B";
-	compatible = "netgear,dgnd3700v1", "brcm,bcm6368";
+	compatible = "netgear,dgnd3700-v1", "brcm,bcm6368";
 
 	chosen {
 		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
diff --git a/target/linux/brcm63xx/dts/evg2000.dts b/target/linux/brcm63xx/dts/bcm6368_netgear_evg2000.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/evg2000.dts
rename to target/linux/brcm63xx/dts/bcm6368_netgear_evg2000.dts
diff --git a/target/linux/brcm63xx/dts/vh4032n.dts b/target/linux/brcm63xx/dts/bcm6368_observa_vh4032n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/vh4032n.dts
rename to target/linux/brcm63xx/dts/bcm6368_observa_vh4032n.dts
diff --git a/target/linux/brcm63xx/dts/p870hw-51a-v2.dts b/target/linux/brcm63xx/dts/bcm6368_zyxel_p870hw-51a-v2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/p870hw-51a-v2.dts
rename to target/linux/brcm63xx/dts/bcm6368_zyxel_p870hw-51a-v2.dts
diff --git a/target/linux/brcm63xx/image/Makefile b/target/linux/brcm63xx/image/Makefile
index 1cf64bd8e7..3d5579a20a 100644
--- a/target/linux/brcm63xx/image/Makefile
+++ b/target/linux/brcm63xx/image/Makefile
@@ -161,6 +161,8 @@ define Device/Default
   KERNEL_DEPENDS = $$(wildcard ../dts/$$(DEVICE_DTS).dts)
   KERNEL_INITRAMFS_SUFFIX := .elf
   DEVICE_DTS_DIR := ../dts
+  SOC = bcm$$(CFE_CHIP_ID)
+  DEVICE_DTS = $$(SOC)_$(1)
 endef
 
 ATH5K_PACKAGES := kmod-ath5k wpad-basic
diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/brcm63xx/image/bcm63xx.mk
index 2c8ac3e169..aa68befc13 100644
--- a/target/linux/brcm63xx/image/bcm63xx.mk
+++ b/target/linux/brcm63xx/image/bcm63xx.mk
@@ -55,148 +55,134 @@ endef
 DEVICE_VARS += REDBOOT_PREFIX
 
 ### Generic ###
-define Device/963281TAN-generic
+define Device/brcm_bcm963281tan
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 963281TAN
   IMAGES := cfe-4M.bin cfe-8M.bin cfe-16M.bin
-  DEVICE_DTS := bcm963281TAN
   CFE_BOARD_ID := 963281TAN
   CFE_CHIP_ID := 6328
 endef
-TARGET_DEVICES += 963281TAN-generic
+TARGET_DEVICES += brcm_bcm963281tan
 
-define Device/96328avng-generic
+define Device/brcm_bcm96328avng
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96328avng
   IMAGES := cfe-4M.bin cfe-8M.bin cfe-16M.bin
-  DEVICE_DTS := bcm96328avng
   CFE_BOARD_ID := 96328avng
   CFE_CHIP_ID := 6328
 endef
-TARGET_DEVICES += 96328avng-generic
+TARGET_DEVICES += brcm_bcm96328avng
 
-define Device/96338GW-generic
+define Device/brcm_bcm96338gw
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96338GW
-  DEVICE_DTS := bcm96338GW
   CFE_BOARD_ID := 6338GW
   CFE_CHIP_ID := 6338
 endef
-TARGET_DEVICES += 96338GW-generic
+TARGET_DEVICES += brcm_bcm96338gw
 
-define Device/96338W-generic
+define Device/brcm_bcm96338w
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96338W
-  DEVICE_DTS := bcm96338W
   CFE_BOARD_ID := 6338W
   CFE_CHIP_ID := 6338
 endef
-TARGET_DEVICES += 96338W-generic
+TARGET_DEVICES += brcm_bcm96338w
 
-define Device/96345GW2-generic
+define Device/brcm_bcm96345gw2
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96345GW2
   IMAGES += cfe-bc221.bin
-  DEVICE_DTS := bcm96345GW2
   CFE_BOARD_ID := 96345GW2
   CFE_CHIP_ID := 6345
   DEFAULT := n
 endef
-TARGET_DEVICES += 96345GW2-generic
+TARGET_DEVICES += brcm_bcm96345gw2
 
-define Device/96348GW-generic
+define Device/brcm_bcm96348gw
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96348GW
   IMAGES += cfe-bc221.bin
-  DEVICE_DTS := bcm96348GW
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
 endef
-TARGET_DEVICES += 96348GW-generic
+TARGET_DEVICES += brcm_bcm96348gw
 
-define Device/96348GW-10-generic
+define Device/brcm_bcm96348gw-10
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96348GW-10
-  DEVICE_DTS := bcm96348GW-10
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
 endef
-TARGET_DEVICES += 96348GW-10-generic
+TARGET_DEVICES += brcm_bcm96348gw-10
 
-define Device/96348GW-11-generic
+define Device/brcm_bcm96348gw-11
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96348GW-11
-  DEVICE_DTS := bcm96348GW-11
   CFE_BOARD_ID := 96348GW-11
   CFE_CHIP_ID := 6348
 endef
-TARGET_DEVICES += 96348GW-11-generic
+TARGET_DEVICES += brcm_bcm96348gw-11
 
-define Device/96348R-generic
+define Device/brcm_bcm96348r
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96348R
-  DEVICE_DTS := bcm96348R
   CFE_BOARD_ID := 96348R
   CFE_CHIP_ID := 6348
 endef
-TARGET_DEVICES += 96348R-generic
+TARGET_DEVICES += brcm_bcm96348r
 
-define Device/96358VW-generic
+define Device/brcm_bcm96358vw
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96358VW
-  DEVICE_DTS := bcm96358VW
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
 endef
-TARGET_DEVICES += 96358VW-generic
+TARGET_DEVICES += brcm_bcm96358vw
 
-define Device/96358VW2-generic
+define Device/brcm_bcm96358vw2
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96358VW2
-  DEVICE_DTS := bcm96358VW2
   CFE_BOARD_ID := 96358VW2
   CFE_CHIP_ID := 6358
 endef
-TARGET_DEVICES += 96358VW2-generic
+TARGET_DEVICES += brcm_bcm96358vw2
 
-define Device/96368MVNgr-generic
+define Device/brcm_bcm96368mvngr
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96368MVNgr
-  DEVICE_DTS := bcm96368MVNgr
   CFE_BOARD_ID := 96368MVNgr
   CFE_CHIP_ID := 6368
 endef
-TARGET_DEVICES += 96368MVNgr-generic
+TARGET_DEVICES += brcm_bcm96368mvngr
 
-define Device/96368MVWG-generic
+define Device/brcm_bcm96368mvwg
   $(Device/bcm63xx)
   DEVICE_VENDOR := Generic
   DEVICE_MODEL := 96368MVWG
-  DEVICE_DTS := bcm96368MVWG
   CFE_BOARD_ID := 96368MVWG
   CFE_CHIP_ID := 6368
 endef
-TARGET_DEVICES += 96368MVWG-generic
+TARGET_DEVICES += brcm_bcm96368mvwg
 
 ### Actiontec ###
-define Device/R1000H
+define Device/actiontec_r1000h
   $(Device/bcm63xx)
   DEVICE_VENDOR := Actiontec
   DEVICE_MODEL := R1000H
   FILESYSTEMS := squashfs
-  DEVICE_DTS := r1000h
   CFE_BOARD_ID := 96368MVWG
   CFE_CHIP_ID := 6368
   FLASH_MB := 32
@@ -204,83 +190,77 @@ define Device/R1000H
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) $(BRCMWL_PACKAGES)
 endef
-TARGET_DEVICES += R1000H
+TARGET_DEVICES += actiontec_r1000h
 
 ### ADB ###
-define Device/A4001N
+define Device/adb_a4001n
   $(Device/bcm63xx)
   DEVICE_VENDOR := ADB
   DEVICE_MODEL := P.DG A4001N
-  DEVICE_DTS := a4001n
   CFE_BOARD_ID := 96328dg2x2
   CFE_CHIP_ID := 6328
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
-TARGET_DEVICES += A4001N
+TARGET_DEVICES += adb_a4001n
 
-define Device/A4001N1
+define Device/adb_a4001n1
   $(Device/bcm63xx)
   DEVICE_VENDOR := ADB
   DEVICE_MODEL := P.DG A4001N1
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := a4001n1
   CFE_BOARD_ID := 963281T_TEF
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
-TARGET_DEVICES += A4001N1
+TARGET_DEVICES += adb_a4001n1
 
-define Device/AV4202N
+define Device/adb_av4202n
   $(Device/bcm63xx)
   DEVICE_VENDOR := ADB
   DEVICE_MODEL := P.DG AV4202N
   IMAGE_OFFSET := 0x20000
-  DEVICE_DTS := av4202n
   CFE_BOARD_ID := 96368_Swiss_S1
   CFE_CHIP_ID := 6368
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
-TARGET_DEVICES += AV4202N
+TARGET_DEVICES += adb_av4202n
 
 ### Alcatel ###
-define Device/RG100A
+define Device/alcatel_rg100a
   $(Device/bcm63xx)
   DEVICE_VENDOR := Alcatel
   DEVICE_MODEL := RG100A
-  DEVICE_DTS := rg100a
   CFE_BOARD_ID := 96358VW2
   CFE_CHIP_ID := 6358
   BLOCK_SIZE := 0x20000
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) $(B43_PACKAGES)
 endef
-TARGET_DEVICES += RG100A
+TARGET_DEVICES += alcatel_rg100a
 
 ### Asmax ###
-define Device/AR1004G
+define Device/asmax_ar-1004g
   $(Device/bcm63xx)
   DEVICE_VENDOR := Asmax
   DEVICE_MODEL := AR 1004g
-  DEVICE_DTS := ar1004g
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += AR1004G
+TARGET_DEVICES += asmax_ar-1004g
 
 ### Belkin ###
-define Device/F5D7633
+define Device/belkin_f5d7633
   $(Device/bcm63xx)
   DEVICE_VENDOR := Belkin
   DEVICE_MODEL := F5D7633
-  DEVICE_DTS := f5d7633
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
   BLOCK_SIZE := 0x20000
@@ -288,85 +268,79 @@ define Device/F5D7633
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += F5D7633
+TARGET_DEVICES += belkin_f5d7633
 
 ### Broadcom ###
-define Device/BCM96318REF
+define Device/brcm_bcm96318ref
   $(Device/bcm63xx)
   DEVICE_VENDOR := Broadcom
   DEVICE_MODEL := BCM96318REF reference board
   IMAGES :=
-  DEVICE_DTS := bcm96318ref
   CFE_BOARD_ID := 96318REF
   CFE_CHIP_ID := 6318
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES) \
     kmod-bcm63xx-udc
 endef
-TARGET_DEVICES += BCM96318REF
+TARGET_DEVICES += brcm_bcm96318ref
 
-define Device/BCM96318REF_P300
+define Device/brcm_bcm96318ref-p300
   $(Device/bcm63xx)
   DEVICE_VENDOR := Broadcom
   DEVICE_MODEL := BCM96318REF_P300 reference board
   IMAGES :=
-  DEVICE_DTS := bcm96318ref_p300
   CFE_BOARD_ID := 96318REF_P300
   CFE_CHIP_ID := 6318
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES) \
     kmod-bcm63xx-udc
 endef
-TARGET_DEVICES += BCM96318REF_P300
+TARGET_DEVICES += brcm_bcm96318ref-p300
 
-define Device/BCM963268BU_P300
+define Device/brcm_bcm963268bu-p300
   $(Device/bcm63xx)
   DEVICE_VENDOR := Broadcom
   DEVICE_MODEL := BCM963268BU_P300 reference board
   IMAGES :=
-  DEVICE_DTS := bcm963268bu_p300
   CFE_BOARD_ID := 963268BU_P300
   CFE_CHIP_ID := 63268
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) \
     kmod-bcm63xx-udc
 endef
-TARGET_DEVICES += BCM963268BU_P300
+TARGET_DEVICES += brcm_bcm963268bu-p300
 
-define Device/BCM963269BHR
+define Device/brcm_bcm963269bhr
   $(Device/bcm63xx)
   DEVICE_VENDOR := Broadcom
   DEVICE_MODEL := BCM963269BHR reference board
   IMAGES :=
-  DEVICE_DTS := bcm963269bhr
   CFE_BOARD_ID := 963269BHR
   CFE_CHIP_ID := 63268
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES) \
     kmod-bcm63xx-udc
 endef
-TARGET_DEVICES += BCM963269BHR
+TARGET_DEVICES += brcm_bcm963269bhr
 
 ### BT ###
-define Device/HomeHub2A
+define Device/bt_home-hub-2-a
   $(Device/bcm63xx)
   DEVICE_VENDOR := BT
   DEVICE_MODEL := Home Hub 2.0
   DEVICE_VARIANT := A
-  DEVICE_DTS := homehub2a
   CFE_BOARD_ID := HOMEHUB2A
   CFE_CHIP_ID := 6358
   BLOCK_SIZE := 0x20000
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HomeHub2A
+TARGET_DEVICES += bt_home-hub-2-a
 
-define Device/BTV2110
+define Device/bt_voyager-2110
   $(Device/bcm63xx)
   DEVICE_VENDOR := BT
-  DEVICE_MODEL := Voyager V2110
-  DEVICE_DTS := v2110
+  DEVICE_MODEL := Voyager 2110
   CFE_BOARD_ID := V2110
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --layoutver 5
@@ -374,13 +348,12 @@ define Device/BTV2110
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += BTV2110
+TARGET_DEVICES += bt_voyager-2110
 
-define Device/BTV2500V
+define Device/bt_voyager-2500v-bb
   $(Device/bcm63xx)
   DEVICE_VENDOR := BT
-  DEVICE_MODEL := Voyager V2500V
-  DEVICE_DTS := v2500v-bb
+  DEVICE_MODEL := Voyager 2500V
   CFE_BOARD_ID := V2500V_BB
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --layoutver 5
@@ -388,97 +361,90 @@ define Device/BTV2500V
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += BTV2500V
+TARGET_DEVICES += bt_voyager-2500v-bb
 
 ### Comtrend ###
-define Device/AR5315u
+define Device/comtrend_ar-5315u
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := AR-5315u
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := ar-5315u
   CFE_BOARD_ID := 96318A-1441N1
   CFE_CHIP_ID := 6318
   FLASH_MB := 16
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += AR5315u
+TARGET_DEVICES += comtrend_ar-5315u
 
-define Device/AR5381u
+define Device/comtrend_ar-5381u
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := AR-5381u
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := ar-5381u
   CFE_BOARD_ID := 96328A-1241N
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += AR5381u
+TARGET_DEVICES += comtrend_ar-5381u
 
-define Device/AR5387un
+define Device/comtrend_ar-5387un
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := AR-5387un
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := ar-5387un
   CFE_BOARD_ID := 96328A-1441N1
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += AR5387un
+TARGET_DEVICES += comtrend_ar-5387un
 
-define Device/CT-536_CT-5621
+define Device/comtrend_ct-536plus
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := CT-536+
   DEVICE_ALT0_VENDOR := Comtrend
   DEVICE_ALT0_MODEL := CT-5621
-  DEVICE_DTS := ct536plus
   CFE_BOARD_ID := 96348GW-11
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += CT-536_CT-5621
+TARGET_DEVICES += comtrend_ct-536plus
 
-define Device/CT-5365
+define Device/comtrend_ct-5365
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := CT-5365
-  DEVICE_DTS := ct-5365
   CFE_BOARD_ID := 96348A-122
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += CT-5365
+TARGET_DEVICES += comtrend_ct-5365
 
-define Device/CT-6373
+define Device/comtrend_ct-6373
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := CT-6373
-  DEVICE_DTS := ct-6373
   CFE_BOARD_ID := CT6373-1
   CFE_CHIP_ID := 6358
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += CT-6373
+TARGET_DEVICES += comtrend_ct-6373
 
-define Device/VR-3025u
+define Device/comtrend_vr-3025u
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := VR-3025u
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := vr-3025u
   CFE_BOARD_ID := 96368M-1541N
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
@@ -486,91 +452,85 @@ define Device/VR-3025u
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += VR-3025u
+TARGET_DEVICES += comtrend_vr-3025u
 
-define Device/VR-3025un
+define Device/comtrend_vr-3025un
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := VR-3025un
-  DEVICE_DTS := vr-3025un
   CFE_BOARD_ID := 96368M-1341N
   CFE_CHIP_ID := 6368
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += VR-3025un
+TARGET_DEVICES += comtrend_vr-3025un
 
-define Device/VR-3026e
+define Device/comtrend_vr-3026e
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := VR-3026e
-  DEVICE_DTS := vr-3026e
   CFE_BOARD_ID := 96368MT-1341N1
   CFE_CHIP_ID := 6368
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += VR-3026e
+TARGET_DEVICES += comtrend_vr-3026e
 
-define Device/WAP-5813n
+define Device/comtrend_wap-5813n
   $(Device/bcm63xx)
   DEVICE_VENDOR := Comtrend
   DEVICE_MODEL := WAP-5813n
-  DEVICE_DTS := wap-5813n
   CFE_BOARD_ID := 96369R-1231N
   CFE_CHIP_ID := 6368
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += WAP-5813n
+TARGET_DEVICES += comtrend_wap-5813n
 
 ### D-Link ###
-define Device/DSL2640B-B
+define Device/d-link_dsl-2640b-b
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2640B
   DEVICE_VARIANT := B2
-  DEVICE_DTS := dsl-2640b-b
   CFE_BOARD_ID := D-4P-W
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += DSL2640B-B
+TARGET_DEVICES += d-link_dsl-2640b-b
 
-define Device/DSL2640U
+define Device/d-link_dsl-2640u
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2640U
   DEVICE_VARIANT := C1
   DEVICE_ALT0_VENDOR := D-Link
   DEVICE_ALT0_MODEL := DSL-2640U/BRU/C
-  DEVICE_DTS := dsl-2640u
   CFE_BOARD_ID := 96338W2_E7T
   CFE_CHIP_ID := 6338
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += DSL2640U
+TARGET_DEVICES += d-link_dsl-2640u
 
-define Device/DSL2650U
+define Device/d-link_dsl-2650u
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2650U
-  DEVICE_DTS := dsl-2650u
   CFE_BOARD_ID := 96358VW2
   CFE_CHIP_ID := 6358
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += DSL2650U
+TARGET_DEVICES += d-link_dsl-2650u
 
-define Device/DSL274XB-C2
+define Device/d-link_dsl-274xb-c2
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2740B
@@ -578,15 +538,14 @@ define Device/DSL274XB-C2
   DEVICE_ALT0_VENDOR := D-Link
   DEVICE_ALT0_MODEL := DSL-2741B
   DEVICE_ALT0_VARIANT := C2
-  DEVICE_DTS := dsl-274xb-c
   CFE_BOARD_ID := 96358GW
   CFE_CHIP_ID := 6358
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += DSL274XB-C2
+TARGET_DEVICES += d-link_dsl-274xb-c2
 
-define Device/DSL274XB-C3
+define Device/d-link_dsl-274xb-c3
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2740B
@@ -594,15 +553,15 @@ define Device/DSL274XB-C3
   DEVICE_ALT0_VENDOR := D-Link
   DEVICE_ALT0_MODEL := DSL-2741B
   DEVICE_ALT0_VARIANT := C3
-  DEVICE_DTS := dsl-274xb-c
+  DEVICE_DTS := bcm6358_d-link_dsl-274xb-c2
   CFE_BOARD_ID := AW4139
   CFE_CHIP_ID := 6358
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += DSL274XB-C3
+TARGET_DEVICES += d-link_dsl-274xb-c3
 
-define Device/DSL274XB-F1
+define Device/d-link_dsl-274xb-f1
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2740B
@@ -610,7 +569,6 @@ define Device/DSL274XB-F1
   DEVICE_ALT0_VENDOR := D-Link
   DEVICE_ALT0_MODEL := DSL-2741B
   DEVICE_ALT0_VARIANT := F1
-  DEVICE_DTS := dsl-274xb-f
   CFE_BOARD_ID := AW4339U
   CFE_CHIP_ID := 6328
   IMAGES := cfe-EU.bin cfe-AU.bin
@@ -619,9 +577,9 @@ define Device/DSL274XB-F1
   DEVICE_PACKAGES := \
     $(ATH9K_PACKAGES)
 endef
-TARGET_DEVICES += DSL274XB-F1
+TARGET_DEVICES += d-link_dsl-274xb-f1
 
-define Device/DSL275XB-D1
+define Device/d-link_dsl-275xb-d1
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DSL-2750B
@@ -629,51 +587,47 @@ define Device/DSL275XB-D1
   DEVICE_ALT0_VENDOR := D-Link
   DEVICE_ALT0_MODEL := DSL-2751
   DEVICE_ALT0_VARIANT := D1
-  DEVICE_DTS := dsl-275xb-d
   CFE_BOARD_ID := AW5200B
   CFE_CHIP_ID := 6318
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += DSL275XB-D1
+TARGET_DEVICES += d-link_dsl-275xb-d1
 
-define Device/DVAG3810BN
+define Device/d-link_dva-g3810bn-tl
   $(Device/bcm63xx)
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DVA-G3810BN/TL
-  DEVICE_DTS := dva-g3810bn_tl
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += DVAG3810BN
+TARGET_DEVICES += d-link_dva-g3810bn-tl
 
 ### Davolink ###
-define Device/DV-201AMR
+define Device/davolink_dv-201amr
   $(Device/bcm63xx)
   DEVICE_VENDOR := Davolink
   DEVICE_MODEL := DV-201AMR
   IMAGES := cfe-old.bin
-  DEVICE_DTS := dv-201amr
   CFE_BOARD_ID := DV201AMR
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += DV-201AMR
+TARGET_DEVICES += davolink_dv-201amr
 
 ### Dynalink ###
-define Device/RTA770BW
+define Device/dynalink_rta770bw
   $(Device/bcm63xx)
   DEVICE_VENDOR := Dynalink
   DEVICE_MODEL := RTA770BW
   DEVICE_ALT0_VENDOR := Siemens
   DEVICE_ALT0_MODEL := SE515
   IMAGES =
-  DEVICE_DTS := rta770bw
   CFE_BOARD_ID := RTA770BW
   CFE_CHIP_ID := 6345
   CFE_EXTRAS += --layoutver 5
@@ -681,14 +635,13 @@ define Device/RTA770BW
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += RTA770BW
+TARGET_DEVICES += dynalink_rta770bw
 
-define Device/RTA770W
+define Device/dynalink_rta770w
   $(Device/bcm63xx)
   DEVICE_VENDOR := Dynalink
   DEVICE_MODEL := RTA770W
   IMAGES =
-  DEVICE_DTS := rta770w
   CFE_BOARD_ID := RTA770W
   CFE_CHIP_ID := 6345
   CFE_EXTRAS += --layoutver 5
@@ -696,13 +649,12 @@ define Device/RTA770W
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += RTA770W
+TARGET_DEVICES += dynalink_rta770w
 
-define Device/RTA1025W_16
+define Device/dynalink_rta1025w
   $(Device/bcm63xx)
   DEVICE_VENDOR := Dynalink
   DEVICE_MODEL := RTA1025W
-  DEVICE_DTS := rta1025w
   CFE_BOARD_ID := RTA1025W_16
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --layoutver 5
@@ -710,39 +662,36 @@ define Device/RTA1025W_16
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += RTA1025W_16
+TARGET_DEVICES += dynalink_rta1025w
 
-define Device/RTA1320_16M
+define Device/dynalink_rta1320
   $(Device/bcm63xx)
   DEVICE_VENDOR := Dynalink
   DEVICE_MODEL := RTA1320
-  DEVICE_DTS := rta1320
   CFE_BOARD_ID := RTA1320_16M
   CFE_CHIP_ID := 6338
   CFE_EXTRAS += --layoutver 5
   DEFAULT := n
 endef
-TARGET_DEVICES += RTA1320_16M
+TARGET_DEVICES += dynalink_rta1320
 
 ### Huawei ###
-define Device/HG520v
+define Device/huawei_echolife-hg520v
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG520v
-  DEVICE_DTS := hg520v
   CFE_BOARD_ID := HW6358GW_B
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG520v"
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += HG520v
+TARGET_DEVICES += huawei_echolife-hg520v
 
-define Device/HG553
+define Device/huawei_echolife-hg553
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG553
-  DEVICE_DTS := hg553
   CFE_BOARD_ID := HW553
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG553" --tag-version 7
@@ -750,15 +699,14 @@ define Device/HG553
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HG553
+TARGET_DEVICES += huawei_echolife-hg553
 
-define Device/HG556a-A
+define Device/huawei_echolife-hg556a-a
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG556a
   DEVICE_VARIANT := A
   DEVICE_DESCRIPTION = Build firmware images for Huawei HG556a version A (Atheros)
-  DEVICE_DTS := hg556a-a
   CFE_BOARD_ID := HW556
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG556a" --tag-version 8
@@ -766,15 +714,14 @@ define Device/HG556a-A
   DEVICE_PACKAGES := \
     $(ATH9K_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HG556a-A
+TARGET_DEVICES += huawei_echolife-hg556a-a
 
-define Device/HG556a-B
+define Device/huawei_echolife-hg556a-b
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG556a
   DEVICE_VARIANT := B
   DEVICE_DESCRIPTION = Build firmware images for Huawei HG556a version B (Atheros)
-  DEVICE_DTS := hg556a-b
   CFE_BOARD_ID := HW556
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG556a" --tag-version 8
@@ -782,15 +729,14 @@ define Device/HG556a-B
   DEVICE_PACKAGES := \
     $(ATH9K_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HG556a-B
+TARGET_DEVICES += huawei_echolife-hg556a-b
 
-define Device/HG556a-C
+define Device/huawei_echolife-hg556a-c
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG556a
   DEVICE_VARIANT := C
   DEVICE_DESCRIPTION = Build firmware images for Huawei HG556a version C (Ralink)
-  DEVICE_DTS := hg556a-c
   CFE_BOARD_ID := HW556
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "EchoLife_HG556a" --tag-version 8
@@ -798,14 +744,13 @@ define Device/HG556a-C
   DEVICE_PACKAGES := \
     $(RT28_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HG556a-C
+TARGET_DEVICES += huawei_echolife-hg556a-c
 
-define Device/HG622
+define Device/huawei_echolife-hg622
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG622
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := hg622
   CFE_BOARD_ID := 96368MVWG_hg622
   CFE_CHIP_ID := 6368
   CFE_EXTRAS += --tag-version 7
@@ -814,13 +759,12 @@ define Device/HG622
   DEVICE_PACKAGES := \
     $(RT28_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HG622
+TARGET_DEVICES += huawei_echolife-hg622
 
-define Device/HG655b
+define Device/huawei_echolife-hg655b
   $(Device/bcm63xx)
   DEVICE_VENDOR := Huawei
   DEVICE_MODEL := EchoLife HG655b
-  DEVICE_DTS := hg655b
   CFE_BOARD_ID := HW65x
   CFE_CHIP_ID := 6368
   CFE_EXTRAS += --tag-version 7
@@ -829,81 +773,77 @@ define Device/HG655b
   DEVICE_PACKAGES := \
     $(RT28_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += HG655b
+TARGET_DEVICES += huawei_echolife-hg655b
 
 ### Inteno ###
-define Device/VG50
+define Device/inteno_vg50
   $(Device/bcm63xx)
   DEVICE_VENDOR := Inteno
   DEVICE_MODEL := VG50 Multi-WAN CPE
   IMAGES :=
-  DEVICE_DTS := vg50
   CFE_BOARD_ID := VW6339GU
   CFE_CHIP_ID := 63268
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += VG50
+TARGET_DEVICES += inteno_vg50
 
 ### Inventel ###
-define Device/livebox
+define Device/inventel_livebox-1
   $(Device/bcm63xx_redboot)
   DEVICE_VENDOR := Inventel
   DEVICE_MODEL := Livebox 1
-  DEVICE_DTS := livebox-blue-5g
+  SOC := bcm6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB1_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += livebox
+TARGET_DEVICES += inventel_livebox-1
 
 ### Netgear ###
-define Device/CVG834G
+define Device/netgear_cvg834g
   $(Device/bcm33xx)
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := CVG834G
-  DEVICE_DTS := cvg834g
+  SOC := bcm3368
   HCS_MAGIC_BYTES := 0xa020
   HCS_REV_MIN := 0001
   HCS_REV_MAJ := 0022
 endef
-TARGET_DEVICES += CVG834G
+TARGET_DEVICES += netgear_cvg834g
 
-define Device/DG834GT_PN
+define Device/netgear_dg834gt-pn
   $(Device/bcm63xx)
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := DG834GT
   DEVICE_ALT0_VENDOR := NETGEAR
   DEVICE_ALT0_MODEL := DG834PN
-  DEVICE_DTS := dg834gtpn
   CFE_BOARD_ID := 96348GW-10
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(ATH5K_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += DG834GT_PN
+TARGET_DEVICES += netgear_dg834gt-pn
 
-define Device/DG834GTv4
+define Device/netgear_dg834g-v4
   $(Device/bcm63xx)
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := DG834G
   DEVICE_VARIANT := v4
   IMAGES :=
-  DEVICE_DTS := dg834g_v4
   CFE_BOARD_ID := 96348W3
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += DG834GTv4
+TARGET_DEVICES += netgear_dg834g-v4
 
-define Device/DGND3700v1
+define Device/netgear_dgnd3700-v1
   $(Device/bcm63xx_netgear)
   DEVICE_MODEL := DGND3700
   DEVICE_VARIANT := v1
-  DEVICE_DTS := dgnd3700v1
   CFE_BOARD_ID := 96368MVWG
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
@@ -912,12 +852,12 @@ define Device/DGND3700v1
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += DGND3700v1
+TARGET_DEVICES += netgear_dgnd3700-v1
 
-define Device/DGND3800B
+define Device/netgear_dgnd3800b
   $(Device/bcm63xx_netgear)
   DEVICE_MODEL := DGND3800B
-  DEVICE_DTS := dgnd3700v1
+  DEVICE_DTS := bcm6368_netgear_dgnd3700-v1
   CFE_BOARD_ID := 96368MVWG
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
@@ -926,12 +866,11 @@ define Device/DGND3800B
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += DGND3800B
+TARGET_DEVICES += netgear_dgnd3800b
 
-define Device/EVG2000
+define Device/netgear_evg2000
   $(Device/bcm63xx_netgear)
   DEVICE_MODEL := EVG2000
-  DEVICE_DTS := evg2000
   CFE_BOARD_ID := 96369PVG
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
@@ -940,31 +879,29 @@ define Device/EVG2000
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += EVG2000
+TARGET_DEVICES += netgear_evg2000
 
 ### NuCom ###
-define Device/R5010UNv2
+define Device/nucom_r5010un-v2
   $(Device/bcm63xx)
   DEVICE_VENDOR := NuCom
   DEVICE_MODEL := R5010UN
   DEVICE_VARIANT := v2
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := r5010unv2
   CFE_BOARD_ID := 96328ang
   CFE_CHIP_ID := 6328
   FLASH_MB := 16
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += R5010UNv2
+TARGET_DEVICES += nucom_r5010un-v2
 
 ### Observa ###
-define Device/VH4032N
+define Device/observa_vh4032n
   $(Device/bcm63xx)
   DEVICE_VENDOR := Observa
   DEVICE_MODEL := VH4032N
   IMAGES += sysupgrade.bin
-  DEVICE_DTS := vh4032n
   CFE_BOARD_ID := 96368VVW
   CFE_CHIP_ID := 6368
   BLOCK_SIZE := 0x20000
@@ -972,40 +909,37 @@ define Device/VH4032N
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += VH4032N
+TARGET_DEVICES += observa_vh4032n
 
 ### Pirelli ###
-define Device/A226G
+define Device/pirelli_a226g
   $(Device/bcm63xx)
   DEVICE_VENDOR := Pirelli
   DEVICE_MODEL := A226G
-  DEVICE_DTS := a226g
   CFE_BOARD_ID := DWV-S0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += A226G
+TARGET_DEVICES += pirelli_a226g
 
-define Device/A226M
+define Device/pirelli_a226m
   $(Device/bcm63xx)
   DEVICE_VENDOR := Pirelli
   DEVICE_MODEL := A226M
-  DEVICE_DTS := a226m
   CFE_BOARD_ID := DWV-S0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += A226M
+TARGET_DEVICES += pirelli_a226m
 
-define Device/A226M-FWB
+define Device/pirelli_a226m-fwb
   $(Device/bcm63xx)
   DEVICE_VENDOR := Pirelli
   DEVICE_MODEL := A226M-FWB
-  DEVICE_DTS := a226m-fwb
   CFE_BOARD_ID := DWV-S0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
@@ -1013,13 +947,12 @@ define Device/A226M-FWB
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += A226M-FWB
+TARGET_DEVICES += pirelli_a226m-fwb
 
-define Device/AGPF-S0
+define Device/pirelli_agpf-s0
   $(Device/bcm63xx)
   DEVICE_VENDOR := Pirelli
   DEVICE_MODEL := Alice Gate VoIP 2 Plus Wi-Fi AGPF-S0
-  DEVICE_DTS := agpf-s0
   CFE_BOARD_ID := AGPF-S0
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature2 IMAGE --tag-version 8
@@ -1027,203 +960,189 @@ define Device/AGPF-S0
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += AGPF-S0
+TARGET_DEVICES += pirelli_agpf-s0
 
 ### Sagem ###
-define Device/FAST2404
+define Device/sagem_fast-2404
   $(Device/bcm63xx)
   DEVICE_VENDOR := Sagemcom
   DEVICE_MODEL := F@st 2404
-  DEVICE_DTS := fast2404
   CFE_BOARD_ID := F@ST2404
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += FAST2404
+TARGET_DEVICES += sagem_fast-2404
 
-define Device/FAST2504n
+define Device/sagem_fast-2504n
   $(Device/bcm63xx)
   DEVICE_VENDOR := Sagemcom
   DEVICE_MODEL := F@st 2504N
-  DEVICE_DTS := fast2504n
   CFE_BOARD_ID := F@ST2504n
   CFE_CHIP_ID := 6362
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += FAST2504n
+TARGET_DEVICES += sagem_fast-2504n
 
-define Device/FAST2604
+define Device/sagem_fast-2604
   $(Device/bcm63xx)
   DEVICE_VENDOR := Sagemcom
   DEVICE_MODEL := F@st 2604
-  DEVICE_DTS := fast2604
   CFE_BOARD_ID := F@ST2604
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += FAST2604
+TARGET_DEVICES += sagem_fast-2604
 
-define Device/FAST2704N
+define Device/sagem_fast-2704n
   $(Device/bcm63xx)
   DEVICE_VENDOR := Sagemcom
   DEVICE_MODEL := F@st 2704N
-  DEVICE_DTS := fast2704n
   CFE_BOARD_ID := F@ST2704N
   CFE_CHIP_ID := 6318
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += FAST2704N
+TARGET_DEVICES += sagem_fast-2704n
 
-define Device/FAST2704V2
+define Device/sagem_fast-2704-v2
   $(Device/bcm63xx)
   DEVICE_VENDOR := Sagemcom
-  DEVICE_MODEL := F@st 2704 V2
-  DEVICE_DTS := fast2704v2
+  DEVICE_MODEL := F@st 2704
+  DEVICE_VARIANT := V2
   CFE_BOARD_ID := F@ST2704V2
   CFE_CHIP_ID := 6328
   FLASH_MB := 8
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += FAST2704V2
+TARGET_DEVICES += sagem_fast-2704-v2
 
 ### Sercomm ###
-define Device/AD1018-SPI_flash
+define Device/sercomm_ad1018-nor
   $(Device/bcm63xx)
   DEVICE_VENDOR := Sercomm
   DEVICE_MODEL := AD1018
   DEVICE_VARIANT := SPI flash mod
-  DEVICE_DTS := ad1018-nor
   CFE_BOARD_ID := 96328avngr
   CFE_CHIP_ID := 6328
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += AD1018-SPI_flash
+TARGET_DEVICES += sercomm_ad1018-nor
 
 ### SFR ###
-define Device/NEUFBOX4-SER
+define Device/sfr_neufbox-4-sercomm-r0
   $(Device/bcm63xx)
   DEVICE_VENDOR := SFR
   DEVICE_MODEL := Neufbox4
   DEVICE_VARIANT := Sercomm
-  DEVICE_DTS := nb4-ser-r0
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += NEUFBOX4-SER
+TARGET_DEVICES += sfr_neufbox-4-sercomm-r0
 
-define Device/NEUFBOX4-FXC
+define Device/sfr_neufbox-4-foxconn-r1
   $(Device/bcm63xx)
   DEVICE_VENDOR := SFR
   DEVICE_MODEL := Neufbox4
   DEVICE_VARIANT := Foxconn
-  DEVICE_DTS := nb4-fxc-r1
   CFE_BOARD_ID := 96358VW
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += NEUFBOX4-FXC
+TARGET_DEVICES += sfr_neufbox-4-foxconn-r1
 
-define Device/NEUFBOX6
+define Device/sfr_neufbox-6-sercomm-r0
   $(Device/bcm63xx)
   DEVICE_VENDOR := SFR
   DEVICE_MODEL := Neufbox6
-  DEVICE_DTS := nb6-ser-r0
   CFE_BOARD_ID := NB6-SER-r0
   CFE_CHIP_ID := 6362
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += NEUFBOX6
+TARGET_DEVICES += sfr_neufbox-6-sercomm-r0
 
-define Device/SR102
+define Device/sky_sr102
   $(Device/bcm63xx)
   DEVICE_VENDOR := SKY
   DEVICE_MODEL := SR102
-  DEVICE_DTS := sr102
   CFE_BOARD_ID := BSKYB_63168
   CFE_CHIP_ID := 63268
   CFE_EXTRAS += --rsa-signature "$(VERSION_DIST)-$(firstword $(subst -,$(space),$(REVISION)))"
   DEVICE_PACKAGES := \
     $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += SR102
+TARGET_DEVICES += sky_sr102
 
 ### T-Com ###
-define Device/SPW303V
+define Device/t-com_speedport-w-303v
   $(Device/bcm63xx)
   DEVICE_VENDOR := T-Com
   DEVICE_MODEL := Speedport W 303V
   IMAGES := factory.bin sysupgrade.bin
   IMAGE/factory.bin := cfe-spw303v-bin --pad 4 | spw303v-bin | xor-image
   IMAGE/sysupgrade.bin := cfe-spw303v-bin | spw303v-bin
-  DEVICE_DTS := spw303v
   CFE_BOARD_ID := 96358-502V
   CFE_CHIP_ID := 6358
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += SPW303V
+TARGET_DEVICES += t-com_speedport-w-303v
 
-define Device/SPW500V
+define Device/t-com_speedport-w-500v
   $(Device/bcm63xx)
   DEVICE_VENDOR := T-Com
   DEVICE_MODEL := Speedport W 500V
-  DEVICE_DTS := spw500v
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += SPW500V
+TARGET_DEVICES += t-com_speedport-w-500v
 
 ### Tecom ###
-define Device/GW6000
+define Device/tecom_gw6000
   $(Device/bcm63xx)
   DEVICE_VENDOR := Tecom
   DEVICE_MODEL := GW6000
-  DEVICE_DTS := gw6000
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(BRCMWL_PACKAGES) $(USB1_PACKAGES)
 endef
-TARGET_DEVICES += GW6000
+TARGET_DEVICES += tecom_gw6000
 
-define Device/GW6200
+define Device/tecom_gw6200
   $(Device/bcm63xx)
   DEVICE_VENDOR := Tecom
   DEVICE_MODEL := GW6200
-  DEVICE_DTS := gw6200
   CFE_BOARD_ID := 96348GW
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --rsa-signature "$(shell printf '\x99')"
   DEVICE_PACKAGES := \
     $(BRCMWL_PACKAGES) $(USB1_PACKAGES)
 endef
-TARGET_DEVICES += GW6200
+TARGET_DEVICES += tecom_gw6200
 
 ### Telsey ###
-define Device/CPVA502PLUS
+define Device/telsey_cpva502plus
   $(Device/bcm63xx)
   DEVICE_VENDOR := Telsey
   DEVICE_MODEL := CPVA502+
-  DEVICE_DTS := cpva502plus
   CFE_BOARD_ID := CPVA502+
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --signature "Telsey Tlc" --signature2 "99.99.999"
@@ -1231,13 +1150,12 @@ define Device/CPVA502PLUS
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += CPVA502PLUS
+TARGET_DEVICES += telsey_cpva502plus
 
-define Device/CPA-ZNTE60T
+define Device/telsey_cpva642
   $(Device/bcm63xx)
   DEVICE_VENDOR := Telsey
   DEVICE_MODEL := CPVA642-type (CPA-ZNTE60T)
-  DEVICE_DTS := cpva642
   CFE_BOARD_ID := CPVA642
   CFE_CHIP_ID := 6358
   CFE_EXTRAS += --signature "Telsey Tlc" --signature2 "99.99.999" --second-image-flag "0"
@@ -1245,30 +1163,28 @@ define Device/CPA-ZNTE60T
   DEVICE_PACKAGES := \
     $(RT63_PACKAGES) $(USB2_PACKAGES)
 endef
-TARGET_DEVICES += CPA-ZNTE60T
+TARGET_DEVICES += telsey_cpva642
 
-define Device/MAGIC
+define Device/telsey_magic
   $(Device/bcm63xx)
   DEVICE_VENDOR := Alice
   DEVICE_MODEL := W-Gate
   DEVICE_ALT0_VENDOR := Telsey
   DEVICE_ALT0_MODEL := MAGIC
   IMAGES :=
-  DEVICE_DTS := magic
   CFE_BOARD_ID := MAGIC
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(RT63_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += MAGIC
+TARGET_DEVICES += telsey_magic
 
 ### TP-Link ###
-define Device/TD-W8900GB
+define Device/tp-link_td-w8900gb
   $(Device/bcm63xx)
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := TD-W8900GB
-  DEVICE_DTS := td-w8900gb
   CFE_BOARD_ID := 96348GW-11
   CFE_CHIP_ID := 6348
   CFE_EXTRAS += --rsa-signature "$(shell printf 'PRID\x89\x10\x00\x02')"
@@ -1277,35 +1193,33 @@ define Device/TD-W8900GB
     $(B43_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += TD-W8900GB
+TARGET_DEVICES += tp-link_td-w8900gb
 
 ### USRobotics ###
-define Device/USR9108
+define Device/usrobotics_usr9108
   $(Device/bcm63xx)
   DEVICE_VENDOR := USRobotics
   DEVICE_MODEL := 9108
-  DEVICE_DTS := usr9108
   CFE_BOARD_ID := 96348GW-A
   CFE_CHIP_ID := 6348
   DEVICE_PACKAGES := \
     $(B43_PACKAGES) $(USB1_PACKAGES)
   DEFAULT := n
 endef
-TARGET_DEVICES += USR9108
+TARGET_DEVICES += usrobotics_usr9108
 
 ### ZyXEL ###
-define Device/P870HW-51a_v2
+define Device/zyxel_p870hw-51a-v2
   $(Device/bcm63xx)
   DEVICE_VENDOR := ZyXEL
   DEVICE_MODEL := P870HW-51a
   DEVICE_VARIANT := v2
   IMAGES := factory.bin
   IMAGE/factory.bin := cfe-bin | zyxel-bin
-  DEVICE_DTS := p870hw-51a-v2
   CFE_BOARD_ID := 96368VVW
   CFE_CHIP_ID := 6368
   CFE_EXTRAS += --rsa-signature "ZyXEL" --signature "ZyXEL_0001"
   DEVICE_PACKAGES := \
     $(B43_PACKAGES)
 endef
-TARGET_DEVICES += P870HW-51a_v2
+TARGET_DEVICES += zyxel_p870hw-51a-v2
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
