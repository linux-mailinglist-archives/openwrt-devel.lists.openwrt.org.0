Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C362B3D83
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 17:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vBdn3DhZvV7cUrNx9O7+lMyBzRBoDlM0O6+Hzuni6VI=; b=j1T/rv843Fn6a2
	AoZ1kLDceTvtoFcqDKQvZZSJ0kH/17kfVbPUHkSJPGWA6B5iGAeJjTrJlbxvg9f7UbrQ2Ra6s0Mi3
	kkLxgKuh4AOgqFsU/dmmSYhnupasOo3xyXW4/pM9vLDb3Ii+5B2lNvDtL9wE7VKmKaEd3aXaaZEFW
	bqfyWI5dXrSveiF1gA7/hnnSE3AIlKSWhLMBzlfskHtj4MES3giB/gSwwyjAgoy8nf3LyQF0SvWo0
	1dTPl48jSaBaq1gLYOJH/0AsJA6Uml/TZxHpcWqYjoJy1BDKREL13PMqAZlLfys0pBgfNt6i57FpR
	OUbQezOVeNujO8f5dRpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9smU-0004aO-CB; Mon, 16 Sep 2019 15:19:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9smC-0004Zy-F5
 for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 15:18:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id i1so85570pfa.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 08:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4MMH3bCyaXDI7uDKZITAYcGUdDcbH0ENTRtp8ejw9lk=;
 b=YZrVBxDeu9LkkW8E7SI4e8D4o7cj59wEue3dv7w+hb/hxKR9o0YI3051d1befdcC90
 1Nu5Pq9un9r/gL1FZrLHEgQbTU9i3v5IbWBMj4VXGeivlTAx74dLafEYAj1RkSVaYqvB
 mJyGqYbD/E9u4ZjQgOd8FNyQJHxv7c69WI5DQ2stYRH304MRdkk0hb0lN5TEq5B+64GP
 /HejKap/o/4ylxhsAEOHl/fZy/hcyCz2BBY7fAlWox6P2v4ORMShLjzBrYvSsnUwsfFP
 zkkcEXjf/Khc2vh0zsETJwyNdnSjJTNuBd4Cx+dq7DTY95tkvw8Olr4VbPFymSvxxhyg
 vK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4MMH3bCyaXDI7uDKZITAYcGUdDcbH0ENTRtp8ejw9lk=;
 b=W/yOMssqGEHEE0bZDmqcI7tShf8nU7n+H6DuH4v12OegHJvSVklm12iU8xO8uzXgip
 dqsaH5qDJJJKGXzLSEB7udimvHdZuN2bgFOoJ2dMfu15NEeK0L9qlpkv6gSgeQZzItIS
 WNCgFcFGxsLnKYdXdw9+XQxpe6YNn9+upwc08fBASQZmgjo+wBnOxWXPk98eJUGHPHFG
 DF5LCeDpMgmY/67NhVuYHMR0oDTUeiAio6Znc12Alu3N+g9Ff8gp1/CZ39y4F8hSylM7
 kNJG4pcKHkKiOR/OVvEzjrfJ+ZAhsMpBd2spqV72Ipt321BpRS074cwLOw1ayhWFVTra
 rfjQ==
X-Gm-Message-State: APjAAAXbIUfH2VNQg7YHkc9n+4enDNmFF+HSi97Oo70I4LL46htL4Rlw
 FuxYP7/ocbF1LPiPMfYtFmilPEi+
X-Google-Smtp-Source: APXvYqzHwCaa20ZlYDOY/cpbszR/lcztnHxXuHFoYcGaeqAD0R9HYGUoFONiH3jkBJhRqS2HAQeGJA==
X-Received: by 2002:a17:90a:94c3:: with SMTP id j3mr230032pjw.21.1568647131074; 
 Mon, 16 Sep 2019 08:18:51 -0700 (PDT)
Received: from localhost.localdomain ([67.139.187.132])
 by smtp.gmail.com with ESMTPSA id l124sm33810573pgl.54.2019.09.16.08.18.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 16 Sep 2019 08:18:50 -0700 (PDT)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Sep 2019 09:18:37 -0600
Message-Id: <1568647117-20186-1-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_081852_506307_0AD27680 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (riproute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] brcm47xx: sysupgrade: support Luxul
 firmware format
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
Cc: Dan Haab <dan.haab@legrand.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Dan Haab <dan.haab@legrand.com>

Allow flashing Luxul devices using vendor firmware format.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 .../brcm47xx/base-files/lib/upgrade/platform.sh    | 82 ++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/target/linux/brcm47xx/base-files/lib/upgrade/platform.sh b/target/linux/brcm47xx/base-files/lib/upgrade/platform.sh
index 537bac2..3e1b834 100644
--- a/target/linux/brcm47xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/brcm47xx/base-files/lib/upgrade/platform.sh
@@ -1,11 +1,19 @@
 PART_NAME=firmware
 
+LXL_FLAGS_VENDOR_LUXUL=0x00000001
+
 # $(1): file to read magic from
 # $(2): offset in bytes
 get_magic_long_at() {
 	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
 }
 
