Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE26741BA
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ug5+1+aMlaiodo/I9RD5XShSXRj70gqJSFAkZ9wxtpw=; b=OBbhSJrvw9H5R4
	EKS+SsCz0lIDdr8qGPGWPX5Rg/vju8QHmtSE2tNPmvL4spGGwZwO76L5lFW87OOBocMMf6qEjUi4i
	6Ek/KcNCxmEf5jmy0zndNNbJEXrHZkvOurV4os/BMNKJVnH3s24vlNyoPmhYsmbKK5A8eSEVGCWY4
	1f0C4WTbi7Ek/BE7sl7nNOyZcS1oIivY0kmnEtgEo4Wk9OjUJAH6VucasZQ9+artcl9xO+ScCYfu9
	TX0IZYwPBOzyzBSRUuv5vMDx4P/qg/66S2yd+fbyO0bXJB9E3F85aLscyUPMJFVCLAJgSCEzhZC7j
	7sT93EScejrJQVkPoNVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqQ7U-0004jT-QG; Wed, 24 Jul 2019 22:52:24 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqQ7I-0004iw-Re
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:52:14 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MderZ-1iPkrr3W8f-00ZhXU for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:52:10 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:51:27 +0200
Message-Id: <20190724225127.36030-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:g+ThddPIqAvkLG0eYY35Mu2qtJ3B6Ipz3AUj3aTf1L8maeOs+cu
 nUc4fcUTgunqcM4jCauavYtzoUApO+R45i6HTx5qZx0OMeOlrO9ciHFw3odNR29J19+8D+f
 cnK6ovTHr7bN2sQdVfulUT9NT7J9X1iedjkct4/MR1pT7vm/5KWJvg5S1A8GmtR2oXODDIS
 FzsTKWPVCc4lQ1RSKgFhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z9E4HRGDx2s=:wKrHY+YL+hKCXPUrfdlLLw
 C4HwDpWgV9DPZ271fWXpcdSRPk2IXFlqUSx4+uaVxyJ3T1jOjBkhRHXiEvkgJzWuudf6wvGiA
 zfS2FM4uBRXzkl+PTn1VsfFr2mh2gXBvr/m7y/F0bAY+2mRr/1y13GTdPzlrnbUtvibaH2d4n
 fH3k/GTURNbLvA5Yle2qsD8gI+xoFogDSs1YW6FllKhL93adgN4c6IZpG/cJZlq057K+gX905
 Tu1huF6gBj24JQ8mn9ddg1bP/z8aa1E3T+ncmiV1Qt6+DSub38a9Kdx93LeyYrwzp7kfvLxgg
 f27sOJpzpmBmlcS1B02osHWKqlMydfHGvsRCZGIvvXH1/cTle1knTkzIpWCRk06q5i/BA9LxV
 3Y631CUCXRVV30QTiVn9MQjlgCWxcMfWjK9io1pW05EU6mFfd7itQf4xx3tusZNOoYj+fxyTk
 NM5QhEwp73oROAsP5cWlGV1vRxkdbhmnU9oOj/eiur1dTY8E0UXkXgEL81LhQMfPKcNpgvlys
 QLfclvikTfk4iHeA9Eyq4k8pHqeS84bh5VkzakR542A5Ydog0yzeF23vhH25wyx4OjjGjE9oo
 Du7gUSa0stTaxMB9ByrKdZjd0n/ZxDWwzkFtAoXlL3Hu9FPCLc7OkkDbdhmPTKOekB0E4XYOk
 fnYr2Qakmhklir2oAIL10qoLYhrmWKgv6t7q2FkNznKQPh/18Vl6ZC9CnFi5+uauMueQ+cxhi
 1I13EDHIEgpkpEElzv+sHUJGJg6HfFrJ0T9DQRwl2gu1XKgPUqEReh04vh4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_155213_189327_FE0EE5B0 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2] treewide: Replace backticks by $(...) in
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

This replaces deprecated backticks by more versatile $(...) syntax.

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
