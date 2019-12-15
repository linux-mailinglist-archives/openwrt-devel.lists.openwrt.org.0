Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E3E11F92F
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 17:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fMIvm17IIc2EoKfIaBQWfbiU+zzvMlkuS3U17TfNT40=; b=WA1AznRBh3DS5h
	AHy4zvnPDVvkGK3EGk5wWUtTCnWMFnridb9CxC5/h037AWy1b2ZJ1P2ltegnI63lDp9h0fUjkTCNz
	ACHQUNOVAxKBx8RwpHLVVKtPyOuSvx+5rhw3ay1EDfDk3IVUM90laah6QHZLj1FDNGiiaI0mhVeLL
	90scn+lWBIspY6eg+317kKwYR1CPazlWxvGCAdC7x/GH841wiP6LGV32/YTAsRQNHk6Uq+xVWbelW
	dKcn6VOkt06u3/6OWzytIy3BF0P6eaBgs9PP/WFN8W2rDHK/DjcqN1FZ7IqHZtBdxhPT0rJNoBeKP
	pVSllaw8d5y0vVBJFNGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igWzw-0000yM-VH; Sun, 15 Dec 2019 16:44:01 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igWzk-0000vr-0n
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 16:43:51 +0000
X-QQ-mid: bizesmtp22t1576428189tsimzrs4
Received: from example.com (unknown [112.19.109.183])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 00:43:08 +0800 (CST)
X-QQ-SSF: 0140000000200060E2F0B00A0000000
X-QQ-FEAT: MkqyadvNeuwMz7mCf1Ff+nGcwDwO7iL9pY7kdtcx7ppu/dJpCADcFnIn1a0CO
 47F4IJlda6Uy1TAZJrgDI4j0DkVnSJHHdYCS6Rx0Xe0WsmOPLnWfKa5LR1zJnaFneqPs/x/
 rIyihRuOdfb+rjjIxLVI2u0+dXlkx3f+BYqi7/lRyYdl7fFGuttAeFSNTiMGjw1jaS06is3
 C8vib1ezgqBNpVb66p3lFo8XJZJ8rAHyUCmuMlkw5+QS82YjAoWaKicECwbYc2D6VJ0S3gH
 2A6/NEHhdQasrRFFZX/jgTdTXNbZmpyhSE6O97LCpnPTGgwuQcC+qX512Qa/SQ59ACLjoD+
 c+XSMiY
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 00:43:08 +0800
Message-Id: <20191215164308.5900-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_084348_414046_AA99B49C 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] linux-firmware: update to 20191215
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

Update linux-firmware to 20191215

git log --pretty=oneline --abbrev-commit 20190815..20191215