+# $(1): file to read LE long number from
+# $(2): offset in bytes
+get_le_long_at() {
+	echo $((0x$(dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))
+}
+
 platform_expected_image() {
 	local machine=$(board_name)
 
@@ -49,6 +57,16 @@ platform_expected_image() {
 		"Linksys WRT310N V2")	echo "cybertan 310N"; return;;
 		"Linksys WRT610N V1")	echo "cybertan 610N"; return;;
 		"Linksys WRT610N V2")	echo "cybertan 610N"; return;;
+		"Luxul XAP-310 V1")	echo "lxl XAP-310"; return;;
+		"Luxul XAP-1210 V1")	echo "lxl XAP-1210"; return;;
+		"Luxul XAP-1230 V1")	echo "lxl XAP-1230"; return;;
+		"Luxul XAP-1240 V1")	echo "lxl XAP-1240"; return;;
+		"Luxul XAP-1500 V1")	echo "lxl XAP-1500"; return;;
+		"Luxul ABR-4400 V1")	echo "lxl ABR-4400"; return;;
+		"Luxul XBR-4400 V1")	echo "lxl XBR-4400"; return;;
+		"Luxul XVW-P30 V1")	echo "lxl XVW-P30"; return;;
+		"Luxul XWR-600 V1")	echo "lxl XWR-600"; return;;
+		"Luxul XWR-1750 V1")	echo "lxl XWR-1750"; return;;
 	esac
 }
 
@@ -65,6 +83,10 @@ brcm47xx_identify() {
 			echo "chk"
 			return
 			;;
+		"4c584c23")
+			echo "lxl"
+			return
+			;;
 	esac
 
 	magic=$(get_magic_long_at "$1" 14)
@@ -73,6 +95,12 @@ brcm47xx_identify() {
 		return
 	}
 
+	magic=$(get_magic_long_at "$1" 60)
+	[ "$magic" = "4c584c23" ] && {
+		echo "lxlold"
+		return
+	}
+
 	echo "unknown"
 }
 
@@ -122,6 +150,48 @@ platform_check_image() {
 				notify_firmware_test_result "trx_valid" 1
 			fi
 		;;
+		"lxl")
+			local hdr_len=$(get_le_long_at "$1" 8)
+			local flags=$(get_le_long_at "$1" 12)
+			local board=$(dd if="$1" skip=16 bs=1 count=16 2>/dev/null | hexdump -v -e '1/1 "%c"')
+			local dev_board=$(platform_expected_image)
+			echo "Found Luxul image for board $board"
+
+			[ -n "$dev_board" -a "lxl $board" != "$dev_board" ] && {
+				echo "Firmware ($board) doesn't match device ($dev_board)"
+				error=1
+			}
+
+			[ $((flags & LXL_FLAGS_VENDOR_LUXUL)) -gt 0 ] && notify_firmware_no_backup
+
+			if ! otrx check "$1" -o "$hdr_len"; then
+				echo "No valid TRX firmware in the Luxul image"
+				notify_firmware_test_result "trx_valid" 0
+				error=1
+			else
+				notify_firmware_test_result "trx_valid" 1
+			fi
+		;;
+		"lxlold")
+			local board_id=$(dd if="$1" skip=48 bs=1 count=12 2>/dev/null | hexdump -v -e '1/1 "%c"')
+			local dev_board_id=$(platform_expected_image)
+			echo "Found Luxul image with device board_id $board_id"
+
+			[ -n "$dev_board_id" -a "lxl $board_id" != "$dev_board_id" ] && {
+				echo "Firmware board_id doesn't match device board_id ($dev_board_id)"
+				error=1
+			}
+
+			notify_firmware_no_backup
+
+			if ! otrx check "$1" -o 64; then
+				echo "No valid TRX firmware in the Luxul image"
+				notify_firmware_test_result "trx_valid" 0
+				error=1
+			else
+				notify_firmware_test_result "trx_valid" 1
+			fi
+		;;
 		"trx")
 			if ! otrx check "$1"; then
 				echo "Invalid (corrupted?) TRX firmware"
@@ -151,6 +221,16 @@ platform_trx_from_cybertan_cmd() {
 	echo -n dd bs=32 skip=1
 }
 
+platform_trx_from_lxl_cmd() {
+	local hdr_len=$(get_le_long_at "$1" 8)
+
+	echo -n dd skip=$hdr_len iflag=skip_bytes
+}
+
+platform_trx_from_lxlold_cmd() {
+	echo -n dd bs=64 skip=1
+}
+
 platform_do_upgrade() {
 	local file_type=$(brcm47xx_identify "$1")
 	local trx="$1"
@@ -159,6 +239,8 @@ platform_do_upgrade() {
 	case "$file_type" in
 		"chk")		cmd=$(platform_trx_from_chk_cmd "$trx");;
 		"cybertan")	cmd=$(platform_trx_from_cybertan_cmd "$trx");;
+		"lxl")		cmd=$(platform_trx_from_lxl_cmd "$trx");;
+		"lxlold")	cmd=$(platform_trx_from_lxlold_cmd "$trx");;
 	esac
 
 	default_do_upgrade "$trx" "$cmd"
-- 
1.9.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
