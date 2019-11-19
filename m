Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C2C102525
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 14:05:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ode986BCPonvz8RFzKI0rkIK3szJxMvfIcplz639W9U=; b=mvBqP3ExZTPFUS
	nHVvsaYEVEgR23RQtCWcPVcaobhmrGa1xKX8yE8o0iC04eMNq4jZ9MyXFEziIeUFE88MEgtJPNNPf
	db+GlIfWJnYQpFdPRwlfcrwj28EvluTBvctGovpFI/GzkyXZ38flCAedzi1k+7FwIMtrn4nnkneWm
	I3mtZL14W1NJYmzLGLD0/RWeLIgbxRJMPzwXaO0YUlHlYLknDbgnC6otFoju3usRACQ0Pr2fyFtNQ
	WwVxa6fHCI3I5N/DLg1FK144PJINMBM2uXRGZYItnPfk6jtRs6szMyZV99hmZ7baTGdWNLHG3DQxX
	ZgcRNaMn6nEGzzU+X3Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3CJ-0005hv-Of; Tue, 19 Nov 2019 13:05:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3C8-0005hF-ND
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 13:05:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id l7so23737545wrp.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 05:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pohxN/4A/9BPseKpLmAqZyPA//jihjKA5jArSx8XHyM=;
 b=aLzBpklzXSSCeWHgtRRWiB0OtdNVNjMEMa6SCt+GYkCtR0OUOFz2FuWhxFs6hdXa3d
 tH2JFfQmYTpTfp4snqMXsLea9scDPF27nU3gVs0FtwbAr1dfPb5bmRvCKMfNo/Nsg0rx
 w2l4BGTHRmcSaEpL5+uwdeJiYvLsl6Xp4jGIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pohxN/4A/9BPseKpLmAqZyPA//jihjKA5jArSx8XHyM=;
 b=Fn6gJ8eXAUtr6AT1aIfRQILWqOF1pPjs37dRk+p9d7TVX+MeFKZ1wVsmZmJBOh9UaW
 mKSmmkqjBY8M2um0JJ6t4DIiC85qFJTWYHBnTrH8vKxnS5CJ9767buXIhLud3qHhM7qL
 zs6Nb4CrbDdkQEo7bpYJVEuIDg2FiaAxfFYs8R1rRAE8k4KNEpDbVm02q4IXzbfJFWTG
 HkcIXrKvjnu/craL1yNbSAW7Gtul+nnNrEBGvQHiFPttfHShM+3W7W1NKPgsXJjF7PYw
 Cvh1VqaTPKiGThaKDGmmRWgaffhB7EXk4iHrl9Quz+RM29ZIkfnah2Fs8WbYIhp5J29I
 vYew==
X-Gm-Message-State: APjAAAU+CvqnpJTEG5xG2A2Rz0/55zrMPK7RBnUTjaWJvQGjyqzSRZ+N
 8XEa0A7qrVn/0Npc4QcNfz0AllOi0233LCyaQRo=
X-Google-Smtp-Source: APXvYqzcPCiiV5T4K4UKwTgN43KTO5MfxRb7WufP3fbSKF2KVKiKeF02mzHF/ICo69uVhqHychCKkQ==
X-Received: by 2002:a5d:55c7:: with SMTP id i7mr38455013wrw.64.1574168717658; 
 Tue, 19 Nov 2019 05:05:17 -0800 (PST)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id w18sm26852519wrl.2.2019.11.19.05.05.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Nov 2019 05:05:16 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 Nov 2019 13:05:12 +0000
Message-Id: <20191119130512.57496-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_050524_762250_E4772983 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] netifd: dhcp proto convert release to
 norelease
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Change dhcp no/release on shutdown to 'norelease' uci option to match
existing proto dhcpv6 usage.

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 .../etc/uci-defaults/14_migrate-dhcp-release  | 23 +++++++++++++++++++
 package/network/config/netifd/Makefile        |  2 +-
 .../netifd/files/lib/netifd/proto/dhcp.sh     | 10 ++++----
 3 files changed, 29 insertions(+), 6 deletions(-)
 create mode 100644 package/base-files/files/etc/uci-defaults/14_migrate-dhcp-release

