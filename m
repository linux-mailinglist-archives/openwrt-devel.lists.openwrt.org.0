Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63C2156793
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Feb 2020 20:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9luUFqbUCtbVrEdjARePVkKNhmZ5GMwaEsYk2CWFsdo=; b=QIgO7/xGLCKOulzOqnLzondKrC
	AklUU4s8YI+9gEFd3qrxxUgfAe/VDeNCJJa2RAQLpphvXJiaaGS2hnZCAdPLZsaYmBobZmO8/gzbG
	SDHHRhNbuZbp5bPXmyfxFJ4K/uZFgKI02e1THewLo0CQyNqsSRqyVSJLCtOPI/H7ofsxdA5xpc8u4
	qSeqSeH2C2SpfXzGYFIzVlE8gc/4ByegrIIFpkod8JQPofS/10L93I2gwuCBB/ggSygRfC9X8RobC
	qShGy2AiMtaEzgRkF2VcPPFUSc/EIKorL0ePcmNbnat2s0nEY56bZee94xj5u1yqN/h7ueqw98suM
	WhComrmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Vww-0004qI-Mu; Sat, 08 Feb 2020 19:39:30 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0VwW-0004jD-5P
 for openwrt-devel@lists.openwrt.org; Sat, 08 Feb 2020 19:39:08 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MlNgz-1jNUy71VPh-00lmO8 for <openwrt-devel@lists.openwrt.org>; Sat, 08
 Feb 2020 20:38:58 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  8 Feb 2020 20:38:07 +0100
Message-Id: <20200208193807.33692-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wyygHQejBRkp7lPRvV+i0BHuY9EHtNApzBDSLTg6e4L3IMV+gLw
 HQOUQs90AKUybJzRwauFqWCwNMZMKtP7egx2Cb39+LnyQHh76W/CrQKK80pqlHpwY/Zi2ih
 YKGFM8nX1ZPAorgJUlA0JhGU2CMjFUOdqgfdP0DtETjAJztQUxV+Fk/8GhBbiLehlLV4KK5
 O46ZHcuP802dsPPOB8HVQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sMRsGbOETIg=:O94THH4mm5P5WXy8DBjWDf
 r2XA56hsGHDhqfDQa7ZtdNEF3+Xk466XR7xqSmGG6mRuudmpX/j/KupwqYVhV9+Qa9xeRLTsA
 XPYoSv7dQzWydBMvlmfGW3ukwyQtSrU/d6lX2JK+BcapiooI4HTV+97bZffkFB7QuzSt/VhEX
 gA9Wv3/PUvM1GG0tV0ZWAFDl9NxGW6jrwIVIeqJdfHXUeNBXo+1vVh9Kgy1dGo1/dtz5s5RbM
 uTKYWTBqu58br+peVq/uVtDDMrCmdbL4wVJ1Aod1Tlf+yX8OtrE5yIo+CLRY6IsNt1kz2yuCp
 2uURE2OWriJAJ9EuO2leTZf5DtbmWJ15uOgvKy94B1T7vvslZHBTJIBqCm3r3vbKOX7q7bCiV
 IjXiZ8L+YbzFQcuJZhBjPMh7k3LA0YPZYUmxa/c6XReqmhiuY/E8eNTgbi0F9J1UyfLiFNGYr
 QUxDP48nYBtLKeNHVU5HHFg7g2tZOSbgfTd7ZvImRrK9Uk+bTUTVx/YX3dOMeac1it+/DoLxm
 y+PMTi1xo0WbfldCBhmGKDmbMhe3UcuzxmiAq1imr2AaNfjd67kZZseey3S4VSefYGXUo15TZ
 2ApS8wlETKRPlQLfyoASNQgIxM8F/qf9fKlpi3jDEZviulbS4X113ikiC3lfTpzU3r4UsflEv
 Z00ciO0yuNpTpzM8c/r5wsf6oybWomTxvhYG41nHlB/E2J9UeZaS/at2fDdcT9Vpux7ov6aTT
 An+/qCdaGc9E+CWbwhMTRFj9t7KAn/RnIxZxvXrLAZGMzOmAyuV+zPT1gLJV6Hy6EcXz/NN5l
 /ZqeI52BZrdmcz5wMyMwHv2VCX3DaYn9oSP0AraNNuZwnMNbMScNcBLo97oIauMiBkEkZVV
X-Spam-Note: CRM114 run bypassed due to message size (266506 bytes)
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] brcm63xx: rename target to bcm63xx
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

