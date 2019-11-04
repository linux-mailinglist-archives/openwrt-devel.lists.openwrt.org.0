Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ECEEDCC0
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 11:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HOgFk/jVMkeQDNByvsY42hOWoXglR1bxQz4p4soAzMM=; b=O+UhZGKhkuiDv+
	yJBfle3vLUQ291dlHJx3HmwimGdG/JhFBj2KKIVi4swmcQghV9RDnoeCRQOXIXtwyr6rxfp4OVKvA
	mUR6zXUfII9p9B4jozFMp8zvn8/2wqsyRrAW2attjQiBhi35NlbsTOUCW7CQrR9KFnQkEwkh069DH
	5LnEyOZjR/Px4bvxK/kzzrBqzkAcG6y1B0t+mBCVZ8pkEIrCA/Eh+4w9MYPsMBfIXPt2v2PUxEy2q
	4M97UQZhMmPeabWfyHtCkuVXH9aREpi6eqWKucOOvbJJdqT2gTaTKEFW6LLS59lxTmtTLiMoBhmmB
	cbumYXLFtgl4P+4tMF5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZq6-0008EI-QC; Mon, 04 Nov 2019 10:44:02 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZpz-0008DW-K5
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 10:43:57 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MeToK-1htcWp1N4u-00aTqm for <openwrt-devel@lists.openwrt.org>; Mon, 04
 Nov 2019 11:43:51 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 11:43:47 +0100
Message-Id: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:cY9FUc9yHtXKQGDFNPGKq+GvBetTi3L5eKXneuvsyd2+qYcKjMi
 ca4LR3e9IYCQ64H8ceIt4aWNXv8jqYu/AZtmKXUBHfk5aC/2GGqPBFlyzRhsMey3O8N7+uM
 gFQ6297lG0qqLlKOAf+07DuamafLLrXRauw2TEZIvlEYmsWFLr56oTLzreTLaVXSYneUaiT
 e2DstBibsXrLDGXMUYbBw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yYW1r0RbsOs=:mMO0RR8pUPGT2knk24YpX4
 y0qAhwXd0mNi/zN1AHPlXkb+IkWE1iRYFxqBi1s4G9tmuVOkym7PuOzLg0dq76054DepFWF5z
 R1K2VSYw1PsvaHyC2MJGgGJKvLkhNalOXlOQN5MCXTBgnhzVmXp0WtBDsBVlQU16BHzxXQGIx
 PFmMIlMbVdajzJiDgsfx5Nm2s2G4nDPv3mqK2wlAfTFFMCKSyJ0FgUOsQysIS9AhtUiSUgcsW
 ZajAi5v4wxZeDN4nP+LA/7LTSrHMhX1d74T33YXUtHapTtEo9Y9F361/Tx924hOWUvR9ipWTr
 tu5NYdmCeu/v51E+ocV1cMMLgEGmQCzp6G10xtxNSJz1b+Ch2/1pceoSiJtyGsZlq3bUjjmnK
 /uOO2J7baVS5em+bCZIVlUMvMu6BjWaiz2VKP0WoIaQOH5IxAJGXi5iEr3cYYWD31+A5HcpXP
 wbMAnKIVmSDjlAPTa18FScrAai2a2MvMbMq9qNRlm18zdnRuNQlT3LV/RuUDpnzzqVO13z8eF
 RY2Jx+ntHOgHTN+RzFpLb4VgHVlxct1ntysgHHoR/D/uq7FWxs44Y7rTd4FfsuL5JwZQq15BU
 K8Mb4gz1ZuG/Mdo5BeDTrwY0Y3RRY1iZF6Tu7h0WldmQTtlqWmJmSmUb2kVIYSpNkuA7ASPw3
 8aYaGq5fmE7Xvv12k5+XAWM5sEuVC2X/A6tdpkZ1FLeMOEtQHXVj9/i+o+6HhDO5b495qnJvQ
 zq+mH035sWs4jJiMHOz0aRyhPPPFdlzhlNMQ8ZFa1fdeEti7CpNwVJmO43OVWspJ5zQMXMsin
 W3q9Ooswk2+pcDkwD/mfJyRK22zTrUgE8RJ0DTugwzYqdf2HU5BkccmbMFk7yx6DQx3RcOXi+
 Wp0giNQxXyT4poYR70Qdn/PqyJfveZZYkurCoazXs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_024355_956351_7C41E552 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/2] base-files: always store label MAC
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

This has been tested with DT address, 02_network address, and
without address.

---
 package/base-files/files/bin/config_generate   | 18 +++++++++++++-----
 .../base-files/files/lib/functions/system.sh   |  6 +++---
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 0b26afe57f..bb6117e6dc 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -3,6 +3,7 @@
 CFG=/etc/board.json
 
 . /usr/share/libubox/jshn.sh
+. /lib/functions/system.sh
 
 [ -s $CFG ] || /bin/board_detect || exit 1
 [ -s /etc/config/network -a -s /etc/config/system ] && exit 0
@@ -253,6 +254,18 @@ generate_static_system() {
 		add_list system.ntp.server='3.openwrt.pool.ntp.org'
 	EOF
 
+	local label_macaddr=$(get_mac_label_dt)
+
+	if json_is_a system object; then
+		json_select system
+			[ -n "$label_macaddr" ] || json_get_var label_macaddr label_macaddr
+		json_select ..
+	fi
+
+	if [ -n "$label_macaddr" ]; then
+		uci -q set "system.@system[-1].label_macaddr=$label_macaddr"
+	fi
+
 	if json_is_a system object; then
 		json_select system
 			local hostname
@@ -260,11 +273,6 @@ generate_static_system() {
 				uci -q set "system.@system[-1].hostname=$hostname"
 			fi
 
-			local label_macaddr
-			if json_get_var label_macaddr label_macaddr; then
-				uci -q set "system.@system[-1].label_macaddr=$label_macaddr"
-			fi
-
 			if json_is_a ntpserver array; then
 				local keys key
 				json_get_keys keys ntpserver
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
