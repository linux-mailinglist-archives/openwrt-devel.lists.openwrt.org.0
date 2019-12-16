Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585AB1205C7
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 13:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fjrh3VXWwl32iUhgeEF/giS77lrArAngn5fqrBlgYVo=; b=cMR90z7fp3d7mv
	pJXWN+mtu7LFmp4JLjJ9lQthyIVtIwUzRzs2gm7f3KaBJG3nZccxtMGrMBPHeAPlfiqjf2t30GPmP
	AvX6l0iufUiAgkJissjv1/zx2RQ78A7QOcon/BAAxbmyenP/rAjpDN0DWAVPdOHvXVwb1TPVnTLAl
	KYVKOrqRPjfxyC0wTZyYLO9ZsitMyDHzO/m7FX3yVaaCn307KxWnG0WbEL47Jd9cZ6IgIQNh2EaaT
	Ss62lU+QHEWWvfLvPP58vpdwpkmBB93QiEdC/DTW4KqdHbYSZStytrdBNkOOQm/3KuUDusoPZAjUB
	gD5/om57ZZFJ0QM5xtgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpWm-0000dZ-Op; Mon, 16 Dec 2019 12:31:08 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpWA-000092-6g
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 12:30:34 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mzy6q-1hk2bP1GJ4-00x1eX for <openwrt-devel@lists.openwrt.org>; Mon, 16
 Dec 2019 13:30:25 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 13:28:13 +0100
Message-Id: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:nJqg1YpQSDNdlUt4M6nUbUoKJCyLsgjtLvilRcgMd/0dWVHy/BL
 dT4TOisPyj363SGAkhwU+idX2DgGkyL7QKmQd3wuiCkxaDTcxuW3QhHP2+zl98hUfLjIH2j
 dPmPajjiy7oZTz3ZfWXQVrQuDEHENbrV6Ck6YToCXgthURqP8So7o5vHmoo3DmLTbrfyOs0
 mZ0gA3nV4EYtQhWprFpyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:isFCuJpYbK0=:Xpm4X5/8Dv8ynIF3cI4msZ
 i9Lv3mZYrF/uvNCpmdp4cufsO769oLWlQf9anWYHQMPJWFK4qkwGOGHv+hV1aXvzlNUl9oaAu
 LEViYwmdziKJ7jig16ij93NNpD2+nBcRdPImGd+kkqEI2P7/pHf6vuDC6hhIPkWaACg5iGtK6
 nPtIcJ9Hqmya/yF//y6ie2CZYmDC/ic/0NSGNRa0kRiPf5uUg8Z3OOMiOtW0E62u2WoyGmDmW
 wuAerAfjH/qrCXM0mXSTU4DHZaUujjJPEN7fVNgEHKswTe+X91jyQoxPu4VqptTXpvkilg28o
 +5fJ5aAwO1yv0dBKvbppZvu+0MYGKWC5uuFnRhHADm6M4NorUa3n4vtmtqvVFWZp9Itaw/hHw
 eSNRZIOiFWdvLIenQje66N1Aq4BiuOUWrR5kTKPkXcFOf4Cxjc7vNRvJl5iLgTuL3Xr4G9GMA
 12bf41k3h24IVcSM9ZFIDbW/fMNxhowI6D/x4nILbw4U6wwy21gSZU/8iTqrFBKfftNXDqmHO
 vf4FscQEZgCxAyRi5RSTaOZG+LFccFnqKge4k0RcoQap8vM5Ft6Kxz+2HW2h7dKB0I9Qy4dkW
 vq7HSAMfxJS0tTptmiV/WX5Ye0pg15JbX7Z/B/8PYA8UXztKD+05QK63c2oS8mTYCwTJkRq/6
 hyDOtcYphWO3sSaukVHtVjVcoFYAcU7smdIQXb2Uogj2n3exzXR9yoqYf6gjkQa5901jOYKZD
 oo/edJ3aUctnvyIUkxnd7rTpa+ti064Htc8ZeoUKwYFCxNeecfH7SALyMO+O597xdbTd44Tz+
 7fvt3TMMMqStQbqmWeDN3J9ppqp/QA4uRSsyTcVfZ+perfjmnQs1LD8ZI6dLBIMmU1VCPUtWN
 EkN3Kg6+DM4Bob3fvfnoXEZwKMFY0vjfriiGInc3c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043030_556040_A6E423DC 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/4] lantiq: use soc_vendor_device scheme on
 DTS file
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

** Please run-test **

This renames lantiq DTS(I) files to follow soc_vendor_device scheme.

The same patchset is available for easy build at:
https://git.openwrt.org/?p=openwrt/staging/adrian.git;a=shortlog;h=refs/heads/lantiq

It is based on the DTS changes proposed in
https://github.com/openwrt/openwrt/pull/2216
(this patchset is based on them, but they are not included in the set;
they are added in the referenced staging tree, though)

