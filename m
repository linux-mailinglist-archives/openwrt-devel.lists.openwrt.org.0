Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A4112D512
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 00:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UOpTLZAhLdVNPoqLxolGc4VO3IAuiYyXuvFEkr1BPTo=; b=sD1IVuIAI7i609
	UyTlXys50xEQrGW+tOH37vA558jHN/XUoMr9UYAVsNEwUI+TTPqmF7rhqzJRKZQKh/TtpcS3MYFFU
	jdqJTPi2b37esbr8UgtyurSjADs6ELuiUjIxPl9IjtvgzG5gniZS6DLQh+ukq/K2LGZltGWJi2rgN
	77w1r1mj6z++tYiW09DSniKQkrLwKIndB4flJziEHg/DVQfiyZxBLgcPN/2DPdt/S8Ow6vZf8bRNn
	SOSVyOQsW9RxuGebeJ0sW8RhjneBFjhiGgVVjsNqLA/aKFMVWepg9DQEs12nNwXfMvEP0IyX+nQjD
	XvAaspi4WPOwfJKURc8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im4TF-0000xW-1W; Mon, 30 Dec 2019 23:29:09 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im4Sh-0000Tv-73
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 23:28:39 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MkYoK-1jSJVI0VTi-00m7Va for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 00:28:30 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 00:27:43 +0100
Message-Id: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ex7JKcq3fEzzMGFqY9gX8LLNj5eF97snD2X8p2rJj+f70/7Gkyc
 H7pjPQ7t0x7CiEWZEnEHLSO0Dh818gxqFsGzdv/gKqhT+YXldC8pXCbZvEVf17AXXDIhiUg
 Ppf5QgihUrJbjd4bkJExJ4F+92j1YEBbJTIe3R65EwV/XoYaBMtdHkiXDDhsYGZZA7F7iAX
 u26JdbXvimOJvHUGnmR3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8Hx8XwIj6wA=:akBhuVtOGTjK91iwjFj7ZZ
 LURfhtlvPlgKZKo7mM+twr89FGiIVmPN9XJyYjbO6NwP/W2d9eKlsw/n98sBa5onyDOQM3efx
 RWecQ5x1XCDTGFAW6COr4QhWkPF1i02GexerGoEyGgfOudqhjF4DYxDGho8SmPJqn+G5YSsrB
 rm7LHeKk0dL41MydV2muHJs2L6Zq2G9DeyJoWQjRNPc4GZ1cmQBTn+8gjBbbg/47RguA5WnPj
 coyoy1Kb8rWJu1XVu7cODiKsvo1cIZMkhgyJnOluie7iV8ZR9pmAEfux4rC92eqQMZVGG630X
 IwOHubaZsGbjO6aNF2avPzYAnFYhgQypmWbRjIoqD0p4tK/pdxLX2TP/1XCqkCBkwcPfG51br
 +mT2xO4GZhbhwSpEjZTE43fqjwoI1F7oT7t5fIwj4H+BUHIU3bt7QHyQBiTJc28A1PPkFYIf4
 AGVCwPICRlRZ+IRtzm/d6U5HcV7q8B+Duoh6LO+7Agi/N9T5VIXprElgvmoRLFwXj1PAQGcIY
 e1x+nLznsstLPvaNQKYiq8uVrZ9vB3ke5sfvQmEn+eunBJmDqauUwZ0ojpimRcz8wxxhzdN+g
 1Y75DDD7oTBf25g/xGECIKKIoVb18/rdbQc2CeUz9olZvZFb52C2nI360UK+4a/jXW8SoX3Ew
 /mF7j0EGqWkplv+dZ4wLZ11zFzCm9YcZduyFLIjAjPNBW2BfPA3eMhmjNQ35avBVo0l0t86Kj
 d0B4MJcL4W07pH1kY3e39//JLbUxgNlnivA+PdjiYTrCTYZqR+aGDwUMKaQy1aoutXFUExs74
 rXpQ3mjRRoGcouGI6V+H+HM7GlnDIt8ofoR6PcLnRqIAZhciIIiL5gcRtBN8eyNUYCypij90K
 xyHJvuaLg52Mex+8r4Dt5UTNv+0Ii7QR8qrS114zs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_152835_552622_17355B1C 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 TVD_SUBJ_NUM_OBFU_MINFP No description available.
