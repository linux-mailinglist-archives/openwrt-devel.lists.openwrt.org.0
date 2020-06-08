Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9791F1AC0
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 16:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnlfwOqu9O2clHNatNhICE9zo2CrB0MlpIJROT12QiA=; b=IdqQlrO2hzXVni
	DwDrsTQPZbVpKgISrU1pt1YqSAWdcZ3wBfX+OE6CSaIkWWCyBl9/c/jF+14JbGLU/7d/NCFOhQced
	CtfCl9tgAivzGSkACTxFD0WAkSm3h2tMx1Lgoq4C7vSdQNTMHDiQH3Pd/9IpCCNOMdsv2h2HwjSuf
	6MBX4dkOZ/cnpkf3EFqnHCQcp9zgoL5T+lWjhBbLk3qyh64LBDRnxMtjB3lWvvUqKxXbRwK/PE9NT
	KaF0cp0hI9H6AeRcVxhRY6tcFnhpiC5Ft4cbfUSEMAL9KCCB/VySb8fPiBsn8rIDYNm+Z2UYOFPDa
	yYPgE+0wiZhooDfrjxGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIZj-0004Pl-NE; Mon, 08 Jun 2020 14:16:31 +0000
Received: from mail.nerd2nerd.org ([148.251.171.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIZ4-0003lV-Hr
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 14:15:53 +0000
Received: from maraskan.fritz.box
 (p200300ec770954001e6f65fffece4488.dip0.t-ipconnect.de
 [IPv6:2003:ec:7709:5400:1e6f:65ff:fece:4488])
 by mail.nerd2nerd.org (Postfix) with ESMTPSA id 66934619D5;
 Mon,  8 Jun 2020 16:15:33 +0200 (CEST)
From: Johannes Kimmel <fff@bareminimum.eu>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 16:14:45 +0200
Message-Id: <20200608141445.309-4-fff@bareminimum.eu>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200608141445.309-1-fff@bareminimum.eu>
References: <20200608141445.309-1-fff@bareminimum.eu>
MIME-Version: 1.0
Authentication-Results: mail.nerd2nerd.org;
 auth=pass smtp.auth=info@bareminimum.eu smtp.mailfrom=fff@bareminimum.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_071550_878197_946032D2 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.251.171.25 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] vxlan: add capability for multiple fdb
 entries
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
Cc: Johannes Kimmel <fff@bareminimum.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Similar to wireguard, vxlan can configure multiple peers or add specific
entries to the fdb for a single mac address.

While you can still use peeraddr/peer6addr option within the proto
vxlan/vxlan6 section to not break existing configurations, this patch
allows to add multiple sections that conigure fdb entries via the bridge
command. As such, the bridge command is now a dependency of the vxlan
package. (To be honest without the bridge command available, vxlan isn't
very much fun to use or debug at all)

Field names are taken direclty from the bridge command.

Example with all supported parameters, since this hasn't been documented so
far:

  config interface 'vx0'
      option proto     'vxlan6'      # use vxlan over ipv6

      # main options
      option ip6addr   '2001:db8::1' # listen address
      option tunlink   'wan6'        # optional if listen address given
      option peer6addr '2001:db8::2' # now optional
      option port      '8472'        # this is the standard port under linux
      option vid       '42'          # VXLAN Network Identifier to use
      option mtu       '1430'        # vxlan6 has 70 bytes overhead

      # extra options
      option rxcsum  '0'  # allow receiving packets without checksum
      option txcsum  '0'  # send packets without checksum
      option ttl     '16' # specifies the TTL value for outgoing packets
      option tos     '0'  # specifies the TOS value for outgoing packets
      option macaddr '11:22:33:44:55:66' # optional, manually specify mac
                                         # default is a random address

Single peer with head-end replication. Corresponds to the following call
to bridge:

  $ bridge fdb append 00:00:00:00:00:00 dev vx0 dst 2001:db8::3

  config vxlan_vx0
      option dst '2001:db8::3' # always required

It's possible to specify a multicast address as destination. Useful when
multicast routing is available or within one lan segment:

  config vxlan_vx0
      option dst 'ff02::1337' # multicast group to join.
                              # all bum traffic will be send there
      option via 'eth1'       # for multicast, an outgoing interface needs
                              # to be specified

All available peer options for completeness:

  config vxlan_vx0
      option lladdr  'aa:bb:cc:dd:ee:ff' # specific mac,
      option dst     '2001:db8::4'       # connected to this peer
      option via     'eth0.1'            # use this interface only
      option port    '4789'              # use different port for this peer
      option vni     '23'                # override vni for this peer
      option src_vni '123'               # see man 3 bridge

Signed-off-by: Johannes Kimmel <fff@bareminimum.eu>
---
 package/network/config/vxlan/Makefile       |  2 +-
 package/network/config/vxlan/files/vxlan.sh | 36 ++++++++++++++++++++-
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/package/network/config/vxlan/Makefile b/package/network/config/vxlan/Makefile
index 5850c44..46970d9 100644
--- a/package/network/config/vxlan/Makefile
+++ b/package/network/config/vxlan/Makefile
@@ -11,7 +11,7 @@ define Package/vxlan
   CATEGORY:=Network
   MAINTAINER:=Matthias Schiffer <mschiffer@universe-factory.net>
   TITLE:=Virtual eXtensible LAN config support
-  DEPENDS:=+kmod-vxlan
+  DEPENDS:=+kmod-vxlan +ip-bridge
   PKGARCH:=all
 endef
 
diff --git a/package/network/config/vxlan/files/vxlan.sh b/package/network/config/vxlan/files/vxlan.sh
index bdcaa62..319d95c 100755
--- a/package/network/config/vxlan/files/vxlan.sh
+++ b/package/network/config/vxlan/files/vxlan.sh
@@ -7,6 +7,38 @@
 	init_proto "$@"
 }
 
+proto_vxlan_setup_peer() {
+	local peer_config="$1"
+
+	local lladdr
+	local dst
+	local src_vni
+	local vni
+	local port
+	local via
+
+	config_get lladdr  "${peer_config}" "lladdr"
+	config_get dst     "${peer_config}" "dst"
+	config_get src_vni "${peer_config}" "src_vni"
+	config_get vni     "${peer_config}" "vni"
+	config_get port    "${peer_config}" "port"
+	config_get via     "${peer_config}" "via"
+
+	[ -z "${dst}" ] && {
+		proto_notify_error "$cfg" "MISSING_PEER_ADDRESS"
+		exit
+	}
+
+	bridge fdb append \
+		${lladdr:-00:00:00:00:00:00} \
+		dev ${cfg}                   \
+		${dst:+dst $dst}             \
+		${src_vni:+src_vni $src_vni} \
+		${vni:+vni $vni}             \
+		${port:+port $port}          \
+		${via:+via $via}
+}
+
 vxlan_generic_setup() {
 	local cfg="$1"
 	local mode="$2"
@@ -18,7 +50,6 @@ vxlan_generic_setup() {
 	local port vid ttl tos mtu macaddr zone rxcsum txcsum
 	json_get_vars port vid ttl tos mtu macaddr zone rxcsum txcsum
 
-
 	proto_init_update "$link" 1
 
 	proto_add_tunnel
@@ -47,6 +78,9 @@ vxlan_generic_setup() {
 	proto_close_data
 
 	proto_send_update "$cfg"
+
+	config_load network
+	config_foreach proto_vxlan_setup_peer "vxlan_${cfg}"
 }
 
 proto_vxlan_setup() {
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