The state in my tree is build-tested on all subtargets, but should be
run-tested at least on 1-3 selected devices.

If Acked, I will change the ATH_SOC, MTK_SOC and SUNXI_SOC variables to
SOC as well when applying this patchset.

Adrian Schmutzler (4):
  lantiq: split device definitions into files
  build: image: add SOC device variable
  lantiq: use soc_vendor_device scheme on DTS file
  lantiq: remove ar9_lantiq_easy50810.dts

 include/image.mk                              |   3 +-
 .../files/arch/mips/boot/dts/EASY50810.dts    |  73 --
 .../mips/boot/dts/{ => lantiq}/amazonse.dtsi  |   0
 .../amazonse_allnet_all0333cj.dts}            |   0
 .../amazonse_netgear_dgn1000b.dts}            |   0
 .../arch/mips/boot/dts/{ => lantiq}/ar9.dtsi  |   0
 .../ar9_avm_fritz7312.dts}                    |   0
 .../ar9_avm_fritz7320.dts}                    |   0
 .../ar9_bt_homehub-v3a.dts}                   |   0
 .../ar9_buffalo_wbmr-hp-g300h.dts}            |   0
 .../ar9_netgear_dgn3500.dts}                  |   2 +-
 .../ar9_netgear_dgn3500.dtsi}                 |   0
 .../ar9_netgear_dgn3500b.dts}                 |   2 +-
 .../{H201L.dts => lantiq/ar9_zte_h201l.dts}   |   0
 .../ar9_zyxel_p-2601hn.dts}                   |   0
 .../mips/boot/dts/{ => lantiq}/danube.dtsi    |   0
 .../danube_arcadyan_arv4510pw.dts}            |   0
 .../danube_arcadyan_arv4518pwr01.dts}         |   2 +-
 .../danube_arcadyan_arv4518pwr01.dtsi}        |   0
 .../danube_arcadyan_arv4518pwr01a.dts}        |   2 +-
 .../danube_arcadyan_arv4519pw.dts}            |   0
 .../danube_arcadyan_arv4520pw.dts}            |   0
 .../danube_arcadyan_arv4525pw.dts}            |   0
 .../danube_arcadyan_arv452cqw.dts}            |   0
 .../danube_arcadyan_arv7506pw11.dts}          |   0
 .../danube_arcadyan_arv7510pw22.dts}          |   0
 .../danube_arcadyan_arv7518pw.dts}            |   0
 .../danube_arcadyan_arv7519pw.dts}            |   0
 .../danube_arcadyan_arv7525pw.dts}            |   0
 .../danube_arcadyan_arv752dpw.dts}            |   0
 .../danube_arcadyan_arv752dpw22.dts}          |   0
 .../danube_arcadyan_arv8539pw22.dts}          |   0
 .../danube_audiocodes_mp-252.dts}             |   0
 .../danube_bt_homehub-v2b.dts}                |   0
 .../danube_lantiq_easy50712.dts}              |   0
 .../danube_siemens_gigaset-sx76x.dts}         |   0
 .../mips/boot/dts/{ => lantiq}/falcon.dtsi    |   0
 .../falcon_lantiq_easy88388.dts}              |   2 +-
 .../falcon_lantiq_easy88444.dts}              |   2 +-
 .../falcon_lantiq_easy98000-nand.dts}         |   2 +-
 .../falcon_lantiq_easy98000-nor.dts}          |   2 +-
 .../falcon_lantiq_easy98000-sflash.dts}       |   4 +-
 .../falcon_lantiq_easy98000.dtsi}             |   0
 .../falcon_lantiq_easy98020-v18.dts}          |   2 +-
 .../falcon_lantiq_easy98020.dts}              |   2 +-
 .../falcon_lantiq_easy98021.dts}              |   2 +-
 .../falcon_lantiq_easy98035synce.dts}         |   2 +-
 .../falcon_lantiq_easy98035synce1588.dts}     |   2 +-
 .../falcon_lantiq_falcon-mdu.dts}             |   2 +-
 .../falcon_lantiq_falcon-sfp.dts}             |   2 +-
 .../falcon_sflash-16m.dtsi}                   |   0
 .../arch/mips/boot/dts/{ => lantiq}/vr9.dtsi  |   0
 .../vr9_alphanetworks_asl56026.dts}           |   0
 .../vr9_arcadyan_arv7519rw22.dts}             |   0
 .../vr9_arcadyan_vg3503j.dts}                 |   0
 .../vr9_arcadyan_vgv7510kw22-brn.dts}         |   2 +-
 .../vr9_arcadyan_vgv7510kw22-nor.dts}         |   2 +-
 .../vr9_arcadyan_vgv7510kw22.dtsi}            |   0
 .../vr9_arcadyan_vgv7519-brn.dts}             |   2 +-
 .../vr9_arcadyan_vgv7519-nor.dts}             |   2 +-
 .../vr9_arcadyan_vgv7519.dtsi}                |   0
 .../vr9_avm_fritz3370-rev2-hynix.dts}         |   2 +-
 .../vr9_avm_fritz3370-rev2-micron.dts}        |   2 +-
 .../vr9_avm_fritz3370-rev2.dtsi}              |   0
 .../vr9_avm_fritz7360sl.dts}                  |   2 +-
 .../vr9_avm_fritz7362sl.dts}                  |   2 +-
 .../vr9_avm_fritz736x.dtsi}                   |   0
 .../vr9_avm_fritz7412.dts}                    |   0
 .../vr9_bt_homehub-v5a.dts}                   |   0
 .../vr9_buffalo_wbmr-300hpd.dts}              |   0
 .../vr9_lantiq_easy80920-nand.dts}            |   2 +-
 .../vr9_lantiq_easy80920-nor.dts}             |   2 +-
 .../vr9_lantiq_easy80920.dtsi}                |   0
 .../vr9_netgear_dm200.dts}                    |   0
 .../vr9_tplink_tdw8970.dts}                   |   2 +-
 .../vr9_tplink_tdw8980.dts}                   |   2 +-
 .../vr9_tplink_tdw89x0.dtsi}                  |   0
 .../vr9_tplink_vr200.dts}                     |   2 +-
 .../vr9_tplink_vr200.dtsi}                    |   0
 .../vr9_tplink_vr200v.dts}                    |   2 +-
 .../vr9_zyxel_p-2812hnu-f1.dts}               |   2 +-
 .../vr9_zyxel_p-2812hnu-f3.dts}               |   2 +-
 .../vr9_zyxel_p-2812hnu-fx.dtsi}              |   0
 target/linux/lantiq/image/Makefile            | 859 +-----------------
 target/linux/lantiq/image/amazonse.mk         |  22 +
 target/linux/lantiq/image/ar9.mk              | 165 ++++
 target/linux/lantiq/image/danube.mk           | 219 +++++
 target/linux/lantiq/image/falcon.mk           | 105 +++
 target/linux/lantiq/image/tp-link.mk          |   5 +-
 target/linux/lantiq/image/vr9.mk              | 244 +++++
 target/linux/lantiq/image/xway_legacy.mk      |  77 ++
 91 files changed, 876 insertions(+), 962 deletions(-)
 delete mode 100644 target/linux/lantiq/files/arch/mips/boot/dts/EASY50810.dts
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/amazonse.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ALL0333CJ.dts => lantiq/amazonse_allnet_all0333cj.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{DGN1000B.dts => lantiq/amazonse_netgear_dgn1000b.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/ar9.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7312.dts => lantiq/ar9_avm_fritz7312.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7320.dts => lantiq/ar9_avm_fritz7320.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{BTHOMEHUBV3A.dts => lantiq/ar9_bt_homehub-v3a.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{WBMR.dts => lantiq/ar9_buffalo_wbmr-hp-g300h.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{DGN3500.dts => lantiq/ar9_netgear_dgn3500.dts} (75%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{DGN3500.dtsi => lantiq/ar9_netgear_dgn3500.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{DGN3500B.dts => lantiq/ar9_netgear_dgn3500b.dts} (75%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{H201L.dts => lantiq/ar9_zte_h201l.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{P2601HNFX.dts => lantiq/ar9_zyxel_p-2601hn.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/danube.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4510PW.dts => lantiq/danube_arcadyan_arv4510pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4518PWR01.dts => lantiq/danube_arcadyan_arv4518pwr01.dts} (71%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4518PWR01.dtsi => lantiq/danube_arcadyan_arv4518pwr01.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4518PWR01A.dts => lantiq/danube_arcadyan_arv4518pwr01a.dts} (78%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4519PW.dts => lantiq/danube_arcadyan_arv4519pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4520PW.dts => lantiq/danube_arcadyan_arv4520pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV4525PW.dts => lantiq/danube_arcadyan_arv4525pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV452CQW.dts => lantiq/danube_arcadyan_arv452cqw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV7506PW11.dts => lantiq/danube_arcadyan_arv7506pw11.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV7510PW22.dts => lantiq/danube_arcadyan_arv7510pw22.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV7518PW.dts => lantiq/danube_arcadyan_arv7518pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV7519PW.dts => lantiq/danube_arcadyan_arv7519pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV7525PW.dts => lantiq/danube_arcadyan_arv7525pw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV752DPW.dts => lantiq/danube_arcadyan_arv752dpw.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV752DPW22.dts => lantiq/danube_arcadyan_arv752dpw22.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV8539PW22.dts => lantiq/danube_arcadyan_arv8539pw22.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ACMP252.dts => lantiq/danube_audiocodes_mp-252.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{BTHOMEHUBV2B.dts => lantiq/danube_bt_homehub-v2b.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY50712.dts => lantiq/danube_lantiq_easy50712.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{GIGASX76X.dts => lantiq/danube_siemens_gigaset-sx76x.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/falcon.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY88388.dts => lantiq/falcon_lantiq_easy88388.dts} (98%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY88444.dts => lantiq/falcon_lantiq_easy88444.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98000NAND.dts => lantiq/falcon_lantiq_easy98000-nand.dts} (93%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98000NOR.dts => lantiq/falcon_lantiq_easy98000-nor.dts} (93%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98000SFLASH.dts => lantiq/falcon_lantiq_easy98000-sflash.dts} (73%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98000-base.dtsi => lantiq/falcon_lantiq_easy98000.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98020V18.dts => lantiq/falcon_lantiq_easy98020-v18.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98020.dts => lantiq/falcon_lantiq_easy98020.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98021.dts => lantiq/falcon_lantiq_easy98021.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98035SYNCE.dts => lantiq/falcon_lantiq_easy98035synce.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY98035SYNCE1588.dts => lantiq/falcon_lantiq_easy98035synce1588.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FALCON-MDU.dts => lantiq/falcon_lantiq_falcon-mdu.dts} (96%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FALCON-SFP.dts => lantiq/falcon_lantiq_falcon-sfp.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{falcon-sflash-16M.dtsi => lantiq/falcon_sflash-16m.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/vr9.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ASL56026.dts => lantiq/vr9_alphanetworks_asl56026.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ARV7519RW22.dts => lantiq/vr9_arcadyan_arv7519rw22.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VG3503J.dts => lantiq/vr9_arcadyan_vg3503j.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VGV7510KW22BRN.dts => lantiq/vr9_arcadyan_vgv7510kw22-brn.dts} (96%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VGV7510KW22NOR.dts => lantiq/vr9_arcadyan_vgv7510kw22-nor.dts} (92%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VGV7510KW22.dtsi => lantiq/vr9_arcadyan_vgv7510kw22.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VGV7519BRN.dts => lantiq/vr9_arcadyan_vgv7519-brn.dts} (96%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VGV7519NOR.dts => lantiq/vr9_arcadyan_vgv7519-nor.dts} (92%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VGV7519.dtsi => lantiq/vr9_arcadyan_vgv7519.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ3370-REV2-HYNIX.dts => lantiq/vr9_avm_fritz3370-rev2-hynix.dts} (94%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ3370-REV2-MICRON.dts => lantiq/vr9_avm_fritz3370-rev2-micron.dts} (94%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ3370-REV2.dtsi => lantiq/vr9_avm_fritz3370-rev2.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7360SL.dts => lantiq/vr9_avm_fritz7360sl.dts} (97%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7362SL.dts => lantiq/vr9_avm_fritz7362sl.dts} (98%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ736X.dtsi => lantiq/vr9_avm_fritz736x.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7412.dts => lantiq/vr9_avm_fritz7412.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{BTHOMEHUBV5A.dts => lantiq/vr9_bt_homehub-v5a.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{WBMR300.dts => lantiq/vr9_buffalo_wbmr-300hpd.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY80920NAND.dts => lantiq/vr9_lantiq_easy80920-nand.dts} (96%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY80920NOR.dts => lantiq/vr9_lantiq_easy80920-nor.dts} (94%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY80920.dtsi => lantiq/vr9_lantiq_easy80920.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{DM200.dts => lantiq/vr9_netgear_dm200.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{TDW8970.dts => lantiq/vr9_tplink_tdw8970.dts} (78%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{TDW8980.dts => lantiq/vr9_tplink_tdw8980.dts} (94%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{TDW89X0.dtsi => lantiq/vr9_tplink_tdw89x0.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VR200.dts => lantiq/vr9_tplink_vr200.dts} (98%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VR200.dtsi => lantiq/vr9_tplink_vr200.dtsi} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{VR200v.dts => lantiq/vr9_tplink_vr200v.dts} (98%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{P2812HNUF1.dts => lantiq/vr9_zyxel_p-2812hnu-f1.dts} (96%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{P2812HNUF3.dts => lantiq/vr9_zyxel_p-2812hnu-f3.dts} (96%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{P2812HNUFX.dtsi => lantiq/vr9_zyxel_p-2812hnu-fx.dtsi} (100%)
 create mode 100644 target/linux/lantiq/image/amazonse.mk
 create mode 100644 target/linux/lantiq/image/ar9.mk
 create mode 100644 target/linux/lantiq/image/danube.mk
 create mode 100644 target/linux/lantiq/image/falcon.mk
 create mode 100644 target/linux/lantiq/image/vr9.mk
 create mode 100644 target/linux/lantiq/image/xway_legacy.mk

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
