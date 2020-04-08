Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B451A22DD
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 15:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kN7T47rGzVcrSv32w4iXwnki/RsavvYEddBwSXrzQi8=; b=WbUoQaJ0XsUpRrKmMaUazUiNjd
	VRgcKjOZiUIJEnaOPHmdTJqvhAHn0x/wLzMgLfaKkEDPH4Dm8w/lcra1x5Dxi8dMLyenyr/Ayha0x
	YKjrlnltPa+jB+xkhiMjOLJ4Ghncnr7Uu1TY/0VSY2D6jLIQ59yWhLDHf7Lkyhl+DcHt1tBm9fXgx
	vJqKGLoQK5ThSUL5bbOCTFvCg8w9cXB1qZo6kRha+AIewMTBenlnXn7ensdEG4SLHbBXFHPGz5/UR
	V8paEEcD/m172kCZ9Y7S1VGtY5U8LW6JTSxCLtDiug5tHiTd3Qv+624WNGKyAbY6EjvzS1Pf0vV9D
	F68lIiwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAgJ-0008KX-JC; Wed, 08 Apr 2020 13:23:51 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAfr-0007v7-BI
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 13:23:25 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MIyiY-1jc3tl2RvW-00KSzA for <openwrt-devel@lists.openwrt.org>; Wed, 08
 Apr 2020 15:23:19 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 15:22:29 +0200
Message-Id: <20200408132229.3873-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
References: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:EG0sXjg0hMVAQI1wyBaQTyVxiqQqwL/UtM3EPT2JYZDM6H9FOwe
 oGgY92IbozRrJX/NH0h8ntsIXPTyacaSgq653jWUBcZaRUgvHx73g9epAhbk9K2jYF/sdOD
 izNI4HHvIbPuF9bWOA/askMf9wQrGaUSnCpMaZp5jTS0fe+ggv8p+yes1kv9VKwPqUt2k+N
 AuHWlumAm7ZrILeE9thvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VQqjfMfpLRM=:oQEd/pErFRHA0KDNMRzrkd
 q658lDAIm1qo1NXqdvpdhRkxBR87OHpUuFEV3SMcVoey6WJyDmgVRDihPYHo7Yp2N80FlOueM
 yCspGr61LqzPWpWp8ZqpRS5l1Bpj4QJSPij1m4/WnOB17M7ofLFncKprnym1DB0EEzUjTOUO5
 nJnU5pszyoFeR81Rxx2h+emfhsxC0rvPc95rmhCVcqDuzz6Gd2I6pidPHVjjnZeUGEoTW6tm/
 wcDsaPh4vm84EPLE8zKx3uC3N8E0q1V1rqalXeXVd2tFZyRQ439zOAxWa7vSMdMIfAb2a9iU+
 rxr+UaAaroHYRZSk405XUQq1qslO90MKs75eqsSsIeox9Nea4jLag0tYcHKHwxFtwjFC9EmNR
 qsgW5VSxUwWh91augkqpmmvovIcg1XkB0t8awUmz11SSsbMYFdTLjzLivrr4JluLtobjIimJw
 /yir0LFdV+25gOxXgDXV0M2/L6Q1tQ5jWzJmSRofOwugeJErdEN7E3nWtk64/UGWACp1lJFnr
 NWXWUY95YmC6zzD7F/Khyh4X0h/FypdRJRhwpA4Ho6Bc4dndclGq8GR9ITQzSUeNZT83hlOJ1
 TXgTjWbO2BfK56VspIPaOdf8SDMr1TkHsym7SpqNsNlz5C0pQAX/1NX5HEDytAEadZ7h+pNtj
 ll/XSgnBA1JXw7eWWDONSnmCooGf665xyHxp8D2bbsxGnCpUbZ3mPYjfDQKBUYehQpiSDrc7E
 xBsHB/7NKAOC9vP2D89JIiVUaY+1OdYpt92sCt/+KNbIAbrjodstW+2ZqhQbb6hBMBXtDf8gh
 xgcmoPRcfyqUjPQb1TUc7AI1yYgb7M6HwJ6DyLmwsTi+JQt5EQc8ReMYx18uF91lcH8r/4i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_062323_686427_E1953396 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH 3/3] ath79: fix 5 GHz Wi-Fi on Zyxel
 NBG6716
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

This reimplements a fix for the Zyxel NBG6716 from ar71xx:
Some NBG6716 do not have ath10k calibration data in flash, only in chip
OTP. To determine if flash has a valid calibration data, the first two
bytes telling the length of the calibration data are checked against the
requested length. If the lengths match, calibration data is valid and
read from flash.

Based on: 2ea98fc39b21 ("ar71xx: fix 5 GHz Wi-Fi on NBG6716")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is just a copy-paste job, since I found the relevant patch
during looking up stuff for the NBG6716.

I don't think that's a particularly nice solution and would be
happy if there are better ideas. (We are actually comparing
strings of sizes here ...)

If there is a nice solution though, one should consider adding that one
to generic caldata_extract at some point. This will break extractions
with wrong size set; however, if we can and will extract size this
way, the size parameter in the function call would be actually
obselete.

I'd be interested in general feedback on this subject.
---
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index d5fd3db24d..5e47b84332 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -4,6 +4,24 @@
 
 . /lib/functions/caldata.sh
 
+caldata_extract_if_present() {
+	local part=$1
+	local offset=$(($2))
+	local count=$(($3))
+	local mtd
+
+	mtd=$(find_mtd_chardev $part)
+	[ -n "$mtd" ] || caldata_die "no mtd device found for partition $part"
+
+	# Check that the calibration data size in header equals the desired size
+	cal_size=$(dd if=$mtd bs=2 count=1 iflag=skip_bytes skip=$offset conv=swab 2>/dev/null | hexdump -ve '1/2 "%d"')
+
+	[ "$count" = "$cal_size" ] || caldata_die "no calibration data found in $part"
+
+	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
+		caldata_die "failed to extract calibration data from $mtd"
+}
+
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -19,7 +37,7 @@ case "$FIRMWARE" in
 		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	zyxel,nbg6716)
-		caldata_extract "art" 0x5000 0x844
+		caldata_extract_if_present "art" 0x5000 0x844
 		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	esac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
