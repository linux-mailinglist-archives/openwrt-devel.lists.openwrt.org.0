Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA621027C5
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 16:13:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SB52T8unUA5DMhDLg6WQ9PPO+fsqqCVBqM+48CA/cFY=; b=nOGACrUcK7fBgi
	Sc12MgKWw8zOMUG4Om/YKdRwTLr0xhNpwIALX4pI5/l2jpscgQEq+nDy4W+GnZepI96ZZyfbdmFJm
	eoxUJ9BuabM3MygpplvGFS4WQtw7XcwRnNm/KYlp50xW7Rn00s+vcP6px/ZfxEKA3CT430IfzQ/Ll
	GTiQIIagPDv+bxY6hVOuGMv0kKX9QodUmTL9+lHajyoaVmGws7wapv36R1xfSLkMAZcsNKhBFgcOf
	8NTzzXkcv6w09nU04reMC+gWbJG4daUuDx0DoXA1hB2/OHeE7EF+cPwiEPrebEQOKXxakoMigJmMa
	O4xdryIMNBCtdV2B0KAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5Ba-00036T-Lc; Tue, 19 Nov 2019 15:12:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5BT-00035i-L8
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 15:12:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id f2so24284285wrs.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 07:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uHS3mc/Va1MlirhVd+k4R6rZPYUYUqCHp5ptw9MtbPo=;
 b=WNoxLi4YIjV23IEKFX91sALFW1M763h33s3kTooK0zkUvPHGhBS0lcRLTfgI5Hgbah
 d+ktkNTaLC2KL1y6WkAvjchYLzVRKZUNOA445HTn/gonnR5T051OHJBPX6Vo1HNlmSIo
 kF62pkG05yKl9FnyM9GETAecCATRR9ZhgzyGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uHS3mc/Va1MlirhVd+k4R6rZPYUYUqCHp5ptw9MtbPo=;
 b=UccqYrEIzLb+ztojIm664LNHbKubwQTkfW2kztnYCG4jELV1NLUeyVlBJvJS7J6xT7
 fnldV8CMFk5cg+AWF4AFFBRTHdgah1oamFBQpmGNXj5ZNFLMjGUy8MtXorN9jkbsozLf
 b/PfrK44KIECOQyT36Xsxj9kEtdnUKpcEbBLXfAUYqdO4YaAqrDlHzEvHhexYxlrmV5F
 Av7dgh94yAIqknrh19+1TpXwwCY2J7MwBr9AT/JI3aZh3sjnzWtHOcSkF/Zc5dSCfEmc
 mlRUiH1FCT79yBpkwlwJ4zLE4NVIAU6m1B2jwLITURbJ8dO1sCvGqAvUSu6gtj7GUL84
 Uo0g==
X-Gm-Message-State: APjAAAWVuCLtEEIiN8tIPjYLc9vmJjfyKXSkZIOOztIPb3U4nILysm4n
 J4nnq7LAGUa1KdsnOPeHmuRLHvPSG6X/qMj9
X-Google-Smtp-Source: APXvYqza1J+TGzAC4hSq/4tLmo16jz/gXPXsrFGyGQeXXIGV7KQJJP9I1YPkYLnsojxsmCpdmDUADQ==
X-Received: by 2002:a5d:518c:: with SMTP id k12mr37661645wrv.104.1574176367904; 
 Tue, 19 Nov 2019 07:12:47 -0800 (PST)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id r25sm3402527wmh.6.2019.11.19.07.12.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Nov 2019 07:12:46 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 Nov 2019 15:12:42 +0000
Message-Id: <20191119151242.96019-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_071251_690218_ED0015CF 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
v2 - store the migrate script under netifd structure instead of as part
of base-files

 package/network/config/netifd/Makefile        |  2 +-
 .../etc/uci-defaults/14_migrate-dhcp-release  | 23 +++++++++++++++++++
 .../netifd/files/lib/netifd/proto/dhcp.sh     | 10 ++++----
 3 files changed, 29 insertions(+), 6 deletions(-)
 create mode 100644 package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release

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
diff --git a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
new file mode 100644
index 0000000000..651c437cb2
--- /dev/null
+++ b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
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
