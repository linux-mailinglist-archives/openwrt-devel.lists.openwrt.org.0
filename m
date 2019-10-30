Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D3AEA390
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 19:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUboxIvnrEmk3H/bJfiqzWMoRIRSt/R4Gpk1HOpLgyQ=; b=DdtN3GWuzh677C
	13PuwqTAjuTZQmWACZXYMn4w0rork3RgldGXry2HPpj3a+iWZWKWgSk+Aoi0FBQP7J4cs7rGwhPlV
	GKxdHTvyDPj/Idf2AmZ1cJ9ntQOihZfCh6epKJNUFZPGyGc7hOigfl/aKAQ42NemzH7Kg3aI3ar91
	s6ccarjBH6j2ZEK914QFvBT71wCCFdXDVpo/AhH/8au4xpW3DpTzm4wnWCBGECOLeuihrWOZwipt0
	JmSdP+nyawHi6+1e9boxTC8nQx58hi2l9L4FZnk7ACbDOi6vQpXbQGwtJRrfPWC0c3n+NwyOZ9rcv
	6IpZ3BweS5iNW2okZ7hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsxN-0003NS-0I; Wed, 30 Oct 2019 18:44:33 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsxF-0003Mz-Rn
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 18:44:27 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MMH2M-1ij4GQ1tUk-00JJ9H for <openwrt-devel@lists.openwrt.org>; Wed, 30
 Oct 2019 19:44:20 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 30 Oct 2019 19:44:17 +0100
Message-Id: <20191030184417.21897-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:79uDp470HxlXIZvZEX0ZbQXhAhqVkLFBJhRp5/MtX+6EHDw92Ug
 ru0q8fWfFOnRPiep7h/81PwIvTsTeLRXfjkkGIsTV3Kg731FhjQogoYKQNSwhBiN+IBVR2x
 LGpFKpW94cEcovZOUOhZc6mZAsqfiOslXroSQdN7FVu3zcji1Q7liT7OWhmlTwnsY4kS2LS
 LCqbfTsE8D4+7S1GkcUqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lJnEpGrROvU=:16l+qatEYGLMvkMoB++4s0
 YcvOQASWFVFvAzjd0+7Rgh0j3n6GzYayHPvWDXSw63Ip1AgsPxjf17hctL3wNyvBPtlCw97zl
 Po/QuIzXQYm5F0juxRjh4ogf/cAcpBc0QdX/FRYUyRC9pJfcKwRN0pzSN/kngWaLQGy8U6VYU
 MawO72wUQnhog+jnEH/P/yvKYQmkhdk7P5dOH/04uic8Z9r40XYhkuWySY2AySM7szq6gubJb
 rvXQ7XmDyG7r7VoPTrYmflW4uDPq828zwl4mnUxbg0fmdFfMA1tt3cicb+PRtYuw/i5BiGx4o
 pl63pwTGRd+IJ+11sCSqwsVf0Q+CFNdqiC/ALwtIYyMWMEut2k/EMk+QzByMBudgt3ZCDzOF9
 sCZQhfUItkPE2w2Exuv+5PLxIqBe1oFUJT0RzNATGq+QrLS1qSrp37u9CjRvXVGn5QbPJNHAb
 l4pTSE6wLXj9PwMdeDD6weFL9uiWkMYfvd/QqCWejS4OUNdyHZzNLikpV3qrA2rQzZjoQrkFp
 7MEUf0JMjwyo5qs66raLwPYzmk4BxgqsAiGfckP3umfSeXO+EDVcuPEqyoeM+XHXaC4ZYEXhE
 FXtq2GMXrLUNEVvuXYFX9wmy5WsmL59M2W0+vp8yv3bO5DEH21PB38qt+8kx6Slk9LKGpv5Cx
 yPmnf5/HL9D26H17af7I6q6XiFoPQfCny7D93HT0zwHZOtsiXd06tVyCLVmt0V4eS/I3eMiKu
 vZCnnC/29mpv1doStk/qJIUqHJb1ce4at87WjlVnCJnam7MWSmQMe8WQFqls5Vyik89g1+Bnl
 /HLDs6rrKWuC5d04Z9wwmE4cqLtK9AtIjByMBH6dQ3gaE1azzOfF0YLKrpl9+jpQWmqIE8JPX
 /97ZnigZIIK35T09mdEtSPXMcq/62i9COAslstfkI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_114426_190089_AAE8D20A 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: convert
 IMAGE_SIZE/KERNEL_SIZE/BLOCKSIZE to kiB
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

This cosmetical patch converts IMAGE_SIZE, KERNEL_SIZE and
BLOCKSIZE definitions to kilobytes, as this is consistent and
easier to read/type.

An exception was made for asus_rt-ac58u, where the IMAGE_SIZE of
20439364 cannot be divided by 1024 (and also does not seem to
match anything in DTS).

Build-tested for all devices.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ipq40xx/image/Makefile | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index ed46bca649..8dd960bc1c 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -124,7 +124,7 @@ define Device/avm_fritzbox-4040
 	DEVICE_MODEL := FRITZ!Box 4040
 	DEVICE_DTS := qcom-ipq4018-fritz4040
 	BOARD_NAME := fritz4040
-	IMAGE_SIZE := 29753344
+	IMAGE_SIZE := 29056k
 	UBOOT_PATH := $(STAGING_DIR_IMAGE)/uboot-fritz4040.bin
 	UBOOT_PARTITION_SIZE := 524288
 	IMAGES = eva.bin sysupgrade.bin
@@ -209,7 +209,7 @@ define Device/engenius_ens620ext
 	FW_VER := 3.1.2
 	FW_VER_NEW := 3.5.6
 	CW_VER := 1.8.99
-	IMAGE_SIZE := 21823488
+	IMAGE_SIZE := 21312k
 	KERNEL_SIZE := 5120k
 	FILESYSTEMS := squashfs
 	IMAGES := sysupgrade.bin factory_30.bin factory_35.bin
@@ -260,8 +260,8 @@ define Device/linksys_ea6350v3
 	DEVICE_DTS := qcom-ipq4018-ea6350v3
 	BLOCKSIZE := 128k
 	PAGESIZE := 2048
-	KERNEL_SIZE := 3145728
-	IMAGE_SIZE := 38797312
+	KERNEL_SIZE := 3072k
+	IMAGE_SIZE := 37888k
 	UBINIZE_OPTS := -E 5
 	IMAGES := factory.bin sysupgrade.bin
 	IMAGE/factory.bin := append-kernel | append-uImage-fakehdr filesystem | pad-to $$$${KERNEL_SIZE} | append-ubi | linksys-image type=EA6350v3
@@ -290,7 +290,7 @@ define Device/meraki_mr33
 	DEVICE_VENDOR := Cisco Meraki
 	DEVICE_MODEL := MR33
 	DEVICE_DTS := qcom-ipq4029-mr33
-	BLOCKSIZE := 131072
+	BLOCKSIZE := 128k
 	PAGESIZE := 2048
 	IMAGES = sysupgrade.bin
 	DEVICE_PACKAGES := -swconfig ath10k-firmware-qca9887-ct
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
