Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8425CB1352
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Sep 2019 19:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bg6n+o8Y9gnJp30rIzb5ejKfzPg65/UsHmru2298n/Q=; b=Q5Z8pWZ95LrAhi
	92UtejUOxueTStmULUnrpkOn9cpxZL6d/GN0K99AmJjsnGF5Y6IbGTahkXipcDSWMGj0aWUF7sRmX
	BwfOUY8jBgp40hz3BLj9a6Zc6wdgO5bjeNHegF466+fyDcsxTUKjVl1yB5dwsHGj6BbHU9Mc9TxWX
	03qSjfNyHnRwUY1bu32dmwdqQGaubuF1HUnU7e6f/39BRkaJKu74188aRm8Vymqw4NZYq19upT+9E
	2n5wkvY8D8bubXF55/3JVaJdEnQYBXc3JJ8C997mbo6s+RI1wRyWcX7xCJ9C/zW46XirpRpENTmQV
	J+5l2kmlC4iLOJVXsqEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Sg2-0008HJ-NM; Thu, 12 Sep 2019 17:14:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Sfn-0008Gw-RV
 for openwrt-devel@lists.openwrt.org; Thu, 12 Sep 2019 17:14:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so16412001pfe.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 10:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pBv9EKpSrG3yM984xhYsIZQ5M8rSMAYutmjpL/Uj4+g=;
 b=RzTjNMd4ZpTTjFeiCd7OHW8RPRYB5WCAKvQJNl4+6H32p37niTwm0bDEAD7umTomrk
 5MuI+LusPknYgfC8L4Lknbs4aBWWupmbZrYhG/va1EfCQkAq7zheigGkOlbKTujnmFEh
 Cm4jYlAmHonOpU9KR1cD9SSuKHYO+031D3zKQ3BUrEXgW2vVCE/IMahk6pm5xPKM0f0o
 STTyraK0HTA5ShzNH7RkZZMij2b3BlSp2dPmnSIG1debqUze9wHYOnF/LlyVN09NDvBo
 MeP8Qw4KpdQkmtrnt8aaVSRR9CgzjzaN01pStKl1zY3O8kHSWANZzEAyDl84PTk3p6sP
 9kuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pBv9EKpSrG3yM984xhYsIZQ5M8rSMAYutmjpL/Uj4+g=;
 b=EdxlqhP6sI4/NMnXmyIxqmT8klJmdcE85P5r0+/+WUZQcmT8ZFJq1YUO7ihAxsRzoF
 DKNm8qrnI5i9jonMENVSrya+11p95TBIpZfQ3BrC5v8ruiuo+Bo77NaXl47l8Da7HacL
 qWg2kmnePf/kPI7CUEQpiZ3mXjnYlL7kimzcMZJRlpJwdiKg+yrkDsToSo0WPzdSYdeT
 5/j85U8r16iheG50pTqbMaCgdmMxZZrJl/0enexPfljllGGsqeI2egFkvxle9E/tTHCJ
 o3jiQHnwwwv/2BBAJdYWzbxnmxyD6vMCTz9NvY/KvHQC2UybRb8oc+1Lis4eD1DW4sdj
 etvQ==
X-Gm-Message-State: APjAAAVfzozUDCwH8ODQ85pbcA9gQul1Q74SgW/oAe7brXy+TVRQaZrv
 qw9DdFbACNcQmlypmXMdzILPOe/u
X-Google-Smtp-Source: APXvYqxJJ5BulRnjmOmCNFnj2rGhyUqH5OrI2Gmh85A/uN/7Wyt5a2H7CxxW4OrHM+agVAXJu35WLQ==
X-Received: by 2002:a63:2784:: with SMTP id n126mr37885611pgn.92.1568308461924; 
 Thu, 12 Sep 2019 10:14:21 -0700 (PDT)
Received: from localhost.localdomain ([67.139.187.132])
 by smtp.gmail.com with ESMTPSA id g11sm22581384pgu.11.2019.09.12.10.14.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Sep 2019 10:14:21 -0700 (PDT)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Sep 2019 11:14:19 -0600