diff --git a/package/base-files/files/etc/uci-defaults/14_migrate-dhcp-release b/package/base-files/files/etc/uci-defaults/14_migrate-dhcp-release
new file mode 100644
index 0000000000..651c437cb2
--- /dev/null
+++ b/package/base-files/files/etc/uci-defaults/14_migrate-dhcp-release
@@ -0,0 +1,23 @@
+. /lib/functions.sh
+
+migrate_release() {
+	local config="$1"
+	local proto
+	local release
+
+	config_get proto "$config" proto
+	config_get release "$config" release
+
+	[ "$proto" = "dhcp" ] && [ -n "$release" ] && {
+		norelease="$((!$release))"
+		uci_set network "$config" norelease "$norelease"
+		uci_remove network "$config" release
+	}
+
+}
+
+config_load network
+config_foreach migrate_release interface
+commit network
+
+exit 0
diff --git a/package/network/config/netifd/Makefile b/package/network/config/netifd/Makefile
index 875628f66a..e24ebaba30 100644
--- a/package/network/config/netifd/Makefile
+++ b/package/network/config/netifd/Makefile
@@ -1,7 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=netifd
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/netifd.git
diff --git a/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh b/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh
index 0d06eba06e..3034b2ba68 100755
--- a/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh
+++ b/package/network/config/netifd/files/lib/netifd/proto/dhcp.sh
@@ -14,7 +14,7 @@ proto_dhcp_init_config() {
 	proto_config_add_string clientid
 	proto_config_add_string vendorid
 	proto_config_add_boolean 'broadcast:bool'
-	proto_config_add_boolean 'release:bool'
+	proto_config_add_boolean 'norelease:bool'
 	proto_config_add_string 'reqopts:list(string)'
 	proto_config_add_boolean 'defaultreqopts:bool'
 	proto_config_add_string iface6rd
@@ -35,8 +35,8 @@ proto_dhcp_setup() {
 	local config="$1"
 	local iface="$2"
 
-	local ipaddr hostname clientid vendorid broadcast release reqopts defaultreqopts iface6rd sendopts delegate zone6rd zone mtu6rd customroutes classlessroute
-	json_get_vars ipaddr hostname clientid vendorid broadcast release reqopts defaultreqopts iface6rd delegate zone6rd zone mtu6rd customroutes classlessroute
+	local ipaddr hostname clientid vendorid broadcast norelease reqopts defaultreqopts iface6rd sendopts delegate zone6rd zone mtu6rd customroutes classlessroute
+	json_get_vars ipaddr hostname clientid vendorid broadcast norelease reqopts defaultreqopts iface6rd delegate zone6rd zone mtu6rd customroutes classlessroute
 
 	local opt dhcpopts
 	for opt in $reqopts; do
@@ -50,7 +50,7 @@ proto_dhcp_setup() {
 
 	[ "$defaultreqopts" = 0 ] && defaultreqopts="-o" || defaultreqopts=
 	[ "$broadcast" = 1 ] && broadcast="-B" || broadcast=
-	[ "$release" = 1 ] && release="-R" || release=
+	[ "$norelease" = 1 ] && norelease="" || norelease="-R"
 	[ -n "$clientid" ] && clientid="-x 0x3d:${clientid//:/}" || clientid="-C"
 	[ -n "$iface6rd" ] && proto_export "IFACE6RD=$iface6rd"
 	[ "$iface6rd" != 0 -a -f /lib/netifd/proto/6rd.sh ] && append dhcpopts "-O 212"
@@ -70,7 +70,7 @@ proto_dhcp_setup() {
 		${ipaddr:+-r $ipaddr} \
 		${hostname:+-x "hostname:$hostname"} \
 		${vendorid:+-V "$vendorid"} \
-		$clientid $defaultreqopts $broadcast $release $dhcpopts
+		$clientid $defaultreqopts $broadcast $norelease $dhcpopts
 }
 
 proto_dhcp_renew() {
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
