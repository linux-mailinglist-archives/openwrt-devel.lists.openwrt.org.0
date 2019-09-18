Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75600B6292
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 13:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUj4IDV2DBFYYyFFcqtE50swthr/3Zk1voI/5EDrlIU=; b=orTs4FTU7ii51y
	XAch9gQMByT8ZN0wr983aeoedkoknbc9mu7/o2CxvLVRkSU1U+mihJ6C3J4KC4GPnG8LCuE3Pug8I
	e6zneSdIti6QsIfAOB3wUih3jamGQci6TmQDHSTgDnlUuVRlW6IjUou8hKudskdAAdjUXBcQNuvP3
	OEYoR9UowCTVJdrmejqrBzjEtnC9rQ/oCBK83Ahpi1q0ckUKNyEQ/NJ5VbtpH1z91UkVhbIOrJEhA
	R/JIAFJwK/QYJcsl5fPltfORkYFwDhuzVrQfQjtmeE9LiF56Iy5mYQuiRn2IfHFweurHmn9pWH0jt
	fpAkrMD7QvyScv3qiT4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAYZT-0002y6-5Q; Wed, 18 Sep 2019 11:56:31 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYZH-0002xi-Vu
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 11:56:21 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mv3I0-1htAEy2NQe-00r0H8 for <openwrt-devel@lists.openwrt.org>; Wed, 18
 Sep 2019 13:56:16 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 13:56:13 +0200
Message-Id: <20190918115613.1732-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:H4sDHWr1IdG3kyiP/fal5xACWzIU/zi3zOPxEhOysTI81/EAcP7
 mlSzrrFuIMm+U7M5gZKzlAh+V5duA7PohYAMArKm/LYh65ZjQUcP+O+xtS7vOUSTpYPhkkP
 Tl9PpBceVN1vmquTXcdpBSuk+imD670NNe4JbkcAOF9d43URN0oOQtbZKqdtfNr+lHYF9k1
 BWMYZU4jW2GVPlE3veiHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:INEOgS6mjRQ=:nXoUQvEEYHXpzjzX5u6r5o
 JgpEyph3y3mOb91j3gnjIWDgRHjtwkzM3LDvLCuCTUvcf0H9PLOejI0VG3ER/DY3AsapYI7Ph
 ryD0fko3pkXvsMpuP8n5UwtjQixvB+98r4crGSPKgZXKD4JPu9QtYsYCAu5FiYNT3vdZlmwmY
 nPW4xPY0bV30mxifLNB7lhTX3Vr6mvLacWYUghIYwDN8XlKvNF2Udc3QxFzrUfWRl+DjGiTjj
 XAg2PslZdvmv/GlLosuoYdfyhq6zLcfUzE9lrP/EKCx8++PJCvaRIxhCwS3ZMS7XmxMk0xwQY
 aTxK5ALI6mDEmBiL4mPcpA16ysBUsfO9UwQYcxplVNeiehqleYqtw7mkM9N3CDy6menzTQP6Q
 9BDXFFw3EqPmgacK2GuHFXRQ/gxfBL/B6dlFGK/PN7Uxy1T45nhN18MNxLVa9e58QP2CB00+n
 zo/5XGpgP75jGfzfBR7mObFtczIbq3FNMw0uiZNTaT2iv9GWL4Gn7f+iU+HHYayhDHiixHOTO
 Xrz3zmIEnY0dVRGL4Vbs+FIRYs/50NSx0JzqXjSit4GUtrbnAHJuB3r7Tc2+kf3sNZm1W30Tj
 rH7jFuuzfD/st6G1g0+sE0Zv/+nwImVe0Vgj9DWxqIcdZJLpd+g+YSos+ohypAoJXPajRDPGh
 FA+VaEAoEJPryelGO3p/qR112z1GJ9/5kcD1gWkNtjBxgJbkRRnHbopfmgqhcqkM1Cv4Dijpx
 o4McoPCXNHUlYb7BJYjui4SKjFISSuXNZA4VKxHVYpjnGIDbq4ccJaXL7oFHUKJIgm7H1kU5+
 YpLKcLiFVKVI7glE1UE2C9tP8M4o3AgHMyHF8FOKaTGJ1YqT0/AlJ35FT7rR2Y2TRnpwqYn0D
 HJlZ4az1va6EGYNTkbAM4LA4oCXBkq04/cX0OAows=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_045620_320451_86C5C110 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] treewide: fix hex2dec conversion for MAC
 address checksum offset
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

If chksum_offset is converted by $(($...)) at the beginning, the
check [ -n "$chksum_offset" ] will always return true, as the
conversion yields "0" for an empty argument, and [ -n "0" ] is
true.

With this patch, the variable is not converted before the check,
but only when it's used in dd.

No conversion is done for use in hexdump, as this can deal with
hex value offsets.

Fixes: b133e466b08e ("treewide: convert WiFi caldata size and offset to hexadecimal")
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom   | 4 ++--
 .../lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f07dbf83c4..da3e3bea77 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -60,7 +60,7 @@ xor() {
 ath9k_patch_fw_mac() {
 	local mac=$1
 	local mac_offset=$(($2))
-	local chksum_offset=$(($3))
+	local chksum_offset=$3
 	local xor_mac
 	local xor_fw_mac
 	local xor_fw_chksum
@@ -78,7 +78,7 @@ ath9k_patch_fw_mac() {
 		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
 
 		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
+			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$(($chksum_offset)) count=2
 	}
 
 	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index 82f6885221..6f133c82a7 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -103,7 +103,7 @@ ath9k_patch_fw_mac_crc() {
 ath9k_patch_fw_mac() {
 	local mac=$1
 	local mac_offset=$(($2))
-	local chksum_offset=$(($3))
+	local chksum_offset=$3
 	local xor_mac
 	local xor_fw_mac
 	local xor_fw_chksum
@@ -121,7 +121,7 @@ ath9k_patch_fw_mac() {
 		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
 
 		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
+			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$(($chksum_offset)) count=2
 	}
 
 	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$mac_offset count=6
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
