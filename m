Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EADEEB04
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 22:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXHSZEq9pAlCXG2qFB0Y1LMnJ3FBwZbaGP3SEGzD3a4=; b=booNy/tQpZ0Bmk
	uFx4Wk7NSXVPAj/lBkBrqupTsKZRyiqvTroyGKcsG0cj5lMRtEPV9vQrfjwB8rBW0vgaVyafAmOT9
	ysmTSOgVuyfB6YSbQjWetqYyR2yDj0z8AK7jhnvPsMsR3VZjClQrOYhNJ8ogr7UHcke/CG8VThSom
	Dg2Q1N1m1uAglapIRiqM7WCEnngCX/xXJE37CNWCLKCsWEy032CabbwJ2Zwv2msZnmjv2vErfWOmF
	iwQJy4Zw9hqNuOpUYu3WisElT8dVOvaO2FNLqVw62d6VkMS8ywlZn7+XdJApRwFGOgbglJ7Yzs9Im
	ePcSu8NyaihrJHQ5noFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjoh-00016Z-Ew; Mon, 04 Nov 2019 21:23:15 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjoP-0000tM-MI
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 21:22:59 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N18I8-1hmSiP0ubK-012U5G; Mon, 04 Nov 2019 22:22:51 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 22:22:46 +0100
Message-Id: <20191104212246.37827-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191104212246.37827-1-freifunk@adrianschmutzler.de>
References: <20191104212246.37827-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:c7kiD8AEcj0gQehf/UGFmyyvd/cEsqtgRN+1WT8f2zWFr+RttGn
 YVk2uAJjx05z954mfVF9IeEJDZRsL9wVPWIUlApKHns4sGAMrDsvm6efPkhRSLqzyNzNqkl
 tzZZNQI9sY7fST8gD+Yo5VMlhAgRartf+b4UeRXZME+n3Cqdd4ohV6kW6b6eBEbY5zHkYTH
 o4rvd0ijqo+ZdPOzX1iMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zbTJTzIbE/k=:+G2/uGnNk6fw0FE5sKCz/v
 VEU3dmk3IePxDjHhwMsk8bt0mEhd5vIqlB/ahRFZADTxb/sxacjPTd7zcVq+Qcy+H66HOIlCi
 t4dkbumf/+OT2tQF4ssIbTNlkpZUs1K39eC9DQnY6Q+cusC46yGKODthqVcYWzm1OdX2JhNFp
 7UWjX/PKWF6yZH0f0FZflroJYGZ4K8NA1xwopwLEj3y22EL9Vdw1PO+CVvtQiSKUv6axozMUr
 pLv9dkVvD7HzCJR6Oeb0h2mRomjf6X41sIeDaIaWyskc185XRCFPcZPMsFP5qpp9XM/Xv8V9Q
 fMCL0XEmPdBYwd2YX8we2jGquKu4ijosTYIcUd8sKVNYOEpbM7MYImjYxBkZH4EPP8OLMK40F
 6gwbyxa1xpJibXVxzTs/uieKiEZ44lO5LdD+aAhQVlFt+QOa3tIgSeHwmIu9TnEwvEee/2rsV
 it+xHqCRsNl07gaENdqFBNl2TvYHM9QkmAykleMfB7vakrkkMAmWSj6sIKMjdGhoxA5T2fONx
 pc6XHkjQHvm9fVcuxM04hTyW2JD1PMAwz5xnMMWXSrUJ505Ttro4ex+SJKl8W+7YleHyyAuZZ
 iWqFAtCIm5Szez2VA8ht/XxI1gBOuXU6v+FggkQobSF5SgGaSaWe8+yUjcQZn4zg/8KriOcdq
 KGtpoUlZrBV5aHM2Mr7KXm5+84jMaL/1slMWD+MEt1p3ASLffupyzXbcTWXsVYalkyOFxKqX9
 g9lhU2lIK3TDBFAObv01PKtbRQIkq2fTBPwnIzyGn70OvcLK8IPdZtFrs3wqRYnOEOFzkQBSa
 csg2SdHv2yO65IxLDL9HPygVqYZVrcS0QzupHX3MWDEoUsXfXhrrIhwsGURRMFvZjfGRlTMBr
 3ZtrRAcBYMbLh45BfZZdzJncXEyeHB/BeNOBbC55Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_132258_014521_D3DC6FF6 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3 2/2] base-files: rename hostname with EUI
 of mac address
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
Cc: Rosy Song <rosysong@rosinson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Rosy Song <rosysong@rosinson.com>

If a label MAC address is provided for device, system
will rename the hostname with OpenWrt_{eui mac address}.
This helps to distinguish between different devices.

Since it's no good idea to nest json_* functions, this code does
not use get_mac_label directly, but only get_mac_label_dt as
external resource.

Signed-off-by: Rosy Song <rosysong@rosinson.com>
[merged with commit introducing macaddr_geteui, rebased on updated
label MAC address storage, extended commit message]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/bin/config_generate     | 16 +++++++++++++++-
 package/base-files/files/lib/functions/system.sh |  7 +++++++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 3ca035ca8b..b473eba9e9 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -3,6 +3,7 @@
 CFG=/etc/board.json
 
 . /usr/share/libubox/jshn.sh
+. /lib/functions/system.sh
 
 [ -s $CFG ] || /bin/board_detect || exit 1
 [ -s /etc/config/network -a -s /etc/config/system ] && exit 0
@@ -253,9 +254,22 @@ generate_static_system() {
 		add_list system.ntp.server='3.openwrt.pool.ntp.org'
 	EOF
 
+	local label_macaddr=$(get_mac_label_dt)
+	local hostname
+
+	if json_is_a system object; then
+		json_select system
+			[ -n "$label_macaddr" ] || json_get_var label_macaddr label_macaddr
+		json_select ..
+	fi
+
+	if [ -n "$label_macaddr" ]; then
+		hostname="OpenWrt-$(macaddr_geteui $label_macaddr)"
+		uci -q set "system.@system[-1].hostname=$hostname"
+	fi
+
 	if json_is_a system object; then
 		json_select system
-			local hostname
 			if json_get_var hostname hostname; then
 				uci -q set "system.@system[-1].hostname=$hostname"
 			fi
diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index be7efe4e2e..c4dc3cc3a9 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -144,6 +144,13 @@ macaddr_add() {
 	echo $oui:$nic
 }
 
+macaddr_geteui() {
+	local mac=$1
+	local sep=$2
+
+	echo ${mac:9:2}$sep${mac:12:2}$sep${mac:15:2}
+}
+
 macaddr_setbit_la() {
 	local mac=$1
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
