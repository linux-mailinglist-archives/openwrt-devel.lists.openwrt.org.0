Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1D7ED4F5
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 21:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWhGUwDZfxcsIQ0f8+5xLwKh3E974FbhaDc5z728TcM=; b=BP3QbUFsMDAmQ+
	zePJWdS9DihLKSvB1m7sVBzB51UCVdzJqljdoFu+5TH1g1f9b+OIpUA7s4uSk6sedyR1xaFFGY/yU
	670uVNfvFiiYC9pd/4Eu2yP3VCoPwK5bx6FZovX0knJcF8/q0AJDuqiG8nhUGsOn+2nh3b88vpjqH
	Zst2g35B5hg0WSJKAygimoBR9cysBB2cqx03vJ6hYOf0ZfuXC8Kbfv9+N/0hq8+5v0SY2Iklffm8c
	gwefG8mk3a3ZaSX4rGTSDdUJTP1smZDEn/fll6k1A4pbolkq4sDNVEFzoy8ikNQ4xCWwrlN+FJtpy
	KdaAebTdPkGfis7xz5sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMli-0004Gj-17; Sun, 03 Nov 2019 20:46:38 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMlN-00048A-1y
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 20:46:18 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MfZDK-1hlgDa1Noe-00fwxg; Sun, 03 Nov 2019 21:46:10 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  3 Nov 2019 21:46:06 +0100
Message-Id: <20191103204606.7929-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103204606.7929-1-freifunk@adrianschmutzler.de>
References: <20191103204606.7929-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:/CE9+5J952Nw5skRtIbhG+ptSrW4j80NnPRvFe4FgSkrTUzM/va
 MuA2U1XunuM+7X3wwJwtg9uON0SfeHcuXayDejp6IWITcSy5F8JXBSh5xGXGPYQ5mJ+PjT0
 1rF9n+h/yneYhJXQFTxcOotoRf9t00fTXnRTFoggveH265NTxYfLg7sVk4WvzJkLagEsqNG
 Ww7e0McQNBxbGFd2QPTmg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rEbs/ulBuzc=:ksfNWagUOvSenYhwwXB3Bf
 iYaFBQz+pUwflXjy8Ua8fio8Oo6BLSzHJ5rN6usfqg0VxuCmbhd5q/Fp1CRZivNK7FVDMNu7o
 vrSux8kOFJkprqCIOMfDzNE/BbIJ7xARnIk837xKRvEM3CHcUL46auzf6TQemoRLRr6m4SCxe
 DvQUlrki7d8Eh4QXzLoft514rxwipWpalglghWTXoe9Qfc8xHUOlVml0JH8y0S+BxZ9rrog0L
 /UN/frgU38xV+Jd8MhKpobdfGzHsGmfFOV2KXSC3zpbb6xDbPNHngbJbcF2rlmbOUVjIvDq1X
 7y/fGf7ZJCL99sjj2J05/4JH72SAdZs7vdyNdPcZFYG3DAumZIvVnBMA4HxXMcIawRECnNDOe
 TIE24zhzL8qsTDsTbY44Ah8uji9UW4c0KPVviW7/l4va1NXDlMW8PRdyyc8SDdxQZlG/yc1Tr
 x1m3mhOXtilGmcGHqUR25Dm8Dm1+SoFKfJujQMJFaOIhSegSMP06Xfgw49gRtur2adVfcNMpU
 44ISc49I3J/S4G57mHb2jyYrzsfTtNZLuuOMtZoN+anNGi55fo8Fd4lDy8sYdMq4Xcqx2cyC4
 /NDUX4OW15Yq3Sdw5uIve7YxOw2hm1j3m5KlYJfPFLCgUBpX1y3l0Q3u0KyGFLFFPWTcnvNnz
 /DewPsFL1CVgtbYw3JJkdwHC/eQZOM0TeXG5KuGTYQKmWeHIwLSL9qefTMR98rkunUVZ7c76F
 lFectaOknWMbWL8XfWXDpthVlR2txCwefV8eYaNTOwI4xKt6tA5wk5pMbLEqSPLLMmObp0KRY
 fx//QRloddfaIzqCqwytST4pz7w/LAq3a10xIjl2z84MaboR1WmzXwV0SW7++QgrKcZtvry00
 DfKBdGnQQfR1XKiL8JeoUNqnytbgUyqaGrq1ZcxU8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_124617_390743_1AF5B516 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC PATCH 2/2] base-files: rename hostname with
 EUI of mac address
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

Signed-off-by: Rosy Song <rosysong@rosinson.com>
[merged with commit introducing macaddr_geteui, rebased on updated
label MAC address storage]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/bin/config_generate     | 12 +++++++-----
 package/base-files/files/lib/functions/system.sh |  7 +++++++
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index fe35788a26..d2e1897818 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -256,17 +256,19 @@ generate_static_system() {
 
 	if json_is_a system object; then
 		json_select system
-			local hostname
-			if json_get_var hostname hostname; then
-				uci -q set "system.@system[-1].hostname=$hostname"
-			fi
-
 			local label_macaddr=$(get_mac_label_dt)
 			[ -n "$label_macaddr" ] || json_get_var label_macaddr label_macaddr
 			if [ -n "$label_macaddr" ]; then
 				uci -q set "system.@system[-1].label_macaddr=$label_macaddr"
 			fi
 
+			local hostname
+			if json_get_var hostname hostname; then
+				uci -q set "system.@system[-1].hostname=$hostname"
+			elif [ -n "$label_macaddr" ]; then
+				uci -q set "system.@system[-1].hostname=OpenWrt-$(macaddr_geteui $label_macaddr)"
+			fi
+
 			if json_is_a ntpserver array; then
 				local keys key
 				json_get_keys keys ntpserver
diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index 5b4ced836c..f2b8f2395c 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -115,6 +115,13 @@ macaddr_add() {
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
