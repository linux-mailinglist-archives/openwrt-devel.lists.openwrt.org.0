Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A3DBA1AD
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 11:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YCarKY2h7+3vfj7xJKLbqO899sTN5p0UdJoMDDBX1R8=; b=M4xtjyWhE7fD6c88WefQcgQVIO
	GXsiBbc1hmp+Q06lf+a6hzP0mkpglNGVQFz4aets+u8N8UyzIiqOaMIsP/hu1rFXZAlG1CgKdTNKQ
	7JLIBpVZuyxIjvu21nQiNgunzGEzuuSwh1Np6hBBhKGPFY/kO1m6pfSTV8xxyg2E7YCeo/5uUDdE0
	IRCXXwx1hjIrEJpSwpr6ArusQSQcBNaLmkMMaEAGtz7t+ZmIPCtStVU0xuqWoQlXG0NQx0yBVDmoX
	NsAF532z2ye2tJi7xD3d1mmeWGJVtsOguPxuG0TNPz+G10J3s/tXsIaWwZoAzo8RFCOOCGqSOhwCk
	FPdc68uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iByeT-0004Wm-9C; Sun, 22 Sep 2019 09:59:33 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycU-0003VJ-S3
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mft3h-1hjGVn39Ef-00gFrq for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:22 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:11 +0200
Message-Id: <20190922095717.1714-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:IiaRbyCpgNLa5l4bzUxCbcMJwW0rrCw4iQKTGRknaJI0UEm4gXn
 mx4PueZrkucIPzczdp+I83m/N+h0b92LuBdqU5s6B2DcD3uI24irDv2b7uxPl/SzYzJOkis
 ZFOZHVg/Ny3fGAjThU08tv9AiZmENhx+Kqw4KWfT80OPd9/lim/3KblWKaJK/iZrUTmue5+
 7pB5noup+asW/bfSuFSDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mQ0irrmj1a8=:YDHjbCPAr0b2DY0IboJtAj
 +gjHrqslQbpxqseKDQlZGKsimTOmEhOtabFsVCPLAyM7eGSzvjFFfpUGL84dAELAja3mmYRML
 VWkA/m1rANNtUdF7Vm3PUQkCD4Z8Fe9RuW9jAmJRzPF3+zt6vqhTlIBg/mxLFeHjv0YNLwhgq
 d7J3HiJByY3aFIscQHLDI07dA3J2K9YAlw4FwEmbOqhdm9Yh15I9LD/bf/fzdti1AbaSWFpBQ
 ebZv8Z849bw7aXWTWMsB3RmU0UCmPT1f2mM73hMX76HW9spqFifrihQB6VZtMKEPEmols7nbO
 WFJ7L6AI8WZk+Li+xWh7VMH5ThpiQwrRJ7KpehvfUV4HfccJtxyv7P9vXXAz0IQM8Qfs9VyqX
 60J+paOgEmcENxyjf4r3loWKYovnT3sugAYoNs6olLuMWz9+GuTCP6f9Niz11wbmjh0ADqtbo
 iDajNFl3Z8Rx6mrATaqVpNVAnj+WUypPFBcGBuJRdY7862ik5pdvQQkE9MqNpzU2IzSex0els
 erTPPzORRqQ8vS+/5HkiIprEe1RMmDWtqaqprXhPMMQVcCPKBjnap1P5t2HLfE0TAU40QSIrl
 ckLDh3pj21G7DKjBgX8sLPwRUafmhBtcrxCsb+qb2gd1fcY/iMgHH+5OvRk0u7tFMLbkD+46e
 SxnIyONqhasp9j9wBIgOKYfxjCaCk9rTyaBdNJ6GsT1tvXCPNROTqNGj7r1zJ4NMRzALDbsdp
 RlhnHxCSPfCkdLHnXr6xzk47QlqEpcSPNnVfEsltcNC+os84ghKJqYxGYTpyAr7m1z6ZbZBTD
 WzjXNI8F5zdaTZDdg8921yCsSv4kqA1aNIVPsKNS/UjqG2ZQvLOwAyDtpde0mn94doyAnKJNx
 d3olVTEm6SAPLK+jizzh7QzWBh220Y1OzSJfs9VRY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025731_336790_D61FE799 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/7] treewide: fix hex2dec conversion for
 MAC address checksum offset
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

This is also sent as separate patch, as it is a fix, while this
patchset is an enhancement.

Since this patchset however depends on the fix, it was included
here, as this is easier as describing the dependency.
---
 .../ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom   | 4 ++--
 .../lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 25d82a5f0d..7911d0aa1e 100644
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