Subject: [OpenWrt-Devel] [PATCH 0/4] brcm63xx: soc_vendor_model scheme and
 board_name removal
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

** Please test on device **

This changes brcm63xx target to achieve consistency between image
names, device nodes names, compatible, DTS name and device name
as much as possible. As with other targets, having consistent
names is supposed to make life easier for developers and reduces
the number of "variables" in the system. In particular, applying
the DTS scheme will make it easier to find the correct file and
architecture.

Despite, I took the chance to also remove the "old" board_name
variable and replace it by directly using the compatible. This
also resulted in fixing several wrong identifiers in base-files.

As with other similar projects, I cannot test this on device and
would be glad if someone could do that.

Adrian Schmutzler (4):
  brcm63xx: use soc_vendor_model scheme for image and DTS files
  brcm63xx: remove unneeded line break for DEVICE_PACKAGES
  brcm63xx: use compatible instead of manually setting board name
  brcm63xx: align DTS model with Makefile and compatible

 .../brcm63xx/base-files/etc/board.d/01_leds   |  90 +--
 .../base-files/etc/board.d/02_network         | 206 +++--
 target/linux/brcm63xx/base-files/etc/diag.sh  | 174 ++---
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |   6 +-
 .../base-files/etc/uci-defaults/09_fix_crc    |  54 +-
 .../linux/brcm63xx/base-files/lib/brcm63xx.sh | 310 --------
 .../base-files/lib/preinit/01_do_brcm63xx.sh  |   9 -
 ...vg834g.dts => bcm3368_netgear_cvg834g.dts} |   0
 ....dts => bcm6318_brcm_bcm96318ref-p300.dts} |   2 +-
 ...18ref.dts => bcm6318_brcm_bcm96318ref.dts} |   0
 ...315u.dts => bcm6318_comtrend_ar-5315u.dts} |   0
 ...-d.dts => bcm6318_d-link_dsl-275xb-d1.dts} |   2 +-
 ...2704n.dts => bcm6318_sagem_fast-2704n.dts} |   4 +-
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
 ...4v2.dts => bcm6328_sagem_fast-2704-v2.dts} |   4 +-
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
 ...bb.dts => bcm6348_bt_voyager-2500v-bb.dts} |   4 +-
 ...-5365.dts => bcm6348_comtrend_ct-5365.dts} |   0
 ...us.dts => bcm6348_comtrend_ct-536plus.dts} |   2 +-
 ...b-b.dts => bcm6348_d-link_dsl-2640b-b.dts} |   0
 ...amr.dts => bcm6348_davolink_dv-201amr.dts} |   0
 ...025w.dts => bcm6348_dynalink_rta1025w.dts} |   0
 ...-5g.dts => bcm6348_inventel_livebox-1.dts} |   2 +-
 ...g_v4.dts => bcm6348_netgear_dg834g-v4.dts} |   0
 ...tpn.dts => bcm6348_netgear_dg834gt-pn.dts} |   2 +-
 ...st2404.dts => bcm6348_sagem_fast-2404.dts} |   4 +-
 ...st2604.dts => bcm6348_sagem_fast-2604.dts} |   4 +-
 ...dts => bcm6348_t-com_speedport-w-500v.dts} |   4 +-
 .../{gw6000.dts => bcm6348_tecom_gw6000.dts}  |   0
 .../{gw6200.dts => bcm6348_tecom_gw6200.dts}  |   0
 ...lus.dts => bcm6348_telsey_cpva502plus.dts} |   2 +-
 .../{magic.dts => bcm6348_telsey_magic.dts}   |   0
 ...0gb.dts => bcm6348_tp-link_td-w8900gb.dts} |   0
 ...108.dts => bcm6348_usrobotics_usr9108.dts} |   4 +-
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
 ...s => bcm6358_sfr_neufbox-4-foxconn-r1.dts} |   4 +-
 ...s => bcm6358_sfr_neufbox-4-sercomm-r0.dts} |   4 +-
 ...dts => bcm6358_t-com_speedport-w-303v.dts} |   4 +-
 ...cpva642.dts => bcm6358_telsey_cpva642.dts} |   0
 ...2504n.dts => bcm6362_sagem_fast-2504n.dts} |   4 +-
 ...s => bcm6362_sfr_neufbox-6-sercomm-r0.dts} |   4 +-
 ...1000h.dts => bcm6368_actiontec_r1000h.dts} |   0
 .../{av4202n.dts => bcm6368_adb_av4202n.dts}  |   0
 ...Ngr.dts => bcm6368_brcm_bcm96368mvngr.dts} |   0
 ...MVWG.dts => bcm6368_brcm_bcm96368mvwg.dts} |   0
 ...025u.dts => bcm6368_comtrend_vr-3025u.dts} |   0
 ...5un.dts => bcm6368_comtrend_vr-3025un.dts} |   0
 ...026e.dts => bcm6368_comtrend_vr-3026e.dts} |   0
 ...13n.dts => bcm6368_comtrend_wap-5813n.dts} |   0
 ....dts => bcm6368_huawei_echolife-hg622.dts} |   4 +-
 ...dts => bcm6368_huawei_echolife-hg655b.dts} |   4 +-
 ...v1.dts => bcm6368_netgear_dgnd3700-v1.dts} |   2 +-
 ...vg2000.dts => bcm6368_netgear_evg2000.dts} |   0
 ...h4032n.dts => bcm6368_observa_vh4032n.dts} |   0
 ...v2.dts => bcm6368_zyxel_p870hw-51a-v2.dts} |   0
 target/linux/brcm63xx/image/Makefile          |   2 +
 target/linux/brcm63xx/image/bcm63xx.mk        | 706 +++++++-----------
 98 files changed, 579 insertions(+), 1074 deletions(-)
 delete mode 100755 target/linux/brcm63xx/base-files/lib/brcm63xx.sh
 delete mode 100644 target/linux/brcm63xx/base-files/lib/preinit/01_do_brcm63xx.sh
 rename target/linux/brcm63xx/dts/{cvg834g.dts => bcm3368_netgear_cvg834g.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96318ref_p300.dts => bcm6318_brcm_bcm96318ref-p300.dts} (96%)
 rename target/linux/brcm63xx/dts/{bcm96318ref.dts => bcm6318_brcm_bcm96318ref.dts} (100%)
 rename target/linux/brcm63xx/dts/{ar-5315u.dts => bcm6318_comtrend_ar-5315u.dts} (100%)
 rename target/linux/brcm63xx/dts/{dsl-275xb-d.dts => bcm6318_d-link_dsl-275xb-d1.dts} (97%)
 rename target/linux/brcm63xx/dts/{fast2704n.dts => bcm6318_sagem_fast-2704n.dts} (96%)
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
 rename target/linux/brcm63xx/dts/{fast2704v2.dts => bcm6328_sagem_fast-2704-v2.dts} (95%)
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
 rename target/linux/brcm63xx/dts/{v2500v-bb.dts => bcm6348_bt_voyager-2500v-bb.dts} (94%)
 rename target/linux/brcm63xx/dts/{ct-5365.dts => bcm6348_comtrend_ct-5365.dts} (100%)
 rename target/linux/brcm63xx/dts/{ct536plus.dts => bcm6348_comtrend_ct-536plus.dts} (95%)
 rename target/linux/brcm63xx/dts/{dsl-2640b-b.dts => bcm6348_d-link_dsl-2640b-b.dts} (100%)
 rename target/linux/brcm63xx/dts/{dv-201amr.dts => bcm6348_davolink_dv-201amr.dts} (100%)
 rename target/linux/brcm63xx/dts/{rta1025w.dts => bcm6348_dynalink_rta1025w.dts} (100%)
 rename target/linux/brcm63xx/dts/{livebox-blue-5g.dts => bcm6348_inventel_livebox-1.dts} (95%)
 rename target/linux/brcm63xx/dts/{dg834g_v4.dts => bcm6348_netgear_dg834g-v4.dts} (100%)
 rename target/linux/brcm63xx/dts/{dg834gtpn.dts => bcm6348_netgear_dg834gt-pn.dts} (96%)
 rename target/linux/brcm63xx/dts/{fast2404.dts => bcm6348_sagem_fast-2404.dts} (90%)
 rename target/linux/brcm63xx/dts/{fast2604.dts => bcm6348_sagem_fast-2604.dts} (94%)
 rename target/linux/brcm63xx/dts/{spw500v.dts => bcm6348_t-com_speedport-w-500v.dts} (93%)
 rename target/linux/brcm63xx/dts/{gw6000.dts => bcm6348_tecom_gw6000.dts} (100%)
 rename target/linux/brcm63xx/dts/{gw6200.dts => bcm6348_tecom_gw6200.dts} (100%)
 rename target/linux/brcm63xx/dts/{cpva502plus.dts => bcm6348_telsey_cpva502plus.dts} (95%)
 rename target/linux/brcm63xx/dts/{magic.dts => bcm6348_telsey_magic.dts} (100%)
 rename target/linux/brcm63xx/dts/{td-w8900gb.dts => bcm6348_tp-link_td-w8900gb.dts} (100%)
 rename target/linux/brcm63xx/dts/{usr9108.dts => bcm6348_usrobotics_usr9108.dts} (91%)
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
 rename target/linux/brcm63xx/dts/{nb4-fxc-r1.dts => bcm6358_sfr_neufbox-4-foxconn-r1.dts} (95%)
 rename target/linux/brcm63xx/dts/{nb4-ser-r0.dts => bcm6358_sfr_neufbox-4-sercomm-r0.dts} (95%)
 rename target/linux/brcm63xx/dts/{spw303v.dts => bcm6358_t-com_speedport-w-303v.dts} (94%)
 rename target/linux/brcm63xx/dts/{cpva642.dts => bcm6358_telsey_cpva642.dts} (100%)
 rename target/linux/brcm63xx/dts/{fast2504n.dts => bcm6362_sagem_fast-2504n.dts} (95%)
 rename target/linux/brcm63xx/dts/{nb6-ser-r0.dts => bcm6362_sfr_neufbox-6-sercomm-r0.dts} (94%)
 rename target/linux/brcm63xx/dts/{r1000h.dts => bcm6368_actiontec_r1000h.dts} (100%)
 rename target/linux/brcm63xx/dts/{av4202n.dts => bcm6368_adb_av4202n.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96368MVNgr.dts => bcm6368_brcm_bcm96368mvngr.dts} (100%)
 rename target/linux/brcm63xx/dts/{bcm96368MVWG.dts => bcm6368_brcm_bcm96368mvwg.dts} (100%)
 rename target/linux/brcm63xx/dts/{vr-3025u.dts => bcm6368_comtrend_vr-3025u.dts} (100%)
 rename target/linux/brcm63xx/dts/{vr-3025un.dts => bcm6368_comtrend_vr-3025un.dts} (100%)
 rename target/linux/brcm63xx/dts/{vr-3026e.dts => bcm6368_comtrend_vr-3026e.dts} (100%)
 rename target/linux/brcm63xx/dts/{wap-5813n.dts => bcm6368_comtrend_wap-5813n.dts} (100%)
 rename target/linux/brcm63xx/dts/{hg622.dts => bcm6368_huawei_echolife-hg622.dts} (94%)
 rename target/linux/brcm63xx/dts/{hg655b.dts => bcm6368_huawei_echolife-hg655b.dts} (95%)
 rename target/linux/brcm63xx/dts/{dgnd3700v1.dts => bcm6368_netgear_dgnd3700-v1.dts} (98%)
 rename target/linux/brcm63xx/dts/{evg2000.dts => bcm6368_netgear_evg2000.dts} (100%)
 rename target/linux/brcm63xx/dts/{vh4032n.dts => bcm6368_observa_vh4032n.dts} (100%)
 rename target/linux/brcm63xx/dts/{p870hw-51a-v2.dts => bcm6368_zyxel_p870hw-51a-v2.dts} (100%)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