eefb5f7 inside-secure: add new "mini" firmware for the EIP197 driver
dd1a12e Merge branch 'RB3-adsp-cdsp-mss-v4' of https://github.com/andersson/linux-firmware
c523dcd WHENCE: Add raspberry-pi4 SDIO file
99a15a4 Merge branch 'rpi4-fw' of https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux-firmware
2260cbd Merge branch 'master' of https://github.com/dikshitaagarwal/video_firmware_5.4
4c688be Merge branch 'for-upstream' of git://git.chelsio.net/pub/git/linux-firmware
e10ed21 qcom: update venus firmware files for v5.4
af4c4be cxgb4: Update firmware to revision 1.24.11.0
f93c7a1 brcm: Add BCM43455 NVRAM for Raspberry Pi 4 B
212e441 qcom: Add SDM845 Compute DSP firmware
ec84cf9 qcom: Add SDM845 Audio DSP firmware
62d0a1a qcom: Add SDM845 modem firmware
e8a0f4c rtl_nic: add firmware rtl8168fp-3
9581f15 Merge branch 'nxp_mc' of https://github.com/NXP/linux-firmware
978c04e linux-firmware: Update NXP Management Complex firmware to version 10.18.0
c62c3c2 linux-firmware: Update firmware file for Intel Bluetooth AX201
6272383 linux-firmware: Update firmware file for Intel Bluetooth AX200
84a7ca5 linux-firmware: Update firmware file for Intel Bluetooth 9560
96c3994 linux-firmware: Update firmware file for Intel Bluetooth 9260
7319341 amdgpu: update navi14 vcn firmware
b363d9d amdgpu: update navi10 vcn firmware
f1100dd Merge branch 'ehl_tgl_guc_huc' of git://anongit.freedesktop.org/drm/drm-firmware
4debf21 i915: Add HuC firmware v7.0.3 for TGL
1eb2ac4 i915: Add GuC firmware v35.2.0 for TGL
4b0a210 i915: Add HuC firmware v9.0.0 for EHL
610fe75 i915: Add GuC firmware v33.0.4 for EHL
11bdc57 rtw88: RTL8723D: add firmware file v48
9e194c7 qed: Add firmware 8.40.33.0
4065643 amdgpu: add new navi14 wks gfx firmware for 19.30
d4f88ea amdgpu: update navi14 firmware for 19.30
ea755b6 amdgpu: update raven firmware for 19.30
340e06e linux-firmware: Add firmware file for Intel Bluetooth AX201
ad7a8b2 Mellanox: Add new mlxsw_spectrum2 firmware 29.2000.2308
e756bf3 Mellanox: Add new mlxsw_spectrum firmware 13.2000.2308
b27d123 rtl_nic: add firmware files for RTL8153
180e2b4 rtl_bt: Update configuration file for BT part of RTL8822CU
0acd93e bnx2x: Add FW 7.13.15.0.
2b016af linux-firmware: Update AMD cpu microcode
4c3e853 linux-firmware: Update firmware file for Intel Bluetooth AX200
7a79d22 linux-firmware: Update firmware file for Intel Bluetooth AX201
fdab23a linux-firmware: Update firmware file for Intel Bluetooth 9560
b68efd7 linux-firmware: Update firmware file for Intel Bluetooth 9260
aa95e90 amdgpu: add initial navi14 firmware form 19.30
c1ce20e rtlwifi: rtl8821ae: Add firmware for the RTL8812AE variant.
7d187ac ice: Fix up WHENCE entry and symlink
4c55b97 Merge branch 'dev-queue' of git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/firmware
7c4db73 nvidia: Update Tegra210 XUSB firmware to v50.24
c054c53 nvidia: Add XUSB firmware for Tegra194
9cfefbd Remove duplicate symlinks
2de7abd copy-firmware: Create symlinks from WHENCE file
2116bcd Make symlinks consistent
c0590d8 amdgpu: update vega20 ucode for 19.30
43cc648 amdgpu: update vega12 ucode for 19.30
ffa0ed7 amdgpu: update vega10 ucode for 19.30
83e1b41 amdgpu: update picasso ucode for 19.30
7008617 amdgpu: update raven2 ucode for 19.30
9200baa amdgpu: update raven ucode for 19.30
f25a39c amdgpu: add new raven rlc firmware
9ae61e7 ice: Add package file for Intel E800 series driver
417a9c6 amdgpu: add initial navi10 firmware
702cc63 Merge branch 'cml_tgl-icl-dmc_huc_updates' of git://anongit.freedesktop.org/drm/drm-firmware
3182b4b Merge branch 'gpu-845' of https://github.com/ndechesne/linux-firmware
3ea84e5 drm/i915/firmware: Add v9.0.0 of HuC for Icelake
60ddd0e drm/i915/firmware: Add v4.0.0 of HuC for Cometlake
c47d8f8 drm/i915/firmware: Add v4.0.0 of HuC for Geminilake
2cdb78c drm/i915/firmware: Add v2.0.0 of HuC for Broxton
38965af drm/i915/firmware: Add v4.0.0 of HuC for Kabylake
8d127af drm/i915/firmware: Add v2.0.0 of HuC for Skylake
e7b6fa7 drm/i915/firmware: Add v33 of GuC for CML
e4ea25f drm/i915/firmware: Add v2.04 of DMC for TGL
51deca6 drm/i915/firmware: Add v1.09 of DMC for ICL
88ea23e qcom: add firmware files for Adreno a630
6c6918a linux-firmware: Update firmware file for Intel Bluetooth AX201
6ddb9d9 Merge branch 'for-upstream' of git://git.chelsio.net/pub/git/linux-firmware
d45c950 nvidia: Add XUSB firmware for Tegra186
65c6595 Add symlinks for Tegra VIC firmware binaries
0b22bfc rtl_bt: Update RTL8723D BT FW to 0x828A_96F1
f667c00 rtl_nic: add firmware rtl8125a-3
fe1ae0d linux-firmware: Add firmware file for Intel Bluetooth AX201
2f885ba Chelsio driver loads firmware configuration file to allow firmware to distribute resources before chip bring up. Chelsio NIC driver, cxgb4 searches for firmware config file at /lib/firmware/cxgb4/ directory.
7307a29 brcm: Add 43455 based AP6255 NVRAM for the Minix Neo Z83-4 Mini PC
65d02cd brcm: Add 43340 based AP6234 NVRAM for the PoV TAB-P1006W-232 tablet
f38fb4f Merge tag 'iwlwifi-fw-2019-08-23' of git://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware
40e4162 iwlwifi: update FWs to core45-152 release
c0fb3d9 check_whence: Add copy-firmware.sh to the list of ignored files
aa703aa rtl_bt: Update RTL8822C BT FW to V0x098A_94A4
665001a linux-firmware: Update firmware file for Intel Bluetooth AX200
c0ca980 linux-firmware: Update firmware file for Intel Bluetooth AX201
b6427bf linux-firmware: Update firmware file for Intel Bluetooth 9560
fe48882 linux-firmware: Update firmware file for Intel Bluetooth 9260
ebd40c6 Mellanox: Add new mlxsw_spectrum firmware 13.2000.1886

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/firmware/linux-firmware/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/firmware/linux-firmware/Makefile b/package/firmware/linux-firmware/Makefile
index ac4c3d4a63..085cce422d 100644
--- a/package/firmware/linux-firmware/Makefile
+++ b/package/firmware/linux-firmware/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=linux-firmware
-PKG_VERSION:=20190815
+PKG_VERSION:=20191215
 PKG_RELEASE:=1
 
 PKG_SOURCE_URL:=@KERNEL/linux/kernel/firmware
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-PKG_HASH:=15615d87ac9d93aa5c20939a6c65cca7f3bc656b5e8ffd998b8acb932c854327
+PKG_HASH:=c2068ff4a797c0f2c3edbb9488f82a48bca8a995855ea21310a8346195c0ae56
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
-- 
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