This change makes the names of Broadcom targets consistent by using
the common notation based on SoC/CPU ID (which is used internally
anyway), bcmXXXX instead of brcmXXXX.
This is even used for target TITLE in make menuconfig already,
only the short target name used brcm so far.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/kernel/broadcom-wl/Makefile                           | 4 ++--
 package/kernel/linux/modules/other.mk                         | 2 +-
 package/kernel/mac80211/broadcom.mk                           | 4 ++--
 package/system/mtd/src/Makefile                               | 2 +-
 target/linux/{brcm63xx => bcm63xx}/Makefile                   | 2 +-
 .../{brcm63xx => bcm63xx}/base-files/etc/board.d/01_leds      | 0
 .../{brcm63xx => bcm63xx}/base-files/etc/board.d/02_network   | 0
 target/linux/{brcm63xx => bcm63xx}/base-files/etc/diag.sh     | 0
 .../base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom        | 0
 .../base-files/etc/uci-defaults/09_fix_crc                    | 0
 .../{brcm63xx => bcm63xx}/base-files/lib/upgrade/platform.sh  | 0
 target/linux/{brcm63xx => bcm63xx}/config-4.14                | 0
 target/linux/{brcm63xx => bcm63xx}/config-4.19                | 0
 .../{brcm63xx => bcm63xx}/dts/bcm3368-netgear-cvg834g.dts     | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm3368.dtsi           | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm63168-sky-sr102.dts | 0
 .../dts/bcm6318-brcm-bcm96318ref-p300.dts                     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6318-brcm-bcm96318ref.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6318-comtrend-ar-5315u.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6318-d-link-dsl-275xb-d1.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6318-sagem-fast-2704n.dts    | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6318.dtsi           | 0
 .../dts/bcm63268-brcm-bcm963268bu-p300.dts                    | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm63268-inteno-vg50.dts  | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm63268.dtsi          | 0
 .../{brcm63xx => bcm63xx}/dts/bcm63269-brcm-bcm963269bhr.dts  | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-adb-a4001n.dts | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6328-adb-a4001n1.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-brcm-bcm963281tan.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-brcm-bcm96328avng.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-comtrend-ar-5381u.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-comtrend-ar-5387un.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-d-link-dsl-274xb-f1.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-nucom-r5010un-v2.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-sagem-fast-2704-v2.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6328-sercomm-ad1018-nor.dts  | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6328.dtsi           | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6338-brcm-bcm96338gw.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6338-brcm-bcm96338w.dts      | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6338-d-link-dsl-2640u.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6338-dynalink-rta1320.dts    | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6338.dtsi           | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6345-brcm-bcm96345gw2.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6345-dynalink-rta770bw.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6345-dynalink-rta770w.dts    | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6345.dtsi           | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-asmax-ar-1004g.dts      | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-belkin-f5d7633.dts      | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348gw-10.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348gw-11.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348gw.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348r.dts      | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-bt-voyager-2110.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-bt-voyager-2500v-bb.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-comtrend-ct-5365.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-comtrend-ct-536plus.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-d-link-dsl-2640b-b.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-davolink-dv-201amr.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-dynalink-rta1025w.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-inventel-livebox-1.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-netgear-dg834g-v4.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-netgear-dg834gt-pn.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-sagem-fast-2404.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-sagem-fast-2604.dts     | 0
 .../dts/bcm6348-t-com-speedport-w-500v.dts                    | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6348-tecom-gw6000.dts  | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6348-tecom-gw6200.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-telsey-cpva502plus.dts  | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6348-telsey-magic.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-tp-link-td-w8900gb.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6348-usrobotics-usr9108.dts  | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6348.dtsi           | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-alcatel-rg100a.dts      | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-brcm-bcm96358vw.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-brcm-bcm96358vw2.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-bt-home-hub-2-a.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-comtrend-ct-6373.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-d-link-dsl-2650u.dts    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-d-link-dsl-274xb-c2.dts | 0
 .../dts/bcm6358-d-link-dva-g3810bn-tl.dts                     | 0
 .../dts/bcm6358-huawei-echolife-hg553.dts                     | 0
 .../dts/bcm6358-huawei-echolife-hg556a-a.dts                  | 0
 .../dts/bcm6358-huawei-echolife-hg556a-b.dts                  | 0
 .../dts/bcm6358-huawei-echolife-hg556a-c.dts                  | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-a226g.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-a226m-fwb.dts   | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-a226m.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-agpf-s0.dts     | 0
 .../dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts                  | 0
 .../dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts                  | 0
 .../dts/bcm6358-t-com-speedport-w-303v.dts                    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6358-telsey-cpva642.dts      | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6358.dtsi           | 0
 .../dts/bcm6359-huawei-echolife-hg520v.dts                    | 0
 .../dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts                  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6362-sagem-fast-2504n.dts    | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6362.dtsi           | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-actiontec-r1000h.dts    | 0
 .../linux/{brcm63xx => bcm63xx}/dts/bcm6368-adb-av4202n.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-brcm-bcm96368mvngr.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-brcm-bcm96368mvwg.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-comtrend-vr-3025u.dts   | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-comtrend-vr-3025un.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-comtrend-vr-3026e.dts   | 0
 .../dts/bcm6368-huawei-echolife-hg622.dts                     | 0
 .../dts/bcm6368-huawei-echolife-hg655b.dts                    | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-netgear-dgnd3700-v1.dts | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-observa-vh4032n.dts     | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6368-zyxel-p870hw-51a-v2.dts | 0
 target/linux/{brcm63xx => bcm63xx}/dts/bcm6368.dtsi           | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6369-comtrend-wap-5813n.dts  | 0
 .../{brcm63xx => bcm63xx}/dts/bcm6369-netgear-evg2000.dts     | 0
 target/linux/{brcm63xx => bcm63xx}/generic/target.mk          | 0
 target/linux/{brcm63xx => bcm63xx}/image/Makefile             | 0
 .../linux/{brcm63xx => bcm63xx}/image/README.images-bcm63xx   | 0
 target/linux/{brcm63xx => bcm63xx}/image/bcm63xx.mk           | 0
 target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/Makefile | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/LzmaDecode.c  | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/LzmaDecode.h  | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/LzmaTypes.h   | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/Makefile      | 0
 .../linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/board.c | 0
 .../linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/cache.c | 0
 .../linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/cache.h | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/cacheops.h    | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/config.h      | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/cp0regdef.h   | 0
 .../linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/head.S  | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/loader.c      | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/loader.lds    | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/loader2.lds   | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/lzma-data.lds | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/printf.c      | 0
 .../{brcm63xx => bcm63xx}/image/lzma-loader/src/printf.h      | 0
 target/linux/{brcm63xx => bcm63xx}/modules.mk                 | 4 ++--
 .../001-4.15-01-MIPS-BCM63XX-add-clkdev-lookup-support.patch  | 0
 ...MIPS-BCM63XX-provide-periph-clock-as-refclk-for-uart.patch | 0
 ...tty-bcm63xx_uart-use-refclk-for-the-expected-clock-n.patch | 0
 ...4-tty-bcm63xx_uart-allow-naming-clock-in-device-tree.patch | 0
 ...MIPS-BCM63XX-move-the-HSSPI-PLL-HZ-into-its-own-cloc.patch | 0
 ...MIPS-BCM63XX-provide-enet-clocks-as-enet-to-the-ethe.patch | 0
 ...-4.15-07-MIPS-BCM63XX-split-out-swpkt_sar-usb-clocks.patch | 0
 .../001-4.15-10-bcm63xx_enet-do-not-rely-on-probe-order.patch | 0
 ...bcm63xx_enet-use-managed-functions-for-clock-ioremap.patch | 0
 ....15-12-bcm63xx_enet-drop-unneeded-NULL-phy_clk-check.patch | 0
 .../001-4.15-13-bcm63xx_enet-remove-unneeded-include.patch    | 0
 ...4.16-01-bcm63xx_enet-just-use-enet-as-the-clock-name.patch | 0
 ...bcm63xx_enet-use-platform-data-for-dma-channel-numbe.patch | 0
 ...1-4.16-03-bcm63xx_enet-remove-pointless-mac_id-check.patch | 0
 ...bcm63xx_enet-use-platform-device-id-directly-for-mii.patch | 0
 .../100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch    | 0
 ...MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch | 0
 ...MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch | 0
 ...MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch | 0
 ...MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch | 0
 ...MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch | 0
 ...MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch | 0
 ...MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch | 0
 ...MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch | 0
 ...MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch | 0
 ...MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch | 0
 ...mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch | 0
 .../patches-4.14/122-mtd-bcm63xxpart-add-of_match_table.patch | 0
 ...mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch | 0
 .../patches-4.14/130-pinctrl-add-bcm63xx-base-code.patch      | 0
 ...Documentation-add-BCM6328-pincontroller-binding-docu.patch | 0
 .../132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch     | 0
 ...Documentation-add-BCM6348-pincontroller-binding-docu.patch | 0
 .../134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch     | 0
 ...Documentation-add-BCM6358-pincontroller-binding-docu.patch | 0
 .../136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch     | 0
 ...Documentation-add-BCM6362-pincontroller-binding-docu.patch | 0
 .../138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch     | 0
 ...Documentation-add-BCM6368-pincontroller-binding-docu.patch | 0
 .../140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch     | 0
 ...Documentation-add-BCM63268-pincontroller-binding-doc.patch | 0
 .../142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch    | 0
 ...gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch | 0
 .../206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch | 0
 ...MIPS-BCM63XX-move-device-registration-code-into-its-.patch | 0
 ...MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch | 0
 .../patches-4.14/309-cfe_version_mod.patch                    | 0
 .../patches-4.14/310-cfe_simplify_detection.patch             | 0
 .../patches-4.14/311-bcm63xxpart_use_cfedetection.patch       | 0
 ...irqchip-add-support-for-bcm6345-style-periphery-irq-.patch | 0
 ...irqchip-add-support-for-bcm6345-style-external-inter.patch | 0
 .../patches-4.14/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch  | 0
 ...MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch | 0
 .../330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch       | 0
 .../331-MIPS-BCM63XX-define-variant-id-field.patch            | 0
 .../332-MIPS-BCM63XX-detect-BCM6328-variants.patch            | 0
 .../333-MIPS-BCM63XX-detect-BCM6362-variants.patch            | 0
 .../334-MIPS-BCM63XX-detect-BCM6368-variants.patch            | 0
 .../335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch        | 0
 ...MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch | 0
 .../patches-4.14/337-MIPS-BCM63XX-widen-cpuid-field.patch     | 0
 .../338-MIPS-BCM63XX-increase-number-of-IRQs.patch            | 0
 .../339-MIPS-BCM63XX-add-support-for-BCM63268.patch           | 0
 .../340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch      | 0
 .../341-MIPS-BCM63XX-add-support-for-BCM6318.patch            | 0
 .../342-MIPS-BCM63XX-split-PCIe-reset-signals.patch           | 0
 .../343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch       | 0
 ...MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch | 0
 ...5-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch | 0
 .../346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch             | 0
 .../patches-4.14/347-MIPS-BCM6318-USB-support.patch           | 0
 .../348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch             | 0
 .../349-MIPS-BCM63XX-add-BCM63268-USB-support.patch           | 0
 .../350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch    | 0
 .../patches-4.14/351-set-board-usbh-ports.patch               | 0
 ...MIPS-BCM63XX-allow-building-support-for-more-than-on.patch | 0
 ...MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch | 0
 ...MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch | 0
 .../357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch    | 0
 .../358-MIPS-BCM63XX-make-fallback-sprom-optional.patch       | 0
 .../359-MIPS-BCM63XX-allow-different-types-of-sprom.patch     | 0
 .../360-MIPS-BCM63XX-add-support-for-raw-sproms.patch         | 0
 ...MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch | 0
 ...MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch | 0
 .../363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch     | 0
 ...MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch | 0
 ...MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch | 0
 .../367-MIPS-BCM63XX-add-support-for-loading-DTB.patch        | 0
 ...MIPS-BCM63XX-add-support-for-matching-the-board_info.patch | 0
 ...MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch | 0
 .../patches-4.14/371_add_of_node_available_by_alias.patch     | 0
 .../372_dont_register_pflash_when_available_in_dtb.patch      | 0
 ...MIPS-BCM63XX-register-interrupt-controllers-through-.patch | 0
 .../374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch       | 0
 .../375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch          | 0
 ...377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch | 0
 ...MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch | 0
 ...MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch | 0
 .../380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch     | 0
 ...Documentation-add-BCM6318-pincontroller-binding-docu.patch | 0
 .../382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch     | 0
 .../patches-4.14/383-bcm63xx_select_pinctrl.patch             | 0
 .../389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch | 0
 .../390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch    | 0
 .../patches-4.14/391-MIPS-BCM63XX-do-not-register-uart.patch  | 0
 .../392-MIPS-BCM63XX-remove-leds-and-buttons.patch            | 0
 .../patches-4.14/400-bcm963xx_flashmap.patch                  | 0
 .../patches-4.14/401-bcm963xx_real_rootfs_length.patch        | 0
 .../patches-4.14/402_bcm63xx_enet_vlan_incoming_fixed.patch   | 0
 .../patches-4.14/403-6358-enet1-external-mii-clk.patch        | 0
 ...NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch | 0
 ...08-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch | 0
 .../411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch      | 0
 ...413-BCM63XX-allow-providing-fixup-data-in-board-data.patch | 0
 .../415-MIPS-BCM63XX-export-the-attached-flash-type.patch     | 0
 .../416-BCM63XX-add-a-fixup-for-ath9k-devices.patch           | 0
 .../patches-4.14/420-BCM63XX-add-endian-check-for-ath9k.patch | 0
 .../patches-4.14/421-BCM63XX-add-led-pin-for-ath9k.patch      | 0
 .../422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch          | 0
 .../patches-4.14/423-bcm63xx_enet_add_b53_support.patch       | 0
 .../patches-4.14/424-bcm63xx_enet_no_request_mem_region.patch | 0
 .../patches-4.14/427-boards_probe_switch.patch                | 0
 .../499-allow_better_context_for_board_patches.patch          | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/500-board-D4PW.patch   | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/501-board-NB4.patch    | 0
 .../patches-4.14/502-board-96338W2_E7T.patch                  | 0
 .../patches-4.14/503-board-CPVA642.patch                      | 0
 .../patches-4.14/504-board_dsl_274xb_rev_c.patch              | 0
 .../patches-4.14/505-board_spw500v.patch                      | 0
 .../patches-4.14/506-board_gw6200_gw6000.patch                | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/507-board-MAGIC.patch  | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/508-board_hw553.patch  | 0
 .../patches-4.14/509-board_rta1320_16m.patch                  | 0
 .../patches-4.14/510-board_spw303v.patch                      | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/511-board_V2500V.patch | 0
 .../patches-4.14/512-board_BTV2110.patch                      | 0
 .../513-MIPS-BCM63XX-add-inventel-Livebox-support.patch       | 0
 .../patches-4.14/514-board_ct536_ct5621.patch                 | 0
 .../patches-4.14/515-board_DWV-S0_fixes.patch                 | 0
 .../patches-4.14/516-board_96348A-122.patch                   | 0
 .../patches-4.14/519_board_CPVA502plus.patch                  | 0
 .../520-bcm63xx-add-support-for-96368MVWG-board.patch         | 0
 .../521-bcm63xx-add-support-for-96368MVNgr-board.patch        | 0
 .../522-MIPS-BCM63XX-add-96328avng-reference-board.patch      | 0
 .../523-MIPS-BCM63XX-add-963281TAN-reference-board.patch      | 0
 .../patches-4.14/524-board_dsl_274xb_rev_f.patch              | 0
 .../patches-4.14/525-board_96348w3.patch                      | 0
 .../patches-4.14/526-board_CT6373-1.patch                     | 0
 .../patches-4.14/527-board_dva-g3810bn-tl-1.patch             | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/528-board_nb6.patch    | 0
 .../patches-4.14/529-board_fast2604.patch                     | 0
 .../patches-4.14/530-board_A4001N1.patch                      | 0
 .../patches-4.14/531-board_AR-5387un.patch                    | 0
 .../patches-4.14/532-board_AR-5381u.patch                     | 0
 .../patches-4.14/533-board_rta770bw.patch                     | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/534-board_hw556.patch  | 0
 .../patches-4.14/535-board_rta770w.patch                      | 0
 .../patches-4.14/536-board_fast2704.patch                     | 0
 .../patches-4.14}/537-board_fast2504n.patch                   | 2 +-
 .../patches-4.14/555-board_96318ref.patch                     | 0
 .../patches-4.14/556-board_96318ref_p300.patch                | 0
 .../patches-4.14/557-board_bcm963269bhr.patch                 | 0
 .../patches-4.14}/558-board_AR1004G.patch                     | 2 +-
 .../patches-4.14/559-board_vw6339gu.patch                     | 0
 .../patches-4.14/560-board_963268gu_p300.patch                | 0
 .../patches-4.14/561-board_WAP-5813n.patch                    | 0
 .../patches-4.14/562-board_VR-3025u.patch                     | 0
 .../patches-4.14/563-board_VR-3025un.patch                    | 0
 .../patches-4.14/564-board_P870HW-51a_v2.patch                | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/565-board_hw520.patch  | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/566-board_A4001N.patch | 0
 .../patches-4.14/567-board_dsl-2751b_e1.patch                 | 0
 .../patches-4.14/568-board_DGND3700v1_3800B.patch             | 0
 .../patches-4.14/569-board_homehub2a.patch                    | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/570-board_HG655b.patch | 0
 .../patches-4.14/571-board_fast2704n.patch                    | 0
 .../patches-4.14/572-board_VR-3026e.patch                     | 0
 .../patches-4.14/573-board_R5010UNv2.patch                    | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/574-board_HG622.patch  | 0
 .../patches-4.14/575-board_EVG2000.patch                      | 0
 .../patches-4.14/576-board_AV4202N.patch                      | 0
 .../patches-4.14/577-board_VH4032N.patch                      | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/578-board_R1000H.patch | 0
 .../patches-4.14/579-board_AR-5315u.patch                     | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/580-board_AD1018.patch | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/598-board_sr102.patch  | 0
 .../{brcm63xx => bcm63xx}/patches-4.14/800-wl_exports.patch   | 0
 .../patches-4.14/801-ssb_export_fallback_sprom.patch          | 0
 .../patches-4.14/802-rtl8367r_fix_RGMII_support.patch         | 0
 ...jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch | 0
 .../patches-4.14/804-bcm63xx_enet_63268_rgmii_ports.patch     | 0
 .../100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch    | 0
 ...MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch | 0
 ...MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch | 0
 ...MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch | 0
 ...MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch | 0
 ...MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch | 0
 ...MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch | 0
 ...MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch | 0
 ...MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch | 0
 ...MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch | 0
 ...MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch | 0
 ...mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch | 0
 .../patches-4.19/122-mtd-bcm63xxpart-add-of_match_table.patch | 0
 ...mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch | 0
 .../patches-4.19/130-pinctrl-add-bcm63xx-base-code.patch      | 0
 ...Documentation-add-BCM6328-pincontroller-binding-docu.patch | 0
 .../132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch     | 0
 ...Documentation-add-BCM6348-pincontroller-binding-docu.patch | 0
 .../134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch     | 0
 ...Documentation-add-BCM6358-pincontroller-binding-docu.patch | 0
 .../136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch     | 0
 ...Documentation-add-BCM6362-pincontroller-binding-docu.patch | 0
 .../138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch     | 0
 ...Documentation-add-BCM6368-pincontroller-binding-docu.patch | 0
 .../140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch     | 0
 ...Documentation-add-BCM63268-pincontroller-binding-doc.patch | 0
 .../142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch    | 0
 ...gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch | 0
 .../206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch | 0
 ...MIPS-BCM63XX-move-device-registration-code-into-its-.patch | 0
 ...MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch | 0
 .../patches-4.19/309-cfe_version_mod.patch                    | 0
 .../patches-4.19/310-cfe_simplify_detection.patch             | 0
 .../patches-4.19/311-bcm63xxpart_use_cfedetection.patch       | 0
 ...irqchip-add-support-for-bcm6345-style-periphery-irq-.patch | 0
 ...irqchip-add-support-for-bcm6345-style-external-inter.patch | 0
 .../patches-4.19/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch  | 0
 ...MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch | 0
 .../330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch       | 0
 .../331-MIPS-BCM63XX-define-variant-id-field.patch            | 0
 .../332-MIPS-BCM63XX-detect-BCM6328-variants.patch            | 0
 .../333-MIPS-BCM63XX-detect-BCM6362-variants.patch            | 0
 .../334-MIPS-BCM63XX-detect-BCM6368-variants.patch            | 0
 .../335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch        | 0
 ...MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch | 0
 .../patches-4.19/337-MIPS-BCM63XX-widen-cpuid-field.patch     | 0
 .../338-MIPS-BCM63XX-increase-number-of-IRQs.patch            | 0
 .../339-MIPS-BCM63XX-add-support-for-BCM63268.patch           | 0
 .../340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch      | 0
 .../341-MIPS-BCM63XX-add-support-for-BCM6318.patch            | 0
 .../342-MIPS-BCM63XX-split-PCIe-reset-signals.patch           | 0
 .../343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch       | 0
 ...MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch | 0
 ...5-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch | 0
 .../346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch             | 0
 .../patches-4.19/347-MIPS-BCM6318-USB-support.patch           | 0
 .../348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch             | 0
 .../349-MIPS-BCM63XX-add-BCM63268-USB-support.patch           | 0
 .../350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch    | 0
 .../patches-4.19/351-set-board-usbh-ports.patch               | 0
 ...MIPS-BCM63XX-allow-building-support-for-more-than-on.patch | 0
 ...MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch | 0
 ...MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch | 0
 .../357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch    | 0
 .../358-MIPS-BCM63XX-make-fallback-sprom-optional.patch       | 0
 .../359-MIPS-BCM63XX-allow-different-types-of-sprom.patch     | 0
 .../360-MIPS-BCM63XX-add-support-for-raw-sproms.patch         | 0
 ...MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch | 0
 ...MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch | 0
 .../363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch     | 0
 ...MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch | 0
 ...MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch | 0
 .../367-MIPS-BCM63XX-add-support-for-loading-DTB.patch        | 0
 ...MIPS-BCM63XX-add-support-for-matching-the-board_info.patch | 0
 ...MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch | 0
 .../patches-4.19/371_add_of_node_available_by_alias.patch     | 0
 .../372_dont_register_pflash_when_available_in_dtb.patch      | 0
 ...MIPS-BCM63XX-register-interrupt-controllers-through-.patch | 0
 .../374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch       | 0
 .../375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch          | 0
 ...377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch | 0
 ...MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch | 0
 ...MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch | 0
 .../380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch     | 0
 ...Documentation-add-BCM6318-pincontroller-binding-docu.patch | 0
 .../382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch     | 0
 .../patches-4.19/383-bcm63xx_select_pinctrl.patch             | 0
 .../389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch | 0
 .../390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch    | 0
 .../patches-4.19/391-MIPS-BCM63XX-do-not-register-uart.patch  | 0
 .../392-MIPS-BCM63XX-remove-leds-and-buttons.patch            | 0
 .../patches-4.19/400-bcm963xx_flashmap.patch                  | 0
 .../patches-4.19/401-bcm963xx_real_rootfs_length.patch        | 0
 .../patches-4.19/402_bcm63xx_enet_vlan_incoming_fixed.patch   | 0
 .../patches-4.19/403-6358-enet1-external-mii-clk.patch        | 0
 ...NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch | 0
 ...08-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch | 0
 .../411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch      | 0
 ...413-BCM63XX-allow-providing-fixup-data-in-board-data.patch | 0
 .../415-MIPS-BCM63XX-export-the-attached-flash-type.patch     | 0
 .../416-BCM63XX-add-a-fixup-for-ath9k-devices.patch           | 0
 .../patches-4.19/420-BCM63XX-add-endian-check-for-ath9k.patch | 0
 .../patches-4.19/421-BCM63XX-add-led-pin-for-ath9k.patch      | 0
 .../422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch          | 0
 .../patches-4.19/423-bcm63xx_enet_add_b53_support.patch       | 0
 .../patches-4.19/424-bcm63xx_enet_no_request_mem_region.patch | 0
 .../patches-4.19/427-boards_probe_switch.patch                | 0
 .../499-allow_better_context_for_board_patches.patch          | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/500-board-D4PW.patch   | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/501-board-NB4.patch    | 0
 .../patches-4.19/502-board-96338W2_E7T.patch                  | 0
 .../patches-4.19/503-board-CPVA642.patch                      | 0
 .../patches-4.19/504-board_dsl_274xb_rev_c.patch              | 0
 .../patches-4.19/505-board_spw500v.patch                      | 0
 .../patches-4.19/506-board_gw6200_gw6000.patch                | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/507-board-MAGIC.patch  | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/508-board_hw553.patch  | 0
 .../patches-4.19/509-board_rta1320_16m.patch                  | 0
 .../patches-4.19/510-board_spw303v.patch                      | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/511-board_V2500V.patch | 0
 .../patches-4.19/512-board_BTV2110.patch                      | 0
 .../513-MIPS-BCM63XX-add-inventel-Livebox-support.patch       | 0
 .../patches-4.19/514-board_ct536_ct5621.patch                 | 0
 .../patches-4.19/515-board_DWV-S0_fixes.patch                 | 0
 .../patches-4.19/516-board_96348A-122.patch                   | 0
 .../patches-4.19/519_board_CPVA502plus.patch                  | 0
 .../520-bcm63xx-add-support-for-96368MVWG-board.patch         | 0
 .../521-bcm63xx-add-support-for-96368MVNgr-board.patch        | 0
 .../522-MIPS-BCM63XX-add-96328avng-reference-board.patch      | 0
 .../523-MIPS-BCM63XX-add-963281TAN-reference-board.patch      | 0
 .../patches-4.19/524-board_dsl_274xb_rev_f.patch              | 0
 .../patches-4.19/525-board_96348w3.patch                      | 0
 .../patches-4.19/526-board_CT6373-1.patch                     | 0
 .../patches-4.19/527-board_dva-g3810bn-tl-1.patch             | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/528-board_nb6.patch    | 0
 .../patches-4.19/529-board_fast2604.patch                     | 0
 .../patches-4.19/530-board_A4001N1.patch                      | 0
 .../patches-4.19/531-board_AR-5387un.patch                    | 0
 .../patches-4.19/532-board_AR-5381u.patch                     | 0
 .../patches-4.19/533-board_rta770bw.patch                     | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/534-board_hw556.patch  | 0
 .../patches-4.19/535-board_rta770w.patch                      | 0
 .../patches-4.19/536-board_fast2704.patch                     | 0
 .../patches-4.19}/537-board_fast2504n.patch                   | 2 +-
 .../patches-4.19/555-board_96318ref.patch                     | 0
 .../patches-4.19/556-board_96318ref_p300.patch                | 0
 .../patches-4.19/557-board_bcm963269bhr.patch                 | 0
 .../patches-4.19}/558-board_AR1004G.patch                     | 2 +-
 .../patches-4.19/559-board_vw6339gu.patch                     | 0
 .../patches-4.19/560-board_963268gu_p300.patch                | 0
 .../patches-4.19/561-board_WAP-5813n.patch                    | 0
 .../patches-4.19/562-board_VR-3025u.patch                     | 0
 .../patches-4.19/563-board_VR-3025un.patch                    | 0
 .../patches-4.19/564-board_P870HW-51a_v2.patch                | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/565-board_hw520.patch  | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/566-board_A4001N.patch | 0
 .../patches-4.19/567-board_dsl-2751b_e1.patch                 | 0
 .../patches-4.19/568-board_DGND3700v1_3800B.patch             | 0
 .../patches-4.19/569-board_homehub2a.patch                    | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/570-board_HG655b.patch | 0
 .../patches-4.19/571-board_fast2704n.patch                    | 0
 .../patches-4.19/572-board_VR-3026e.patch                     | 0
 .../patches-4.19/573-board_R5010UNv2.patch                    | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/574-board_HG622.patch  | 0
 .../patches-4.19/575-board_EVG2000.patch                      | 0
 .../patches-4.19/576-board_AV4202N.patch                      | 0
 .../patches-4.19/577-board_VH4032N.patch                      | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/578-board_R1000H.patch | 0
 .../patches-4.19/579-board_AR-5315u.patch                     | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/580-board_AD1018.patch | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/598-board_sr102.patch  | 0
 .../{brcm63xx => bcm63xx}/patches-4.19/800-wl_exports.patch   | 0
 .../patches-4.19/801-ssb_export_fallback_sprom.patch          | 0
 .../patches-4.19/802-rtl8367r_fix_RGMII_support.patch         | 0
 ...jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch | 0
 .../patches-4.19/804-bcm63xx_enet_63268_rgmii_ports.patch     | 0
 target/linux/{brcm63xx => bcm63xx}/profiles/default.mk        | 0
 target/linux/{brcm63xx => bcm63xx}/smp/config-default         | 0
 target/linux/{brcm63xx => bcm63xx}/smp/target.mk              | 0
 505 files changed, 13 insertions(+), 13 deletions(-)
 rename target/linux/{brcm63xx => bcm63xx}/Makefile (97%)
 rename target/linux/{brcm63xx => bcm63xx}/base-files/etc/board.d/01_leds (100%)
 rename target/linux/{brcm63xx => bcm63xx}/base-files/etc/board.d/02_network (100%)
 rename target/linux/{brcm63xx => bcm63xx}/base-files/etc/diag.sh (100%)
 rename target/linux/{brcm63xx => bcm63xx}/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom (100%)
 rename target/linux/{brcm63xx => bcm63xx}/base-files/etc/uci-defaults/09_fix_crc (100%)
 rename target/linux/{brcm63xx => bcm63xx}/base-files/lib/upgrade/platform.sh (100%)
 rename target/linux/{brcm63xx => bcm63xx}/config-4.14 (100%)
 rename target/linux/{brcm63xx => bcm63xx}/config-4.19 (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm3368-netgear-cvg834g.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm3368.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm63168-sky-sr102.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6318-brcm-bcm96318ref-p300.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6318-brcm-bcm96318ref.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6318-comtrend-ar-5315u.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6318-d-link-dsl-275xb-d1.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6318-sagem-fast-2704n.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6318.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm63268-brcm-bcm963268bu-p300.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm63268-inteno-vg50.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm63268.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm63269-brcm-bcm963269bhr.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-adb-a4001n.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-adb-a4001n1.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-brcm-bcm963281tan.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-brcm-bcm96328avng.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-comtrend-ar-5381u.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-comtrend-ar-5387un.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-d-link-dsl-274xb-f1.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-nucom-r5010un-v2.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-sagem-fast-2704-v2.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328-sercomm-ad1018-nor.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6328.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6338-brcm-bcm96338gw.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6338-brcm-bcm96338w.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6338-d-link-dsl-2640u.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6338-dynalink-rta1320.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6338.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6345-brcm-bcm96345gw2.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6345-dynalink-rta770bw.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6345-dynalink-rta770w.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6345.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-asmax-ar-1004g.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-belkin-f5d7633.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348gw-10.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348gw-11.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348gw.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-brcm-bcm96348r.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-bt-voyager-2110.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-bt-voyager-2500v-bb.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-comtrend-ct-5365.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-comtrend-ct-536plus.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-d-link-dsl-2640b-b.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-davolink-dv-201amr.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-dynalink-rta1025w.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-inventel-livebox-1.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-netgear-dg834g-v4.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-netgear-dg834gt-pn.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-sagem-fast-2404.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-sagem-fast-2604.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-t-com-speedport-w-500v.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-tecom-gw6000.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-tecom-gw6200.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-telsey-cpva502plus.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-telsey-magic.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-tp-link-td-w8900gb.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348-usrobotics-usr9108.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6348.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-alcatel-rg100a.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-brcm-bcm96358vw.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-brcm-bcm96358vw2.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-bt-home-hub-2-a.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-comtrend-ct-6373.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-d-link-dsl-2650u.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-d-link-dsl-274xb-c2.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-d-link-dva-g3810bn-tl.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-huawei-echolife-hg553.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-huawei-echolife-hg556a-a.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-huawei-echolife-hg556a-b.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-huawei-echolife-hg556a-c.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-a226g.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-a226m-fwb.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-a226m.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-pirelli-agpf-s0.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-t-com-speedport-w-303v.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358-telsey-cpva642.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6358.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6359-huawei-echolife-hg520v.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6362-sagem-fast-2504n.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6362.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-actiontec-r1000h.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-adb-av4202n.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-brcm-bcm96368mvngr.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-brcm-bcm96368mvwg.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-comtrend-vr-3025u.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-comtrend-vr-3025un.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-comtrend-vr-3026e.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-huawei-echolife-hg622.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-huawei-echolife-hg655b.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-netgear-dgnd3700-v1.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-observa-vh4032n.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368-zyxel-p870hw-51a-v2.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6368.dtsi (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6369-comtrend-wap-5813n.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/dts/bcm6369-netgear-evg2000.dts (100%)
 rename target/linux/{brcm63xx => bcm63xx}/generic/target.mk (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/Makefile (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/README.images-bcm63xx (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/bcm63xx.mk (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/Makefile (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/LzmaDecode.c (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/LzmaDecode.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/LzmaTypes.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/Makefile (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/board.c (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/cache.c (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/cache.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/cacheops.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/config.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/cp0regdef.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/head.S (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/loader.c (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/loader.lds (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/loader2.lds (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/lzma-data.lds (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/printf.c (100%)
 rename target/linux/{brcm63xx => bcm63xx}/image/lzma-loader/src/printf.h (100%)
 rename target/linux/{brcm63xx => bcm63xx}/modules.mk (91%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-01-MIPS-BCM63XX-add-clkdev-lookup-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-02-MIPS-BCM63XX-provide-periph-clock-as-refclk-for-uart.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-03-tty-bcm63xx_uart-use-refclk-for-the-expected-clock-n.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-04-tty-bcm63xx_uart-allow-naming-clock-in-device-tree.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-05-MIPS-BCM63XX-move-the-HSSPI-PLL-HZ-into-its-own-cloc.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-06-MIPS-BCM63XX-provide-enet-clocks-as-enet-to-the-ethe.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-07-MIPS-BCM63XX-split-out-swpkt_sar-usb-clocks.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-10-bcm63xx_enet-do-not-rely-on-probe-order.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-11-bcm63xx_enet-use-managed-functions-for-clock-ioremap.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-12-bcm63xx_enet-drop-unneeded-NULL-phy_clk-check.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.15-13-bcm63xx_enet-remove-unneeded-include.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.16-01-bcm63xx_enet-just-use-enet-as-the-clock-name.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.16-02-bcm63xx_enet-use-platform-data-for-dma-channel-numbe.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.16-03-bcm63xx_enet-remove-pointless-mac_id-check.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/001-4.16-04-bcm63xx_enet-use-platform-device-id-directly-for-mii.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/122-mtd-bcm63xxpart-add-of_match_table.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/130-pinctrl-add-bcm63xx-base-code.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/309-cfe_version_mod.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/310-cfe_simplify_detection.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/311-bcm63xxpart_use_cfedetection.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/321-irqchip-add-support-for-bcm6345-style-external-inter.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/331-MIPS-BCM63XX-define-variant-id-field.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/332-MIPS-BCM63XX-detect-BCM6328-variants.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/333-MIPS-BCM63XX-detect-BCM6362-variants.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/334-MIPS-BCM63XX-detect-BCM6368-variants.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/337-MIPS-BCM63XX-widen-cpuid-field.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/338-MIPS-BCM63XX-increase-number-of-IRQs.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/339-MIPS-BCM63XX-add-support-for-BCM63268.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/341-MIPS-BCM63XX-add-support-for-BCM6318.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/347-MIPS-BCM6318-USB-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/351-set-board-usbh-ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/371_add_of_node_available_by_alias.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/372_dont_register_pflash_when_available_in_dtb.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/383-bcm63xx_select_pinctrl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/391-MIPS-BCM63XX-do-not-register-uart.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/392-MIPS-BCM63XX-remove-leds-and-buttons.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/400-bcm963xx_flashmap.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/401-bcm963xx_real_rootfs_length.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/402_bcm63xx_enet_vlan_incoming_fixed.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/403-6358-enet1-external-mii-clk.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/415-MIPS-BCM63XX-export-the-attached-flash-type.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/420-BCM63XX-add-endian-check-for-ath9k.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/421-BCM63XX-add-led-pin-for-ath9k.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/423-bcm63xx_enet_add_b53_support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/424-bcm63xx_enet_no_request_mem_region.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/427-boards_probe_switch.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/499-allow_better_context_for_board_patches.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/500-board-D4PW.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/501-board-NB4.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/502-board-96338W2_E7T.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/503-board-CPVA642.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/504-board_dsl_274xb_rev_c.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/505-board_spw500v.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/506-board_gw6200_gw6000.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/507-board-MAGIC.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/508-board_hw553.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/509-board_rta1320_16m.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/510-board_spw303v.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/511-board_V2500V.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/512-board_BTV2110.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/514-board_ct536_ct5621.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/515-board_DWV-S0_fixes.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/516-board_96348A-122.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/519_board_CPVA502plus.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/520-bcm63xx-add-support-for-96368MVWG-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/521-bcm63xx-add-support-for-96368MVNgr-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/522-MIPS-BCM63XX-add-96328avng-reference-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/524-board_dsl_274xb_rev_f.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/525-board_96348w3.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/526-board_CT6373-1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/527-board_dva-g3810bn-tl-1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/528-board_nb6.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/529-board_fast2604.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/530-board_A4001N1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/531-board_AR-5387un.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/532-board_AR-5381u.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/533-board_rta770bw.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/534-board_hw556.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/535-board_rta770w.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/536-board_fast2704.patch (100%)
 rename target/linux/{brcm63xx/patches-4.19 => bcm63xx/patches-4.14}/537-board_fast2504n.patch (95%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/555-board_96318ref.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/556-board_96318ref_p300.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/557-board_bcm963269bhr.patch (100%)
 rename target/linux/{brcm63xx/patches-4.19 => bcm63xx/patches-4.14}/558-board_AR1004G.patch (95%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/559-board_vw6339gu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/560-board_963268gu_p300.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/561-board_WAP-5813n.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/562-board_VR-3025u.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/563-board_VR-3025un.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/564-board_P870HW-51a_v2.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/565-board_hw520.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/566-board_A4001N.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/567-board_dsl-2751b_e1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/568-board_DGND3700v1_3800B.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/569-board_homehub2a.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/570-board_HG655b.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/571-board_fast2704n.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/572-board_VR-3026e.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/573-board_R5010UNv2.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/574-board_HG622.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/575-board_EVG2000.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/576-board_AV4202N.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/577-board_VH4032N.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/578-board_R1000H.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/579-board_AR-5315u.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/580-board_AD1018.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/598-board_sr102.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/800-wl_exports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/801-ssb_export_fallback_sprom.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/802-rtl8367r_fix_RGMII_support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.14/804-bcm63xx_enet_63268_rgmii_ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/122-mtd-bcm63xxpart-add-of_match_table.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/130-pinctrl-add-bcm63xx-base-code.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/309-cfe_version_mod.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/310-cfe_simplify_detection.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/311-bcm63xxpart_use_cfedetection.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/321-irqchip-add-support-for-bcm6345-style-external-inter.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/331-MIPS-BCM63XX-define-variant-id-field.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/332-MIPS-BCM63XX-detect-BCM6328-variants.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/333-MIPS-BCM63XX-detect-BCM6362-variants.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/334-MIPS-BCM63XX-detect-BCM6368-variants.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/337-MIPS-BCM63XX-widen-cpuid-field.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/338-MIPS-BCM63XX-increase-number-of-IRQs.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/339-MIPS-BCM63XX-add-support-for-BCM63268.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/341-MIPS-BCM63XX-add-support-for-BCM6318.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/347-MIPS-BCM6318-USB-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/351-set-board-usbh-ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/371_add_of_node_available_by_alias.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/372_dont_register_pflash_when_available_in_dtb.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/383-bcm63xx_select_pinctrl.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/391-MIPS-BCM63XX-do-not-register-uart.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/392-MIPS-BCM63XX-remove-leds-and-buttons.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/400-bcm963xx_flashmap.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/401-bcm963xx_real_rootfs_length.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/402_bcm63xx_enet_vlan_incoming_fixed.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/403-6358-enet1-external-mii-clk.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/415-MIPS-BCM63XX-export-the-attached-flash-type.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/420-BCM63XX-add-endian-check-for-ath9k.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/421-BCM63XX-add-led-pin-for-ath9k.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/423-bcm63xx_enet_add_b53_support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/424-bcm63xx_enet_no_request_mem_region.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/427-boards_probe_switch.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/499-allow_better_context_for_board_patches.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/500-board-D4PW.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/501-board-NB4.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/502-board-96338W2_E7T.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/503-board-CPVA642.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/504-board_dsl_274xb_rev_c.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/505-board_spw500v.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/506-board_gw6200_gw6000.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/507-board-MAGIC.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/508-board_hw553.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/509-board_rta1320_16m.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/510-board_spw303v.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/511-board_V2500V.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/512-board_BTV2110.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/514-board_ct536_ct5621.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/515-board_DWV-S0_fixes.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/516-board_96348A-122.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/519_board_CPVA502plus.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/520-bcm63xx-add-support-for-96368MVWG-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/521-bcm63xx-add-support-for-96368MVNgr-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/522-MIPS-BCM63XX-add-96328avng-reference-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/524-board_dsl_274xb_rev_f.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/525-board_96348w3.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/526-board_CT6373-1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/527-board_dva-g3810bn-tl-1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/528-board_nb6.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/529-board_fast2604.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/530-board_A4001N1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/531-board_AR-5387un.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/532-board_AR-5381u.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/533-board_rta770bw.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/534-board_hw556.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/535-board_rta770w.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/536-board_fast2704.patch (100%)
 rename target/linux/{brcm63xx/patches-4.14 => bcm63xx/patches-4.19}/537-board_fast2504n.patch (95%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/555-board_96318ref.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/556-board_96318ref_p300.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/557-board_bcm963269bhr.patch (100%)
 rename target/linux/{brcm63xx/patches-4.14 => bcm63xx/patches-4.19}/558-board_AR1004G.patch (95%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/559-board_vw6339gu.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/560-board_963268gu_p300.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/561-board_WAP-5813n.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/562-board_VR-3025u.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/563-board_VR-3025un.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/564-board_P870HW-51a_v2.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/565-board_hw520.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/566-board_A4001N.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/567-board_dsl-2751b_e1.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/568-board_DGND3700v1_3800B.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/569-board_homehub2a.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/570-board_HG655b.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/571-board_fast2704n.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/572-board_VR-3026e.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/573-board_R5010UNv2.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/574-board_HG622.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/575-board_EVG2000.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/576-board_AV4202N.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/577-board_VH4032N.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/578-board_R1000H.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/579-board_AR-5315u.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/580-board_AD1018.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/598-board_sr102.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/800-wl_exports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/801-ssb_export_fallback_sprom.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/802-rtl8367r_fix_RGMII_support.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/patches-4.19/804-bcm63xx_enet_63268_rgmii_ports.patch (100%)
 rename target/linux/{brcm63xx => bcm63xx}/profiles/default.mk (100%)
 rename target/linux/{brcm63xx => bcm63xx}/smp/config-default (100%)
 rename target/linux/{brcm63xx => bcm63xx}/smp/target.mk (100%)

diff --git a/package/kernel/broadcom-wl/Makefile b/package/kernel/broadcom-wl/Makefile
index 714cbab39c..68581c27d0 100644
--- a/package/kernel/broadcom-wl/Makefile
+++ b/package/kernel/broadcom-wl/Makefile
@@ -34,13 +34,13 @@ define Package/broadcom-wl/Default
   CATEGORY:=Kernel modules
   DEPENDS:=@(PACKAGE_kmod-brcm-wl||PACKAGE_kmod-brcm-wl-mini)
   SUBMENU:=Proprietary BCM43xx WiFi driver
-  SUBMENUDEP:=(TARGET_bcm47xx||TARGET_brcm63xx)
+  SUBMENUDEP:=(TARGET_bcm47xx||TARGET_bcm63xx)
 endef
 
 define KernelPackage/brcm-wl/Default
   $(call Package/broadcom-wl/Default)
   SECTION:=kernel
-  DEPENDS:=@(TARGET_bcm47xx||TARGET_brcm63xx) +wireless-tools
+  DEPENDS:=@(TARGET_bcm47xx||TARGET_bcm63xx) +wireless-tools
   TITLE:=Kernel driver for BCM43xx chipsets
   FILES:=$(PKG_BUILD_DIR)/driver$(1)/wl.ko $(PKG_BUILD_DIR)/glue/wl_glue.ko
   AUTOLOAD:=$(call AutoProbe,wl)
diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index c79f1d9650..7549542308 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -418,7 +418,7 @@ $(eval $(call KernelPackage,softdog))
 define KernelPackage/ssb
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Silicon Sonics Backplane glue code
-  DEPENDS:=@PCI_SUPPORT @!TARGET_bcm47xx @!TARGET_brcm63xx
+  DEPENDS:=@PCI_SUPPORT @!TARGET_bcm47xx @!TARGET_bcm63xx
   KCONFIG:=\
 	CONFIG_SSB \
 	CONFIG_SSB_B43_PCI_BRIDGE=y \
diff --git a/package/kernel/mac80211/broadcom.mk b/package/kernel/mac80211/broadcom.mk
index 74d6b8d6ce..c725c4924f 100644
--- a/package/kernel/mac80211/broadcom.mk
+++ b/package/kernel/mac80211/broadcom.mk
@@ -118,7 +118,7 @@ define KernelPackage/b43/config
 config PACKAGE_B43_USE_SSB
 	select PACKAGE_kmod-ssb
 	tristate
-	depends on !TARGET_bcm47xx && !TARGET_brcm63xx
+	depends on !TARGET_bcm47xx && !TARGET_bcm63xx
 	default PACKAGE_kmod-b43 if PACKAGE_B43_BUSES_BCMA_AND_SSB
 	default PACKAGE_kmod-b43 if PACKAGE_B43_BUSES_SSB
 
@@ -347,7 +347,7 @@ define KernelPackage/b43legacy
   URL:=https://wireless.wiki.kernel.org/en/users/drivers/b43
   KCONFIG:= \
   	CONFIG_HW_RANDOM=y
-  DEPENDS+= +kmod-mac80211 +!(TARGET_bcm47xx||TARGET_brcm63xx):kmod-ssb @!TARGET_bcm47xx_mips74k +b43legacy-firmware
+  DEPENDS+= +kmod-mac80211 +!(TARGET_bcm47xx||TARGET_bcm63xx):kmod-ssb @!TARGET_bcm47xx_mips74k +b43legacy-firmware
   FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/broadcom/b43legacy/b43legacy.ko
   AUTOLOAD:=$(call AutoProbe,b43legacy)
   MENU:=1
diff --git a/package/system/mtd/src/Makefile b/package/system/mtd/src/Makefile
index 7299d4d42f..7f06996e19 100644
--- a/package/system/mtd/src/Makefile
+++ b/package/system/mtd/src/Makefile
@@ -13,7 +13,7 @@ obj.gemini = $(obj.wrgg)
 obj.brcm = trx.o
 obj.bcm47xx = $(obj.brcm)
 obj.bcm53xx = $(obj.brcm) $(obj.seama)
-obj.brcm63xx = imagetag.o
+obj.bcm63xx = imagetag.o
 obj.ramips = $(obj.seama) $(obj.tpl) $(obj.wrg)
 obj.mvebu = linksys_bootcount.o
 obj.kirkwood = linksys_bootcount.o
diff --git a/target/linux/brcm63xx/Makefile b/target/linux/bcm63xx/Makefile
similarity index 97%
rename from target/linux/brcm63xx/Makefile
rename to target/linux/bcm63xx/Makefile
index 2d31b66735..b31d86bb8d 100644
--- a/target/linux/brcm63xx/Makefile
+++ b/target/linux/bcm63xx/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 ARCH:=mips
-BOARD:=brcm63xx
+BOARD:=bcm63xx
 BOARDNAME:=Broadcom BCM63xx
 SUBTARGETS:=generic smp
 FEATURES:=squashfs usb atm pci pcmcia usbgadget
diff --git a/target/linux/brcm63xx/base-files/etc/board.d/01_leds b/target/linux/bcm63xx/base-files/etc/board.d/01_leds
similarity index 100%
rename from target/linux/brcm63xx/base-files/etc/board.d/01_leds
rename to target/linux/bcm63xx/base-files/etc/board.d/01_leds
diff --git a/target/linux/brcm63xx/base-files/etc/board.d/02_network b/target/linux/bcm63xx/base-files/etc/board.d/02_network
similarity index 100%
rename from target/linux/brcm63xx/base-files/etc/board.d/02_network
rename to target/linux/bcm63xx/base-files/etc/board.d/02_network
diff --git a/target/linux/brcm63xx/base-files/etc/diag.sh b/target/linux/bcm63xx/base-files/etc/diag.sh
similarity index 100%
rename from target/linux/brcm63xx/base-files/etc/diag.sh
rename to target/linux/bcm63xx/base-files/etc/diag.sh
diff --git a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/bcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
similarity index 100%
rename from target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
rename to target/linux/bcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
diff --git a/target/linux/brcm63xx/base-files/etc/uci-defaults/09_fix_crc b/target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc
similarity index 100%
rename from target/linux/brcm63xx/base-files/etc/uci-defaults/09_fix_crc
rename to target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc
diff --git a/target/linux/brcm63xx/base-files/lib/upgrade/platform.sh b/target/linux/bcm63xx/base-files/lib/upgrade/platform.sh
similarity index 100%
rename from target/linux/brcm63xx/base-files/lib/upgrade/platform.sh
rename to target/linux/bcm63xx/base-files/lib/upgrade/platform.sh
diff --git a/target/linux/brcm63xx/config-4.14 b/target/linux/bcm63xx/config-4.14
similarity index 100%
rename from target/linux/brcm63xx/config-4.14
rename to target/linux/bcm63xx/config-4.14
diff --git a/target/linux/brcm63xx/config-4.19 b/target/linux/bcm63xx/config-4.19
similarity index 100%
rename from target/linux/brcm63xx/config-4.19
rename to target/linux/bcm63xx/config-4.19
diff --git a/target/linux/brcm63xx/dts/bcm3368-netgear-cvg834g.dts b/target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm3368-netgear-cvg834g.dts
rename to target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts
diff --git a/target/linux/brcm63xx/dts/bcm3368.dtsi b/target/linux/bcm63xx/dts/bcm3368.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm3368.dtsi
rename to target/linux/bcm63xx/dts/bcm3368.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm63168-sky-sr102.dts b/target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm63168-sky-sr102.dts
rename to target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts
diff --git a/target/linux/brcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts b/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts
rename to target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts
diff --git a/target/linux/brcm63xx/dts/bcm6318-brcm-bcm96318ref.dts b/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6318-brcm-bcm96318ref.dts
rename to target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts
diff --git a/target/linux/brcm63xx/dts/bcm6318-comtrend-ar-5315u.dts b/target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6318-comtrend-ar-5315u.dts
rename to target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts
diff --git a/target/linux/brcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts b/target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts
rename to target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts
diff --git a/target/linux/brcm63xx/dts/bcm6318-sagem-fast-2704n.dts b/target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6318-sagem-fast-2704n.dts
rename to target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts
diff --git a/target/linux/brcm63xx/dts/bcm6318.dtsi b/target/linux/bcm63xx/dts/bcm6318.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6318.dtsi
rename to target/linux/bcm63xx/dts/bcm6318.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts b/target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts
rename to target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts
diff --git a/target/linux/brcm63xx/dts/bcm63268-inteno-vg50.dts b/target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm63268-inteno-vg50.dts
rename to target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts
diff --git a/target/linux/brcm63xx/dts/bcm63268.dtsi b/target/linux/bcm63xx/dts/bcm63268.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm63268.dtsi
rename to target/linux/bcm63xx/dts/bcm63268.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts b/target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts
rename to target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-adb-a4001n.dts b/target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-adb-a4001n.dts
rename to target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-adb-a4001n1.dts b/target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-adb-a4001n1.dts
rename to target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-brcm-bcm963281tan.dts b/target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-brcm-bcm963281tan.dts
rename to target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-brcm-bcm96328avng.dts b/target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-brcm-bcm96328avng.dts
rename to target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-comtrend-ar-5381u.dts b/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-comtrend-ar-5381u.dts
rename to target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-comtrend-ar-5387un.dts b/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-comtrend-ar-5387un.dts
rename to target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts b/target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts
rename to target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-nucom-r5010un-v2.dts b/target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-nucom-r5010un-v2.dts
rename to target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts b/target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts
rename to target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts b/target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts
rename to target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts
diff --git a/target/linux/brcm63xx/dts/bcm6328.dtsi b/target/linux/bcm63xx/dts/bcm6328.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6328.dtsi
rename to target/linux/bcm63xx/dts/bcm6328.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6338-brcm-bcm96338gw.dts b/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6338-brcm-bcm96338gw.dts
rename to target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts
diff --git a/target/linux/brcm63xx/dts/bcm6338-brcm-bcm96338w.dts b/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6338-brcm-bcm96338w.dts
rename to target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts
diff --git a/target/linux/brcm63xx/dts/bcm6338-d-link-dsl-2640u.dts b/target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6338-d-link-dsl-2640u.dts
rename to target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts
diff --git a/target/linux/brcm63xx/dts/bcm6338-dynalink-rta1320.dts b/target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6338-dynalink-rta1320.dts
rename to target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts
diff --git a/target/linux/brcm63xx/dts/bcm6338.dtsi b/target/linux/bcm63xx/dts/bcm6338.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6338.dtsi
rename to target/linux/bcm63xx/dts/bcm6338.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts b/target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts
rename to target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts
diff --git a/target/linux/brcm63xx/dts/bcm6345-dynalink-rta770bw.dts b/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6345-dynalink-rta770bw.dts
rename to target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts
diff --git a/target/linux/brcm63xx/dts/bcm6345-dynalink-rta770w.dts b/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6345-dynalink-rta770w.dts
rename to target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts
diff --git a/target/linux/brcm63xx/dts/bcm6345.dtsi b/target/linux/bcm63xx/dts/bcm6345.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6345.dtsi
rename to target/linux/bcm63xx/dts/bcm6345.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6348-asmax-ar-1004g.dts b/target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-asmax-ar-1004g.dts
rename to target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-belkin-f5d7633.dts b/target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-belkin-f5d7633.dts
rename to target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts
rename to target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts
rename to target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348gw.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348gw.dts
rename to target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348r.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-brcm-bcm96348r.dts
rename to target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-bt-voyager-2110.dts b/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-bt-voyager-2110.dts
rename to target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts b/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts
rename to target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-comtrend-ct-5365.dts b/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-comtrend-ct-5365.dts
rename to target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-comtrend-ct-536plus.dts b/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-comtrend-ct-536plus.dts
rename to target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts b/target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts
rename to target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-davolink-dv-201amr.dts b/target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-davolink-dv-201amr.dts
rename to target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-dynalink-rta1025w.dts b/target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-dynalink-rta1025w.dts
rename to target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-inventel-livebox-1.dts b/target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-inventel-livebox-1.dts
rename to target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-netgear-dg834g-v4.dts b/target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-netgear-dg834g-v4.dts
rename to target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts b/target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts
rename to target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-sagem-fast-2404.dts b/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-sagem-fast-2404.dts
rename to target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-sagem-fast-2604.dts b/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-sagem-fast-2604.dts
rename to target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts b/target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts
rename to target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-tecom-gw6000.dts b/target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-tecom-gw6000.dts
rename to target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-tecom-gw6200.dts b/target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-tecom-gw6200.dts
rename to target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-telsey-cpva502plus.dts b/target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-telsey-cpva502plus.dts
rename to target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-telsey-magic.dts b/target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-telsey-magic.dts
rename to target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts b/target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts
rename to target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348-usrobotics-usr9108.dts b/target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348-usrobotics-usr9108.dts
rename to target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts
diff --git a/target/linux/brcm63xx/dts/bcm6348.dtsi b/target/linux/bcm63xx/dts/bcm6348.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6348.dtsi
rename to target/linux/bcm63xx/dts/bcm6348.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6358-alcatel-rg100a.dts b/target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-alcatel-rg100a.dts
rename to target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-brcm-bcm96358vw.dts b/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-brcm-bcm96358vw.dts
rename to target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts b/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts
rename to target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-bt-home-hub-2-a.dts b/target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-bt-home-hub-2-a.dts
rename to target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-comtrend-ct-6373.dts b/target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-comtrend-ct-6373.dts
rename to target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-d-link-dsl-2650u.dts b/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-d-link-dsl-2650u.dts
rename to target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts b/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts
rename to target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts b/target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts
rename to target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg553.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg553.dts
rename to target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts
rename to target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts
rename to target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts
rename to target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-pirelli-a226g.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-pirelli-a226g.dts
rename to target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
rename to target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-pirelli-a226m.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-pirelli-a226m.dts
rename to target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-pirelli-agpf-s0.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-pirelli-agpf-s0.dts
rename to target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts b/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts
rename to target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts b/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts
rename to target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts b/target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts
rename to target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358-telsey-cpva642.dts b/target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358-telsey-cpva642.dts
rename to target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts
diff --git a/target/linux/brcm63xx/dts/bcm6358.dtsi b/target/linux/bcm63xx/dts/bcm6358.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6358.dtsi
rename to target/linux/bcm63xx/dts/bcm6358.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts b/target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts
rename to target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts
diff --git a/target/linux/brcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts b/target/linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts
rename to target/linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts
diff --git a/target/linux/brcm63xx/dts/bcm6362-sagem-fast-2504n.dts b/target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6362-sagem-fast-2504n.dts
rename to target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts
diff --git a/target/linux/brcm63xx/dts/bcm6362.dtsi b/target/linux/bcm63xx/dts/bcm6362.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6362.dtsi
rename to target/linux/bcm63xx/dts/bcm6362.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6368-actiontec-r1000h.dts b/target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-actiontec-r1000h.dts
rename to target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-adb-av4202n.dts b/target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-adb-av4202n.dts
rename to target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts b/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts
rename to target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts b/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts
rename to target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-comtrend-vr-3025u.dts b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-comtrend-vr-3025u.dts
rename to target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-comtrend-vr-3025un.dts b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-comtrend-vr-3025un.dts
rename to target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-comtrend-vr-3026e.dts b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-comtrend-vr-3026e.dts
rename to target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-huawei-echolife-hg622.dts b/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-huawei-echolife-hg622.dts
rename to target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts b/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts
rename to target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
rename to target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-observa-vh4032n.dts b/target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-observa-vh4032n.dts
rename to target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts b/target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts
rename to target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts
diff --git a/target/linux/brcm63xx/dts/bcm6368.dtsi b/target/linux/bcm63xx/dts/bcm6368.dtsi
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6368.dtsi
rename to target/linux/bcm63xx/dts/bcm6368.dtsi
diff --git a/target/linux/brcm63xx/dts/bcm6369-comtrend-wap-5813n.dts b/target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6369-comtrend-wap-5813n.dts
rename to target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts
diff --git a/target/linux/brcm63xx/dts/bcm6369-netgear-evg2000.dts b/target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts
similarity index 100%
rename from target/linux/brcm63xx/dts/bcm6369-netgear-evg2000.dts
rename to target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts
diff --git a/target/linux/brcm63xx/generic/target.mk b/target/linux/bcm63xx/generic/target.mk
similarity index 100%
rename from target/linux/brcm63xx/generic/target.mk
rename to target/linux/bcm63xx/generic/target.mk
diff --git a/target/linux/brcm63xx/image/Makefile b/target/linux/bcm63xx/image/Makefile
similarity index 100%
rename from target/linux/brcm63xx/image/Makefile
rename to target/linux/bcm63xx/image/Makefile
diff --git a/target/linux/brcm63xx/image/README.images-bcm63xx b/target/linux/bcm63xx/image/README.images-bcm63xx
similarity index 100%
rename from target/linux/brcm63xx/image/README.images-bcm63xx
rename to target/linux/bcm63xx/image/README.images-bcm63xx
diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/bcm63xx/image/bcm63xx.mk
similarity index 100%
rename from target/linux/brcm63xx/image/bcm63xx.mk
rename to target/linux/bcm63xx/image/bcm63xx.mk
diff --git a/target/linux/brcm63xx/image/lzma-loader/Makefile b/target/linux/bcm63xx/image/lzma-loader/Makefile
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/Makefile
rename to target/linux/bcm63xx/image/lzma-loader/Makefile
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/LzmaDecode.c b/target/linux/bcm63xx/image/lzma-loader/src/LzmaDecode.c
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/LzmaDecode.c
rename to target/linux/bcm63xx/image/lzma-loader/src/LzmaDecode.c
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/LzmaDecode.h b/target/linux/bcm63xx/image/lzma-loader/src/LzmaDecode.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/LzmaDecode.h
rename to target/linux/bcm63xx/image/lzma-loader/src/LzmaDecode.h
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/LzmaTypes.h b/target/linux/bcm63xx/image/lzma-loader/src/LzmaTypes.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/LzmaTypes.h
rename to target/linux/bcm63xx/image/lzma-loader/src/LzmaTypes.h
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/Makefile b/target/linux/bcm63xx/image/lzma-loader/src/Makefile
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/Makefile
rename to target/linux/bcm63xx/image/lzma-loader/src/Makefile
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/board.c b/target/linux/bcm63xx/image/lzma-loader/src/board.c
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/board.c
rename to target/linux/bcm63xx/image/lzma-loader/src/board.c
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/cache.c b/target/linux/bcm63xx/image/lzma-loader/src/cache.c
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/cache.c
rename to target/linux/bcm63xx/image/lzma-loader/src/cache.c
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/cache.h b/target/linux/bcm63xx/image/lzma-loader/src/cache.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/cache.h
rename to target/linux/bcm63xx/image/lzma-loader/src/cache.h
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/cacheops.h b/target/linux/bcm63xx/image/lzma-loader/src/cacheops.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/cacheops.h
rename to target/linux/bcm63xx/image/lzma-loader/src/cacheops.h
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/config.h b/target/linux/bcm63xx/image/lzma-loader/src/config.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/config.h
rename to target/linux/bcm63xx/image/lzma-loader/src/config.h
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/cp0regdef.h b/target/linux/bcm63xx/image/lzma-loader/src/cp0regdef.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/cp0regdef.h
rename to target/linux/bcm63xx/image/lzma-loader/src/cp0regdef.h
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/head.S b/target/linux/bcm63xx/image/lzma-loader/src/head.S
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/head.S
rename to target/linux/bcm63xx/image/lzma-loader/src/head.S
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/loader.c b/target/linux/bcm63xx/image/lzma-loader/src/loader.c
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/loader.c
rename to target/linux/bcm63xx/image/lzma-loader/src/loader.c
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/loader.lds b/target/linux/bcm63xx/image/lzma-loader/src/loader.lds
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/loader.lds
rename to target/linux/bcm63xx/image/lzma-loader/src/loader.lds
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/loader2.lds b/target/linux/bcm63xx/image/lzma-loader/src/loader2.lds
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/loader2.lds
rename to target/linux/bcm63xx/image/lzma-loader/src/loader2.lds
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/lzma-data.lds b/target/linux/bcm63xx/image/lzma-loader/src/lzma-data.lds
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/lzma-data.lds
rename to target/linux/bcm63xx/image/lzma-loader/src/lzma-data.lds
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/printf.c b/target/linux/bcm63xx/image/lzma-loader/src/printf.c
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/printf.c
rename to target/linux/bcm63xx/image/lzma-loader/src/printf.c
diff --git a/target/linux/brcm63xx/image/lzma-loader/src/printf.h b/target/linux/bcm63xx/image/lzma-loader/src/printf.h
similarity index 100%
rename from target/linux/brcm63xx/image/lzma-loader/src/printf.h
rename to target/linux/bcm63xx/image/lzma-loader/src/printf.h
diff --git a/target/linux/brcm63xx/modules.mk b/target/linux/bcm63xx/modules.mk
similarity index 91%
rename from target/linux/brcm63xx/modules.mk
rename to target/linux/bcm63xx/modules.mk
index 6f6aa3875a..bc244c8d7d 100644
--- a/target/linux/brcm63xx/modules.mk
+++ b/target/linux/bcm63xx/modules.mk
@@ -8,7 +8,7 @@
 define KernelPackage/pcmcia-bcm63xx
   SUBMENU:=$(PCMCIA_MENU)
   TITLE:=Broadcom BCM63xx PCMCIA support
-  DEPENDS:=@TARGET_brcm63xx +kmod-pcmcia-rsrc
+  DEPENDS:=@TARGET_bcm63xx +kmod-pcmcia-rsrc
   KCONFIG:=CONFIG_PCMCIA_BCM63XX
   FILES:=$(LINUX_DIR)/drivers/pcmcia/bcm63xx_pcmcia.ko
   AUTOLOAD:=$(call AutoLoad,41,bcm63xx_pcmcia)
@@ -23,7 +23,7 @@ $(eval $(call KernelPackage,pcmcia-bcm63xx))
 define KernelPackage/bcm63xx-udc
   SUBMENU:=$(USB_MENU)
   TITLE:=Broadcom BCM63xx UDC support
-  DEPENDS:=@TARGET_brcm63xx +kmod-usb-gadget
+  DEPENDS:=@TARGET_bcm63xx +kmod-usb-gadget
   KCONFIG:=CONFIG_USB_BCM63XX_UDC
   FILES:= \
 	$(LINUX_DIR)/drivers/usb/gadget/udc/bcm63xx_udc.ko
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-01-MIPS-BCM63XX-add-clkdev-lookup-support.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-01-MIPS-BCM63XX-add-clkdev-lookup-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-01-MIPS-BCM63XX-add-clkdev-lookup-support.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-01-MIPS-BCM63XX-add-clkdev-lookup-support.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-02-MIPS-BCM63XX-provide-periph-clock-as-refclk-for-uart.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-02-MIPS-BCM63XX-provide-periph-clock-as-refclk-for-uart.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-02-MIPS-BCM63XX-provide-periph-clock-as-refclk-for-uart.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-02-MIPS-BCM63XX-provide-periph-clock-as-refclk-for-uart.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-03-tty-bcm63xx_uart-use-refclk-for-the-expected-clock-n.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-03-tty-bcm63xx_uart-use-refclk-for-the-expected-clock-n.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-03-tty-bcm63xx_uart-use-refclk-for-the-expected-clock-n.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-03-tty-bcm63xx_uart-use-refclk-for-the-expected-clock-n.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-04-tty-bcm63xx_uart-allow-naming-clock-in-device-tree.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-04-tty-bcm63xx_uart-allow-naming-clock-in-device-tree.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-04-tty-bcm63xx_uart-allow-naming-clock-in-device-tree.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-04-tty-bcm63xx_uart-allow-naming-clock-in-device-tree.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-05-MIPS-BCM63XX-move-the-HSSPI-PLL-HZ-into-its-own-cloc.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-05-MIPS-BCM63XX-move-the-HSSPI-PLL-HZ-into-its-own-cloc.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-05-MIPS-BCM63XX-move-the-HSSPI-PLL-HZ-into-its-own-cloc.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-05-MIPS-BCM63XX-move-the-HSSPI-PLL-HZ-into-its-own-cloc.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-06-MIPS-BCM63XX-provide-enet-clocks-as-enet-to-the-ethe.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-06-MIPS-BCM63XX-provide-enet-clocks-as-enet-to-the-ethe.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-06-MIPS-BCM63XX-provide-enet-clocks-as-enet-to-the-ethe.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-06-MIPS-BCM63XX-provide-enet-clocks-as-enet-to-the-ethe.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-07-MIPS-BCM63XX-split-out-swpkt_sar-usb-clocks.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-07-MIPS-BCM63XX-split-out-swpkt_sar-usb-clocks.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-07-MIPS-BCM63XX-split-out-swpkt_sar-usb-clocks.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-07-MIPS-BCM63XX-split-out-swpkt_sar-usb-clocks.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-10-bcm63xx_enet-do-not-rely-on-probe-order.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-10-bcm63xx_enet-do-not-rely-on-probe-order.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-10-bcm63xx_enet-do-not-rely-on-probe-order.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-10-bcm63xx_enet-do-not-rely-on-probe-order.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-11-bcm63xx_enet-use-managed-functions-for-clock-ioremap.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-11-bcm63xx_enet-use-managed-functions-for-clock-ioremap.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-11-bcm63xx_enet-use-managed-functions-for-clock-ioremap.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-11-bcm63xx_enet-use-managed-functions-for-clock-ioremap.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-12-bcm63xx_enet-drop-unneeded-NULL-phy_clk-check.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-12-bcm63xx_enet-drop-unneeded-NULL-phy_clk-check.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-12-bcm63xx_enet-drop-unneeded-NULL-phy_clk-check.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-12-bcm63xx_enet-drop-unneeded-NULL-phy_clk-check.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.15-13-bcm63xx_enet-remove-unneeded-include.patch b/target/linux/bcm63xx/patches-4.14/001-4.15-13-bcm63xx_enet-remove-unneeded-include.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.15-13-bcm63xx_enet-remove-unneeded-include.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.15-13-bcm63xx_enet-remove-unneeded-include.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.16-01-bcm63xx_enet-just-use-enet-as-the-clock-name.patch b/target/linux/bcm63xx/patches-4.14/001-4.16-01-bcm63xx_enet-just-use-enet-as-the-clock-name.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.16-01-bcm63xx_enet-just-use-enet-as-the-clock-name.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.16-01-bcm63xx_enet-just-use-enet-as-the-clock-name.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.16-02-bcm63xx_enet-use-platform-data-for-dma-channel-numbe.patch b/target/linux/bcm63xx/patches-4.14/001-4.16-02-bcm63xx_enet-use-platform-data-for-dma-channel-numbe.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.16-02-bcm63xx_enet-use-platform-data-for-dma-channel-numbe.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.16-02-bcm63xx_enet-use-platform-data-for-dma-channel-numbe.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.16-03-bcm63xx_enet-remove-pointless-mac_id-check.patch b/target/linux/bcm63xx/patches-4.14/001-4.16-03-bcm63xx_enet-remove-pointless-mac_id-check.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.16-03-bcm63xx_enet-remove-pointless-mac_id-check.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.16-03-bcm63xx_enet-remove-pointless-mac_id-check.patch
diff --git a/target/linux/brcm63xx/patches-4.14/001-4.16-04-bcm63xx_enet-use-platform-device-id-directly-for-mii.patch b/target/linux/bcm63xx/patches-4.14/001-4.16-04-bcm63xx_enet-use-platform-device-id-directly-for-mii.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/001-4.16-04-bcm63xx_enet-use-platform-device-id-directly-for-mii.patch
rename to target/linux/bcm63xx/patches-4.14/001-4.16-04-bcm63xx_enet-use-platform-device-id-directly-for-mii.patch
diff --git a/target/linux/brcm63xx/patches-4.14/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch b/target/linux/bcm63xx/patches-4.14/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch
rename to target/linux/bcm63xx/patches-4.14/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch
diff --git a/target/linux/brcm63xx/patches-4.14/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch b/target/linux/bcm63xx/patches-4.14/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch
rename to target/linux/bcm63xx/patches-4.14/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch
diff --git a/target/linux/brcm63xx/patches-4.14/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch b/target/linux/bcm63xx/patches-4.14/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch
rename to target/linux/bcm63xx/patches-4.14/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch
diff --git a/target/linux/brcm63xx/patches-4.14/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch b/target/linux/bcm63xx/patches-4.14/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch
rename to target/linux/bcm63xx/patches-4.14/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch
diff --git a/target/linux/brcm63xx/patches-4.14/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch b/target/linux/bcm63xx/patches-4.14/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch
rename to target/linux/bcm63xx/patches-4.14/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch
diff --git a/target/linux/brcm63xx/patches-4.14/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch b/target/linux/bcm63xx/patches-4.14/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch
rename to target/linux/bcm63xx/patches-4.14/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch
diff --git a/target/linux/brcm63xx/patches-4.14/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch b/target/linux/bcm63xx/patches-4.14/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch
rename to target/linux/bcm63xx/patches-4.14/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch
diff --git a/target/linux/brcm63xx/patches-4.14/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch b/target/linux/bcm63xx/patches-4.14/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch
rename to target/linux/bcm63xx/patches-4.14/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch
diff --git a/target/linux/brcm63xx/patches-4.14/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch b/target/linux/bcm63xx/patches-4.14/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch
rename to target/linux/bcm63xx/patches-4.14/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch
diff --git a/target/linux/brcm63xx/patches-4.14/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch b/target/linux/bcm63xx/patches-4.14/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch
rename to target/linux/bcm63xx/patches-4.14/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch
diff --git a/target/linux/brcm63xx/patches-4.14/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch b/target/linux/bcm63xx/patches-4.14/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch
rename to target/linux/bcm63xx/patches-4.14/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch b/target/linux/bcm63xx/patches-4.14/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch
rename to target/linux/bcm63xx/patches-4.14/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch
diff --git a/target/linux/brcm63xx/patches-4.14/122-mtd-bcm63xxpart-add-of_match_table.patch b/target/linux/bcm63xx/patches-4.14/122-mtd-bcm63xxpart-add-of_match_table.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/122-mtd-bcm63xxpart-add-of_match_table.patch
rename to target/linux/bcm63xx/patches-4.14/122-mtd-bcm63xxpart-add-of_match_table.patch
diff --git a/target/linux/brcm63xx/patches-4.14/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch b/target/linux/bcm63xx/patches-4.14/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch
rename to target/linux/bcm63xx/patches-4.14/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch
diff --git a/target/linux/brcm63xx/patches-4.14/130-pinctrl-add-bcm63xx-base-code.patch b/target/linux/bcm63xx/patches-4.14/130-pinctrl-add-bcm63xx-base-code.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/130-pinctrl-add-bcm63xx-base-code.patch
rename to target/linux/bcm63xx/patches-4.14/130-pinctrl-add-bcm63xx-base-code.patch
diff --git a/target/linux/brcm63xx/patches-4.14/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.14/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.14/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch b/target/linux/bcm63xx/patches-4.14/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch
rename to target/linux/bcm63xx/patches-4.14/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch
diff --git a/target/linux/brcm63xx/patches-4.14/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.14/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.14/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch b/target/linux/bcm63xx/patches-4.14/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch
rename to target/linux/bcm63xx/patches-4.14/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch
diff --git a/target/linux/brcm63xx/patches-4.14/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.14/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.14/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch b/target/linux/bcm63xx/patches-4.14/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch
rename to target/linux/bcm63xx/patches-4.14/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch
diff --git a/target/linux/brcm63xx/patches-4.14/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.14/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.14/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch b/target/linux/bcm63xx/patches-4.14/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch
rename to target/linux/bcm63xx/patches-4.14/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch
diff --git a/target/linux/brcm63xx/patches-4.14/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.14/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.14/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch b/target/linux/bcm63xx/patches-4.14/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch
rename to target/linux/bcm63xx/patches-4.14/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch
diff --git a/target/linux/brcm63xx/patches-4.14/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch b/target/linux/bcm63xx/patches-4.14/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch
rename to target/linux/bcm63xx/patches-4.14/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch
diff --git a/target/linux/brcm63xx/patches-4.14/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch b/target/linux/bcm63xx/patches-4.14/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch
rename to target/linux/bcm63xx/patches-4.14/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch
diff --git a/target/linux/brcm63xx/patches-4.14/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch b/target/linux/bcm63xx/patches-4.14/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch
rename to target/linux/bcm63xx/patches-4.14/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch
diff --git a/target/linux/brcm63xx/patches-4.14/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch b/target/linux/bcm63xx/patches-4.14/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch
rename to target/linux/bcm63xx/patches-4.14/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch
diff --git a/target/linux/brcm63xx/patches-4.14/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch b/target/linux/bcm63xx/patches-4.14/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch
rename to target/linux/bcm63xx/patches-4.14/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch
diff --git a/target/linux/brcm63xx/patches-4.14/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch b/target/linux/bcm63xx/patches-4.14/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch
rename to target/linux/bcm63xx/patches-4.14/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch
diff --git a/target/linux/brcm63xx/patches-4.14/309-cfe_version_mod.patch b/target/linux/bcm63xx/patches-4.14/309-cfe_version_mod.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/309-cfe_version_mod.patch
rename to target/linux/bcm63xx/patches-4.14/309-cfe_version_mod.patch
diff --git a/target/linux/brcm63xx/patches-4.14/310-cfe_simplify_detection.patch b/target/linux/bcm63xx/patches-4.14/310-cfe_simplify_detection.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/310-cfe_simplify_detection.patch
rename to target/linux/bcm63xx/patches-4.14/310-cfe_simplify_detection.patch
diff --git a/target/linux/brcm63xx/patches-4.14/311-bcm63xxpart_use_cfedetection.patch b/target/linux/bcm63xx/patches-4.14/311-bcm63xxpart_use_cfedetection.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/311-bcm63xxpart_use_cfedetection.patch
rename to target/linux/bcm63xx/patches-4.14/311-bcm63xxpart_use_cfedetection.patch
diff --git a/target/linux/brcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch b/target/linux/bcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
rename to target/linux/bcm63xx/patches-4.14/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
diff --git a/target/linux/brcm63xx/patches-4.14/321-irqchip-add-support-for-bcm6345-style-external-inter.patch b/target/linux/bcm63xx/patches-4.14/321-irqchip-add-support-for-bcm6345-style-external-inter.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/321-irqchip-add-support-for-bcm6345-style-external-inter.patch
rename to target/linux/bcm63xx/patches-4.14/321-irqchip-add-support-for-bcm6345-style-external-inter.patch
diff --git a/target/linux/brcm63xx/patches-4.14/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch b/target/linux/bcm63xx/patches-4.14/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch
rename to target/linux/bcm63xx/patches-4.14/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch
diff --git a/target/linux/brcm63xx/patches-4.14/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch b/target/linux/bcm63xx/patches-4.14/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch
rename to target/linux/bcm63xx/patches-4.14/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch
diff --git a/target/linux/brcm63xx/patches-4.14/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch b/target/linux/bcm63xx/patches-4.14/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch
rename to target/linux/bcm63xx/patches-4.14/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch
diff --git a/target/linux/brcm63xx/patches-4.14/331-MIPS-BCM63XX-define-variant-id-field.patch b/target/linux/bcm63xx/patches-4.14/331-MIPS-BCM63XX-define-variant-id-field.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/331-MIPS-BCM63XX-define-variant-id-field.patch
rename to target/linux/bcm63xx/patches-4.14/331-MIPS-BCM63XX-define-variant-id-field.patch
diff --git a/target/linux/brcm63xx/patches-4.14/332-MIPS-BCM63XX-detect-BCM6328-variants.patch b/target/linux/bcm63xx/patches-4.14/332-MIPS-BCM63XX-detect-BCM6328-variants.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/332-MIPS-BCM63XX-detect-BCM6328-variants.patch
rename to target/linux/bcm63xx/patches-4.14/332-MIPS-BCM63XX-detect-BCM6328-variants.patch
diff --git a/target/linux/brcm63xx/patches-4.14/333-MIPS-BCM63XX-detect-BCM6362-variants.patch b/target/linux/bcm63xx/patches-4.14/333-MIPS-BCM63XX-detect-BCM6362-variants.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/333-MIPS-BCM63XX-detect-BCM6362-variants.patch
rename to target/linux/bcm63xx/patches-4.14/333-MIPS-BCM63XX-detect-BCM6362-variants.patch
diff --git a/target/linux/brcm63xx/patches-4.14/334-MIPS-BCM63XX-detect-BCM6368-variants.patch b/target/linux/bcm63xx/patches-4.14/334-MIPS-BCM63XX-detect-BCM6368-variants.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/334-MIPS-BCM63XX-detect-BCM6368-variants.patch
rename to target/linux/bcm63xx/patches-4.14/334-MIPS-BCM63XX-detect-BCM6368-variants.patch
diff --git a/target/linux/brcm63xx/patches-4.14/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch b/target/linux/bcm63xx/patches-4.14/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch
rename to target/linux/bcm63xx/patches-4.14/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch
diff --git a/target/linux/brcm63xx/patches-4.14/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch b/target/linux/bcm63xx/patches-4.14/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch
rename to target/linux/bcm63xx/patches-4.14/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch
diff --git a/target/linux/brcm63xx/patches-4.14/337-MIPS-BCM63XX-widen-cpuid-field.patch b/target/linux/bcm63xx/patches-4.14/337-MIPS-BCM63XX-widen-cpuid-field.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/337-MIPS-BCM63XX-widen-cpuid-field.patch
rename to target/linux/bcm63xx/patches-4.14/337-MIPS-BCM63XX-widen-cpuid-field.patch
diff --git a/target/linux/brcm63xx/patches-4.14/338-MIPS-BCM63XX-increase-number-of-IRQs.patch b/target/linux/bcm63xx/patches-4.14/338-MIPS-BCM63XX-increase-number-of-IRQs.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/338-MIPS-BCM63XX-increase-number-of-IRQs.patch
rename to target/linux/bcm63xx/patches-4.14/338-MIPS-BCM63XX-increase-number-of-IRQs.patch
diff --git a/target/linux/brcm63xx/patches-4.14/339-MIPS-BCM63XX-add-support-for-BCM63268.patch b/target/linux/bcm63xx/patches-4.14/339-MIPS-BCM63XX-add-support-for-BCM63268.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/339-MIPS-BCM63XX-add-support-for-BCM63268.patch
rename to target/linux/bcm63xx/patches-4.14/339-MIPS-BCM63XX-add-support-for-BCM63268.patch
diff --git a/target/linux/brcm63xx/patches-4.14/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch b/target/linux/bcm63xx/patches-4.14/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch
rename to target/linux/bcm63xx/patches-4.14/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch
diff --git a/target/linux/brcm63xx/patches-4.14/341-MIPS-BCM63XX-add-support-for-BCM6318.patch b/target/linux/bcm63xx/patches-4.14/341-MIPS-BCM63XX-add-support-for-BCM6318.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/341-MIPS-BCM63XX-add-support-for-BCM6318.patch
rename to target/linux/bcm63xx/patches-4.14/341-MIPS-BCM63XX-add-support-for-BCM6318.patch
diff --git a/target/linux/brcm63xx/patches-4.14/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch b/target/linux/bcm63xx/patches-4.14/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch
rename to target/linux/bcm63xx/patches-4.14/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch
diff --git a/target/linux/brcm63xx/patches-4.14/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch b/target/linux/bcm63xx/patches-4.14/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch
rename to target/linux/bcm63xx/patches-4.14/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch
diff --git a/target/linux/brcm63xx/patches-4.14/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch b/target/linux/bcm63xx/patches-4.14/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch
rename to target/linux/bcm63xx/patches-4.14/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch
diff --git a/target/linux/brcm63xx/patches-4.14/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch b/target/linux/bcm63xx/patches-4.14/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch
rename to target/linux/bcm63xx/patches-4.14/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch
diff --git a/target/linux/brcm63xx/patches-4.14/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch b/target/linux/bcm63xx/patches-4.14/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch
rename to target/linux/bcm63xx/patches-4.14/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch
diff --git a/target/linux/brcm63xx/patches-4.14/347-MIPS-BCM6318-USB-support.patch b/target/linux/bcm63xx/patches-4.14/347-MIPS-BCM6318-USB-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/347-MIPS-BCM6318-USB-support.patch
rename to target/linux/bcm63xx/patches-4.14/347-MIPS-BCM6318-USB-support.patch
diff --git a/target/linux/brcm63xx/patches-4.14/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch b/target/linux/bcm63xx/patches-4.14/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch
rename to target/linux/bcm63xx/patches-4.14/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch
diff --git a/target/linux/brcm63xx/patches-4.14/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch b/target/linux/bcm63xx/patches-4.14/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch
rename to target/linux/bcm63xx/patches-4.14/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch
diff --git a/target/linux/brcm63xx/patches-4.14/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch b/target/linux/bcm63xx/patches-4.14/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch
rename to target/linux/bcm63xx/patches-4.14/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch
diff --git a/target/linux/brcm63xx/patches-4.14/351-set-board-usbh-ports.patch b/target/linux/bcm63xx/patches-4.14/351-set-board-usbh-ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/351-set-board-usbh-ports.patch
rename to target/linux/bcm63xx/patches-4.14/351-set-board-usbh-ports.patch
diff --git a/target/linux/brcm63xx/patches-4.14/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch b/target/linux/bcm63xx/patches-4.14/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch
rename to target/linux/bcm63xx/patches-4.14/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch
diff --git a/target/linux/brcm63xx/patches-4.14/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch b/target/linux/bcm63xx/patches-4.14/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch
rename to target/linux/bcm63xx/patches-4.14/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch
diff --git a/target/linux/brcm63xx/patches-4.14/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch b/target/linux/bcm63xx/patches-4.14/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch
rename to target/linux/bcm63xx/patches-4.14/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch
diff --git a/target/linux/brcm63xx/patches-4.14/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch b/target/linux/bcm63xx/patches-4.14/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch
rename to target/linux/bcm63xx/patches-4.14/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch
diff --git a/target/linux/brcm63xx/patches-4.14/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch b/target/linux/bcm63xx/patches-4.14/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch
rename to target/linux/bcm63xx/patches-4.14/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch
diff --git a/target/linux/brcm63xx/patches-4.14/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch b/target/linux/bcm63xx/patches-4.14/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch
rename to target/linux/bcm63xx/patches-4.14/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch
diff --git a/target/linux/brcm63xx/patches-4.14/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch b/target/linux/bcm63xx/patches-4.14/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch
rename to target/linux/bcm63xx/patches-4.14/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch
diff --git a/target/linux/brcm63xx/patches-4.14/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch b/target/linux/bcm63xx/patches-4.14/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch
rename to target/linux/bcm63xx/patches-4.14/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch
diff --git a/target/linux/brcm63xx/patches-4.14/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch b/target/linux/bcm63xx/patches-4.14/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch
rename to target/linux/bcm63xx/patches-4.14/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch
diff --git a/target/linux/brcm63xx/patches-4.14/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch b/target/linux/bcm63xx/patches-4.14/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch
rename to target/linux/bcm63xx/patches-4.14/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch
diff --git a/target/linux/brcm63xx/patches-4.14/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch b/target/linux/bcm63xx/patches-4.14/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch
rename to target/linux/bcm63xx/patches-4.14/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch b/target/linux/bcm63xx/patches-4.14/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch
rename to target/linux/bcm63xx/patches-4.14/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch
diff --git a/target/linux/brcm63xx/patches-4.14/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch b/target/linux/bcm63xx/patches-4.14/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch
rename to target/linux/bcm63xx/patches-4.14/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch
diff --git a/target/linux/brcm63xx/patches-4.14/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch b/target/linux/bcm63xx/patches-4.14/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch
rename to target/linux/bcm63xx/patches-4.14/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch
diff --git a/target/linux/brcm63xx/patches-4.14/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch b/target/linux/bcm63xx/patches-4.14/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch
rename to target/linux/bcm63xx/patches-4.14/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch
diff --git a/target/linux/brcm63xx/patches-4.14/371_add_of_node_available_by_alias.patch b/target/linux/bcm63xx/patches-4.14/371_add_of_node_available_by_alias.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/371_add_of_node_available_by_alias.patch
rename to target/linux/bcm63xx/patches-4.14/371_add_of_node_available_by_alias.patch
diff --git a/target/linux/brcm63xx/patches-4.14/372_dont_register_pflash_when_available_in_dtb.patch b/target/linux/bcm63xx/patches-4.14/372_dont_register_pflash_when_available_in_dtb.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/372_dont_register_pflash_when_available_in_dtb.patch
rename to target/linux/bcm63xx/patches-4.14/372_dont_register_pflash_when_available_in_dtb.patch
diff --git a/target/linux/brcm63xx/patches-4.14/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch b/target/linux/bcm63xx/patches-4.14/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch
rename to target/linux/bcm63xx/patches-4.14/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch
diff --git a/target/linux/brcm63xx/patches-4.14/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch b/target/linux/bcm63xx/patches-4.14/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch
rename to target/linux/bcm63xx/patches-4.14/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch
diff --git a/target/linux/brcm63xx/patches-4.14/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch b/target/linux/bcm63xx/patches-4.14/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch
rename to target/linux/bcm63xx/patches-4.14/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch
diff --git a/target/linux/brcm63xx/patches-4.14/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch b/target/linux/bcm63xx/patches-4.14/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch
rename to target/linux/bcm63xx/patches-4.14/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch
diff --git a/target/linux/brcm63xx/patches-4.14/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch b/target/linux/bcm63xx/patches-4.14/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch
rename to target/linux/bcm63xx/patches-4.14/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch
diff --git a/target/linux/brcm63xx/patches-4.14/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch b/target/linux/bcm63xx/patches-4.14/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch
rename to target/linux/bcm63xx/patches-4.14/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch
diff --git a/target/linux/brcm63xx/patches-4.14/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch b/target/linux/bcm63xx/patches-4.14/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch
rename to target/linux/bcm63xx/patches-4.14/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch
diff --git a/target/linux/brcm63xx/patches-4.14/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.14/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.14/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch b/target/linux/bcm63xx/patches-4.14/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch
rename to target/linux/bcm63xx/patches-4.14/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch
diff --git a/target/linux/brcm63xx/patches-4.14/383-bcm63xx_select_pinctrl.patch b/target/linux/bcm63xx/patches-4.14/383-bcm63xx_select_pinctrl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/383-bcm63xx_select_pinctrl.patch
rename to target/linux/bcm63xx/patches-4.14/383-bcm63xx_select_pinctrl.patch
diff --git a/target/linux/brcm63xx/patches-4.14/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch b/target/linux/bcm63xx/patches-4.14/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch
rename to target/linux/bcm63xx/patches-4.14/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch
diff --git a/target/linux/brcm63xx/patches-4.14/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch b/target/linux/bcm63xx/patches-4.14/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch
rename to target/linux/bcm63xx/patches-4.14/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch
diff --git a/target/linux/brcm63xx/patches-4.14/391-MIPS-BCM63XX-do-not-register-uart.patch b/target/linux/bcm63xx/patches-4.14/391-MIPS-BCM63XX-do-not-register-uart.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/391-MIPS-BCM63XX-do-not-register-uart.patch
rename to target/linux/bcm63xx/patches-4.14/391-MIPS-BCM63XX-do-not-register-uart.patch
diff --git a/target/linux/brcm63xx/patches-4.14/392-MIPS-BCM63XX-remove-leds-and-buttons.patch b/target/linux/bcm63xx/patches-4.14/392-MIPS-BCM63XX-remove-leds-and-buttons.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/392-MIPS-BCM63XX-remove-leds-and-buttons.patch
rename to target/linux/bcm63xx/patches-4.14/392-MIPS-BCM63XX-remove-leds-and-buttons.patch
diff --git a/target/linux/brcm63xx/patches-4.14/400-bcm963xx_flashmap.patch b/target/linux/bcm63xx/patches-4.14/400-bcm963xx_flashmap.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/400-bcm963xx_flashmap.patch
rename to target/linux/bcm63xx/patches-4.14/400-bcm963xx_flashmap.patch
diff --git a/target/linux/brcm63xx/patches-4.14/401-bcm963xx_real_rootfs_length.patch b/target/linux/bcm63xx/patches-4.14/401-bcm963xx_real_rootfs_length.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/401-bcm963xx_real_rootfs_length.patch
rename to target/linux/bcm63xx/patches-4.14/401-bcm963xx_real_rootfs_length.patch
diff --git a/target/linux/brcm63xx/patches-4.14/402_bcm63xx_enet_vlan_incoming_fixed.patch b/target/linux/bcm63xx/patches-4.14/402_bcm63xx_enet_vlan_incoming_fixed.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/402_bcm63xx_enet_vlan_incoming_fixed.patch
rename to target/linux/bcm63xx/patches-4.14/402_bcm63xx_enet_vlan_incoming_fixed.patch
diff --git a/target/linux/brcm63xx/patches-4.14/403-6358-enet1-external-mii-clk.patch b/target/linux/bcm63xx/patches-4.14/403-6358-enet1-external-mii-clk.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/403-6358-enet1-external-mii-clk.patch
rename to target/linux/bcm63xx/patches-4.14/403-6358-enet1-external-mii-clk.patch
diff --git a/target/linux/brcm63xx/patches-4.14/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch b/target/linux/bcm63xx/patches-4.14/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch
rename to target/linux/bcm63xx/patches-4.14/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch
diff --git a/target/linux/brcm63xx/patches-4.14/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch b/target/linux/bcm63xx/patches-4.14/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch
rename to target/linux/bcm63xx/patches-4.14/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch
diff --git a/target/linux/brcm63xx/patches-4.14/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch b/target/linux/bcm63xx/patches-4.14/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch
rename to target/linux/bcm63xx/patches-4.14/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch
diff --git a/target/linux/brcm63xx/patches-4.14/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch b/target/linux/bcm63xx/patches-4.14/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch
rename to target/linux/bcm63xx/patches-4.14/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch
diff --git a/target/linux/brcm63xx/patches-4.14/415-MIPS-BCM63XX-export-the-attached-flash-type.patch b/target/linux/bcm63xx/patches-4.14/415-MIPS-BCM63XX-export-the-attached-flash-type.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/415-MIPS-BCM63XX-export-the-attached-flash-type.patch
rename to target/linux/bcm63xx/patches-4.14/415-MIPS-BCM63XX-export-the-attached-flash-type.patch
diff --git a/target/linux/brcm63xx/patches-4.14/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch b/target/linux/bcm63xx/patches-4.14/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch
rename to target/linux/bcm63xx/patches-4.14/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch
diff --git a/target/linux/brcm63xx/patches-4.14/420-BCM63XX-add-endian-check-for-ath9k.patch b/target/linux/bcm63xx/patches-4.14/420-BCM63XX-add-endian-check-for-ath9k.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/420-BCM63XX-add-endian-check-for-ath9k.patch
rename to target/linux/bcm63xx/patches-4.14/420-BCM63XX-add-endian-check-for-ath9k.patch
diff --git a/target/linux/brcm63xx/patches-4.14/421-BCM63XX-add-led-pin-for-ath9k.patch b/target/linux/bcm63xx/patches-4.14/421-BCM63XX-add-led-pin-for-ath9k.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/421-BCM63XX-add-led-pin-for-ath9k.patch
rename to target/linux/bcm63xx/patches-4.14/421-BCM63XX-add-led-pin-for-ath9k.patch
diff --git a/target/linux/brcm63xx/patches-4.14/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch b/target/linux/bcm63xx/patches-4.14/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch
rename to target/linux/bcm63xx/patches-4.14/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch
diff --git a/target/linux/brcm63xx/patches-4.14/423-bcm63xx_enet_add_b53_support.patch b/target/linux/bcm63xx/patches-4.14/423-bcm63xx_enet_add_b53_support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/423-bcm63xx_enet_add_b53_support.patch
rename to target/linux/bcm63xx/patches-4.14/423-bcm63xx_enet_add_b53_support.patch
diff --git a/target/linux/brcm63xx/patches-4.14/424-bcm63xx_enet_no_request_mem_region.patch b/target/linux/bcm63xx/patches-4.14/424-bcm63xx_enet_no_request_mem_region.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/424-bcm63xx_enet_no_request_mem_region.patch
rename to target/linux/bcm63xx/patches-4.14/424-bcm63xx_enet_no_request_mem_region.patch
diff --git a/target/linux/brcm63xx/patches-4.14/427-boards_probe_switch.patch b/target/linux/bcm63xx/patches-4.14/427-boards_probe_switch.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/427-boards_probe_switch.patch
rename to target/linux/bcm63xx/patches-4.14/427-boards_probe_switch.patch
diff --git a/target/linux/brcm63xx/patches-4.14/499-allow_better_context_for_board_patches.patch b/target/linux/bcm63xx/patches-4.14/499-allow_better_context_for_board_patches.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/499-allow_better_context_for_board_patches.patch
rename to target/linux/bcm63xx/patches-4.14/499-allow_better_context_for_board_patches.patch
diff --git a/target/linux/brcm63xx/patches-4.14/500-board-D4PW.patch b/target/linux/bcm63xx/patches-4.14/500-board-D4PW.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/500-board-D4PW.patch
rename to target/linux/bcm63xx/patches-4.14/500-board-D4PW.patch
diff --git a/target/linux/brcm63xx/patches-4.14/501-board-NB4.patch b/target/linux/bcm63xx/patches-4.14/501-board-NB4.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/501-board-NB4.patch
rename to target/linux/bcm63xx/patches-4.14/501-board-NB4.patch
diff --git a/target/linux/brcm63xx/patches-4.14/502-board-96338W2_E7T.patch b/target/linux/bcm63xx/patches-4.14/502-board-96338W2_E7T.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/502-board-96338W2_E7T.patch
rename to target/linux/bcm63xx/patches-4.14/502-board-96338W2_E7T.patch
diff --git a/target/linux/brcm63xx/patches-4.14/503-board-CPVA642.patch b/target/linux/bcm63xx/patches-4.14/503-board-CPVA642.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/503-board-CPVA642.patch
rename to target/linux/bcm63xx/patches-4.14/503-board-CPVA642.patch
diff --git a/target/linux/brcm63xx/patches-4.14/504-board_dsl_274xb_rev_c.patch b/target/linux/bcm63xx/patches-4.14/504-board_dsl_274xb_rev_c.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/504-board_dsl_274xb_rev_c.patch
rename to target/linux/bcm63xx/patches-4.14/504-board_dsl_274xb_rev_c.patch
diff --git a/target/linux/brcm63xx/patches-4.14/505-board_spw500v.patch b/target/linux/bcm63xx/patches-4.14/505-board_spw500v.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/505-board_spw500v.patch
rename to target/linux/bcm63xx/patches-4.14/505-board_spw500v.patch
diff --git a/target/linux/brcm63xx/patches-4.14/506-board_gw6200_gw6000.patch b/target/linux/bcm63xx/patches-4.14/506-board_gw6200_gw6000.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/506-board_gw6200_gw6000.patch
rename to target/linux/bcm63xx/patches-4.14/506-board_gw6200_gw6000.patch
diff --git a/target/linux/brcm63xx/patches-4.14/507-board-MAGIC.patch b/target/linux/bcm63xx/patches-4.14/507-board-MAGIC.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/507-board-MAGIC.patch
rename to target/linux/bcm63xx/patches-4.14/507-board-MAGIC.patch
diff --git a/target/linux/brcm63xx/patches-4.14/508-board_hw553.patch b/target/linux/bcm63xx/patches-4.14/508-board_hw553.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/508-board_hw553.patch
rename to target/linux/bcm63xx/patches-4.14/508-board_hw553.patch
diff --git a/target/linux/brcm63xx/patches-4.14/509-board_rta1320_16m.patch b/target/linux/bcm63xx/patches-4.14/509-board_rta1320_16m.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/509-board_rta1320_16m.patch
rename to target/linux/bcm63xx/patches-4.14/509-board_rta1320_16m.patch
diff --git a/target/linux/brcm63xx/patches-4.14/510-board_spw303v.patch b/target/linux/bcm63xx/patches-4.14/510-board_spw303v.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/510-board_spw303v.patch
rename to target/linux/bcm63xx/patches-4.14/510-board_spw303v.patch
diff --git a/target/linux/brcm63xx/patches-4.14/511-board_V2500V.patch b/target/linux/bcm63xx/patches-4.14/511-board_V2500V.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/511-board_V2500V.patch
rename to target/linux/bcm63xx/patches-4.14/511-board_V2500V.patch
diff --git a/target/linux/brcm63xx/patches-4.14/512-board_BTV2110.patch b/target/linux/bcm63xx/patches-4.14/512-board_BTV2110.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/512-board_BTV2110.patch
rename to target/linux/bcm63xx/patches-4.14/512-board_BTV2110.patch
diff --git a/target/linux/brcm63xx/patches-4.14/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch b/target/linux/bcm63xx/patches-4.14/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch
rename to target/linux/bcm63xx/patches-4.14/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch
diff --git a/target/linux/brcm63xx/patches-4.14/514-board_ct536_ct5621.patch b/target/linux/bcm63xx/patches-4.14/514-board_ct536_ct5621.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/514-board_ct536_ct5621.patch
rename to target/linux/bcm63xx/patches-4.14/514-board_ct536_ct5621.patch
diff --git a/target/linux/brcm63xx/patches-4.14/515-board_DWV-S0_fixes.patch b/target/linux/bcm63xx/patches-4.14/515-board_DWV-S0_fixes.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/515-board_DWV-S0_fixes.patch
rename to target/linux/bcm63xx/patches-4.14/515-board_DWV-S0_fixes.patch
diff --git a/target/linux/brcm63xx/patches-4.14/516-board_96348A-122.patch b/target/linux/bcm63xx/patches-4.14/516-board_96348A-122.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/516-board_96348A-122.patch
rename to target/linux/bcm63xx/patches-4.14/516-board_96348A-122.patch
diff --git a/target/linux/brcm63xx/patches-4.14/519_board_CPVA502plus.patch b/target/linux/bcm63xx/patches-4.14/519_board_CPVA502plus.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/519_board_CPVA502plus.patch
rename to target/linux/bcm63xx/patches-4.14/519_board_CPVA502plus.patch
diff --git a/target/linux/brcm63xx/patches-4.14/520-bcm63xx-add-support-for-96368MVWG-board.patch b/target/linux/bcm63xx/patches-4.14/520-bcm63xx-add-support-for-96368MVWG-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/520-bcm63xx-add-support-for-96368MVWG-board.patch
rename to target/linux/bcm63xx/patches-4.14/520-bcm63xx-add-support-for-96368MVWG-board.patch
diff --git a/target/linux/brcm63xx/patches-4.14/521-bcm63xx-add-support-for-96368MVNgr-board.patch b/target/linux/bcm63xx/patches-4.14/521-bcm63xx-add-support-for-96368MVNgr-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/521-bcm63xx-add-support-for-96368MVNgr-board.patch
rename to target/linux/bcm63xx/patches-4.14/521-bcm63xx-add-support-for-96368MVNgr-board.patch
diff --git a/target/linux/brcm63xx/patches-4.14/522-MIPS-BCM63XX-add-96328avng-reference-board.patch b/target/linux/bcm63xx/patches-4.14/522-MIPS-BCM63XX-add-96328avng-reference-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/522-MIPS-BCM63XX-add-96328avng-reference-board.patch
rename to target/linux/bcm63xx/patches-4.14/522-MIPS-BCM63XX-add-96328avng-reference-board.patch
diff --git a/target/linux/brcm63xx/patches-4.14/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch b/target/linux/bcm63xx/patches-4.14/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch
rename to target/linux/bcm63xx/patches-4.14/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch
diff --git a/target/linux/brcm63xx/patches-4.14/524-board_dsl_274xb_rev_f.patch b/target/linux/bcm63xx/patches-4.14/524-board_dsl_274xb_rev_f.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/524-board_dsl_274xb_rev_f.patch
rename to target/linux/bcm63xx/patches-4.14/524-board_dsl_274xb_rev_f.patch
diff --git a/target/linux/brcm63xx/patches-4.14/525-board_96348w3.patch b/target/linux/bcm63xx/patches-4.14/525-board_96348w3.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/525-board_96348w3.patch
rename to target/linux/bcm63xx/patches-4.14/525-board_96348w3.patch
diff --git a/target/linux/brcm63xx/patches-4.14/526-board_CT6373-1.patch b/target/linux/bcm63xx/patches-4.14/526-board_CT6373-1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/526-board_CT6373-1.patch
rename to target/linux/bcm63xx/patches-4.14/526-board_CT6373-1.patch
diff --git a/target/linux/brcm63xx/patches-4.14/527-board_dva-g3810bn-tl-1.patch b/target/linux/bcm63xx/patches-4.14/527-board_dva-g3810bn-tl-1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/527-board_dva-g3810bn-tl-1.patch
rename to target/linux/bcm63xx/patches-4.14/527-board_dva-g3810bn-tl-1.patch
diff --git a/target/linux/brcm63xx/patches-4.14/528-board_nb6.patch b/target/linux/bcm63xx/patches-4.14/528-board_nb6.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/528-board_nb6.patch
rename to target/linux/bcm63xx/patches-4.14/528-board_nb6.patch
diff --git a/target/linux/brcm63xx/patches-4.14/529-board_fast2604.patch b/target/linux/bcm63xx/patches-4.14/529-board_fast2604.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/529-board_fast2604.patch
rename to target/linux/bcm63xx/patches-4.14/529-board_fast2604.patch
diff --git a/target/linux/brcm63xx/patches-4.14/530-board_A4001N1.patch b/target/linux/bcm63xx/patches-4.14/530-board_A4001N1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/530-board_A4001N1.patch
rename to target/linux/bcm63xx/patches-4.14/530-board_A4001N1.patch
diff --git a/target/linux/brcm63xx/patches-4.14/531-board_AR-5387un.patch b/target/linux/bcm63xx/patches-4.14/531-board_AR-5387un.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/531-board_AR-5387un.patch
rename to target/linux/bcm63xx/patches-4.14/531-board_AR-5387un.patch
diff --git a/target/linux/brcm63xx/patches-4.14/532-board_AR-5381u.patch b/target/linux/bcm63xx/patches-4.14/532-board_AR-5381u.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/532-board_AR-5381u.patch
rename to target/linux/bcm63xx/patches-4.14/532-board_AR-5381u.patch
diff --git a/target/linux/brcm63xx/patches-4.14/533-board_rta770bw.patch b/target/linux/bcm63xx/patches-4.14/533-board_rta770bw.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/533-board_rta770bw.patch
rename to target/linux/bcm63xx/patches-4.14/533-board_rta770bw.patch
diff --git a/target/linux/brcm63xx/patches-4.14/534-board_hw556.patch b/target/linux/bcm63xx/patches-4.14/534-board_hw556.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/534-board_hw556.patch
rename to target/linux/bcm63xx/patches-4.14/534-board_hw556.patch
diff --git a/target/linux/brcm63xx/patches-4.14/535-board_rta770w.patch b/target/linux/bcm63xx/patches-4.14/535-board_rta770w.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/535-board_rta770w.patch
rename to target/linux/bcm63xx/patches-4.14/535-board_rta770w.patch
diff --git a/target/linux/brcm63xx/patches-4.14/536-board_fast2704.patch b/target/linux/bcm63xx/patches-4.14/536-board_fast2704.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/536-board_fast2704.patch
rename to target/linux/bcm63xx/patches-4.14/536-board_fast2704.patch
diff --git a/target/linux/brcm63xx/patches-4.19/537-board_fast2504n.patch b/target/linux/bcm63xx/patches-4.14/537-board_fast2504n.patch
similarity index 95%
rename from target/linux/brcm63xx/patches-4.19/537-board_fast2504n.patch
rename to target/linux/bcm63xx/patches-4.14/537-board_fast2504n.patch
index b74274baeb..ff0440772b 100644
--- a/target/linux/brcm63xx/patches-4.19/537-board_fast2504n.patch
+++ b/target/linux/bcm63xx/patches-4.14/537-board_fast2504n.patch
@@ -1,6 +1,6 @@
 From: Max Staudt <openwrt.max@enpas.org>
 Date: Wed, 15 Jan 2014 18:51:13 +0000
-Subject: [PATCH] brcm63xx: F@ST2504n board support (Linux-3.10.26)
+Subject: [PATCH] bcm63xx: F@ST2504n board support (Linux-3.10.26)
 
 Signed-off-by: Max Staudt <openwrt.max@enpas.org>
 ---
diff --git a/target/linux/brcm63xx/patches-4.14/555-board_96318ref.patch b/target/linux/bcm63xx/patches-4.14/555-board_96318ref.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/555-board_96318ref.patch
rename to target/linux/bcm63xx/patches-4.14/555-board_96318ref.patch
diff --git a/target/linux/brcm63xx/patches-4.14/556-board_96318ref_p300.patch b/target/linux/bcm63xx/patches-4.14/556-board_96318ref_p300.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/556-board_96318ref_p300.patch
rename to target/linux/bcm63xx/patches-4.14/556-board_96318ref_p300.patch
diff --git a/target/linux/brcm63xx/patches-4.14/557-board_bcm963269bhr.patch b/target/linux/bcm63xx/patches-4.14/557-board_bcm963269bhr.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/557-board_bcm963269bhr.patch
rename to target/linux/bcm63xx/patches-4.14/557-board_bcm963269bhr.patch
diff --git a/target/linux/brcm63xx/patches-4.19/558-board_AR1004G.patch b/target/linux/bcm63xx/patches-4.14/558-board_AR1004G.patch
similarity index 95%
rename from target/linux/brcm63xx/patches-4.19/558-board_AR1004G.patch
rename to target/linux/bcm63xx/patches-4.14/558-board_AR1004G.patch
index 3cf41b0d11..85521b44be 100644
--- a/target/linux/brcm63xx/patches-4.19/558-board_AR1004G.patch
+++ b/target/linux/bcm63xx/patches-4.14/558-board_AR1004G.patch
@@ -1,6 +1,6 @@
 From: "mexit@o2.pl" <mexit@o2.pl>
 Date: Sun, 24 Nov 2013 21:33:38 +0000
-Subject: [PATCH 4/5] brcm63xx: add support for Asmax AR 1004g router
+Subject: [PATCH 4/5] bcm63xx: add support for Asmax AR 1004g router
 
 Support for Asmax AR 1004g router
 
diff --git a/target/linux/brcm63xx/patches-4.14/559-board_vw6339gu.patch b/target/linux/bcm63xx/patches-4.14/559-board_vw6339gu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/559-board_vw6339gu.patch
rename to target/linux/bcm63xx/patches-4.14/559-board_vw6339gu.patch
diff --git a/target/linux/brcm63xx/patches-4.14/560-board_963268gu_p300.patch b/target/linux/bcm63xx/patches-4.14/560-board_963268gu_p300.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/560-board_963268gu_p300.patch
rename to target/linux/bcm63xx/patches-4.14/560-board_963268gu_p300.patch
diff --git a/target/linux/brcm63xx/patches-4.14/561-board_WAP-5813n.patch b/target/linux/bcm63xx/patches-4.14/561-board_WAP-5813n.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/561-board_WAP-5813n.patch
rename to target/linux/bcm63xx/patches-4.14/561-board_WAP-5813n.patch
diff --git a/target/linux/brcm63xx/patches-4.14/562-board_VR-3025u.patch b/target/linux/bcm63xx/patches-4.14/562-board_VR-3025u.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/562-board_VR-3025u.patch
rename to target/linux/bcm63xx/patches-4.14/562-board_VR-3025u.patch
diff --git a/target/linux/brcm63xx/patches-4.14/563-board_VR-3025un.patch b/target/linux/bcm63xx/patches-4.14/563-board_VR-3025un.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/563-board_VR-3025un.patch
rename to target/linux/bcm63xx/patches-4.14/563-board_VR-3025un.patch
diff --git a/target/linux/brcm63xx/patches-4.14/564-board_P870HW-51a_v2.patch b/target/linux/bcm63xx/patches-4.14/564-board_P870HW-51a_v2.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/564-board_P870HW-51a_v2.patch
rename to target/linux/bcm63xx/patches-4.14/564-board_P870HW-51a_v2.patch
diff --git a/target/linux/brcm63xx/patches-4.14/565-board_hw520.patch b/target/linux/bcm63xx/patches-4.14/565-board_hw520.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/565-board_hw520.patch
rename to target/linux/bcm63xx/patches-4.14/565-board_hw520.patch
diff --git a/target/linux/brcm63xx/patches-4.14/566-board_A4001N.patch b/target/linux/bcm63xx/patches-4.14/566-board_A4001N.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/566-board_A4001N.patch
rename to target/linux/bcm63xx/patches-4.14/566-board_A4001N.patch
diff --git a/target/linux/brcm63xx/patches-4.14/567-board_dsl-2751b_e1.patch b/target/linux/bcm63xx/patches-4.14/567-board_dsl-2751b_e1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/567-board_dsl-2751b_e1.patch
rename to target/linux/bcm63xx/patches-4.14/567-board_dsl-2751b_e1.patch
diff --git a/target/linux/brcm63xx/patches-4.14/568-board_DGND3700v1_3800B.patch b/target/linux/bcm63xx/patches-4.14/568-board_DGND3700v1_3800B.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/568-board_DGND3700v1_3800B.patch
rename to target/linux/bcm63xx/patches-4.14/568-board_DGND3700v1_3800B.patch
diff --git a/target/linux/brcm63xx/patches-4.14/569-board_homehub2a.patch b/target/linux/bcm63xx/patches-4.14/569-board_homehub2a.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/569-board_homehub2a.patch
rename to target/linux/bcm63xx/patches-4.14/569-board_homehub2a.patch
diff --git a/target/linux/brcm63xx/patches-4.14/570-board_HG655b.patch b/target/linux/bcm63xx/patches-4.14/570-board_HG655b.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/570-board_HG655b.patch
rename to target/linux/bcm63xx/patches-4.14/570-board_HG655b.patch
diff --git a/target/linux/brcm63xx/patches-4.14/571-board_fast2704n.patch b/target/linux/bcm63xx/patches-4.14/571-board_fast2704n.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/571-board_fast2704n.patch
rename to target/linux/bcm63xx/patches-4.14/571-board_fast2704n.patch
diff --git a/target/linux/brcm63xx/patches-4.14/572-board_VR-3026e.patch b/target/linux/bcm63xx/patches-4.14/572-board_VR-3026e.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/572-board_VR-3026e.patch
rename to target/linux/bcm63xx/patches-4.14/572-board_VR-3026e.patch
diff --git a/target/linux/brcm63xx/patches-4.14/573-board_R5010UNv2.patch b/target/linux/bcm63xx/patches-4.14/573-board_R5010UNv2.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/573-board_R5010UNv2.patch
rename to target/linux/bcm63xx/patches-4.14/573-board_R5010UNv2.patch
diff --git a/target/linux/brcm63xx/patches-4.14/574-board_HG622.patch b/target/linux/bcm63xx/patches-4.14/574-board_HG622.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/574-board_HG622.patch
rename to target/linux/bcm63xx/patches-4.14/574-board_HG622.patch
diff --git a/target/linux/brcm63xx/patches-4.14/575-board_EVG2000.patch b/target/linux/bcm63xx/patches-4.14/575-board_EVG2000.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/575-board_EVG2000.patch
rename to target/linux/bcm63xx/patches-4.14/575-board_EVG2000.patch
diff --git a/target/linux/brcm63xx/patches-4.14/576-board_AV4202N.patch b/target/linux/bcm63xx/patches-4.14/576-board_AV4202N.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/576-board_AV4202N.patch
rename to target/linux/bcm63xx/patches-4.14/576-board_AV4202N.patch
diff --git a/target/linux/brcm63xx/patches-4.14/577-board_VH4032N.patch b/target/linux/bcm63xx/patches-4.14/577-board_VH4032N.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/577-board_VH4032N.patch
rename to target/linux/bcm63xx/patches-4.14/577-board_VH4032N.patch
diff --git a/target/linux/brcm63xx/patches-4.14/578-board_R1000H.patch b/target/linux/bcm63xx/patches-4.14/578-board_R1000H.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/578-board_R1000H.patch
rename to target/linux/bcm63xx/patches-4.14/578-board_R1000H.patch
diff --git a/target/linux/brcm63xx/patches-4.14/579-board_AR-5315u.patch b/target/linux/bcm63xx/patches-4.14/579-board_AR-5315u.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/579-board_AR-5315u.patch
rename to target/linux/bcm63xx/patches-4.14/579-board_AR-5315u.patch
diff --git a/target/linux/brcm63xx/patches-4.14/580-board_AD1018.patch b/target/linux/bcm63xx/patches-4.14/580-board_AD1018.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/580-board_AD1018.patch
rename to target/linux/bcm63xx/patches-4.14/580-board_AD1018.patch
diff --git a/target/linux/brcm63xx/patches-4.14/598-board_sr102.patch b/target/linux/bcm63xx/patches-4.14/598-board_sr102.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/598-board_sr102.patch
rename to target/linux/bcm63xx/patches-4.14/598-board_sr102.patch
diff --git a/target/linux/brcm63xx/patches-4.14/800-wl_exports.patch b/target/linux/bcm63xx/patches-4.14/800-wl_exports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/800-wl_exports.patch
rename to target/linux/bcm63xx/patches-4.14/800-wl_exports.patch
diff --git a/target/linux/brcm63xx/patches-4.14/801-ssb_export_fallback_sprom.patch b/target/linux/bcm63xx/patches-4.14/801-ssb_export_fallback_sprom.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/801-ssb_export_fallback_sprom.patch
rename to target/linux/bcm63xx/patches-4.14/801-ssb_export_fallback_sprom.patch
diff --git a/target/linux/brcm63xx/patches-4.14/802-rtl8367r_fix_RGMII_support.patch b/target/linux/bcm63xx/patches-4.14/802-rtl8367r_fix_RGMII_support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/802-rtl8367r_fix_RGMII_support.patch
rename to target/linux/bcm63xx/patches-4.14/802-rtl8367r_fix_RGMII_support.patch
diff --git a/target/linux/brcm63xx/patches-4.14/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch b/target/linux/bcm63xx/patches-4.14/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch
rename to target/linux/bcm63xx/patches-4.14/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch
diff --git a/target/linux/brcm63xx/patches-4.14/804-bcm63xx_enet_63268_rgmii_ports.patch b/target/linux/bcm63xx/patches-4.14/804-bcm63xx_enet_63268_rgmii_ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.14/804-bcm63xx_enet_63268_rgmii_ports.patch
rename to target/linux/bcm63xx/patches-4.14/804-bcm63xx_enet_63268_rgmii_ports.patch
diff --git a/target/linux/brcm63xx/patches-4.19/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch b/target/linux/bcm63xx/patches-4.19/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch
rename to target/linux/bcm63xx/patches-4.19/100-MIPS-BCM63XX-add-USB-host-clock-enable-delay.patch
diff --git a/target/linux/brcm63xx/patches-4.19/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch b/target/linux/bcm63xx/patches-4.19/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch
rename to target/linux/bcm63xx/patches-4.19/101-MIPS-BCM63XX-add-USB-device-clock-enable-delay-to-cl.patch
diff --git a/target/linux/brcm63xx/patches-4.19/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch b/target/linux/bcm63xx/patches-4.19/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch
rename to target/linux/bcm63xx/patches-4.19/102-MIPS-BCM63XX-move-code-touching-the-USB-private-regi.patch
diff --git a/target/linux/brcm63xx/patches-4.19/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch b/target/linux/bcm63xx/patches-4.19/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch
rename to target/linux/bcm63xx/patches-4.19/103-MIPS-BCM63XX-add-OHCI-EHCI-configuration-bits-to-com.patch
diff --git a/target/linux/brcm63xx/patches-4.19/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch b/target/linux/bcm63xx/patches-4.19/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch
rename to target/linux/bcm63xx/patches-4.19/104-MIPS-BCM63XX-introduce-BCM63XX_OHCI-configuration-sy.patch
diff --git a/target/linux/brcm63xx/patches-4.19/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch b/target/linux/bcm63xx/patches-4.19/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch
rename to target/linux/bcm63xx/patches-4.19/105-MIPS-BCM63XX-add-support-for-the-on-chip-OHCI-contro.patch
diff --git a/target/linux/brcm63xx/patches-4.19/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch b/target/linux/bcm63xx/patches-4.19/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch
rename to target/linux/bcm63xx/patches-4.19/106-MIPS-BCM63XX-register-OHCI-controller-if-board-enabl.patch
diff --git a/target/linux/brcm63xx/patches-4.19/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch b/target/linux/bcm63xx/patches-4.19/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch
rename to target/linux/bcm63xx/patches-4.19/107-MIPS-BCM63XX-introduce-BCM63XX_EHCI-configuration-sy.patch
diff --git a/target/linux/brcm63xx/patches-4.19/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch b/target/linux/bcm63xx/patches-4.19/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch
rename to target/linux/bcm63xx/patches-4.19/108-MIPS-BCM63XX-add-support-for-the-on-chip-EHCI-contro.patch
diff --git a/target/linux/brcm63xx/patches-4.19/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch b/target/linux/bcm63xx/patches-4.19/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch
rename to target/linux/bcm63xx/patches-4.19/109-MIPS-BCM63XX-register-EHCI-controller-if-board-enabl.patch
diff --git a/target/linux/brcm63xx/patches-4.19/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch b/target/linux/bcm63xx/patches-4.19/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch
rename to target/linux/bcm63xx/patches-4.19/110-MIPS-BCM63XX-EHCI-controller-does-not-support-overcu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch b/target/linux/bcm63xx/patches-4.19/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch
rename to target/linux/bcm63xx/patches-4.19/121-mtd-bcm63xxpart-move-imagetag-parsing-to-its-own-par.patch
diff --git a/target/linux/brcm63xx/patches-4.19/122-mtd-bcm63xxpart-add-of_match_table.patch b/target/linux/bcm63xx/patches-4.19/122-mtd-bcm63xxpart-add-of_match_table.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/122-mtd-bcm63xxpart-add-of_match_table.patch
rename to target/linux/bcm63xx/patches-4.19/122-mtd-bcm63xxpart-add-of_match_table.patch
diff --git a/target/linux/brcm63xx/patches-4.19/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch b/target/linux/bcm63xx/patches-4.19/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch
rename to target/linux/bcm63xx/patches-4.19/123-mtd-parser_bcm63xx_imagetag-add-of_match_table-suppo.patch
diff --git a/target/linux/brcm63xx/patches-4.19/130-pinctrl-add-bcm63xx-base-code.patch b/target/linux/bcm63xx/patches-4.19/130-pinctrl-add-bcm63xx-base-code.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/130-pinctrl-add-bcm63xx-base-code.patch
rename to target/linux/bcm63xx/patches-4.19/130-pinctrl-add-bcm63xx-base-code.patch
diff --git a/target/linux/brcm63xx/patches-4.19/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.19/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.19/131-Documentation-add-BCM6328-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch b/target/linux/bcm63xx/patches-4.19/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch
rename to target/linux/bcm63xx/patches-4.19/132-pinctrl-add-a-pincontrol-driver-for-BCM6328.patch
diff --git a/target/linux/brcm63xx/patches-4.19/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.19/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.19/133-Documentation-add-BCM6348-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch b/target/linux/bcm63xx/patches-4.19/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch
rename to target/linux/bcm63xx/patches-4.19/134-pinctrl-add-a-pincontrol-driver-for-BCM6348.patch
diff --git a/target/linux/brcm63xx/patches-4.19/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.19/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.19/135-Documentation-add-BCM6358-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch b/target/linux/bcm63xx/patches-4.19/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch
rename to target/linux/bcm63xx/patches-4.19/136-pinctrl-add-a-pincontrol-driver-for-BCM6358.patch
diff --git a/target/linux/brcm63xx/patches-4.19/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.19/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.19/137-Documentation-add-BCM6362-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch b/target/linux/bcm63xx/patches-4.19/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch
rename to target/linux/bcm63xx/patches-4.19/138-pinctrl-add-a-pincontrol-driver-for-BCM6362.patch
diff --git a/target/linux/brcm63xx/patches-4.19/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.19/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.19/139-Documentation-add-BCM6368-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch b/target/linux/bcm63xx/patches-4.19/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch
rename to target/linux/bcm63xx/patches-4.19/140-pinctrl-add-a-pincontrol-driver-for-BCM6368.patch
diff --git a/target/linux/brcm63xx/patches-4.19/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch b/target/linux/bcm63xx/patches-4.19/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch
rename to target/linux/bcm63xx/patches-4.19/141-Documentation-add-BCM63268-pincontroller-binding-doc.patch
diff --git a/target/linux/brcm63xx/patches-4.19/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch b/target/linux/bcm63xx/patches-4.19/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch
rename to target/linux/bcm63xx/patches-4.19/142-pinctrl-add-a-pincontrol-driver-for-BCM63268.patch
diff --git a/target/linux/brcm63xx/patches-4.19/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch b/target/linux/bcm63xx/patches-4.19/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch
rename to target/linux/bcm63xx/patches-4.19/143-gpio-fix-device-tree-gpio-hogs-on-dual-role-gpio-pin.patch
diff --git a/target/linux/brcm63xx/patches-4.19/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch b/target/linux/bcm63xx/patches-4.19/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch
rename to target/linux/bcm63xx/patches-4.19/206-USB-EHCI-allow-limiting-ports-for-ehci-platform.patch
diff --git a/target/linux/brcm63xx/patches-4.19/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch b/target/linux/bcm63xx/patches-4.19/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch
rename to target/linux/bcm63xx/patches-4.19/207-MIPS-BCM63XX-move-device-registration-code-into-its-.patch
diff --git a/target/linux/brcm63xx/patches-4.19/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch b/target/linux/bcm63xx/patches-4.19/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch
rename to target/linux/bcm63xx/patches-4.19/208-MIPS-BCM63XX-pass-a-mac-addresss-allocator-to-board-.patch
diff --git a/target/linux/brcm63xx/patches-4.19/309-cfe_version_mod.patch b/target/linux/bcm63xx/patches-4.19/309-cfe_version_mod.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/309-cfe_version_mod.patch
rename to target/linux/bcm63xx/patches-4.19/309-cfe_version_mod.patch
diff --git a/target/linux/brcm63xx/patches-4.19/310-cfe_simplify_detection.patch b/target/linux/bcm63xx/patches-4.19/310-cfe_simplify_detection.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/310-cfe_simplify_detection.patch
rename to target/linux/bcm63xx/patches-4.19/310-cfe_simplify_detection.patch
diff --git a/target/linux/brcm63xx/patches-4.19/311-bcm63xxpart_use_cfedetection.patch b/target/linux/bcm63xx/patches-4.19/311-bcm63xxpart_use_cfedetection.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/311-bcm63xxpart_use_cfedetection.patch
rename to target/linux/bcm63xx/patches-4.19/311-bcm63xxpart_use_cfedetection.patch
diff --git a/target/linux/brcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch b/target/linux/bcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
rename to target/linux/bcm63xx/patches-4.19/320-irqchip-add-support-for-bcm6345-style-periphery-irq-.patch
diff --git a/target/linux/brcm63xx/patches-4.19/321-irqchip-add-support-for-bcm6345-style-external-inter.patch b/target/linux/bcm63xx/patches-4.19/321-irqchip-add-support-for-bcm6345-style-external-inter.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/321-irqchip-add-support-for-bcm6345-style-external-inter.patch
rename to target/linux/bcm63xx/patches-4.19/321-irqchip-add-support-for-bcm6345-style-external-inter.patch
diff --git a/target/linux/brcm63xx/patches-4.19/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch b/target/linux/bcm63xx/patches-4.19/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch
rename to target/linux/bcm63xx/patches-4.19/322-MIPS-BCM63XX-switch-to-IRQ_DOMAIN.patch
diff --git a/target/linux/brcm63xx/patches-4.19/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch b/target/linux/bcm63xx/patches-4.19/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch
rename to target/linux/bcm63xx/patches-4.19/323-MIPS-BCM63XX-wire-up-BCM6358-s-external-interrupts-4.patch
diff --git a/target/linux/brcm63xx/patches-4.19/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch b/target/linux/bcm63xx/patches-4.19/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch
rename to target/linux/bcm63xx/patches-4.19/330-MIPS-BCM63XX-add-a-new-cpu-variant-helper.patch
diff --git a/target/linux/brcm63xx/patches-4.19/331-MIPS-BCM63XX-define-variant-id-field.patch b/target/linux/bcm63xx/patches-4.19/331-MIPS-BCM63XX-define-variant-id-field.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/331-MIPS-BCM63XX-define-variant-id-field.patch
rename to target/linux/bcm63xx/patches-4.19/331-MIPS-BCM63XX-define-variant-id-field.patch
diff --git a/target/linux/brcm63xx/patches-4.19/332-MIPS-BCM63XX-detect-BCM6328-variants.patch b/target/linux/bcm63xx/patches-4.19/332-MIPS-BCM63XX-detect-BCM6328-variants.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/332-MIPS-BCM63XX-detect-BCM6328-variants.patch
rename to target/linux/bcm63xx/patches-4.19/332-MIPS-BCM63XX-detect-BCM6328-variants.patch
diff --git a/target/linux/brcm63xx/patches-4.19/333-MIPS-BCM63XX-detect-BCM6362-variants.patch b/target/linux/bcm63xx/patches-4.19/333-MIPS-BCM63XX-detect-BCM6362-variants.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/333-MIPS-BCM63XX-detect-BCM6362-variants.patch
rename to target/linux/bcm63xx/patches-4.19/333-MIPS-BCM63XX-detect-BCM6362-variants.patch
diff --git a/target/linux/brcm63xx/patches-4.19/334-MIPS-BCM63XX-detect-BCM6368-variants.patch b/target/linux/bcm63xx/patches-4.19/334-MIPS-BCM63XX-detect-BCM6368-variants.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/334-MIPS-BCM63XX-detect-BCM6368-variants.patch
rename to target/linux/bcm63xx/patches-4.19/334-MIPS-BCM63XX-detect-BCM6368-variants.patch
diff --git a/target/linux/brcm63xx/patches-4.19/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch b/target/linux/bcm63xx/patches-4.19/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch
rename to target/linux/bcm63xx/patches-4.19/335-MIPS-BCM63XX-fix-PCIe-memory-window-size.patch
diff --git a/target/linux/brcm63xx/patches-4.19/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch b/target/linux/bcm63xx/patches-4.19/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch
rename to target/linux/bcm63xx/patches-4.19/336-MIPS-BCM63XX-dynamically-set-the-pcie-memory-windows.patch
diff --git a/target/linux/brcm63xx/patches-4.19/337-MIPS-BCM63XX-widen-cpuid-field.patch b/target/linux/bcm63xx/patches-4.19/337-MIPS-BCM63XX-widen-cpuid-field.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/337-MIPS-BCM63XX-widen-cpuid-field.patch
rename to target/linux/bcm63xx/patches-4.19/337-MIPS-BCM63XX-widen-cpuid-field.patch
diff --git a/target/linux/brcm63xx/patches-4.19/338-MIPS-BCM63XX-increase-number-of-IRQs.patch b/target/linux/bcm63xx/patches-4.19/338-MIPS-BCM63XX-increase-number-of-IRQs.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/338-MIPS-BCM63XX-increase-number-of-IRQs.patch
rename to target/linux/bcm63xx/patches-4.19/338-MIPS-BCM63XX-increase-number-of-IRQs.patch
diff --git a/target/linux/brcm63xx/patches-4.19/339-MIPS-BCM63XX-add-support-for-BCM63268.patch b/target/linux/bcm63xx/patches-4.19/339-MIPS-BCM63XX-add-support-for-BCM63268.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/339-MIPS-BCM63XX-add-support-for-BCM63268.patch
rename to target/linux/bcm63xx/patches-4.19/339-MIPS-BCM63XX-add-support-for-BCM63268.patch
diff --git a/target/linux/brcm63xx/patches-4.19/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch b/target/linux/bcm63xx/patches-4.19/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch
rename to target/linux/bcm63xx/patches-4.19/340-MIPS-BCM63XX-add-pcie-support-for-BCM63268.patch
diff --git a/target/linux/brcm63xx/patches-4.19/341-MIPS-BCM63XX-add-support-for-BCM6318.patch b/target/linux/bcm63xx/patches-4.19/341-MIPS-BCM63XX-add-support-for-BCM6318.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/341-MIPS-BCM63XX-add-support-for-BCM6318.patch
rename to target/linux/bcm63xx/patches-4.19/341-MIPS-BCM63XX-add-support-for-BCM6318.patch
diff --git a/target/linux/brcm63xx/patches-4.19/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch b/target/linux/bcm63xx/patches-4.19/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch
rename to target/linux/bcm63xx/patches-4.19/342-MIPS-BCM63XX-split-PCIe-reset-signals.patch
diff --git a/target/linux/brcm63xx/patches-4.19/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch b/target/linux/bcm63xx/patches-4.19/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch
rename to target/linux/bcm63xx/patches-4.19/343-MIPS-BCM63XX-add-PCIe-support-for-BCM6318.patch
diff --git a/target/linux/brcm63xx/patches-4.19/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch b/target/linux/bcm63xx/patches-4.19/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch
rename to target/linux/bcm63xx/patches-4.19/344-MIPS-BCM63XX-detect-flash-type-early-and-store-the-r.patch
diff --git a/target/linux/brcm63xx/patches-4.19/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch b/target/linux/bcm63xx/patches-4.19/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch
rename to target/linux/bcm63xx/patches-4.19/345-MIPS-BCM63XX-fixup-mapped-SPI-flash-access-on-boot.patch
diff --git a/target/linux/brcm63xx/patches-4.19/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch b/target/linux/bcm63xx/patches-4.19/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch
rename to target/linux/bcm63xx/patches-4.19/346-MIPS-BCM63XX-USB-ENETSW-6318-clocks.patch
diff --git a/target/linux/brcm63xx/patches-4.19/347-MIPS-BCM6318-USB-support.patch b/target/linux/bcm63xx/patches-4.19/347-MIPS-BCM6318-USB-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/347-MIPS-BCM6318-USB-support.patch
rename to target/linux/bcm63xx/patches-4.19/347-MIPS-BCM6318-USB-support.patch
diff --git a/target/linux/brcm63xx/patches-4.19/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch b/target/linux/bcm63xx/patches-4.19/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch
rename to target/linux/bcm63xx/patches-4.19/348-MIPS-BCM63XX-fix-BCM63268-USB-clock.patch
diff --git a/target/linux/brcm63xx/patches-4.19/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch b/target/linux/bcm63xx/patches-4.19/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch
rename to target/linux/bcm63xx/patches-4.19/349-MIPS-BCM63XX-add-BCM63268-USB-support.patch
diff --git a/target/linux/brcm63xx/patches-4.19/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch b/target/linux/bcm63xx/patches-4.19/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch
rename to target/linux/bcm63xx/patches-4.19/350-MIPS-BCM63XX-support-settings-num-usbh-ports.patch
diff --git a/target/linux/brcm63xx/patches-4.19/351-set-board-usbh-ports.patch b/target/linux/bcm63xx/patches-4.19/351-set-board-usbh-ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/351-set-board-usbh-ports.patch
rename to target/linux/bcm63xx/patches-4.19/351-set-board-usbh-ports.patch
diff --git a/target/linux/brcm63xx/patches-4.19/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch b/target/linux/bcm63xx/patches-4.19/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch
rename to target/linux/bcm63xx/patches-4.19/354-MIPS-BCM63XX-allow-building-support-for-more-than-on.patch
diff --git a/target/linux/brcm63xx/patches-4.19/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch b/target/linux/bcm63xx/patches-4.19/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch
rename to target/linux/bcm63xx/patches-4.19/355-MIPS-BCM63XX-allow-board-implementations-to-force-fl.patch
diff --git a/target/linux/brcm63xx/patches-4.19/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch b/target/linux/bcm63xx/patches-4.19/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch
rename to target/linux/bcm63xx/patches-4.19/356-MIPS-BCM63XX-move-fallback-sprom-support-into-its-ow.patch
diff --git a/target/linux/brcm63xx/patches-4.19/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch b/target/linux/bcm63xx/patches-4.19/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch
rename to target/linux/bcm63xx/patches-4.19/357-MIPS-BCM63XX-use-platform-data-for-the-sprom.patch
diff --git a/target/linux/brcm63xx/patches-4.19/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch b/target/linux/bcm63xx/patches-4.19/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch
rename to target/linux/bcm63xx/patches-4.19/358-MIPS-BCM63XX-make-fallback-sprom-optional.patch
diff --git a/target/linux/brcm63xx/patches-4.19/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch b/target/linux/bcm63xx/patches-4.19/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch
rename to target/linux/bcm63xx/patches-4.19/359-MIPS-BCM63XX-allow-different-types-of-sprom.patch
diff --git a/target/linux/brcm63xx/patches-4.19/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch b/target/linux/bcm63xx/patches-4.19/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch
rename to target/linux/bcm63xx/patches-4.19/360-MIPS-BCM63XX-add-support-for-raw-sproms.patch
diff --git a/target/linux/brcm63xx/patches-4.19/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch b/target/linux/bcm63xx/patches-4.19/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch
rename to target/linux/bcm63xx/patches-4.19/361-MIPS-BCM63XX-add-raw-fallback-sproms-for-most-common.patch
diff --git a/target/linux/brcm63xx/patches-4.19/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch b/target/linux/bcm63xx/patches-4.19/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch
rename to target/linux/bcm63xx/patches-4.19/362-MIPS-BCM63XX-also-register-a-fallback-sprom-for-bcma.patch
diff --git a/target/linux/brcm63xx/patches-4.19/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch b/target/linux/bcm63xx/patches-4.19/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch
rename to target/linux/bcm63xx/patches-4.19/363-MIPS-BCM63XX-add-BCMA-based-sprom-templates.patch
diff --git a/target/linux/brcm63xx/patches-4.19/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch b/target/linux/bcm63xx/patches-4.19/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch
rename to target/linux/bcm63xx/patches-4.19/364-MIPS-BCM63XX-allow-board-files-to-provide-sprom-fixu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch b/target/linux/bcm63xx/patches-4.19/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch
rename to target/linux/bcm63xx/patches-4.19/365-MIPS-BCM63XX-allow-setting-a-pci-bus-device-for-fall.patch
diff --git a/target/linux/brcm63xx/patches-4.19/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch b/target/linux/bcm63xx/patches-4.19/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch
rename to target/linux/bcm63xx/patches-4.19/367-MIPS-BCM63XX-add-support-for-loading-DTB.patch
diff --git a/target/linux/brcm63xx/patches-4.19/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch b/target/linux/bcm63xx/patches-4.19/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch
rename to target/linux/bcm63xx/patches-4.19/368-MIPS-BCM63XX-add-support-for-matching-the-board_info.patch
diff --git a/target/linux/brcm63xx/patches-4.19/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch b/target/linux/bcm63xx/patches-4.19/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch
rename to target/linux/bcm63xx/patches-4.19/369-MIPS-BCM63XX-populate-the-compatible-to-board_info-l.patch
diff --git a/target/linux/brcm63xx/patches-4.19/371_add_of_node_available_by_alias.patch b/target/linux/bcm63xx/patches-4.19/371_add_of_node_available_by_alias.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/371_add_of_node_available_by_alias.patch
rename to target/linux/bcm63xx/patches-4.19/371_add_of_node_available_by_alias.patch
diff --git a/target/linux/brcm63xx/patches-4.19/372_dont_register_pflash_when_available_in_dtb.patch b/target/linux/bcm63xx/patches-4.19/372_dont_register_pflash_when_available_in_dtb.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/372_dont_register_pflash_when_available_in_dtb.patch
rename to target/linux/bcm63xx/patches-4.19/372_dont_register_pflash_when_available_in_dtb.patch
diff --git a/target/linux/brcm63xx/patches-4.19/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch b/target/linux/bcm63xx/patches-4.19/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch
rename to target/linux/bcm63xx/patches-4.19/373-MIPS-BCM63XX-register-interrupt-controllers-through-.patch
diff --git a/target/linux/brcm63xx/patches-4.19/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch b/target/linux/bcm63xx/patches-4.19/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch
rename to target/linux/bcm63xx/patches-4.19/374-gpio-add-a-simple-GPIO-driver-for-bcm63xx.patch
diff --git a/target/linux/brcm63xx/patches-4.19/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch b/target/linux/bcm63xx/patches-4.19/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch
rename to target/linux/bcm63xx/patches-4.19/375-MIPS-BCM63XX-switch-to-new-gpio-driver.patch
diff --git a/target/linux/brcm63xx/patches-4.19/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch b/target/linux/bcm63xx/patches-4.19/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch
rename to target/linux/bcm63xx/patches-4.19/377-MIPS-BCM63XX-register-lookup-for-ephy-reset-gpio.patch
diff --git a/target/linux/brcm63xx/patches-4.19/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch b/target/linux/bcm63xx/patches-4.19/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch
rename to target/linux/bcm63xx/patches-4.19/378-MIPS-BCM63XX-do-not-register-gpio-controller-if-pres.patch
diff --git a/target/linux/brcm63xx/patches-4.19/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch b/target/linux/bcm63xx/patches-4.19/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch
rename to target/linux/bcm63xx/patches-4.19/379-MIPS-BCM63XX-provide-a-gpio-lookup-for-the-pcmcia-re.patch
diff --git a/target/linux/brcm63xx/patches-4.19/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch b/target/linux/bcm63xx/patches-4.19/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch
rename to target/linux/bcm63xx/patches-4.19/380-pcmcia-bcm63xx_pmcia-use-the-new-named-gpio.patch
diff --git a/target/linux/brcm63xx/patches-4.19/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch b/target/linux/bcm63xx/patches-4.19/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch
rename to target/linux/bcm63xx/patches-4.19/381-Documentation-add-BCM6318-pincontroller-binding-docu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch b/target/linux/bcm63xx/patches-4.19/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch
rename to target/linux/bcm63xx/patches-4.19/382-pinctrl-add-a-pincontrol-driver-for-BCM6318.patch
diff --git a/target/linux/brcm63xx/patches-4.19/383-bcm63xx_select_pinctrl.patch b/target/linux/bcm63xx/patches-4.19/383-bcm63xx_select_pinctrl.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/383-bcm63xx_select_pinctrl.patch
rename to target/linux/bcm63xx/patches-4.19/383-bcm63xx_select_pinctrl.patch
diff --git a/target/linux/brcm63xx/patches-4.19/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch b/target/linux/bcm63xx/patches-4.19/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch
rename to target/linux/bcm63xx/patches-4.19/389-MIPS-BCM63XX-add-clkdev-lookups-for-device-tree.patch
diff --git a/target/linux/brcm63xx/patches-4.19/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch b/target/linux/bcm63xx/patches-4.19/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch
rename to target/linux/bcm63xx/patches-4.19/390-MIPS-BCM63XX-do-not-register-SPI-controllers.patch
diff --git a/target/linux/brcm63xx/patches-4.19/391-MIPS-BCM63XX-do-not-register-uart.patch b/target/linux/bcm63xx/patches-4.19/391-MIPS-BCM63XX-do-not-register-uart.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/391-MIPS-BCM63XX-do-not-register-uart.patch
rename to target/linux/bcm63xx/patches-4.19/391-MIPS-BCM63XX-do-not-register-uart.patch
diff --git a/target/linux/brcm63xx/patches-4.19/392-MIPS-BCM63XX-remove-leds-and-buttons.patch b/target/linux/bcm63xx/patches-4.19/392-MIPS-BCM63XX-remove-leds-and-buttons.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/392-MIPS-BCM63XX-remove-leds-and-buttons.patch
rename to target/linux/bcm63xx/patches-4.19/392-MIPS-BCM63XX-remove-leds-and-buttons.patch
diff --git a/target/linux/brcm63xx/patches-4.19/400-bcm963xx_flashmap.patch b/target/linux/bcm63xx/patches-4.19/400-bcm963xx_flashmap.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/400-bcm963xx_flashmap.patch
rename to target/linux/bcm63xx/patches-4.19/400-bcm963xx_flashmap.patch
diff --git a/target/linux/brcm63xx/patches-4.19/401-bcm963xx_real_rootfs_length.patch b/target/linux/bcm63xx/patches-4.19/401-bcm963xx_real_rootfs_length.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/401-bcm963xx_real_rootfs_length.patch
rename to target/linux/bcm63xx/patches-4.19/401-bcm963xx_real_rootfs_length.patch
diff --git a/target/linux/brcm63xx/patches-4.19/402_bcm63xx_enet_vlan_incoming_fixed.patch b/target/linux/bcm63xx/patches-4.19/402_bcm63xx_enet_vlan_incoming_fixed.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/402_bcm63xx_enet_vlan_incoming_fixed.patch
rename to target/linux/bcm63xx/patches-4.19/402_bcm63xx_enet_vlan_incoming_fixed.patch
diff --git a/target/linux/brcm63xx/patches-4.19/403-6358-enet1-external-mii-clk.patch b/target/linux/bcm63xx/patches-4.19/403-6358-enet1-external-mii-clk.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/403-6358-enet1-external-mii-clk.patch
rename to target/linux/bcm63xx/patches-4.19/403-6358-enet1-external-mii-clk.patch
diff --git a/target/linux/brcm63xx/patches-4.19/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch b/target/linux/bcm63xx/patches-4.19/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch
rename to target/linux/bcm63xx/patches-4.19/404-NET-bcm63xx_enet-move-phy_-dis-connect-into-probe-re.patch
diff --git a/target/linux/brcm63xx/patches-4.19/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch b/target/linux/bcm63xx/patches-4.19/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch
rename to target/linux/bcm63xx/patches-4.19/408-bcm63xx_enet-enable-rgmii-clock-on-external-ports.patch
diff --git a/target/linux/brcm63xx/patches-4.19/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch b/target/linux/bcm63xx/patches-4.19/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch
rename to target/linux/bcm63xx/patches-4.19/411-MIPS-BCM63XX-Register-SPI-flash-if-present.patch
diff --git a/target/linux/brcm63xx/patches-4.19/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch b/target/linux/bcm63xx/patches-4.19/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch
rename to target/linux/bcm63xx/patches-4.19/413-BCM63XX-allow-providing-fixup-data-in-board-data.patch
diff --git a/target/linux/brcm63xx/patches-4.19/415-MIPS-BCM63XX-export-the-attached-flash-type.patch b/target/linux/bcm63xx/patches-4.19/415-MIPS-BCM63XX-export-the-attached-flash-type.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/415-MIPS-BCM63XX-export-the-attached-flash-type.patch
rename to target/linux/bcm63xx/patches-4.19/415-MIPS-BCM63XX-export-the-attached-flash-type.patch
diff --git a/target/linux/brcm63xx/patches-4.19/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch b/target/linux/bcm63xx/patches-4.19/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch
rename to target/linux/bcm63xx/patches-4.19/416-BCM63XX-add-a-fixup-for-ath9k-devices.patch
diff --git a/target/linux/brcm63xx/patches-4.19/420-BCM63XX-add-endian-check-for-ath9k.patch b/target/linux/bcm63xx/patches-4.19/420-BCM63XX-add-endian-check-for-ath9k.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/420-BCM63XX-add-endian-check-for-ath9k.patch
rename to target/linux/bcm63xx/patches-4.19/420-BCM63XX-add-endian-check-for-ath9k.patch
diff --git a/target/linux/brcm63xx/patches-4.19/421-BCM63XX-add-led-pin-for-ath9k.patch b/target/linux/bcm63xx/patches-4.19/421-BCM63XX-add-led-pin-for-ath9k.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/421-BCM63XX-add-led-pin-for-ath9k.patch
rename to target/linux/bcm63xx/patches-4.19/421-BCM63XX-add-led-pin-for-ath9k.patch
diff --git a/target/linux/brcm63xx/patches-4.19/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch b/target/linux/bcm63xx/patches-4.19/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch
rename to target/linux/bcm63xx/patches-4.19/422-BCM63XX-add-a-fixup-for-rt2x00-devices.patch
diff --git a/target/linux/brcm63xx/patches-4.19/423-bcm63xx_enet_add_b53_support.patch b/target/linux/bcm63xx/patches-4.19/423-bcm63xx_enet_add_b53_support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/423-bcm63xx_enet_add_b53_support.patch
rename to target/linux/bcm63xx/patches-4.19/423-bcm63xx_enet_add_b53_support.patch
diff --git a/target/linux/brcm63xx/patches-4.19/424-bcm63xx_enet_no_request_mem_region.patch b/target/linux/bcm63xx/patches-4.19/424-bcm63xx_enet_no_request_mem_region.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/424-bcm63xx_enet_no_request_mem_region.patch
rename to target/linux/bcm63xx/patches-4.19/424-bcm63xx_enet_no_request_mem_region.patch
diff --git a/target/linux/brcm63xx/patches-4.19/427-boards_probe_switch.patch b/target/linux/bcm63xx/patches-4.19/427-boards_probe_switch.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/427-boards_probe_switch.patch
rename to target/linux/bcm63xx/patches-4.19/427-boards_probe_switch.patch
diff --git a/target/linux/brcm63xx/patches-4.19/499-allow_better_context_for_board_patches.patch b/target/linux/bcm63xx/patches-4.19/499-allow_better_context_for_board_patches.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/499-allow_better_context_for_board_patches.patch
rename to target/linux/bcm63xx/patches-4.19/499-allow_better_context_for_board_patches.patch
diff --git a/target/linux/brcm63xx/patches-4.19/500-board-D4PW.patch b/target/linux/bcm63xx/patches-4.19/500-board-D4PW.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/500-board-D4PW.patch
rename to target/linux/bcm63xx/patches-4.19/500-board-D4PW.patch
diff --git a/target/linux/brcm63xx/patches-4.19/501-board-NB4.patch b/target/linux/bcm63xx/patches-4.19/501-board-NB4.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/501-board-NB4.patch
rename to target/linux/bcm63xx/patches-4.19/501-board-NB4.patch
diff --git a/target/linux/brcm63xx/patches-4.19/502-board-96338W2_E7T.patch b/target/linux/bcm63xx/patches-4.19/502-board-96338W2_E7T.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/502-board-96338W2_E7T.patch
rename to target/linux/bcm63xx/patches-4.19/502-board-96338W2_E7T.patch
diff --git a/target/linux/brcm63xx/patches-4.19/503-board-CPVA642.patch b/target/linux/bcm63xx/patches-4.19/503-board-CPVA642.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/503-board-CPVA642.patch
rename to target/linux/bcm63xx/patches-4.19/503-board-CPVA642.patch
diff --git a/target/linux/brcm63xx/patches-4.19/504-board_dsl_274xb_rev_c.patch b/target/linux/bcm63xx/patches-4.19/504-board_dsl_274xb_rev_c.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/504-board_dsl_274xb_rev_c.patch
rename to target/linux/bcm63xx/patches-4.19/504-board_dsl_274xb_rev_c.patch
diff --git a/target/linux/brcm63xx/patches-4.19/505-board_spw500v.patch b/target/linux/bcm63xx/patches-4.19/505-board_spw500v.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/505-board_spw500v.patch
rename to target/linux/bcm63xx/patches-4.19/505-board_spw500v.patch
diff --git a/target/linux/brcm63xx/patches-4.19/506-board_gw6200_gw6000.patch b/target/linux/bcm63xx/patches-4.19/506-board_gw6200_gw6000.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/506-board_gw6200_gw6000.patch
rename to target/linux/bcm63xx/patches-4.19/506-board_gw6200_gw6000.patch
diff --git a/target/linux/brcm63xx/patches-4.19/507-board-MAGIC.patch b/target/linux/bcm63xx/patches-4.19/507-board-MAGIC.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/507-board-MAGIC.patch
rename to target/linux/bcm63xx/patches-4.19/507-board-MAGIC.patch
diff --git a/target/linux/brcm63xx/patches-4.19/508-board_hw553.patch b/target/linux/bcm63xx/patches-4.19/508-board_hw553.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/508-board_hw553.patch
rename to target/linux/bcm63xx/patches-4.19/508-board_hw553.patch
diff --git a/target/linux/brcm63xx/patches-4.19/509-board_rta1320_16m.patch b/target/linux/bcm63xx/patches-4.19/509-board_rta1320_16m.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/509-board_rta1320_16m.patch
rename to target/linux/bcm63xx/patches-4.19/509-board_rta1320_16m.patch
diff --git a/target/linux/brcm63xx/patches-4.19/510-board_spw303v.patch b/target/linux/bcm63xx/patches-4.19/510-board_spw303v.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/510-board_spw303v.patch
rename to target/linux/bcm63xx/patches-4.19/510-board_spw303v.patch
diff --git a/target/linux/brcm63xx/patches-4.19/511-board_V2500V.patch b/target/linux/bcm63xx/patches-4.19/511-board_V2500V.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/511-board_V2500V.patch
rename to target/linux/bcm63xx/patches-4.19/511-board_V2500V.patch
diff --git a/target/linux/brcm63xx/patches-4.19/512-board_BTV2110.patch b/target/linux/bcm63xx/patches-4.19/512-board_BTV2110.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/512-board_BTV2110.patch
rename to target/linux/bcm63xx/patches-4.19/512-board_BTV2110.patch
diff --git a/target/linux/brcm63xx/patches-4.19/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch b/target/linux/bcm63xx/patches-4.19/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch
rename to target/linux/bcm63xx/patches-4.19/513-MIPS-BCM63XX-add-inventel-Livebox-support.patch
diff --git a/target/linux/brcm63xx/patches-4.19/514-board_ct536_ct5621.patch b/target/linux/bcm63xx/patches-4.19/514-board_ct536_ct5621.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/514-board_ct536_ct5621.patch
rename to target/linux/bcm63xx/patches-4.19/514-board_ct536_ct5621.patch
diff --git a/target/linux/brcm63xx/patches-4.19/515-board_DWV-S0_fixes.patch b/target/linux/bcm63xx/patches-4.19/515-board_DWV-S0_fixes.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/515-board_DWV-S0_fixes.patch
rename to target/linux/bcm63xx/patches-4.19/515-board_DWV-S0_fixes.patch
diff --git a/target/linux/brcm63xx/patches-4.19/516-board_96348A-122.patch b/target/linux/bcm63xx/patches-4.19/516-board_96348A-122.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/516-board_96348A-122.patch
rename to target/linux/bcm63xx/patches-4.19/516-board_96348A-122.patch
diff --git a/target/linux/brcm63xx/patches-4.19/519_board_CPVA502plus.patch b/target/linux/bcm63xx/patches-4.19/519_board_CPVA502plus.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/519_board_CPVA502plus.patch
rename to target/linux/bcm63xx/patches-4.19/519_board_CPVA502plus.patch
diff --git a/target/linux/brcm63xx/patches-4.19/520-bcm63xx-add-support-for-96368MVWG-board.patch b/target/linux/bcm63xx/patches-4.19/520-bcm63xx-add-support-for-96368MVWG-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/520-bcm63xx-add-support-for-96368MVWG-board.patch
rename to target/linux/bcm63xx/patches-4.19/520-bcm63xx-add-support-for-96368MVWG-board.patch
diff --git a/target/linux/brcm63xx/patches-4.19/521-bcm63xx-add-support-for-96368MVNgr-board.patch b/target/linux/bcm63xx/patches-4.19/521-bcm63xx-add-support-for-96368MVNgr-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/521-bcm63xx-add-support-for-96368MVNgr-board.patch
rename to target/linux/bcm63xx/patches-4.19/521-bcm63xx-add-support-for-96368MVNgr-board.patch
diff --git a/target/linux/brcm63xx/patches-4.19/522-MIPS-BCM63XX-add-96328avng-reference-board.patch b/target/linux/bcm63xx/patches-4.19/522-MIPS-BCM63XX-add-96328avng-reference-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/522-MIPS-BCM63XX-add-96328avng-reference-board.patch
rename to target/linux/bcm63xx/patches-4.19/522-MIPS-BCM63XX-add-96328avng-reference-board.patch
diff --git a/target/linux/brcm63xx/patches-4.19/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch b/target/linux/bcm63xx/patches-4.19/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch
rename to target/linux/bcm63xx/patches-4.19/523-MIPS-BCM63XX-add-963281TAN-reference-board.patch
diff --git a/target/linux/brcm63xx/patches-4.19/524-board_dsl_274xb_rev_f.patch b/target/linux/bcm63xx/patches-4.19/524-board_dsl_274xb_rev_f.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/524-board_dsl_274xb_rev_f.patch
rename to target/linux/bcm63xx/patches-4.19/524-board_dsl_274xb_rev_f.patch
diff --git a/target/linux/brcm63xx/patches-4.19/525-board_96348w3.patch b/target/linux/bcm63xx/patches-4.19/525-board_96348w3.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/525-board_96348w3.patch
rename to target/linux/bcm63xx/patches-4.19/525-board_96348w3.patch
diff --git a/target/linux/brcm63xx/patches-4.19/526-board_CT6373-1.patch b/target/linux/bcm63xx/patches-4.19/526-board_CT6373-1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/526-board_CT6373-1.patch
rename to target/linux/bcm63xx/patches-4.19/526-board_CT6373-1.patch
diff --git a/target/linux/brcm63xx/patches-4.19/527-board_dva-g3810bn-tl-1.patch b/target/linux/bcm63xx/patches-4.19/527-board_dva-g3810bn-tl-1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/527-board_dva-g3810bn-tl-1.patch
rename to target/linux/bcm63xx/patches-4.19/527-board_dva-g3810bn-tl-1.patch
diff --git a/target/linux/brcm63xx/patches-4.19/528-board_nb6.patch b/target/linux/bcm63xx/patches-4.19/528-board_nb6.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/528-board_nb6.patch
rename to target/linux/bcm63xx/patches-4.19/528-board_nb6.patch
diff --git a/target/linux/brcm63xx/patches-4.19/529-board_fast2604.patch b/target/linux/bcm63xx/patches-4.19/529-board_fast2604.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/529-board_fast2604.patch
rename to target/linux/bcm63xx/patches-4.19/529-board_fast2604.patch
diff --git a/target/linux/brcm63xx/patches-4.19/530-board_A4001N1.patch b/target/linux/bcm63xx/patches-4.19/530-board_A4001N1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/530-board_A4001N1.patch
rename to target/linux/bcm63xx/patches-4.19/530-board_A4001N1.patch
diff --git a/target/linux/brcm63xx/patches-4.19/531-board_AR-5387un.patch b/target/linux/bcm63xx/patches-4.19/531-board_AR-5387un.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/531-board_AR-5387un.patch
rename to target/linux/bcm63xx/patches-4.19/531-board_AR-5387un.patch
diff --git a/target/linux/brcm63xx/patches-4.19/532-board_AR-5381u.patch b/target/linux/bcm63xx/patches-4.19/532-board_AR-5381u.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/532-board_AR-5381u.patch
rename to target/linux/bcm63xx/patches-4.19/532-board_AR-5381u.patch
diff --git a/target/linux/brcm63xx/patches-4.19/533-board_rta770bw.patch b/target/linux/bcm63xx/patches-4.19/533-board_rta770bw.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/533-board_rta770bw.patch
rename to target/linux/bcm63xx/patches-4.19/533-board_rta770bw.patch
diff --git a/target/linux/brcm63xx/patches-4.19/534-board_hw556.patch b/target/linux/bcm63xx/patches-4.19/534-board_hw556.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/534-board_hw556.patch
rename to target/linux/bcm63xx/patches-4.19/534-board_hw556.patch
diff --git a/target/linux/brcm63xx/patches-4.19/535-board_rta770w.patch b/target/linux/bcm63xx/patches-4.19/535-board_rta770w.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/535-board_rta770w.patch
rename to target/linux/bcm63xx/patches-4.19/535-board_rta770w.patch
diff --git a/target/linux/brcm63xx/patches-4.19/536-board_fast2704.patch b/target/linux/bcm63xx/patches-4.19/536-board_fast2704.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/536-board_fast2704.patch
rename to target/linux/bcm63xx/patches-4.19/536-board_fast2704.patch
diff --git a/target/linux/brcm63xx/patches-4.14/537-board_fast2504n.patch b/target/linux/bcm63xx/patches-4.19/537-board_fast2504n.patch
similarity index 95%
rename from target/linux/brcm63xx/patches-4.14/537-board_fast2504n.patch
rename to target/linux/bcm63xx/patches-4.19/537-board_fast2504n.patch
index b74274baeb..ff0440772b 100644
--- a/target/linux/brcm63xx/patches-4.14/537-board_fast2504n.patch
+++ b/target/linux/bcm63xx/patches-4.19/537-board_fast2504n.patch
@@ -1,6 +1,6 @@
 From: Max Staudt <openwrt.max@enpas.org>
 Date: Wed, 15 Jan 2014 18:51:13 +0000
-Subject: [PATCH] brcm63xx: F@ST2504n board support (Linux-3.10.26)
+Subject: [PATCH] bcm63xx: F@ST2504n board support (Linux-3.10.26)
 
 Signed-off-by: Max Staudt <openwrt.max@enpas.org>
 ---
diff --git a/target/linux/brcm63xx/patches-4.19/555-board_96318ref.patch b/target/linux/bcm63xx/patches-4.19/555-board_96318ref.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/555-board_96318ref.patch
rename to target/linux/bcm63xx/patches-4.19/555-board_96318ref.patch
diff --git a/target/linux/brcm63xx/patches-4.19/556-board_96318ref_p300.patch b/target/linux/bcm63xx/patches-4.19/556-board_96318ref_p300.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/556-board_96318ref_p300.patch
rename to target/linux/bcm63xx/patches-4.19/556-board_96318ref_p300.patch
diff --git a/target/linux/brcm63xx/patches-4.19/557-board_bcm963269bhr.patch b/target/linux/bcm63xx/patches-4.19/557-board_bcm963269bhr.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/557-board_bcm963269bhr.patch
rename to target/linux/bcm63xx/patches-4.19/557-board_bcm963269bhr.patch
diff --git a/target/linux/brcm63xx/patches-4.14/558-board_AR1004G.patch b/target/linux/bcm63xx/patches-4.19/558-board_AR1004G.patch
similarity index 95%
rename from target/linux/brcm63xx/patches-4.14/558-board_AR1004G.patch
rename to target/linux/bcm63xx/patches-4.19/558-board_AR1004G.patch
index 3cf41b0d11..85521b44be 100644
--- a/target/linux/brcm63xx/patches-4.14/558-board_AR1004G.patch
+++ b/target/linux/bcm63xx/patches-4.19/558-board_AR1004G.patch
@@ -1,6 +1,6 @@
 From: "mexit@o2.pl" <mexit@o2.pl>
 Date: Sun, 24 Nov 2013 21:33:38 +0000
-Subject: [PATCH 4/5] brcm63xx: add support for Asmax AR 1004g router
+Subject: [PATCH 4/5] bcm63xx: add support for Asmax AR 1004g router
 
 Support for Asmax AR 1004g router
 
diff --git a/target/linux/brcm63xx/patches-4.19/559-board_vw6339gu.patch b/target/linux/bcm63xx/patches-4.19/559-board_vw6339gu.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/559-board_vw6339gu.patch
rename to target/linux/bcm63xx/patches-4.19/559-board_vw6339gu.patch
diff --git a/target/linux/brcm63xx/patches-4.19/560-board_963268gu_p300.patch b/target/linux/bcm63xx/patches-4.19/560-board_963268gu_p300.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/560-board_963268gu_p300.patch
rename to target/linux/bcm63xx/patches-4.19/560-board_963268gu_p300.patch
diff --git a/target/linux/brcm63xx/patches-4.19/561-board_WAP-5813n.patch b/target/linux/bcm63xx/patches-4.19/561-board_WAP-5813n.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/561-board_WAP-5813n.patch
rename to target/linux/bcm63xx/patches-4.19/561-board_WAP-5813n.patch
diff --git a/target/linux/brcm63xx/patches-4.19/562-board_VR-3025u.patch b/target/linux/bcm63xx/patches-4.19/562-board_VR-3025u.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/562-board_VR-3025u.patch
rename to target/linux/bcm63xx/patches-4.19/562-board_VR-3025u.patch
diff --git a/target/linux/brcm63xx/patches-4.19/563-board_VR-3025un.patch b/target/linux/bcm63xx/patches-4.19/563-board_VR-3025un.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/563-board_VR-3025un.patch
rename to target/linux/bcm63xx/patches-4.19/563-board_VR-3025un.patch
diff --git a/target/linux/brcm63xx/patches-4.19/564-board_P870HW-51a_v2.patch b/target/linux/bcm63xx/patches-4.19/564-board_P870HW-51a_v2.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/564-board_P870HW-51a_v2.patch
rename to target/linux/bcm63xx/patches-4.19/564-board_P870HW-51a_v2.patch
diff --git a/target/linux/brcm63xx/patches-4.19/565-board_hw520.patch b/target/linux/bcm63xx/patches-4.19/565-board_hw520.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/565-board_hw520.patch
rename to target/linux/bcm63xx/patches-4.19/565-board_hw520.patch
diff --git a/target/linux/brcm63xx/patches-4.19/566-board_A4001N.patch b/target/linux/bcm63xx/patches-4.19/566-board_A4001N.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/566-board_A4001N.patch
rename to target/linux/bcm63xx/patches-4.19/566-board_A4001N.patch
diff --git a/target/linux/brcm63xx/patches-4.19/567-board_dsl-2751b_e1.patch b/target/linux/bcm63xx/patches-4.19/567-board_dsl-2751b_e1.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/567-board_dsl-2751b_e1.patch
rename to target/linux/bcm63xx/patches-4.19/567-board_dsl-2751b_e1.patch
diff --git a/target/linux/brcm63xx/patches-4.19/568-board_DGND3700v1_3800B.patch b/target/linux/bcm63xx/patches-4.19/568-board_DGND3700v1_3800B.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/568-board_DGND3700v1_3800B.patch
rename to target/linux/bcm63xx/patches-4.19/568-board_DGND3700v1_3800B.patch
diff --git a/target/linux/brcm63xx/patches-4.19/569-board_homehub2a.patch b/target/linux/bcm63xx/patches-4.19/569-board_homehub2a.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/569-board_homehub2a.patch
rename to target/linux/bcm63xx/patches-4.19/569-board_homehub2a.patch
diff --git a/target/linux/brcm63xx/patches-4.19/570-board_HG655b.patch b/target/linux/bcm63xx/patches-4.19/570-board_HG655b.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/570-board_HG655b.patch
rename to target/linux/bcm63xx/patches-4.19/570-board_HG655b.patch
diff --git a/target/linux/brcm63xx/patches-4.19/571-board_fast2704n.patch b/target/linux/bcm63xx/patches-4.19/571-board_fast2704n.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/571-board_fast2704n.patch
rename to target/linux/bcm63xx/patches-4.19/571-board_fast2704n.patch
diff --git a/target/linux/brcm63xx/patches-4.19/572-board_VR-3026e.patch b/target/linux/bcm63xx/patches-4.19/572-board_VR-3026e.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/572-board_VR-3026e.patch
rename to target/linux/bcm63xx/patches-4.19/572-board_VR-3026e.patch
diff --git a/target/linux/brcm63xx/patches-4.19/573-board_R5010UNv2.patch b/target/linux/bcm63xx/patches-4.19/573-board_R5010UNv2.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/573-board_R5010UNv2.patch
rename to target/linux/bcm63xx/patches-4.19/573-board_R5010UNv2.patch
diff --git a/target/linux/brcm63xx/patches-4.19/574-board_HG622.patch b/target/linux/bcm63xx/patches-4.19/574-board_HG622.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/574-board_HG622.patch
rename to target/linux/bcm63xx/patches-4.19/574-board_HG622.patch
diff --git a/target/linux/brcm63xx/patches-4.19/575-board_EVG2000.patch b/target/linux/bcm63xx/patches-4.19/575-board_EVG2000.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/575-board_EVG2000.patch
rename to target/linux/bcm63xx/patches-4.19/575-board_EVG2000.patch
diff --git a/target/linux/brcm63xx/patches-4.19/576-board_AV4202N.patch b/target/linux/bcm63xx/patches-4.19/576-board_AV4202N.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/576-board_AV4202N.patch
rename to target/linux/bcm63xx/patches-4.19/576-board_AV4202N.patch
diff --git a/target/linux/brcm63xx/patches-4.19/577-board_VH4032N.patch b/target/linux/bcm63xx/patches-4.19/577-board_VH4032N.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/577-board_VH4032N.patch
rename to target/linux/bcm63xx/patches-4.19/577-board_VH4032N.patch
diff --git a/target/linux/brcm63xx/patches-4.19/578-board_R1000H.patch b/target/linux/bcm63xx/patches-4.19/578-board_R1000H.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/578-board_R1000H.patch
rename to target/linux/bcm63xx/patches-4.19/578-board_R1000H.patch
diff --git a/target/linux/brcm63xx/patches-4.19/579-board_AR-5315u.patch b/target/linux/bcm63xx/patches-4.19/579-board_AR-5315u.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/579-board_AR-5315u.patch
rename to target/linux/bcm63xx/patches-4.19/579-board_AR-5315u.patch
diff --git a/target/linux/brcm63xx/patches-4.19/580-board_AD1018.patch b/target/linux/bcm63xx/patches-4.19/580-board_AD1018.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/580-board_AD1018.patch
rename to target/linux/bcm63xx/patches-4.19/580-board_AD1018.patch
diff --git a/target/linux/brcm63xx/patches-4.19/598-board_sr102.patch b/target/linux/bcm63xx/patches-4.19/598-board_sr102.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/598-board_sr102.patch
rename to target/linux/bcm63xx/patches-4.19/598-board_sr102.patch
diff --git a/target/linux/brcm63xx/patches-4.19/800-wl_exports.patch b/target/linux/bcm63xx/patches-4.19/800-wl_exports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/800-wl_exports.patch
rename to target/linux/bcm63xx/patches-4.19/800-wl_exports.patch
diff --git a/target/linux/brcm63xx/patches-4.19/801-ssb_export_fallback_sprom.patch b/target/linux/bcm63xx/patches-4.19/801-ssb_export_fallback_sprom.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/801-ssb_export_fallback_sprom.patch
rename to target/linux/bcm63xx/patches-4.19/801-ssb_export_fallback_sprom.patch
diff --git a/target/linux/brcm63xx/patches-4.19/802-rtl8367r_fix_RGMII_support.patch b/target/linux/bcm63xx/patches-4.19/802-rtl8367r_fix_RGMII_support.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/802-rtl8367r_fix_RGMII_support.patch
rename to target/linux/bcm63xx/patches-4.19/802-rtl8367r_fix_RGMII_support.patch
diff --git a/target/linux/brcm63xx/patches-4.19/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch b/target/linux/bcm63xx/patches-4.19/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch
rename to target/linux/bcm63xx/patches-4.19/803-jffs2-work-around-unaligned-accesses-failing-on-bcm6.patch
diff --git a/target/linux/brcm63xx/patches-4.19/804-bcm63xx_enet_63268_rgmii_ports.patch b/target/linux/bcm63xx/patches-4.19/804-bcm63xx_enet_63268_rgmii_ports.patch
similarity index 100%
rename from target/linux/brcm63xx/patches-4.19/804-bcm63xx_enet_63268_rgmii_ports.patch
rename to target/linux/bcm63xx/patches-4.19/804-bcm63xx_enet_63268_rgmii_ports.patch
diff --git a/target/linux/brcm63xx/profiles/default.mk b/target/linux/bcm63xx/profiles/default.mk
similarity index 100%
rename from target/linux/brcm63xx/profiles/default.mk
rename to target/linux/bcm63xx/profiles/default.mk
diff --git a/target/linux/brcm63xx/smp/config-default b/target/linux/bcm63xx/smp/config-default
similarity index 100%
rename from target/linux/brcm63xx/smp/config-default
rename to target/linux/bcm63xx/smp/config-default
diff --git a/target/linux/brcm63xx/smp/target.mk b/target/linux/bcm63xx/smp/target.mk
similarity index 100%
rename from target/linux/brcm63xx/smp/target.mk
rename to target/linux/bcm63xx/smp/target.mk
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