Message-Id: <1568308459-17840-1-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_101423_893627_6850BE9E 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (riproute[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: sysupgrade: support Luxul firmware
 format
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

Allow flashing Luxul devices using vendor firmware format. The next step
will be building proper images once they are conirmed to work.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 .../bcm53xx/base-files/lib/upgrade/platform.sh     | 84 ++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh b/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
index a337889..916b74e 100644
--- a/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/bcm53xx/base-files/lib/upgrade/platform.sh
@@ -2,12 +2,20 @@ RAMFS_COPY_BIN='osafeloader oseama otrx'
 
 PART_NAME=firmware
 
+LXL_FLAGS_VENDOR_LUXUL=0x00000001
+
 # $(1): file to read magic from
 # $(2): offset in bytes
 get_magic_long_at() {
 	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/1 "%02x"'
 }
 
+# $(1): file to read LE long number from
+# $(2): offset in bytes
+get_le_long_at() {
+	echo $((0x$(dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"')))
+}
+
 platform_flash_type() {
 	# On NAND devices "rootfs" is UBI volume, so won't be find in /proc/mtd
 	grep -q "\"rootfs\"" /proc/mtd && {
@@ -23,6 +31,18 @@ platform_expected_image() {
 
 	case "$machine" in
 		"dlink,dir-885l")	echo "seama wrgac42_dlink.2015_dir885l"; return;;
+		"luxul,abr-4500-v1")	echo "lxl ABR-4500"; return;;
+		"luxul,xap-810-v1")	echo "lxl XAP-810"; return;;
+		"luxul,xap-1410v1")	echo "lxl XAP-1410"; return;;
+		"luxul,xap-1440-v1")	echo "lxl XAP-1440"; return;;
+		"luxul,xap-1510v1")	echo "lxl XAP-1510"; return;;
+		"luxul,xap-1610-v1")	echo "lxl XAP-1610"; return;;
+		"luxul,xbr-4500-v1")	echo "lxl XBR-4500"; return;;
+		"luxul,xwc-1000")	echo "lxl XWC-1000"; return;;
+		"luxul,xwc-2000")	echo "lxl XWC-2000"; return;;
+		"luxul,xwr-1200v1")	echo "lxl XWR-1200"; return;;
+		"luxul,xwr-3100v1")	echo "lxl XWR-3100"; return;;
+		"luxul,xwr-3150-v1")	echo "lxl XWR-3150"; return;;
 		"netgear,r6250v1")	echo "chk U12H245T00_NETGEAR"; return;;
 		"netgear,r6300v2")	echo "chk U12H240T00_NETGEAR"; return;;
 		"netgear,r7000")	echo "chk U12H270T00_NETGEAR"; return;;
@@ -46,6 +66,10 @@ platform_identify() {
 			echo "chk"
 			return
 			;;
+		"4c584c23")
+			echo "lxl"
+			return
+			;;
 		"5ea3a417")
 			echo "seama"
 			return
@@ -58,6 +82,12 @@ platform_identify() {
 		return
 	}
 
+	magic=$(get_magic_long_at "$1" 60)
+	[ "$magic" = "4c584c23" ] && {
+		echo "lxlold"
+		return
+	}
+
 	if osafeloader info "$1" > /dev/null 2>&1; then
 		echo "safeloader"
 		return
@@ -112,6 +142,48 @@ platform_check_image() {
 				notify_firmware_test_result "trx_valid" 1
 			fi
 		;;
+		"lxl")
+			local hdr_len=$(get_le_long_at "$1" 8)
+			local flags=$(get_le_long_at "$1" 12)
+			local board=$(dd if="$1" skip=16 bs=1 count=16 2>/dev/null | hexdump -v -e '1/1 "%c"')
+			local dev_board=$(platform_expected_image)
+			echo "Found LXL image for board $board"
+
+			[ -n "$dev_board" -a "lxl $board" != "$dev_board" ] && {
+				echo "Firmware ($board) doesn't match device ($dev_board)"
+				error=1
+			}
+
+			[ $((flags & LXL_FLAGS_VENDOR_LUXUL)) -gt 0 ] && notify_firmware_no_backup
+
+			if ! otrx check "$1" -o "$hdr_len"; then
+				echo "No valid TRX firmware in the LXL image"
+				notify_firmware_test_result "trx_valid" 0
+				error=1
+			else
+				notify_firmware_test_result "trx_valid" 1
+			fi
+		;;
+		"lxlold")
+			local board_id=$(dd if="$1" skip=48 bs=1 count=12 2>/dev/null | hexdump -v -e '1/1 "%c"')
+			local dev_board_id=$(platform_expected_image)
+			echo "Found LXL image with device board_id $board_id"
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
 		"safeloader")
 		;;
 		"seama")
@@ -277,6 +349,16 @@ platform_trx_from_cybertan_cmd() {
 	echo -n dd skip=32 iflag=skip_bytes
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
 platform_img_from_safeloader() {
 	local dir="/tmp/sysupgrade-bcm53xx"
 
@@ -332,6 +414,8 @@ platform_do_upgrade() {
 	case "$file_type" in
 		"chk")		cmd=$(platform_trx_from_chk_cmd "$trx");;
 		"cybertan")	cmd=$(platform_trx_from_cybertan_cmd "$trx");;
+		"lxl")		cmd=$(platform_trx_from_lxl_cmd "$trx");;
+		"lxlold")	cmd=$(platform_trx_from_lxlold_cmd "$trx");;
 		"safeloader")	trx=$(platform_img_from_safeloader "$trx"); PART_NAME=os-image;;
 		"seama")	trx=$(platform_img_from_seama "$trx");;
 	esac
-- 
1.9.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
