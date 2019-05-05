Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B01713F69
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 14:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FHOHcnssOQv359kRcKeuvU4J4CvitUCO757dWSllUCQ=; b=qEU3GAumGmKDja
	usucaM8tK52WsofFzJa/1WigfsoYyJFj5V1n1VKEEX7LxzwwnOYf99izFDbNVyqtuZYakStuuFW4E
	dylK8PM1EpqsNGOZmDWviNZnKkTODfZHgUVXKE+4OTzap29m72U0Pi5g8pCfwsZZKzWuS+9mjdBwQ
	iwsXcQ0D1qvNUuNa3trmd2VWwMRiS9viD+cbiOUGK4BZovapuOGs2cKe68K5OqVb6zBZ2trmoxTov
	6ItT/7kZpVFYeFDGClo3b2znE85933oSnvTfSDWMLR9l4/Y0GtUA4PH7Be4bIRtRfAbTiiEF8QWoE
	wwWU29L3HAsbtE2uerxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNGEX-0005z4-Df; Sun, 05 May 2019 12:27:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNGEQ-0005yD-Mj
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 12:27:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id 132so1077441ljj.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 05:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JDn6zmVQY7haAPamNLcNmXzkvAJaz91dWDhDL9p/pgc=;
 b=U3ELnk/jK8+Iskpm1DytXE/SwWyYxdLEUijqfz7UoKU+dbPElF57F97PDPzzPMpZWW
 OGvxXXYI1yJ2vsyME1OmeAmkZxMHO23CZZAg/W+Q6GzHf1p4PKj69gcV8hGhNDeETy8p
 mCTxjclf8ncGMU8DKZE9khXJdihU9ztJRtYn3Qnq2JsooX6nc31BHdJT25Z7XijlvQyX
 ohYFRhU/R8frfDmU/imDcOXi959L6irOB/Sac40bHp7z5dBulmSC9lI/IX4i/+qzbFrd
 tCqXf32ebXfV+fFJhdVV0FGNqKX3ZgIh1fcY99BirUojFR22xnsiULigzHuN/yup2zX3
 pGVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JDn6zmVQY7haAPamNLcNmXzkvAJaz91dWDhDL9p/pgc=;
 b=axN6O/s3ZXJ5xGF3F0x5KQsJO3n1j5BFkJ9el1vg8YklOSFi9+hvmZelGPq0YvPUQk
 0cGM9gJ4S08/zqeIY/4sXu652gdw03JUjO6EgWCM3iHf9OP/6/brUcgPppoUu77BvKXF
 Exg8ry4rvokNhQG6vXqIzLgoXIVDKB8AkMUiRwV+f1McWftERl7zm5tWF9dhMI/aQdWO
 waU/T6IKCHpJV72lSBl+XPbFG4l0HnvtCb6VXM2o5SrkxMfrWyBt9bPlVa+UvOsJJ8RF
 BW4aSHrMNxEnPpnP/pmUaoO2bhqV6haTWTYC4emS5uWogukq28ppjQtGSYt6BUZanvkU
 nfvQ==
X-Gm-Message-State: APjAAAUCnFFLGiGuzfzpzYDPbE8hbAefzYbvOMQU/6mdL1MBiTy8qz0M
 YbpotCnTP+9frZW2MYeBGOhBAw==
X-Google-Smtp-Source: APXvYqwUomZw/qpu6aQJD69XVyVc93ZozO4DAd0AakUXBNm2qh+XrCGe5nSd312QJGjUQ/pkkmosbg==
X-Received: by 2002:a2e:1311:: with SMTP id 17mr10462513ljt.75.1557059218523; 
 Sun, 05 May 2019 05:26:58 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id f25sm1508615lfc.46.2019.05.05.05.26.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 05:26:56 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun,  5 May 2019 14:23:27 +0200
Message-Id: <20190505122327.607-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_052702_787534_84AEDFB8 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] gemini: Support sysupgrade on DIR-685
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Petr Stetiar <ynezz@true.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 openwrt-devel@lists.openwrt.org, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This makes sysupgrade work on the D-Link DIR-685 after
initial factory install.

We create the platform.sh script to support sysupgrade
on more targets as we move on with sysupgrade support.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../gemini/base-files/lib/upgrade/platform.sh | 54 +++++++++++++++++++
 target/linux/gemini/image/Makefile            |  3 +-
 2 files changed, 56 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/gemini/base-files/lib/upgrade/platform.sh

diff --git a/target/linux/gemini/base-files/lib/upgrade/platform.sh b/target/linux/gemini/base-files/lib/upgrade/platform.sh
new file mode 100644
index 000000000000..0c6fc44ee725
--- /dev/null
+++ b/target/linux/gemini/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,54 @@
+wrgg_get_image_magic() {
+	get_image "$@" | dd bs=4 count=1 skip=8 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
+}
+
+platform_find_part_size() {
+	local first dev size erasesize name
+	while read dev size erasesize name; do
+		name=${name#'"'}; name=${name%'"'}
+		[ "$name" = "$1" ] && {
+			echo "$size"
+			break
+		}
+	done < /proc/mtd
+}
+
+platform_check_image() {
+	local board=$(board_name)
+	# TODO: check size of sysupgrade image
+
+	case "$board" in
+	dlink,dir-685 )
+		local magic=$(wrgg_get_image_magic "$1")
+		[ "$magic" != "21030820" ] && {
+			echo "Invalid image. Bad magic for DIR-685."
+			return 1
+		}
+		echo "Image looks OK"
+		return 0
+		;;
+	esac
+
+	echo "Sysupgrade is not yet supported on $board."
+	return 1
+}
+
+platform_do_upgrade() {
+	local board=$(board_name)
+
+	v "board=$board"
+	case "$board" in
+	dlink,dir-685 )
+		# This will overwrite "firmware" which means that the
+		# partitions "kernel", "rootfs" and "rootfs_data" get
+		# overwritten in the flash. The "kernel" image has the
+		# necessary boot loader magic attached to it, and after
+		# the "rootfs" there is an empty space marker for "rootfs_data"
+		PART_NAME=firmware
+		default_do_upgrade "$ARGV"
+		;;
+	*)
+
+		;;
+	esac
+}
diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index 8fec250f186a..a7001eb0068a 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -143,9 +143,10 @@ define Device/dlink_dir-685
 	DEVICE_PACKAGES := $(GEMINI_NAS_PACKAGES) \
 			kmod-switch-rtl8366rb swconfig \
 			kmod-rt2800-pci
-	IMAGES := factory.bin
+	IMAGES := factory.bin sysupgrade.bin
 	# Pad to 128k erase blocks with 160 bytes WRGG header
 	IMAGE/factory.bin := append-kernel | pad-offset 128k 160 | append-rootfs | dir685-pad-rootfs | dir685-image
+	IMAGE/sysupgrade.bin := append-kernel | pad-offset 128k 160 | dir685-image | append-rootfs | dir685-pad-rootfs
 endef
 TARGET_DEVICES += dlink_dir-685
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
