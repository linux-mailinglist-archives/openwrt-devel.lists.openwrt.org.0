Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA827304B
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DgZpVv+Mwyu/DW5SsX1YimnLv7xmss5btpLY9owtMI4=; b=kbX5roQamtF7Rd
	B4C7Y/FbgLsORf8k2SBNAKaoL6T5Dfy9Rn2HVLtADfI8SuD4wm1M0haZpExaBruDvf0I6FDqUhl7v
	dLglgJ+ktYN/fBjdWuRUu+pIJx3SyKgwIGeQGqp8ZFXbopmSPqWt4+ZvG9STT7wZ2qPg25C+aTU82
	+/Wdh13w4l77fwN7CXHzj4zYFK8fqgNJ4ZMqW46O1lyTFeVfO6JCMjcW4SkhfDt4A4+wfQYVptYBc
	ca/YAxMUZrbQSJTWTY35ytER6z7zBeZdpEx8Z+L9XSIg/Kl6pfm3RXz2KzkyNMfbGb9uxrFmTO5G8
	Wi9WFhfuhcsDJ0uFQq2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHiU-0001mB-7k; Wed, 24 Jul 2019 13:54:02 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHiH-0001lH-CK
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:53:51 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M1Yl9-1houvp01nf-0032sD for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:53:46 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:53:09 +0200
Message-Id: <20190724135309.3275-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:kHVMZF+NOv8JdrKN5P3ZRfZIGQ17xLxfnQnyB2z0Gn4626mGxTv
 4bZGHEjf0QDsORFdlDAr+oJo7gK17qgtd4u0XP9gkQ9ZQBRrEJU1oJCNJ2Rpjz6RxVweQC1
 5s5kFjotp3hjP1vpSp49ZINRI3E0VrhvGJcSuKvgGMxxVg+Sugs/F/A9SlKtScepM6ib+Q8
 aTuBfMrYYv26/lVTj2tlQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7OTtFB1owZA=:FALuzIjG6qg4bdZHuk8Lj7
 Ek3mIg2z/Py65DJij/cfdT/H32jLPdOINAjn3cnbwj7nY/qSkApTkSioXujm3nWw/M4UUDtUe
 K3Zq4cLAkgaPRX8wqmQ2Af7N338UscH84GYqpcJLUg6kOIQHVqQAXNP7iwwk4Y9Keg+HVSWFx
 muETZMz6tZVVli49w+Rt+xzRLVH1BKZUI4OVIkX1oQhS46VynyR+dOLuJlbP2Hre99uKPYDFe
 jlTeVR4CY7iU04La9DN1ZfAj9lquUIdzsnC5Auh6U52KStBjfOuDs+/UZ3UIEivpyp6EJ9Cf2
 82xLc4YmPoTWyuwTy3FgkTJnDkX2Qbd6E7C5VwJVM5W6AtYMbYFBhvhILSRHYG9CnSW+IAy3h
 CfvEPnsMcJ9aLzUPi7Ob9S+6dXknnrGRz+K4HHUWpqpCTreY0b0IymQlzNW3gNJ2zPYjCsGTK
 lY7IwlMkIvn1e6LU1tH3WnsEBpDdwtOagfLy31OMb5az7D+zhdC/mySAJ3ae2fn6IIYk8D/Rd
 CDuKAWlEeoKtpR/oHZHlChRpbeL1R72kNMlNGitCqV9OQOBE3RV0KixtMmAXxOvOKV123ZikX
 iZAl1scQlFaOY0ZacNCAHdvMnlrPXnDIwdUR4sgJhlCYgjkMuvqx8IS/4vo2ACSC5tLrYhOVS
 9P7DtOpn/2icLB4gKf6gkHuzq7mM80ktcymxBptB73nIwHhUHx0CxCVsq8iT943sQIKi1zrMw
 ORL6dl694FH2Qq0X1dZmSSiUvY39Vn11ovTFRqTa/KjMTlovAgfWTMDTQJc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065349_713310_AC7CBF0D 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] treewide: Replace backticks by $(...) in
 gen_*_img.sh scripts
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/apm821xx/image/mbl_gen_hdd_img.sh       | 2 +-
 target/linux/arc770/image/gen_axs10x_sdcard_img.sh   | 2 +-
 target/linux/archs38/image/gen_axs10x_sdcard_img.sh  | 2 +-
 target/linux/at91/image/gen_at91_sdcard_img.sh       | 2 +-
 target/linux/brcm2708/image/gen_rpi_sdcard_img.sh    | 2 +-
 target/linux/gemini/image/dns313_gen_hdd_img.sh      | 2 +-
 target/linux/layerscape/image/gen_sdcard_head_img.sh | 2 +-
 target/linux/mvebu/image/gen_mvebu_sdcard_img.sh     | 2 +-
 target/linux/mxs/image/gen_sdcard_ext4_ext4.sh       | 2 +-
 target/linux/mxs/image/gen_sdcard_vfat_ext4.sh       | 2 +-
 target/linux/omap/image/gen_omap_sdcard_img.sh       | 2 +-
 target/linux/rb532/image/gen_image.sh                | 2 +-
 target/linux/sunxi/image/gen_sunxi_sdcard_img.sh     | 2 +-
 13 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/target/linux/apm821xx/image/mbl_gen_hdd_img.sh b/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
