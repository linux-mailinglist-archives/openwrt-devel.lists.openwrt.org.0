Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BA71205C9
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 13:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+lM90C7A2uQh5kpTy2Rdw6v1gts2Iw2TwMa/fm9brek=; b=lQAilHdUEX69SG+vK1CBi/u8Nw
	fLUeL09UPrWjoOuC1Rq1TlvGcUdvEl2CCDt2aOkYMynjHBsIhNVMY/YGv2fKJsppnONRxIfiq3Lzz
	HoFgidLlNIFADIYTIirOFqwF+EFJwsceET44uyKRsIAu5dG9fzaNYJAhkAG2arBKo9LdwIM4T7AlW
	bXzCwAfGRvBDQHJ+rAqJjjHUkUmEABI57MR/ocqxhq1XJgBFqbT1NG/8Id18/50ojXz7kUxk6v7qM
	DGLdI5IhY/8wix81cEVejebHmFW/X3ftm/0bAYqFWLKt4Svjcjm1uxRo+tvFAXse2FGrA5vQd21Wz
	5hN1p5AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpXI-0001FH-SO; Mon, 16 Dec 2019 12:31:40 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpW9-000090-Gr
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 12:30:37 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mg6qO-1i3ts73R1C-00hhgr for <openwrt-devel@lists.openwrt.org>; Mon, 16
 Dec 2019 13:30:25 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 13:28:16 +0100
Message-Id: <20191216122817.22628-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
References: <20191216122817.22628-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZArU6fY/txo2XgbXQeY+4fvkVnGLjBOOtI6VHy6lsfAboBJsM8G
 6mYPBLr+m46htRvCgpRc9mutHVaYJ5KYcjLNOzOKq4cpusSRU6QSciwJeqCeA5bZBP62Cbd
 SEJNiII7fqFKdYpvooXS8pTYSsl8C5ezsSi9JkqOurnYnirnNuci8dggdpRJF94I8gBLMfI
 8MlaO9sJ9octonc0Q/5zQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o3xTkmAGHmI=:a36+dmNHuCvm1sl5296jLW
 5lI0/K9+1FfQxlNrMoCo43wFSNnv0OvLulMXYBHFJRIlp0vNUvvCMOtU/adTPYEawx5O2+JBJ
 YgZKmYG1TBIBN1jXPOyBkgLcZdMmNIiApOfMuHFJU3zOnBqKQFpO/utgskpyPU9qIFMse5LeG
 1ycsZcpRdCtg79p17IOVuIxPK7C3hyaxDujqditUkjb5WLfgck+xtRNkcOZb6z1y+oijdDsN7
 CMvfSQ3Sbb45OUft1+LCdfLG173Ijk9AaJZF5HPHeMqLkmExubhVWlWmYKN0C4QKxcSPgCgLb
 /AENSrurfgRvPByZRlLflp4I5yWv87nUAzGnXKqknTJcg0+0N6nhwuFgSoi2fdPA1JWpMjtC2
 Wpu0KyOKrLWvC8D/MPV9WTwlaYY32FOBUw275aIaV+nS+pyqEfoXjQhc199Iw8ynQuD3oQXhN
 BwjcZk4bkVXSfsBIUWisxL8t/NWpQB/y7AQlDy+VqVF3vdnqU8gR1UxrOJ5hzZtWYi7dSfSw5
 WfywepOjksJ+US9kG86PvQAjwZSVBPxzs3hDznAhUDsFmx1GcQ9U9ISbsO++rMxBGMYmzjZD0
 fVYxYfBMEq0VSgfwQtYRQBWuSoDzcJ/7RP9RllEhlG32T4dRvmti09KtZATTctVv9WzM7f6Fw
 qBmtAcRwzn9Mt4YcSysCNaVEdcKYk3VjQoKhN3uiJg15/h4R/AGwfBhHhWuVxtACkzlAeG3iD
 nL5FRjKilzlnlo4HNkh+JwdhXGfCZZqIZ4wZeFP+9Lpe4iCK1mhRWWjObaXkzvS+R+h61pKuO
 3m+u2GudM0CnVHb81CY49Ze7msCwOuMcppb/6CqkRQGIyl8iPaXIZb1bXsLO3hCPihloOog3q
 NgUGQRwkDYtE2z7ryBZc9eWw852ZZUJYXRs3scqW8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043030_166930_2B398566 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/4] lantiq: use soc_vendor_device scheme on
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

This renames lantiq DTS(I) files to follow soc_vendor_device scheme.
This will make DTS files easier to maintain.

As a side effect, DTS file name can be derived from device node
names now, only having to specify a SOC variable in Makefiles.

