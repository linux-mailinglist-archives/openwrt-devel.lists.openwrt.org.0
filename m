Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1D5ED4F4
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 21:46:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/OWROsHoMeovk1oX87VQy5nrEhUpqPpGrsTokGBFrzk=; b=nzvuY7vj0t3hFk
	/SKcgvTbdSjUT8doJH14jc91zibPNXWfLgYViEOkyOjLOZvtKfZJW+opKMDoN3i5cac5u52qq63OD
	Adio8IypS2UpVflc2XtlVAjG+lpcujcidtaCkvo6jp1v9DOCmo8ND9nQhb1xt1dn9sj4+mA9avD3c
	bCja2r5IDECOSZ6pT4L7nS603c+0CfiKLx4XtY0AE24tdU5TGA5MRV6ZFwpbiynzAxybT1ep9DvCG
	ZToR2RnWg0a3RLfgTD+B8lLJ7YHgJ1GcESWosN+sYoO72BVL5sW6UDA7Ui+5aE2MjD1U6LoSTcoo4
	hu73SJfrql3RjW//NrjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMlT-00048m-6B; Sun, 03 Nov 2019 20:46:23 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMlK-00047w-Vk
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 20:46:16 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEmpp-1iB5Lu3Jnf-00GGrX for <openwrt-devel@lists.openwrt.org>; Sun, 03
 Nov 2019 21:46:09 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  3 Nov 2019 21:46:05 +0100
Message-Id: <20191103204606.7929-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:qJoekkLwexji1rNEKL9tOvKjlfuDkV6hKC/Y654DY1fXoU9Qnzd
 weggycyJpRVkpJ/qS+kNTAkETOWBJhaBPgTG02EZFpJjNvXx8mmB7y5vFccDbVRZ+VVdbXT
 Yg/9e8ipy0xLXJCD2syIxWFEJRdsF3LkDv3zWVuCxeMXBSxvA9g7ZsK01O9dY8T20bRVUr7
 lyBhOCrYYqkBrEFwPVTdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L3nxt1nUg2c=:lyJi84kRY2h37OvuzwljSX
 bsmt0zXi1gEUPjZVTohFHB04P5nYCsM9qjKsiHVeEv/fFoLiIk8Za7wZ0RPCWBaEZG3DkCKI8
 ArhYiUIMQJEKldFqlUxZVDTW0786feA3CNLX3JWxdywPjeuNteU/enUQ7HxT4rEBUZ02vzlSP
 HekR3ZaRrXEV8Tubj3mpfwyvjYWakO0Lubo/z5ttsglRvWjGCfXkZZOFe77euwGUJqobdxq6H
 1no0etK5+ISZ3CM7X1bLSA02eBjGpxygLrnH5ERQzrhVX3qPUZYZ/Au+UsGAk3uVJqC6cd0rG
 53BD7BXMJn3PdqgdtgXl4IugYMZYLiIUeVULFD4p8Q+VG92WbFnECWPj0nV3sJ5dTP/DD3zf5
 RnW6UMZvM9gnuOiaPffJgWOAqgrqDK4OO7j4lBE11VrCXvEvpf6CQ06WP/0ojTGZN8HeDOeh8
 KYSN0Efa3LtxxYaVCoJulVywsMvXTJHSqLE+v5NurQ/tIKOj0dVZCSVfhy3GdoZmGMc7pzXHQ
 VGodee8xTMc6l6u9xNRWLAoTResN2pU/Uk+LWaZkdnAt3dTgWfjFktiRIkYKQWlRLpkfCJzFq
 Dn+/RjIDvEKX2te56kCn1trxAmU2fFSGDLbOJjSy1iGosapXknconFo/wGLTxlgZzB1NSv5Yz
 AJp61XKJzIIs1wXEp6AWd+UYg06x90sMvNbcOMRrcWaXKzJXVtUCSd75iIBGj23fIZ17AHfo8
 BO7hgAz4T9+0ZJ40Ixp6TZLkYRgSmOnL58S8NbkS0FVZSWpKYYNnOGCsToCf/EbDQywcFTHCm
 kmjK5PL5OFQMrBc4TIk76wJTBxrWLr/ooY5gg/p6kdRSKN4AlIVlNuCBnOIV62CCCAYHB4yW6
 rl5rV+8jTXxeGL23TouLG0Tl1+qZhE5T2bHC804TM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_124615_313691_273C6A1D 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC PATCH 1/2] base-files: always store label MAC
 address in uci system config
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

If set, label MAC address is available from one of two sources,
device tree or board.json. So far, the function get_mac_label
was meant for retrieving the address, while an option in uci
system config was specified only for case 2 (board.json).

Since this has been perceived as counter-intuitive, this patch
changes front-end access to the label MAC address:
During first-boot, the label MAC address will be written to uci
system config file for both cases, no matter whether is was
specified in DT or in board.json (via 02_network). A user of
the label MAC address will then read the value from
system.@system[0].label_macaddr, which is easier and more intuitive
than using a function and still have an uci value set.

Since this is only changing the access to the label MAC address, it
won't interfere with the addresses stored in the code base so far.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is not tested and just meant to serve as RFC. I will test
during next week.
---
 package/base-files/files/bin/config_generate     | 6 ++++--
 package/base-files/files/lib/functions/system.sh | 6 +++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 0b26afe57f..fe35788a26 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -3,6 +3,7 @@
 CFG=/etc/board.json
 
 . /usr/share/libubox/jshn.sh
+. /lib/functions/system.sh
 
 [ -s $CFG ] || /bin/board_detect || exit 1
 [ -s /etc/config/network -a -s /etc/config/system ] && exit 0
@@ -260,8 +261,9 @@ generate_static_system() {
 				uci -q set "system.@system[-1].hostname=$hostname"
 			fi
 
-			local label_macaddr
-			if json_get_var label_macaddr label_macaddr; then
+			local label_macaddr=$(get_mac_label_dt)
+			[ -n "$label_macaddr" ] || json_get_var label_macaddr label_macaddr
+			if [ -n "$label_macaddr" ]; then
 				uci -q set "system.@system[-1].label_macaddr=$label_macaddr"
 			fi
 
diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index cb0508fe9c..5b4ced836c 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -12,14 +12,14 @@ get_mac_binary() {
 	hexdump -v -n 6 -s $offset -e '5/1 "%02x:" 1/1 "%02x"' $path 2>/dev/null
 }
 
-get_mac_label() {
+get_mac_label_dt() {
 	local basepath="/proc/device-tree"
 	local macdevice="$(cat "$basepath/aliases/label-mac-device" 2>/dev/null)"
 	local macaddr
 
-	[ -n "$macdevice" ] && macaddr=$(get_mac_binary "$basepath/$macdevice/mac-address" 0 2>/dev/null)
+	[ -n "$macdevice" ] || return
+	macaddr=$(get_mac_binary "$basepath/$macdevice/mac-address" 0 2>/dev/null)
 	[ -n "$macaddr" ] || macaddr=$(get_mac_binary "$basepath/$macdevice/local-mac-address" 0 2>/dev/null)
-	[ -n "$macaddr" ] || macaddr=$(uci -q get system.@system[0].label_macaddr)
 	echo $macaddr
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