index 6536ce9872..1fb868b5b3 100755
--- a/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
+++ b/target/linux/apm821xx/image/mbl_gen_hdd_img.sh
@@ -15,7 +15,7 @@ ROOTFSSIZE="$5"
 head=4
 sect=63
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 4096 -t 83 -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 4096 -t 83 -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/arc770/image/gen_axs10x_sdcard_img.sh b/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
index 9a6f93d0d9..3cbd2caceb 100755
--- a/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
+++ b/target/linux/arc770/image/gen_axs10x_sdcard_img.sh
@@ -22,7 +22,7 @@ ROOTFSSIZE="$5"
 head=4
 sect=63
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/archs38/image/gen_axs10x_sdcard_img.sh b/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
index 9a6f93d0d9..3cbd2caceb 100755
--- a/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
+++ b/target/linux/archs38/image/gen_axs10x_sdcard_img.sh
@@ -22,7 +22,7 @@ ROOTFSSIZE="$5"
 head=4
 sect=63
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/at91/image/gen_at91_sdcard_img.sh b/target/linux/at91/image/gen_at91_sdcard_img.sh
index 316ecea2e4..4eb30fa790 100755
--- a/target/linux/at91/image/gen_at91_sdcard_img.sh
+++ b/target/linux/at91/image/gen_at91_sdcard_img.sh
@@ -22,7 +22,7 @@ ROOTFSSIZE="$5"
 head=4
 sect=2048
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh b/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
index ffe01fa32c..60b66c3724 100755
--- a/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
+++ b/target/linux/brcm2708/image/gen_rpi_sdcard_img.sh
@@ -15,7 +15,7 @@ ROOTFSSIZE="$5"
 head=4
 sect=63
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 4096 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 4096 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/gemini/image/dns313_gen_hdd_img.sh b/target/linux/gemini/image/dns313_gen_hdd_img.sh
index 1eb2c7c575..6e899ec840 100755
--- a/target/linux/gemini/image/dns313_gen_hdd_img.sh
+++ b/target/linux/gemini/image/dns313_gen_hdd_img.sh
@@ -17,7 +17,7 @@ sect=63
 
 # Create two empty partitions followed by the boot partition with
 # the ./boot/zImage and then the rootfs partition.
