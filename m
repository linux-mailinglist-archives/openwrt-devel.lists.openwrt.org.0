Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE48EEB02
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 22:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XewuDucK/chx0+loeGR3pkkGaC4fhLon67rKlmHPRT4=; b=KcKm98BZBLVcMs
	tU4yvsoDdsjtGnSwfZ509fjUAB39YR5NLrFjX71TfaAQJYPhAJ5ZqNB2QYqbfFSS8wBrblKUw4BTF
	Gnv+iDZf3IEVgqNNbFrKBsF/AYfiyZgzoTfNiAMxUVl/TpjMgPB1d4P2G9uZkDwaNjBvMD/G2V5L1
	o1uA0XHkra5spthn8rkrPkGSyfr6+RsxGFsjKnPuVxeSOIsC6SsaBuENBRuTlTqj57YrYTzc9C2mE
	kN3/VrqGjZOmlDxgRU0zIJJB3cxR7pb7+SFtUoX+5QKT0FjBoffIHJgXlLM2YbOu5sYhHYn7EEZci
	TRMiNmiQOxumdoKuQhyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjoX-0000uJ-H5; Mon, 04 Nov 2019 21:23:05 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjoO-0000tF-Me
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 21:22:58 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N5n81-1hr7YH1uLD-017AuV for <openwrt-devel@lists.openwrt.org>; Mon, 04
 Nov 2019 22:22:50 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 22:22:45 +0100
Message-Id: <20191104212246.37827-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:FEPf/x3HNa6cXjwF7yngLe27VAbjumfmxZk68UVy63VLiLB2Xpe
 sMXTtTqSRTFSiSwn4k/6oWUFfwcmyRfozJGu76kXm7E8xE0cBrJ8Y05lhHadhJ2gfZM1/d2
 nMUqAO+iL3tRKca1h1yEAI1Fnlz46xAq0AYbyfvEbiQz2k6gh/gjhGfiWO6ASdDpOys0moW
 AHTTY+IU/Li602fh1VXyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xyuVg8AQc10=:rW+EvyFPPQHTqkdoV4PQl1
 CZDBcHLuo4KJb4ewF9VAlCnIvFSzjjOMvY2z8z4p1nhKpeW+A+T5NQKu17RLxcxzdeqgc8uFb
 WjjrRcvS/VRg9Jn/GeCO7oO600dFxAw6dIEeQ5+lfw25MXSg2i4pCDNXWNJUvKftYW+X3W6co
 Dy/7WyDuqIugF0zJJVxGOAUeLMXlp9VA9R73E9X7IppQoL7gtnRVov3mUWhSfDJhxQRvFy5dr
 emRD8HVRRf+47QquOH5vVa1n7LEv6Xh+F1QV8wEqXDOKcyHKo2WUmxm9E+Y9qvCNAfkr9GwBa
 rAA+113Vcag3ZyltkFKDXPm/N0YQy/+0bh6sZhWEH3QLw60M4aK2Vcf9juq7yEUFbINiFR7oc
 YQKzxgEgBv5uFWOMRyqyVDvaVhKzz+/8QDkw0DOrwFiMC2vrDivE2iGfNiLXWAclbWDLfdBQT
 vhvBfmHSD9I6bDTSOTpbVE66JVA9vnEuDOWe45zObStMKVUsKf6EE83E5cdiXsCuZ6ENyBCrx
 UvNINvwbAHfNlYVnYpdFBIj/brt9d6s28WKPuOiBdLIzUEiM3t6MHid4RVGPD+3rBLyecBL+H
 UEBNaDVlYZqikJnIKO9R6sRdGDY4HfevejeU97PtZFziIGZhVDpGMoRu3dhJLk44SlAQE3m0f
 LRkO3JXGQx5CTTEctnF+frkbcbLKj8te1tj0B9ups4r2fG1FfjlWo/Xjmym6SvlE0t3RKgXSE
 8Ol8AGCoeDmtVteosR9eIK5eRS/HcJHIoRA7pL6DwbwUSsT8uCMwNWhX1ab8xMGJwTOC88BUo
 DUlgNTxSaEAa4zBtRCQBL9ZJe1rQegvhJXRrtQpTL3HPfNvqCzGJBvRkIt8nrp5fq53Qd4JU+
 8DSSN1FLVwz9SwxAX4JHga4femFyQCV4iLey4m+ow=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_132257_043140_C035C970 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3 1/2] base-files: don't store label MAC
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

The uci config option has several drawbacks:
- it is only used for a fraction of devices (those not in DT)
- label MAC address is a device property, while config implies
  user interaction
- label_macaddr option will only be set if /etc/config/system
  does not exist (i.e. only for new installations)

Thus, this patch changes the behavior of get_mac_label:
Instead of writing the value in board.json to uci system config
and reading from this location afterwards, get_mac_label now
extracts data from board.json directly. The uci config option
won't be used anymore.
In addition, two utility functions for extraction only from DT
or from board.json are introduced.

Since this is only changing the access to the label MAC address, it
won't interfere with the addresses stored in the code base so far.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is an ALTERNATE version for discussion in competition to the
v2 patchset. It has been tested on device already.
---
 package/base-files/files/bin/config_generate  |  5 ---
 .../base-files/files/lib/functions/system.sh  | 35 +++++++++++++++++--
 2 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 0b26afe57f..3ca035ca8b 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -260,11 +260,6 @@ generate_static_system() {
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
index cb0508fe9c..be7efe4e2e 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -1,5 +1,7 @@
 # Copyright (C) 2006-2013 OpenWrt.org
 
+. /usr/share/libubox/jshn.sh
+
 get_mac_binary() {
 	local path="$1"
 	local offset="$2"
@@ -12,14 +14,41 @@ get_mac_binary() {
 	hexdump -v -n 6 -s $offset -e '5/1 "%02x:" 1/1 "%02x"' $path 2>/dev/null
 }
 
-get_mac_label() {
+get_mac_label_dt() {
 	local basepath="/proc/device-tree"
 	local macdevice="$(cat "$basepath/aliases/label-mac-device" 2>/dev/null)"
 	local macaddr
 
-	[ -n "$macdevice" ] && macaddr=$(get_mac_binary "$basepath/$macdevice/mac-address" 0 2>/dev/null)
+	[ -n "$macdevice" ] || return
+
+	macaddr=$(get_mac_binary "$basepath/$macdevice/mac-address" 0 2>/dev/null)
 	[ -n "$macaddr" ] || macaddr=$(get_mac_binary "$basepath/$macdevice/local-mac-address" 0 2>/dev/null)
-	[ -n "$macaddr" ] || macaddr=$(uci -q get system.@system[0].label_macaddr)
+
+	echo $macaddr
+}
+
+get_mac_label_json() {
+	local cfg="/etc/board.json"
+	local macaddr
+
+	[ -s "$cfg" ] || return
+
+	json_init
+	json_load "$(cat $cfg)"
+	if json_is_a system object; then
+		json_select system
+			json_get_var macaddr label_macaddr
+		json_select ..
+	fi
+
+	echo $macaddr
+}
+
+get_mac_label() {
+	local macaddr=$(get_mac_label_dt)
+
+	[ -n "$macaddr" ] || macaddr=$(get_mac_label_json)
+
 	echo $macaddr
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