While at it, move files to arch/mips/boot/dts/lantiq subfolder.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../mips/boot/dts/{ => lantiq}/amazonse.dtsi  |  0
 .../amazonse_allnet_all0333cj.dts}            |  0
 .../amazonse_netgear_dgn1000b.dts}            |  0
 .../arch/mips/boot/dts/{ => lantiq}/ar9.dtsi  |  0
 .../ar9_avm_fritz7312.dts}                    |  0
 .../ar9_avm_fritz7320.dts}                    |  0
 .../ar9_bt_homehub-v3a.dts}                   |  0
 .../ar9_buffalo_wbmr-hp-g300h.dts}            |  0
 .../ar9_lantiq_easy50810.dts}                 |  0
 .../ar9_netgear_dgn3500.dts}                  |  2 +-
 .../ar9_netgear_dgn3500.dtsi}                 |  0
 .../ar9_netgear_dgn3500b.dts}                 |  2 +-
 .../{H201L.dts => lantiq/ar9_zte_h201l.dts}   |  0
 .../ar9_zyxel_p-2601hn.dts}                   |  0
 .../mips/boot/dts/{ => lantiq}/danube.dtsi    |  0
 .../danube_arcadyan_arv4510pw.dts}            |  0
 .../danube_arcadyan_arv4518pwr01.dts}         |  2 +-
 .../danube_arcadyan_arv4518pwr01.dtsi}        |  0
 .../danube_arcadyan_arv4518pwr01a.dts}        |  2 +-
 .../danube_arcadyan_arv4519pw.dts}            |  0
 .../danube_arcadyan_arv4520pw.dts}            |  0
 .../danube_arcadyan_arv4525pw.dts}            |  0
 .../danube_arcadyan_arv452cqw.dts}            |  0
 .../danube_arcadyan_arv7506pw11.dts}          |  0
 .../danube_arcadyan_arv7510pw22.dts}          |  0
 .../danube_arcadyan_arv7518pw.dts}            |  0
 .../danube_arcadyan_arv7519pw.dts}            |  0
 .../danube_arcadyan_arv7525pw.dts}            |  0
 .../danube_arcadyan_arv752dpw.dts}            |  0
 .../danube_arcadyan_arv752dpw22.dts}          |  0
 .../danube_arcadyan_arv8539pw22.dts}          |  0
 .../danube_audiocodes_mp-252.dts}             |  0
 .../danube_bt_homehub-v2b.dts}                |  0
 .../danube_lantiq_easy50712.dts}              |  0
 .../danube_siemens_gigaset-sx76x.dts}         |  0
 .../mips/boot/dts/{ => lantiq}/falcon.dtsi    |  0
 .../falcon_lantiq_easy88388.dts}              |  2 +-
 .../falcon_lantiq_easy88444.dts}              |  2 +-
 .../falcon_lantiq_easy98000-nand.dts}         |  2 +-
 .../falcon_lantiq_easy98000-nor.dts}          |  2 +-
 .../falcon_lantiq_easy98000-sflash.dts}       |  4 +-
 .../falcon_lantiq_easy98000.dtsi}             |  0
 .../falcon_lantiq_easy98020-v18.dts}          |  2 +-
 .../falcon_lantiq_easy98020.dts}              |  2 +-
 .../falcon_lantiq_easy98021.dts}              |  2 +-
 .../falcon_lantiq_easy98035synce.dts}         |  2 +-
 .../falcon_lantiq_easy98035synce1588.dts}     |  2 +-
 .../falcon_lantiq_falcon-mdu.dts}             |  2 +-
 .../falcon_lantiq_falcon-sfp.dts}             |  2 +-
 .../falcon_sflash-16m.dtsi}                   |  0
 .../arch/mips/boot/dts/{ => lantiq}/vr9.dtsi  |  0
 .../vr9_alphanetworks_asl56026.dts}           |  0
 .../vr9_arcadyan_arv7519rw22.dts}             |  0
 .../vr9_arcadyan_vg3503j.dts}                 |  0
 .../vr9_arcadyan_vgv7510kw22-brn.dts}         |  2 +-
 .../vr9_arcadyan_vgv7510kw22-nor.dts}         |  2 +-
 .../vr9_arcadyan_vgv7510kw22.dtsi}            |  0
 .../vr9_arcadyan_vgv7519-brn.dts}             |  2 +-
 .../vr9_arcadyan_vgv7519-nor.dts}             |  2 +-
 .../vr9_arcadyan_vgv7519.dtsi}                |  0
 .../vr9_avm_fritz3370-rev2-hynix.dts}         |  2 +-
 .../vr9_avm_fritz3370-rev2-micron.dts}        |  2 +-
 .../vr9_avm_fritz3370-rev2.dtsi}              |  0
 .../vr9_avm_fritz7360sl.dts}                  |  2 +-
 .../vr9_avm_fritz7362sl.dts}                  |  2 +-
 .../vr9_avm_fritz736x.dtsi}                   |  0
 .../vr9_avm_fritz7412.dts}                    |  0
 .../vr9_bt_homehub-v5a.dts}                   |  0
 .../vr9_buffalo_wbmr-300hpd.dts}              |  0
 .../vr9_lantiq_easy80920-nand.dts}            |  2 +-
 .../vr9_lantiq_easy80920-nor.dts}             |  2 +-
 .../vr9_lantiq_easy80920.dtsi}                |  0
 .../vr9_netgear_dm200.dts}                    |  0
 .../vr9_tplink_tdw8970.dts}                   |  2 +-
 .../vr9_tplink_tdw8980.dts}                   |  2 +-
 .../vr9_tplink_tdw89x0.dtsi}                  |  0
 .../vr9_tplink_vr200.dts}                     |  2 +-
 .../vr9_tplink_vr200.dtsi}                    |  0
 .../vr9_tplink_vr200v.dts}                    |  2 +-
 .../vr9_zyxel_p-2812hnu-f1.dts}               |  2 +-
 .../vr9_zyxel_p-2812hnu-f3.dts}               |  2 +-
 .../vr9_zyxel_p-2812hnu-fx.dtsi}              |  0
 target/linux/lantiq/image/Makefile            |  2 +
 target/linux/lantiq/image/amazonse.mk         |  4 +-
 target/linux/lantiq/image/ar9.mk              | 20 +++++-----
 target/linux/lantiq/image/danube.mk           | 28 +++++++-------
 target/linux/lantiq/image/falcon.mk           | 24 ++++++------
 target/linux/lantiq/image/tp-link.mk          |  5 +--
 target/linux/lantiq/image/vr9.mk              | 38 +++++++++----------
 target/linux/lantiq/image/xway_legacy.mk      | 10 ++---
 90 files changed, 98 insertions(+), 99 deletions(-)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/amazonse.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ALL0333CJ.dts => lantiq/amazonse_allnet_all0333cj.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{DGN1000B.dts => lantiq/amazonse_netgear_dgn1000b.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{ => lantiq}/ar9.dtsi (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7312.dts => lantiq/ar9_avm_fritz7312.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{FRITZ7320.dts => lantiq/ar9_avm_fritz7320.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{BTHOMEHUBV3A.dts => lantiq/ar9_bt_homehub-v3a.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{WBMR.dts => lantiq/ar9_buffalo_wbmr-hp-g300h.dts} (100%)
 rename target/linux/lantiq/files/arch/mips/boot/dts/{EASY50810.dts => lantiq/ar9_lantiq_easy50810.dts} (100%)
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

diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/amazonse.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/amazonse.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/amazonse.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/amazonse.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ALL0333CJ.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/amazonse_allnet_all0333cj.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ALL0333CJ.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/amazonse_allnet_all0333cj.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/DGN1000B.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/amazonse_netgear_dgn1000b.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/DGN1000B.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/amazonse_netgear_dgn1000b.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ar9.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ar9.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7312.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_avm_fritz7320.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7320.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_avm_fritz7320.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/BTHOMEHUBV3A.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_bt_homehub-v3a.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/BTHOMEHUBV3A.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_bt_homehub-v3a.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/WBMR.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_buffalo_wbmr-hp-g300h.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/WBMR.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_buffalo_wbmr-hp-g300h.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY50810.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_lantiq_easy50810.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY50810.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_lantiq_easy50810.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/DGN3500.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500.dts
similarity index 75%
rename from target/linux/lantiq/files/arch/mips/boot/dts/DGN3500.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500.dts
index 98a2ebd98e..cbc99fe620 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/DGN3500.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "DGN3500.dtsi"
+#include "ar9_netgear_dgn3500.dtsi"
 
 / {
 	compatible = "netgear,dgn3500", "lantiq,xway", "lantiq,ar9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/DGN3500.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/DGN3500.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/DGN3500B.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500b.dts
similarity index 75%
rename from target/linux/lantiq/files/arch/mips/boot/dts/DGN3500B.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500b.dts
index d1d788cc7d..b69613e48f 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/DGN3500B.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_netgear_dgn3500b.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "DGN3500.dtsi"
+#include "ar9_netgear_dgn3500.dtsi"
 
 / {
 	compatible = "netgear,dgn3500b", "lantiq,xway", "lantiq,ar9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/H201L.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_zte_h201l.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/H201L.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_zte_h201l.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/P2601HNFX.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_zyxel_p-2601hn.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/P2601HNFX.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/ar9_zyxel_p-2601hn.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/danube.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/danube.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4510PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4510pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4510PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4510pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01.dts
similarity index 71%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01.dts
index 34f868f484..ff34068005 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "ARV4518PWR01.dtsi"
+#include "danube_arcadyan_arv4518pwr01.dtsi"
 
 / {
 	compatible = "arcadyan,arv4518pwr01", "lantiq,xway", "lantiq,danube";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01A.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01a.dts
similarity index 78%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01A.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01a.dts
index 9617398bbc..b261a2fa91 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4518PWR01A.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4518pwr01a.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "ARV4518PWR01.dtsi"
+#include "danube_arcadyan_arv4518pwr01.dtsi"
 
 / {
 	compatible = "arcadyan,arv4518pwr01a", "lantiq,xway", "lantiq,danube";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4519PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4519pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4519PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4519pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4520PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4520pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4520PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4520pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV4525PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4525pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV4525PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv4525pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV452CQW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv452cqw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV452CQW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv452cqw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV7506PW11.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7506pw11.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV7506PW11.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7506pw11.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV7510PW22.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7510pw22.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV7510PW22.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7510pw22.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV7518PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7518pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV7518PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7518pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV7519PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7519pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV7519PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7519pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV7525PW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7525pw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV7525PW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv7525pw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV752DPW.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv752dpw.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV752DPW.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv752dpw.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV752DPW22.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv752dpw22.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV752DPW22.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv752dpw22.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV8539PW22.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv8539pw22.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV8539PW22.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_arcadyan_arv8539pw22.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ACMP252.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_audiocodes_mp-252.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ACMP252.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_audiocodes_mp-252.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/BTHOMEHUBV2B.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_bt_homehub-v2b.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/BTHOMEHUBV2B.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_bt_homehub-v2b.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY50712.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_lantiq_easy50712.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY50712.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_lantiq_easy50712.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/GIGASX76X.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_siemens_gigaset-sx76x.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/GIGASX76X.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/danube_siemens_gigaset-sx76x.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/falcon.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/falcon.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY88388.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy88388.dts
similarity index 98%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY88388.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy88388.dts
index 12c448c2e6..22ce8caced 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY88388.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy88388.dts
@@ -2,7 +2,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon FTTDP8 Reference Board";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY88444.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy88444.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY88444.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy88444.dts
index 3f29d319cd..fa331450bf 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY88444.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy88444.dts
@@ -2,7 +2,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon FTTdp G.FAST Reference Board";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000NAND.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-nand.dts
similarity index 93%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98000NAND.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-nand.dts
index 2155f0cb1d..e4719d59e0 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000NAND.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-nand.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
 #include "falcon.dtsi"
-#include "EASY98000-base.dtsi"
+#include "falcon_lantiq_easy98000.dtsi"
 
 / {
 	model = "Lantiq Falcon (NAND)";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000NOR.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-nor.dts
similarity index 93%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98000NOR.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-nor.dts
index 3cb00343f5..cba277e6d1 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000NOR.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-nor.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
 #include "falcon.dtsi"
-#include "EASY98000-base.dtsi"
+#include "falcon_lantiq_easy98000.dtsi"
 
 / {
 	model = "Lantiq Falcon (NOR)";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000SFLASH.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-sflash.dts
similarity index 73%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98000SFLASH.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-sflash.dts
index bbe524e94e..e8d8b42470 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000SFLASH.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000-sflash.dts
@@ -1,8 +1,8 @@
 /dts-v1/;
 
 #include "falcon.dtsi"
-#include "EASY98000-base.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_lantiq_easy98000.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon (SFLASH)";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98000-base.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98000-base.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98000.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98020V18.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98020-v18.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98020V18.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98020-v18.dts
index 571e23454a..773a490019 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98020V18.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98020-v18.dts
@@ -3,7 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon Reference Board V1.8";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98020.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98020.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98020.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98020.dts
index 7a3ef418d0..397764aac4 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98020.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98020.dts
@@ -3,7 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon Reference Board";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98021.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98021.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98021.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98021.dts
index 7eb40bde24..aa63268149 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98021.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98021.dts
@@ -3,7 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon HGU Reference Board";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98035SYNCE.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98035synce.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98035SYNCE.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98035synce.dts
index df941cdb67..f1ecebec3b 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98035SYNCE.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98035synce.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon SFP Stick with SyncE";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98035SYNCE1588.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98035synce1588.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY98035SYNCE1588.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98035synce1588.dts
index a3abc6e707..98421174d3 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY98035SYNCE1588.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_easy98035synce1588.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon SFP Stick with SyncE/1588";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FALCON-MDU.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_falcon-mdu.dts
similarity index 96%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FALCON-MDU.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_falcon-mdu.dts
index c5da8b564f..130d49ebd7 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FALCON-MDU.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_falcon-mdu.dts
@@ -3,7 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon / Vinax MDU Board";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FALCON-SFP.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_falcon-sfp.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FALCON-SFP.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_falcon-sfp.dts
index 8d45de4ebe..880c4edca8 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FALCON-SFP.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_lantiq_falcon-sfp.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
 #include "falcon.dtsi"
-#include "falcon-sflash-16M.dtsi"
+#include "falcon_sflash-16m.dtsi"
 
 / {
 	model = "Lantiq Falcon SFP Stick";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/falcon-sflash-16M.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_sflash-16m.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/falcon-sflash-16M.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/falcon_sflash-16m.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/vr9.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/vr9.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ASL56026.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_alphanetworks_asl56026.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ASL56026.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_alphanetworks_asl56026.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/ARV7519RW22.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_arv7519rw22.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/ARV7519RW22.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_arv7519rw22.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VG3503J.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vg3503j.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VG3503J.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vg3503j.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22BRN.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22-brn.dts
similarity index 96%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22BRN.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22-brn.dts
index 5a33121d72..9f6f405a09 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22BRN.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22-brn.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "VGV7510KW22.dtsi"
+#include "vr9_arcadyan_vgv7510kw22.dtsi"
 
 / {
 	compatible = "arcadyan,vgv7510kw22-brn", "arcadyan,vgv7510kw22", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22NOR.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22-nor.dts
similarity index 92%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22NOR.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22-nor.dts
index 2accffaed7..613ff3782c 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22NOR.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22-nor.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "VGV7510KW22.dtsi"
+#include "vr9_arcadyan_vgv7510kw22.dtsi"
 
 / {
 	compatible = "arcadyan,vgv7510kw22-nor", "arcadyan,vgv7510kw22", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VGV7510KW22.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7510kw22.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7519BRN.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519-brn.dts
similarity index 96%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VGV7519BRN.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519-brn.dts
index c51a44bb3d..051de0c23e 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7519BRN.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519-brn.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "VGV7519.dtsi"
+#include "vr9_arcadyan_vgv7519.dtsi"
 
 / {
 	compatible = "arcadyan,vgv7519-brn", "arcadyan,vgv7519", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7519NOR.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519-nor.dts
similarity index 92%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VGV7519NOR.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519-nor.dts
index aa6a96156f..2121fbf41d 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7519NOR.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519-nor.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "VGV7519.dtsi"
+#include "vr9_arcadyan_vgv7519.dtsi"
 
 / {
 	compatible = "arcadyan,vgv7519-nor", "arcadyan,vgv7519", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VGV7519.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VGV7519.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_arcadyan_vgv7519.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2-HYNIX.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2-hynix.dts
similarity index 94%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2-HYNIX.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2-hynix.dts
index 15bd0d2713..1aea98260a 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2-HYNIX.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2-hynix.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "FRITZ3370-REV2.dtsi"
+#include "vr9_avm_fritz3370-rev2.dtsi"
 
 / {
 	compatible = "avm,fritz3370-rev2-hynix", "avm,fritz3370-rev2", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2-MICRON.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2-micron.dts
similarity index 94%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2-MICRON.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2-micron.dts
index 7e4a3e1114..a19d168159 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2-MICRON.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2-micron.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "FRITZ3370-REV2.dtsi"
+#include "vr9_avm_fritz3370-rev2.dtsi"
 
 / {
 	compatible = "avm,fritz3370-rev2-micron", "avm,fritz3370-rev2", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3370-REV2.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz3370-rev2.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7360SL.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7360sl.dts
similarity index 97%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7360SL.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7360sl.dts
index 0fbe6396a8..012300ec57 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7360SL.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7360sl.dts
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "FRITZ736X.dtsi"
+#include "vr9_avm_fritz736x.dtsi"
 
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/mips/lantiq_rcu_gphy.h>
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7362SL.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7362sl.dts
similarity index 98%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7362SL.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7362sl.dts
index feb9242574..a061a482da 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7362SL.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7362sl.dts
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "FRITZ736X.dtsi"
+#include "vr9_avm_fritz736x.dtsi"
 
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/mips/lantiq_rcu_gphy.h>
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz736x.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ736X.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz736x.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7412.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/FRITZ7412.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_avm_fritz7412.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/BTHOMEHUBV5A.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_bt_homehub-v5a.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/BTHOMEHUBV5A.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_bt_homehub-v5a.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/WBMR300.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_buffalo_wbmr-300hpd.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/WBMR300.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_buffalo_wbmr-300hpd.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY80920NAND.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920-nand.dts
similarity index 96%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY80920NAND.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920-nand.dts
index 0bf8e1b7ef..585521459b 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY80920NAND.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920-nand.dts
@@ -1,7 +1,7 @@
 /dts-v1/;
 
 
-#include "EASY80920.dtsi"
+#include "vr9_lantiq_easy80920.dtsi"
 
 / {
 	compatible = "lantiq,easy80920-nand", "lantiq,easy80920", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY80920NOR.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920-nor.dts
similarity index 94%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY80920NOR.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920-nor.dts
index 6ed6c5d427..c204c5e093 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/EASY80920NOR.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920-nor.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "EASY80920.dtsi"
+#include "vr9_lantiq_easy80920.dtsi"
 
 / {
 	compatible = "lantiq,easy80920-nor", "lantiq,easy80920", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/EASY80920.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/EASY80920.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_lantiq_easy80920.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/DM200.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_netgear_dm200.dts
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/DM200.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_netgear_dm200.dts
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/TDW8970.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw8970.dts
similarity index 78%
rename from target/linux/lantiq/files/arch/mips/boot/dts/TDW8970.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw8970.dts
index 25eb3dac67..9b3055983a 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/TDW8970.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw8970.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "TDW89X0.dtsi"
+#include "vr9_tplink_tdw89x0.dtsi"
 
 / {
 	compatible = "tplink,tdw8970", "tplink,tdw89x0", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/TDW8980.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw8980.dts
similarity index 94%
rename from target/linux/lantiq/files/arch/mips/boot/dts/TDW8980.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw8980.dts
index 76875e735d..725aa759d2 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/TDW8980.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw8980.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "TDW89X0.dtsi"
+#include "vr9_tplink_tdw89x0.dtsi"
 
 / {
 	compatible = "tplink,tdw8980", "tplink,tdw89x0", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/TDW89X0.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw89x0.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/TDW89X0.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_tdw89x0.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VR200.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200.dts
similarity index 98%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VR200.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200.dts
index 8724e37b47..98f2282579 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/VR200.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "VR200.dtsi"
+#include "vr9_tplink_vr200.dtsi"
 
 / {
 	compatible = "tplink,vr200", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VR200.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VR200.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200.dtsi
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/VR200v.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200v.dts
similarity index 98%
rename from target/linux/lantiq/files/arch/mips/boot/dts/VR200v.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200v.dts
index 34805bb9f0..2e25a72a83 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/VR200v.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_tplink_vr200v.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "VR200.dtsi"
+#include "vr9_tplink_vr200.dtsi"
 
 / {
 	compatible = "tplink,vr200v", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUF1.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-f1.dts
similarity index 96%
rename from target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUF1.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-f1.dts
index d1a04a4a78..4d7aac325b 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUF1.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-f1.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "P2812HNUFX.dtsi"
+#include "vr9_zyxel_p-2812hnu-fx.dtsi"
 
 / {
 	compatible = "zyxel,p-2812hnu-f1", "zyxel,p-2812hnu", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUF3.dts b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-f3.dts
similarity index 96%
rename from target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUF3.dts
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-f3.dts
index a607311460..7da1533809 100644
--- a/target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUF3.dts
+++ b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-f3.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include "P2812HNUFX.dtsi"
+#include "vr9_zyxel_p-2812hnu-fx.dtsi"
 
 / {
 	compatible = "zyxel,p-2812hnu-f3", "zyxel,p-2812hnu", "lantiq,xway", "lantiq,vr9";
diff --git a/target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUFX.dtsi b/target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-fx.dtsi
similarity index 100%
rename from target/linux/lantiq/files/arch/mips/boot/dts/P2812HNUFX.dtsi
rename to target/linux/lantiq/files/arch/mips/boot/dts/lantiq/vr9_zyxel_p-2812hnu-fx.dtsi
diff --git a/target/linux/lantiq/image/Makefile b/target/linux/lantiq/image/Makefile
index a2052ef924..3060ff920b 100644
--- a/target/linux/lantiq/image/Makefile
+++ b/target/linux/lantiq/image/Makefile
@@ -61,6 +61,8 @@ define Device/Default
   KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
   FILESYSTEMS := squashfs
   IMAGE_SIZE :=
+  DTS_DIR := $(DTS_DIR)/lantiq
+  DEVICE_DTS = $$(SOC)_$(1)
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
   IMAGES := sysupgrade.bin
   IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata | check-size $$$$(IMAGE_SIZE)
diff --git a/target/linux/lantiq/image/amazonse.mk b/target/linux/lantiq/image/amazonse.mk
index 77afaa8bed..c9329a4dd9 100644
--- a/target/linux/lantiq/image/amazonse.mk
+++ b/target/linux/lantiq/image/amazonse.mk
@@ -2,7 +2,7 @@ define Device/allnet_all0333cj
   DEVICE_VENDOR := Allnet
   DEVICE_MODEL := ALL0333CJ
   IMAGE_SIZE := 3700k
-  DEVICE_DTS := ALL0333CJ
+  SOC := amazonse
   DEVICE_PACKAGES := kmod-ltq-adsl-ase kmod-ltq-adsl-ase-mei \
 	kmod-ltq-adsl-ase-fw-b kmod-ltq-atm-ase \
 	ltq-adsl-app ppp-mod-pppoe
@@ -13,7 +13,7 @@ define Device/netgear_dgn1000b
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := DGN1000B
   IMAGE_SIZE := 6000k
-  DEVICE_DTS := DGN1000B
+  SOC := amazonse
   DEVICE_PACKAGES := kmod-ltq-adsl-ase kmod-ltq-adsl-ase-mei \
 	kmod-ltq-adsl-ase-fw-b kmod-ltq-atm-ase \
 	ltq-adsl-app ppp-mod-pppoe
diff --git a/target/linux/lantiq/image/ar9.mk b/target/linux/lantiq/image/ar9.mk
index 272227bdb3..f86e2d1c68 100644
--- a/target/linux/lantiq/image/ar9.mk
+++ b/target/linux/lantiq/image/ar9.mk
@@ -1,7 +1,7 @@
 define Device/avm_fritz7312
   $(Device/AVM)
   DEVICE_MODEL := FRITZ!Box 7312
-  DEVICE_DTS := FRITZ7312
+  SOC := ar9
   IMAGE_SIZE := 15744k
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
@@ -16,7 +16,7 @@ define Device/avm_fritz7320
   DEVICE_MODEL := FRITZ!Box 7320
   DEVICE_ALT0_VENDOR := 1&1
   DEVICE_ALT0_MODEL := HomeServer
-  DEVICE_DTS := FRITZ7320
+  SOC := ar9
   IMAGE_SIZE := 15744k
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
@@ -33,7 +33,7 @@ define Device/bt_homehub-v3a
   DEVICE_MODEL := Home Hub
   DEVICE_VARIANT := Type A
   BOARD_NAME := BTHOMEHUBV3A
-  DEVICE_DTS := BTHOMEHUBV3A
+  SOC := ar9
   DEVICE_PACKAGES := kmod-usb-dwc2 \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
 	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
@@ -50,7 +50,8 @@ define Device/buffalo_wbmr-hp-g300h-a
   DEVICE_MODEL := WBMR-HP-G300H
   DEVICE_VARIANT := A
   IMAGE_SIZE := 31488k
-  DEVICE_DTS := WBMR
+  SOC := ar9
+  DEVICE_DTS := ar9_buffalo_wbmr-hp-g300h
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
 	kmod-ltq-adsl-ar9-fw-a kmod-ltq-atm-ar9 \
@@ -65,7 +66,8 @@ define Device/buffalo_wbmr-hp-g300h-b
   DEVICE_MODEL := WBMR-HP-G300H
   DEVICE_VARIANT := B
   IMAGE_SIZE := 31488k
-  DEVICE_DTS := WBMR
+  SOC := ar9
+  DEVICE_DTS := ar9_buffalo_wbmr-hp-g300h
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
 	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
@@ -80,7 +82,7 @@ DGN3500_KERNEL_OFFSET_DEC=327680
 define Device/netgear_dgn3500
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := DGN3500
-  DEVICE_DTS := DGN3500
+  SOC := ar9
   IMAGE_SIZE := 16000k
   IMAGES := \
 	sysupgrade-na.bin sysupgrade.bin \
@@ -112,7 +114,7 @@ TARGET_DEVICES += netgear_dgn3500
 define Device/netgear_dgn3500b
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := DGN3500B
-  DEVICE_DTS := DGN3500B
+  SOC := ar9
   IMAGE_SIZE := 16000k
   IMAGES += factory.img
   IMAGE/sysupgrade.bin := \
@@ -136,7 +138,7 @@ define Device/zte_h201l
   DEVICE_VENDOR := ZTE
   DEVICE_MODEL := H201L
   IMAGE_SIZE := 7808k
-  DEVICE_DTS := H201L
+  SOC := ar9
   DEVICE_PACKAGES := kmod-ath9k-htc wpad-basic \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
 	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
@@ -152,7 +154,7 @@ define Device/zyxel_p-2601hn
   DEVICE_MODEL := P-2601HN
   DEVICE_VARIANT := F1/F3
   IMAGE_SIZE := 15616k
-  DEVICE_DTS := P2601HNFX
+  SOC := ar9
   DEVICE_PACKAGES := kmod-rt2800-usb wpad-basic \
 	kmod-ltq-adsl-ar9-mei kmod-ltq-adsl-ar9 \
 	kmod-ltq-adsl-ar9-fw-b kmod-ltq-atm-ar9 \
diff --git a/target/linux/lantiq/image/danube.mk b/target/linux/lantiq/image/danube.mk
index 8171900a6f..2fb5ea061f 100644
--- a/target/linux/lantiq/image/danube.mk
+++ b/target/linux/lantiq/image/danube.mk
@@ -4,7 +4,7 @@ define Device/arcadyan_arv4510pw
   DEVICE_ALT0_VENDOR := Wippies
   DEVICE_ALT0_MODEL := BeWan iBox v1.0
   IMAGE_SIZE := 15616k
-  DEVICE_DTS := ARV4510PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-ledtrig-usbport kmod-usb2-pci kmod-usb-uhci \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -23,7 +23,7 @@ define Device/arcadyan_arv4519pw
   DEVICE_ALT1_VENDOR := Pirelli
   DEVICE_ALT1_MODEL := P.RG A4201G
   IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4519PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -38,7 +38,7 @@ define Device/arcadyan_arv7506pw11
   DEVICE_ALT0_VENDOR := Alice/O2
   DEVICE_ALT0_MODEL := IAD 4421
   IMAGE_SIZE := 7808k
-  DEVICE_DTS := ARV7506PW11
+  SOC := danube
   DEVICE_PACKAGES := kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
 	ltq-adsl-app ppp-mod-pppoa \
@@ -53,7 +53,7 @@ define Device/arcadyan_arv7510pw22
   DEVICE_ALT0_VENDOR := Astoria Networks
   DEVICE_ALT0_MODEL := ARV7510PW22
   IMAGE_SIZE := 31232k
-  DEVICE_DTS := ARV7510PW22
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -71,7 +71,7 @@ define Device/arcadyan_arv7518pw
   DEVICE_ALT0_VENDOR := Astoria Networks
   DEVICE_ALT0_MODEL := ARV7518PW
   IMAGE_SIZE := 7872k
-  DEVICE_DTS := ARV7518PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -87,7 +87,7 @@ define Device/arcadyan_arv7519pw
   DEVICE_ALT0_VENDOR := Astoria Networks
   DEVICE_ALT0_MODEL := ARV7519PW
   IMAGE_SIZE := 15488k
-  DEVICE_DTS := ARV7519PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -104,7 +104,7 @@ define Device/arcadyan_arv7525pw
   DEVICE_ALT0_MODEL := Speedport W303V
   DEVICE_ALT0_VARIANT := Typ A
   IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4510PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
@@ -119,7 +119,7 @@ define Device/arcadyan_arv752dpw
   DEVICE_ALT0_VENDOR := Vodafone
   DEVICE_ALT0_MODEL := Easybox 802
   IMAGE_SIZE := 7872k
-  DEVICE_DTS := ARV752DPW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
@@ -136,7 +136,7 @@ define Device/arcadyan_arv752dpw22
   DEVICE_ALT0_VENDOR := Vodafone
   DEVICE_ALT0_MODEL := Easybox 803
   IMAGE_SIZE := 7616k
-  DEVICE_DTS := ARV752DPW22
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb2-pci kmod-usb-uhci kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
@@ -153,7 +153,7 @@ define Device/arcadyan_arv8539pw22
   DEVICE_ALT0_VENDOR := Telekom
   DEVICE_ALT0_MODEL := Speedport W504V Typ A
   IMAGE_SIZE := 7616k
-  DEVICE_DTS := ARV8539PW22
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
@@ -167,7 +167,7 @@ define Device/audiocodes_mp-252
   DEVICE_VENDOR := AudioCodes
   DEVICE_MODEL := MediaPack MP-252
   IMAGE_SIZE := 14848k
-  DEVICE_DTS := ACMP252
+  SOC := danube
   DEVICE_PACKAGES :=  kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
 	kmod-ltq-tapi kmod-ltq-vmmc \
@@ -185,7 +185,7 @@ define Device/bt_homehub-v2b
   DEVICE_MODEL := Home Hub 2
   DEVICE_VARIANT := Type B
   BOARD_NAME := BTHOMEHUBV2B
-  DEVICE_DTS := BTHOMEHUBV2B
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -199,7 +199,7 @@ TARGET_DEVICES += bt_homehub-v2b
 define Device/lantiq_easy50712
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := Danube (EASY50712)
-  DEVICE_DTS := EASY50712
+  SOC := danube
   IMAGE_SIZE := 3776k
 endef
 TARGET_DEVICES += lantiq_easy50712
@@ -208,7 +208,7 @@ define Device/siemens_gigaset-sx76x
   DEVICE_VENDOR := Siemens
   DEVICE_MODEL := Gigaset sx76x
   IMAGE_SIZE := 7680k
-  DEVICE_DTS := GIGASX76X
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
diff --git a/target/linux/lantiq/image/falcon.mk b/target/linux/lantiq/image/falcon.mk
index 38ba856cf8..e6aae1240b 100644
--- a/target/linux/lantiq/image/falcon.mk
+++ b/target/linux/lantiq/image/falcon.mk
@@ -2,7 +2,7 @@ define Device/lantiq_easy88388
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := EASY88388 Falcon FTTDP8 Reference Board
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY88388
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy88388
 
@@ -10,7 +10,7 @@ define Device/lantiq_easy88444
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := EASY88444 Falcon FTTdp G.FAST Reference Board
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY88444
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy88444
 
@@ -19,7 +19,7 @@ define Device/lantiq_easy98020
   DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
   DEVICE_VARIANT := v1.0-v1.7
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98020
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy98020
 
@@ -28,7 +28,7 @@ define Device/lantiq_easy98020-v18
   DEVICE_MODEL := Falcon SFU Reference Board (EASY98020)
   DEVICE_VARIANT := v1.8
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98020V18
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy98020-v18
 
@@ -36,7 +36,7 @@ define Device/lantiq_easy98021
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := Falcon HGU Reference Board (EASY98021)
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98021
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy98021
 
@@ -45,7 +45,7 @@ define Device/lantiq_easy98035synce
   DEVICE_MODEL := Falcon SFP Stick (EASY98035SYNCE)
   DEVICE_VARIANT := with Synchronous Ethernet
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98035SYNCE
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy98035synce
 
@@ -54,7 +54,7 @@ define Device/lantiq_easy98035synce1588
   DEVICE_MODEL := Falcon SFP Stick (EASY98035SYNCE1588)
   DEVICE_VARIANT := with SyncE and IEEE1588
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98035SYNCE1588
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_easy98035synce1588
 
@@ -63,7 +63,7 @@ define Device/lantiq_easy98000-nand
   DEVICE_MODEL := EASY98000 Falcon Eval Board
   DEVICE_VARIANT := NAND
   IMAGE_SIZE := 3904k
-  DEVICE_DTS := EASY98000NAND
+  SOC := falcon
   DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
 endef
 TARGET_DEVICES += lantiq_easy98000-nand
@@ -73,7 +73,7 @@ define Device/lantiq_easy98000-nor
   DEVICE_MODEL := EASY98000 Falcon Eval Board
   DEVICE_VARIANT := NOR
   IMAGE_SIZE := 3904k
-  DEVICE_DTS := EASY98000NOR
+  SOC := falcon
   DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
 endef
 TARGET_DEVICES += lantiq_easy98000-nor
@@ -83,7 +83,7 @@ define Device/lantiq_easy98000-sflash
   DEVICE_MODEL := EASY98000 Falcon Eval Board
   DEVICE_VARIANT := SFLASH
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := EASY98000SFLASH
+  SOC := falcon
   DEVICE_PACKAGES := kmod-dm9000 kmod-i2c-lantiq kmod-eeprom-at24
 endef
 TARGET_DEVICES += lantiq_easy98000-sflash
@@ -92,7 +92,7 @@ define Device/lantiq_falcon-mdu
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := Falcon / VINAXdp MDU Board
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := FALCON-MDU
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_falcon-mdu
 
@@ -100,6 +100,6 @@ define Device/lantiq_falcon-sfp
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := Falcon SFP Stick
   IMAGE_SIZE := 7424k
-  DEVICE_DTS := FALCON-SFP
+  SOC := falcon
 endef
 TARGET_DEVICES += lantiq_falcon-sfp
diff --git a/target/linux/lantiq/image/tp-link.mk b/target/linux/lantiq/image/tp-link.mk
index 3be40fc947..56a7e5ca57 100644
--- a/target/linux/lantiq/image/tp-link.mk
+++ b/target/linux/lantiq/image/tp-link.mk
@@ -2,6 +2,7 @@ DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD TPLIN
 
 define Device/lantiqTpLink
   DEVICE_VENDOR := TP-Link
+  SOC := vr9
   TPLINK_HWREVADD := 0
   TPLINK_HVERSION := 2
   KERNEL := kernel-bin | append-dtb | lzma
@@ -16,7 +17,6 @@ define Device/tplink_tdw8970
   $(Device/lantiqTpLink)
   DEVICE_MODEL := TD-W8970
   DEVICE_VARIANT := v1
-  DEVICE_DTS := TDW8970
   TPLINK_FLASHLAYOUT := 8Mltq
   TPLINK_HWID := 0x89700001
   TPLINK_HWREV := 1
@@ -30,7 +30,6 @@ define Device/tplink_tdw8980
   $(Device/lantiqTpLink)
   DEVICE_MODEL := TD-W8980
   DEVICE_VARIANT := v1
-  DEVICE_DTS := TDW8980
   TPLINK_FLASHLAYOUT := 8Mltq
   TPLINK_HWID := 0x89800001
   TPLINK_HWREV := 14
@@ -44,7 +43,6 @@ define Device/tplink_vr200
   $(Device/lantiqTpLink)
   DEVICE_MODEL := Archer VR200
   DEVICE_VARIANT := v1
-  DEVICE_DTS := VR200
   TPLINK_FLASHLAYOUT := 16Mltq
   TPLINK_HWID := 0x63e64801
   TPLINK_HWREV := 0x53
@@ -58,7 +56,6 @@ define Device/tplink_vr200v
   $(Device/lantiqTpLink)
   DEVICE_MODEL := Archer VR200v
   DEVICE_VARIANT := v1
-  DEVICE_DTS := VR200v
   TPLINK_FLASHLAYOUT := 16Mltq
   TPLINK_HWID := 0x73b70801
   TPLINK_HWREV := 0x2f
diff --git a/target/linux/lantiq/image/vr9.mk b/target/linux/lantiq/image/vr9.mk
index dee4b0d161..cd43c61e6e 100644
--- a/target/linux/lantiq/image/vr9.mk
+++ b/target/linux/lantiq/image/vr9.mk
@@ -3,7 +3,7 @@ define Device/alphanetworks_asl56026
   DEVICE_MODEL := ASL56026
   DEVICE_ALT0_VENDOR := BT Openreach
   DEVICE_ALT0_MODEL := ECI VDSL Modem V-2FUb/I
-  DEVICE_DTS := ASL56026
+  SOC := vr9
   IMAGE_SIZE := 7488k
 endef
 TARGET_DEVICES += alphanetworks_asl56026
@@ -17,7 +17,7 @@ define Device/arcadyan_arv7519rw22
   DEVICE_ALT1_VENDOR := Astoria Networks
   DEVICE_ALT1_MODEL := ARV7519RW22
   IMAGE_SIZE := 31232k
-  DEVICE_DTS := ARV7519RW22
+  SOC := vr9
   DEVICE_PACKAGES := kmod-usb-dwc2
   SUPPORTED_DEVICES += ARV7519RW22
 endef
@@ -27,7 +27,7 @@ define Device/arcadyan_vg3503j
   DEVICE_VENDOR := BT Openreach
   DEVICE_MODEL := ECI VDSL Modem V-2FUb/R
   IMAGE_SIZE := 8000k
-  DEVICE_DTS := VG3503J
+  SOC := vr9
   SUPPORTED_DEVICES += VG3503J
 endef
 TARGET_DEVICES += arcadyan_vg3503j
@@ -41,7 +41,7 @@ define Device/arcadyan_vgv7510kw22-brn
   DEVICE_ALT0_MODEL := Box 6431
   DEVICE_ALT0_VARIANT := BRN
   IMAGE_SIZE := 7168k
-  DEVICE_DTS := VGV7510KW22BRN
+  SOC := vr9
   SIGNATURE := BRNDA6431
   MAGIC := 0x12345678
   CRC32_POLY := 0x04c11db7
@@ -58,7 +58,7 @@ define Device/arcadyan_vgv7510kw22-nor
   DEVICE_ALT0_MODEL := Box 6431
   DEVICE_ALT0_VARIANT := NOR
   IMAGE_SIZE := 15232k
-  DEVICE_DTS := VGV7510KW22NOR
+  SOC := vr9
   DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
   SUPPORTED_DEVICES += VGV7510KW22NOR
 endef
@@ -73,7 +73,7 @@ define Device/arcadyan_vgv7519-brn
   DEVICE_ALT0_MODEL := Experiabox 8
   DEVICE_ALT0_VARIANT := BRN
   IMAGE_SIZE := 7168k
-  DEVICE_DTS := VGV7519BRN
+  SOC := vr9
   SIGNATURE := 5D00008000
   MAGIC := 0x12345678
   CRC32_POLY := 0x2083b8ed
@@ -90,7 +90,7 @@ define Device/arcadyan_vgv7519-nor
   DEVICE_ALT0_MODEL := Experiabox 8
   DEVICE_ALT0_VARIANT := NOR
   IMAGE_SIZE := 15360k
-  DEVICE_DTS := VGV7519NOR
+  SOC := vr9
   DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-ltq-tapi kmod-ltq-vmmc
   SUPPORTED_DEVICES += VGV7519NOR
 endef
@@ -101,7 +101,7 @@ define Device/avm_fritz3370
   $(Device/NAND)
   DEVICE_MODEL := FRITZ!Box 3370
   DEVICE_VARIANT := Rev. 2
-  DEVICE_DTS := FRITZ3370
+  SOC := vr9
   KERNEL_SIZE := 4096k
   UBINIZE_OPTS := -E 5
   IMAGES += eva-kernel.bin eva-filesystem.bin
@@ -114,7 +114,6 @@ define Device/avm_fritz3370-rev2-hynix
   $(Device/avm_fritz3370)
   DEVICE_MODEL := FRITZ!Box 3370
   DEVICE_VARIANT := Rev. 2 (Hynix NAND)
-  DEVICE_DTS := FRITZ3370-REV2-HYNIX
 endef
 TARGET_DEVICES += avm_fritz3370-rev2-hynix
 
@@ -122,7 +121,6 @@ define Device/avm_fritz3370-rev2-micron
   $(Device/avm_fritz3370)
   DEVICE_MODEL := FRITZ!Box 3370
   DEVICE_VARIANT := Rev. 2 (Micron NAND)
-  DEVICE_DTS := FRITZ3370-REV2-MICRON
 endef
 TARGET_DEVICES += avm_fritz3370-rev2-micron
 
@@ -130,7 +128,7 @@ define Device/avm_fritz7360sl
   $(Device/AVM)
   DEVICE_MODEL := FRITZ!Box 7360 SL
   IMAGE_SIZE := 15744k
-  DEVICE_DTS := FRITZ7360SL
+  SOC := vr9
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2
   SUPPORTED_DEVICES += FRITZ7360SL
 endef
@@ -142,7 +140,7 @@ define Device/avm_fritz7362sl
   DEVICE_MODEL := FRITZ!Box 7362 SL
   KERNEL_SIZE := 4096k
   IMAGE_SIZE := 49152k
-  DEVICE_DTS := FRITZ7362SL
+  SOC := vr9
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 fritz-tffs
 endef
 TARGET_DEVICES += avm_fritz7362sl
@@ -152,7 +150,7 @@ define Device/avm_fritz7412
   $(Device/NAND)
   DEVICE_MODEL := FRITZ!Box 7412
   BOARD_NAME := FRITZ7412
-  DEVICE_DTS := FRITZ7412
+  SOC := vr9
   KERNEL_SIZE := 4096k
   IMAGE_SIZE := 49152k
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic fritz-tffs-nand fritz-caldata
@@ -165,7 +163,7 @@ define Device/bt_homehub-v5a
   DEVICE_MODEL := Home Hub 5
   DEVICE_VARIANT := Type A
   BOARD_NAME := BTHOMEHUBV5A
-  DEVICE_DTS := BTHOMEHUBV5A
+  SOC := vr9
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader \
 	kmod-ath10k-ct ath10k-firmware-qca988x-ct wpad-basic kmod-usb-dwc2
   SUPPORTED_DEVICES += BTHOMEHUBV5A
@@ -176,7 +174,7 @@ define Device/buffalo_wbmr-300hpd
   DEVICE_VENDOR := Buffalo
   DEVICE_MODEL := WBMR-300HPD
   IMAGE_SIZE := 15616k
-  DEVICE_DTS := WBMR300
+  SOC := vr9
   DEVICE_PACKAGES := kmod-mt7603 wpad-basic kmod-usb-dwc2
   SUPPORTED_DEVICES += WBMR300
 endef
@@ -187,7 +185,7 @@ define Device/lantiq_easy80920-nand
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := VR9 EASY80920
   DEVICE_VARIANT := NAND
-  DEVICE_DTS := EASY80920NAND
+  SOC := vr9
   IMAGE_SIZE := 64512k
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
 endef
@@ -197,7 +195,7 @@ define Device/lantiq_easy80920-nor
   DEVICE_VENDOR := Lantiq
   DEVICE_MODEL := VR9 EASY80920
   DEVICE_VARIANT := NOR
-  DEVICE_DTS := EASY80920NOR
+  SOC := vr9
   IMAGE_SIZE := 7936k
   DEVICE_PACKAGES := kmod-ath9k kmod-owl-loader wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
 endef
@@ -206,7 +204,7 @@ TARGET_DEVICES += lantiq_easy80920-nor
 define Device/netgear_dm200
   DEVICE_VENDOR := NETGEAR
   DEVICE_MODEL := DM200
-  DEVICE_DTS := DM200
+  SOC := vr9
   IMAGES := sysupgrade.bin factory.img
   IMAGE/sysupgrade.bin := append-kernel | \
 	pad-offset 64k 64 | append-uImage-fakehdr filesystem | \
@@ -226,7 +224,7 @@ define Device/zyxel_p-2812hnu-f1
   DEVICE_MODEL := P-2812HNU
   DEVICE_VARIANT := F1
   BOARD_NAME := P2812HNUF1
-  DEVICE_DTS := P2812HNUF1
+  SOC := vr9
   DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2 kmod-usb-ledtrig-usbport
   KERNEL_SIZE := 3072k
   SUPPORTED_DEVICES += P2812HNUF1
@@ -239,7 +237,7 @@ define Device/zyxel_p-2812hnu-f3
   DEVICE_MODEL := P-2812HNU
   DEVICE_VARIANT := F3
   BOARD_NAME := P2812HNUF3
-  DEVICE_DTS := P2812HNUF3
+  SOC := vr9
   DEVICE_PACKAGES := kmod-rt2800-pci wpad-basic kmod-usb-dwc2
   SUPPORTED_DEVICES += P2812HNUF3
 endef
diff --git a/target/linux/lantiq/image/xway_legacy.mk b/target/linux/lantiq/image/xway_legacy.mk
index 011de20914..8af2e1c3fc 100644
--- a/target/linux/lantiq/image/xway_legacy.mk
+++ b/target/linux/lantiq/image/xway_legacy.mk
@@ -2,7 +2,7 @@ define Device/arcadyan_arv4518pwr01
   DEVICE_VENDOR := Arcadyan
   DEVICE_MODEL := ARV4518PWR01
   IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4518PWR01
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -16,7 +16,7 @@ define Device/arcadyan_arv4518pwr01a
   DEVICE_VENDOR := Arcadyan
   DEVICE_MODEL := ARV4518PWR01A
   IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4518PWR01A
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-a kmod-ltq-atm-danube \
@@ -34,7 +34,7 @@ define Device/arcadyan_arv4520pw
   DEVICE_ALT1_VENDOR := Airties
   DEVICE_ALT1_MODEL := WAV-281
   IMAGE_SIZE := 3648k
-  DEVICE_DTS := ARV4520PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
@@ -51,7 +51,7 @@ define Device/arcadyan_arv4525pw
   DEVICE_ALT0_MODEL := Speedport W502V
   DEVICE_ALT0_VARIANT := Typ A
   IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV4525PW
+  SOC := danube
   DEVICE_PACKAGES := kmod-ath5k wpad-mini \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
 	kmod-ltq-adsl-danube-fw-b kmod-ltq-atm-danube \
@@ -66,7 +66,7 @@ define Device/arcadyan_arv452cqw
   DEVICE_ALT0_VENDOR := Vodafone
   DEVICE_ALT0_MODEL := Easybox 801
   IMAGE_SIZE := 3776k
-  DEVICE_DTS := ARV452CQW
+  SOC := danube
   DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport \
 	kmod-ath5k wpad-mini \
 	kmod-ltq-adsl-danube-mei kmod-ltq-adsl-danube \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
