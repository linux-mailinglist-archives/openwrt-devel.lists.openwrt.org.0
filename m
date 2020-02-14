Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90FC15D8AA
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Feb 2020 14:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XoefQQgSr90vVxBIG4VekX8hR8AyfOBCVxNPo2ZS0uY=; b=fujStYA/q+R929
	UV+yJd9H4QZ1Dvikom//CdC4C7cMg1/dUCulwtzaYqfopIZbfavHUIKl5JAFt2DTLdRWugN64M+zf
	OUAQBHnDnC6G6JS0phxDfY27nGK6rxexIYR89GGlbG6k1/yQgavg3/vcmz8+qIQD/rf9uSO+rY159
	k9/6Rv7YAOieUSKCUwcC27XY9VkN1yBoKzOKBQg3GhHOoByafzIFtDIzuYWevsLS+7SYmZcZh6ed7
	liy0Wp9MVBxznN2xn5l2RipmQMQlr4JJ1uzWDRp7zC7kXSLHs4xik/Jsn34Kl1KLqtFgEZu2d/vxV
	sAlV+IXKhZSjrszWjlWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bEr-0000GX-Rd; Fri, 14 Feb 2020 13:42:37 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bEg-0000Eh-Fa
 for openwrt-devel@lists.openwrt.org; Fri, 14 Feb 2020 13:42:29 +0000
X-QQ-mid: bizesmtp22t1581687668t6u6iklx
Received: from P65xSA.lan (unknown [112.94.100.124])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Feb 2020 21:41:07 +0800 (CST)
X-QQ-SSF: 0140000000800060F3F0B00A0000000
X-QQ-FEAT: FtiPHz2NrtXNBMn3KEqZlGPbEdHbrXBB7sTq0WplRzvFtqx8yr0i7GkkbzLx0
 J7cfozfrso6OQizVBWiFi5CiM7Gz+29j7X8TOJcQSJtE2lbq5qR7qKb82qAxhTBuDGi+KGu
 rski5j1FIj8FhrZ2RxGcerFw6051xADv0rpUdfMa+ibmrm0+BTrSocidIIJIWVV54ttHXgS
 n5uOIxarCet16TKtbcS2x9UrTx/OstQqYv26L2l+l+wmXm8fuRUmnWHZDGRU1VuzEiBQuof
 1aosFaM0C9wwCF7aEGQCywtikDWz7/KR723zyH7FdYEVMjLA4iPGbndb6CajPgFJGT//trM
 gISNJ/31H6VspAwk6M=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Feb 2020 21:41:06 +0800
Message-Id: <20200214134106.5872-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_054226_651818_941E5D66 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] linux-firmware: update to 20200122
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

Update linux-firmware to 20200122

git log --pretty=oneline --abbrev-commit 20191215..20200122

1eb2408 linux-firmware: Update firmware file for Intel Bluetooth AX200
0dc1611 linux-firmware: Update firmware file for Intel Bluetooth AX201
d03f79c linux-firmware: Update firmware file for Intel Bluetooth 9560
aab62bc linux-firmware: Update firmware file for Intel Bluetooth 9260
ed0aa3a nvidia: add TU102/TU104/TU106 signed firmware
9c340bd amdgpu: update navi10 firmware for 19.50
3b4a503 amdgpu: Add navi10 TA ucode
16cc13a Merge branch 'v1.1.3' of https://github.com/ruiwang-mtk/linux_fw_vpu_v1.1.37f3177d mediatek: update MT8173 VPU firmware to v1.1.3
67d4ff5 Mellanox: Add new mlxsw_spectrum firmware xx.2000.2714
f1c9e7b radeon: update oland rlc microcode from amdgpu
b1dafb7 amdgpu: update vega20 microcode for 19.50
c38789e amdgpu: update vega12 microcode for 19.50
5a141c1 amdgpu: update vega10 microcode for 19.50
a03173a amdgpu: update picasso microcode for 19.50
86e9a5f amdgpu: update raven2 microcode for 19.50
febe09a amdgpu: update raven microcode for 19.50
af76fd0 amdgpu: update navi10 microcode for 19.50
b5b176a amdgpu: update navi14 microcode for 19.50
ad90178 amdgpu: add TA microcode for Raven asics
379551b qed: Add firmware 8.42.2.0
58b4003 Merge branch 'RB3-wlan-firmware-1387-v2' of https://github.com/andersson/linux-firmware
5967a45 Adjust WHENCE entry to check_whence doesn't complain
d1e743d Merge branch 'master' of https://github.com/NXP/mwifiex-firmware
d6219ab qcom: Switch SDM845 WLAN firmware
e65245c linux-firmware: add NXP firmware licence file
6871bff Merge branch 'ath10k-20191220' of git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/linux-firmware
b142c2e ath10k: WCN3990 hw1.0: add firmware WLAN.HL.2.0-01387-QCAHLSWMTPLZ-1
8809b87 ath10k: QCA9984 hw1.0: update firmware-5.bin to 10.4-3.9.0.2-00070
513d70c ath10k: QCA988X hw2.0: update firmware-5.bin to 10.2.4-1.0-00047
203435b ath10k: QCA9888 hw2.0: update firmware-5.bin to 10.4-3.9.0.2-00070
a66d2fc ath10k: QCA9887 hw1.0: update firmware-5.bin to 10.2.4-1.0-00047
6d19154 ath10k: QCA6174 hw3.0: update board-2.bin
c4586ff linux-firmware: Update AMD cpu microcode

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 package/firmware/linux-firmware/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/firmware/linux-firmware/Makefile b/package/firmware/linux-firmware/Makefile
index 085cce422d..01dee59171 100644
--- a/package/firmware/linux-firmware/Makefile
+++ b/package/firmware/linux-firmware/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=linux-firmware
-PKG_VERSION:=20191215
+PKG_VERSION:=20200122
 PKG_RELEASE:=1
 
 PKG_SOURCE_URL:=@KERNEL/linux/kernel/firmware
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-PKG_HASH:=c2068ff4a797c0f2c3edbb9488f82a48bca8a995855ea21310a8346195c0ae56
+PKG_HASH:=a30e811b3736a72b874ac27e10662f5e5409b1cadf8aab7ba88e8f8bc8083986
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
-- 
2.25.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