-set `ptgen -o $OUTPUT -h $head -s $sect -t 83 -n -p 0 -p 0 -p ${BOOTFSSIZE}M -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -t 83 -n -p 0 -p 0 -p ${BOOTFSSIZE}M -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/layerscape/image/gen_sdcard_head_img.sh b/target/linux/layerscape/image/gen_sdcard_head_img.sh
index dc1efbb3e0..c7ecbb6883 100755
--- a/target/linux/layerscape/image/gen_sdcard_head_img.sh
+++ b/target/linux/layerscape/image/gen_sdcard_head_img.sh
@@ -19,4 +19,4 @@ ROOTFSSIZE="$3"
 head=4
 sect=16
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l $ROOTFSOFFSET -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l $ROOTFSOFFSET -t 83 -p ${ROOTFSSIZE}M)
diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index e0230e48b6..100a9a96e5 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -56,7 +56,7 @@ sect=63
 
 # create real partition table using fdisk
 printf "Creating partition table: "
-set `ptgen -o "$OUTFILE" -h $head -s $sect -l 1024 -S 0x$SIGNATURE $ptgen_args`
+set $(ptgen -o "$OUTFILE" -h $head -s $sect -l 1024 -S 0x$SIGNATURE $ptgen_args)
 printf "Done\n"
 
 # install bootloader
diff --git a/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh b/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
index 5653ba892f..99bd3bf573 100755
--- a/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
+++ b/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
@@ -21,7 +21,7 @@ head=4
 sect=63
 
 # set the Boot stream partition size to 1M
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t 53 -p 1M -t 83 -p ${ROOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t 53 -p 1M -t 83 -p ${ROOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 ROOTFS1OFFSET="$(($3 / 512))"
 ROOTFS1SIZE="$(($4 / 512))"
diff --git a/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh b/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh
index 616639d237..bca664c780 100755
--- a/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh
+++ b/target/linux/mxs/image/gen_sdcard_vfat_ext4.sh
@@ -23,7 +23,7 @@ head=4
 sect=63
 
 # Set the u-boot storage to 2M
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t 53 -p 2M -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t 53 -p 2M -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 UBOOTOFFSET="$(($1 / 512))"
 UBOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/omap/image/gen_omap_sdcard_img.sh b/target/linux/omap/image/gen_omap_sdcard_img.sh
index c2f2aaddf4..881df9a05d 100755
--- a/target/linux/omap/image/gen_omap_sdcard_img.sh
+++ b/target/linux/omap/image/gen_omap_sdcard_img.sh
@@ -22,7 +22,7 @@ ROOTFSSIZE="$5"
 head=4
 sect=63
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
diff --git a/target/linux/rb532/image/gen_image.sh b/target/linux/rb532/image/gen_image.sh
index a2d6f4012a..a9d48d86ca 100755
--- a/target/linux/rb532/image/gen_image.sh
+++ b/target/linux/rb532/image/gen_image.sh
@@ -9,7 +9,7 @@ ALIGN="$6"
 rm -f "$OUTPUT"
 
 # create partition table
-set `ptgen -o "$OUTPUT" -h 16 -s 32 -l ${ALIGN} -t 0x27 -p ${KERNELSIZE}m -t 0x83 -p ${ROOTFSSIZE}m`
+set $(ptgen -o "$OUTPUT" -h 16 -s 32 -l ${ALIGN} -t 0x27 -p ${KERNELSIZE}m -t 0x83 -p ${ROOTFSSIZE}m)
 
 KERNELOFFSET="$(($1 / 512))"
 ROOTFSOFFSET="$(($3 / 512))"
diff --git a/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh b/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
index bb89e3a0fc..0d4a56d0d2 100755
--- a/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
+++ b/target/linux/sunxi/image/gen_sunxi_sdcard_img.sh
@@ -22,7 +22,7 @@ UBOOT="$6"
 head=4
 sect=63
 
-set `ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M`
+set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
 
 BOOTOFFSET="$(($1 / 512))"
 BOOTSIZE="$(($2 / 512))"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
