Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABC4EDCC1
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 11:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/Pws32p9l0Ldxl/W3tHbCOEnUveMn9Gxr7lZDHWN6c=; b=MGrMKhdf1axW6g
	nbTL7ZwwLLT8b7HI0Dc8QJQ9/QhtqOcfsMfaqkYzsgNzbZTdZEK8W1jbs9+Kq4dI9f51/o5Hocaf7
	yjj6PXaNLY6GHQwO8xaRzMsT2JPpupeyyjsAbwgajDPZIcMnRkaqI10d2mNVEAndcMyTmhgN1Yrfj
	uNrMuguR4GndXWWNaGELJzbjKC7fCq5uo+7c1khYQ5X2jndQb6w630h6YMNYJUIe7jNG8QqQfAwYo
	UpNont2KRGwZVihR0c00A86KAtQZq5fI0SBGbu/vdDu7CO/Pjl/73/VGRZJwDLID+E3ilsvPSRp7P
	nTwS5GB8REImjjCYwb7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZqJ-0008PR-PC; Mon, 04 Nov 2019 10:44:15 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZq4-0008EH-4K
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 10:44:01 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M433w-1iRZpv3N7A-0003AW; Mon, 04 Nov 2019 11:43:51 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 Nov 2019 11:43:48 +0100
Message-Id: <20191104104348.63115-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
References: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:mIYbt0bbDPDL85ISaOjpNG4Xs/1Ah7Kyi203pNjJQJUG9JISjnS
 epdbUQh8ygPNU5IGaknRcNVh9D9D6kMykqXWyY3FH1NFjvzeJ58fkxuH2AClrLzI9ve1MsV
 5Nd0jG9iixSF48oQHKIkIrojFtEI8pMwdg8+vpLgnq+YyNognqImfYVuyRbCACh61lVAR6B
 yrblaDoiV9t1a55ig3BVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:whetYo9mato=:14ALB+I81xdvKahbWyDJxH
 wcb1jypUQ6+wWqJ/KCEvjTEn9NzFKBhNcMEbwvWaU2rCSW3yMkuWQw6vIDyEcCFHVFTEUiOJO
 XCgJPADxuiWErpH6R5w/16buCWgp30NXrGjoE5oh3VqtVbdfSALu9p2ZxGVcRi2kStVOMspW3
 1K292O744GCFdQj1EH9ySDSVu9VduWC51CL1rBdim4LoZVleiz9sU4KBwiFrH9AGyLxrDnmhf
 qyKm2MMkKtOiD+aLmlsh5ywHDOo9TKucUcQzL+A0T7zFACEXylSwIvAeoZrXkOIv4WzLIxTNH
 fZUynzk9XTWmwopVgdxH/HhbLhK6grt02lokaQ/SAtLqlrgQ/eJn8u+qu04aOVg2C5MwJnvO9
 rUy9Thl63ZXNDOjKQH3JXEA7csxPqiGbbLhDzNbN+D6PuPxAbNP3a1CAYyXQSbj0cfsC20JDO
 zaHWJIwPrHko5MQ29iHyI0EH0TW8Cbn5aUoCwPuHxc2VIt9yfnA+9/ek6RMCMLLC01E14ulI8
 2FBvHRdBX9M1wELwgRDvylwDJxvYHSf5pmnT+naoiN1qxWvLQqYiQOk8GS3P0GyPTHonIi9o+
 tJwCNzUhNWz9p+vSu16IfCm2wxqDQ6B0u+jnIMjBVXa1crRbLnZgg6PEVA1xa1pKzYSqsIi1M
 vflDW9FwsNUEGyoOCMCshj79LO5KB1JLQGWHjWF7EGwMP5CUuzo3Lek/+Cp4PEEvpzu0blLCQ
 gHndA7EimLiLIomg7TW1A3gPsFRyfAX165BtDdPIxBt4oCJ78zSgH8jEDx6RTH+TdK1/PHoZ5
 +wusiyiXsptCez+53w1clspyXyfjMz2Z0v/cEdshmVvYMYHwg4MT+bTIban9gz3Oe09K6/3wu
 zv7jxQN3ujlLiNK9cwbuoPsGfrSTKpt2mGf4zEFAk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_024400_473657_020C2827 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] base-files: rename hostname with EUI
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

Signed-off-by: Rosy Song <rosysong@rosinson.com>
[merged with commit introducing macaddr_geteui, rebased on updated
label MAC address storage]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/bin/config_generate     | 4 +++-
 package/base-files/files/lib/functions/system.sh | 7 +++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index bb6117e6dc..2c33bca09a 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -255,6 +255,7 @@ generate_static_system() {
 	EOF
 
 	local label_macaddr=$(get_mac_label_dt)
+	local hostname
 
 	if json_is_a system object; then
 		json_select system
@@ -264,11 +265,12 @@ generate_static_system() {
 
 	if [ -n "$label_macaddr" ]; then
 		uci -q set "system.@system[-1].label_macaddr=$label_macaddr"
+		hostname="OpenWrt-$(macaddr_geteui $label_macaddr)"
+		uci -q set "system.@system[-1].hostname=$hostname"
 	fi
 
 	if json_is_a system object; then
 		json_select system
-			local hostname
 			if json_get_var hostname hostname; then
 				uci -q set "system.@system[-1].hostname=$hostname"
 			fi
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
