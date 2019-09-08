Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F7AACF29
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 16:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kqXM8D6LDEWZDGAomXMpTzL17vgZL24E9yFBkOoaOIQ=; b=rdOyJwcumNPvuvGJj575MeLT9C
	2z+hvy2Nyvdlwo/K1zisfLPok1Ciy3BzgDSKqfYf7UVw/XcY7MLJ2zP7hIEwmq4iCdQYe90m3UWKX
	44ea33woOYSeNJDUI8WhSBLXoC1WW8iCGFxhQgBrXa1jPVuPktBqP9Fkf4B0EsSyUPufA1Rixl7Yq
	878T+E/i9HAEkBDIm/VtN4spIrGTFNcIDBoW5uEXzibkQngn9nHgEpHDnLkBMTnF/0I9yB6ssCwb5
	H4CJ1jVnJGz2xgqxBm2FYzZFfZ/DIzmpa2pUonDL/bOQxZsIL4Xe5DupKmjdqro930gY/9OX8iI/3
	Jog4CcnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xuN-0007VI-TN; Sun, 08 Sep 2019 14:11:15 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xu8-00072B-20
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 14:11:02 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MLyzP-1hp9u404HJ-00HxJH for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Sep 2019 16:10:57 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 16:10:52 +0200
Message-Id: <20190908141052.17443-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
References: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OUhsBihU4CFYgkSPKxgHWAw3WHlbnjYXh0chC/q4gLubRW7BSkV
 +uw5pvDYylT8atsc/FUqqQXS1sS0yah5lhDwO+uKpn2kBLG0oBMGVR3jDoJx9bTdeER4B0z
 1MtNbXSQ5gStQ4n/9lXLyzXU5i6ZQD6zyy+5Aeat5ANsbS/0heqrMCHK2CQ0BuxoFnkL9Zp
 NZdxv4LSVU7aU62Glb86Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+DRIeHf+PrE=:zhncl665EdmbOkmrhlEXKU
 RM93Ari8QvMLk9SFtoCz28PBHjHVis5WBixfjdf/2TRjXCV0kZ5llAZA/PIr8MIflYlJ8BIwZ
 fvUolo3NIaC+DHRHvPWWHffdRoX/4s7ZBie2laxqg10pL7ky+U71JA9LDutrcOOUszEQNULUo
 6ye/7EdycccshTka5sayBGVvXtAPppdspa9xv2cC9w1FKfPVe4xvyAnedOnzbI0h+Tm91hYq3
 IW0Pt0PBeudzRG1KAvs5Q4Zw668yly04L/RIsFg0cg0oNDnQyK6VLPgY3Oetz8yluLM8K21BV
 dQ9q8QiuTW+ViUS/zhorLY2UdpDQVhxo0ja5QUVyqjgJHjec5iLriujSuFkM14GEvY4XyuUMY
 F8Z94nEP2jf8E1TmQOqknrI5IpIBwEM6ThtD20CzbLEZjiHiMYu4Hpbnmu9vghBHAPVxbATMn
 IrHOwpg9iFZKhvhe9aIpxzMTi74Hd1g0CslrsPUQGVDAZ7XXg+AnvAVTYYZptB9DLfX4GoRBj
 nkH9S78BZebR8KNmQdSQmBv1+lb0rNnz9tG5FkBti6/1Cl3kCqCIYM0TPQfNbzpFMDP741xto
 wcc2wzTSkzkyQ3G0cLq3mY/OjU/YZyJGH3RinM/tu7q0nGx/RZHNRlF4PmQRoFSmW/0rNuTPs
 JddtSQJLQfJK78x4ut0PWX99AoG+Y+scNE772wI4wVqFUbKXeAz6ORzxb+zuz9Cm1eZ1fmHSG
 fpQyNXu9QfRc5PLikVW6L/ZpkJggs4WK/eMDHM7JPAT81I064tF6dvvLEfiaKfMcitDwyO9pJ
 RMEOQYB+sV+P+ROZtrZklxslSqhpQ4Bnj3tcpL8Vw9zTmY49hN6lygBdRpsH350BNXFaBuW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_071100_414141_82B82562 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/4] base-files: fix hex2dec conversion for
 checksum offset
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

If chksum_offset in converted by $(($...)) at the beginning, the
check [ -n "$chksum_offset" ] will always return true, as the
conversion yields "0" for an empty argument.

With this patch, the variable is not converted before the check,
but only when it's used in dd.

No conversion is done for use in hexdump, as this can deal with
hex values.

Fixes: b133e466b08e ("treewide: convert WiFi caldata size and offset to hexadecimal")
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

If this patchset is not accepted, one would have to fix this in the
original positions anyway.
---
 package/base-files/files/lib/functions/caldata.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/base-files/files/lib/functions/caldata.sh
index 1a1849b93f..6f605257bf 100644
--- a/package/base-files/files/lib/functions/caldata.sh
+++ b/package/base-files/files/lib/functions/caldata.sh
@@ -76,7 +76,7 @@ caldata_valid() {
 caldata_patch_fw_mac() {
 	local mac=$1
 	local mac_offset=$(($2))
-	local chksum_offset=$(($3))
+	local chksum_offset=$3
 	local xor_mac
 	local xor_fw_mac
 	local xor_fw_chksum
@@ -94,7 +94,7 @@ caldata_patch_fw_mac() {
 		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
 
 		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
+			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$(($chksum_offset)) count=2
 	}
 
 	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1 || \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
