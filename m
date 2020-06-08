Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08BE1F1ABF
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 16:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRH6VdKwrz0/QfoLSiAa9GFKVLZ5DI2c3PLaqB5mEeE=; b=nwpDaS1j+Y+cNs
	I1uMv7J8ndXbzY9UGWmKNvRWiCtb0IOOIldy0JaUipOuooH0nMC5HUFmQaSRQMVFMlVTrDsMoubsB
	Zkv3jR2UUVm3gWckbdmtm0X9669gJHY9wGVj/mQmtI4TPUylmcXRWLEGykierf5P47cUII07oA6QZ
	TrgRBi092PHh/xgS2YQH3m3TWXmj8o3oXWxmmCcBzme3R2rorUXO/G/9smyjkGFdZRk9JGkI1m4xs
	gL3L4kKW09b++fAVXzPspqFjrviRBwzEb8B1hhFo9Gr7JB2TL4TMFmc4j1Z/shRNgtakPEEC0iOaD
	ZwvHKy24FKewbPZujkxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIZX-0004A6-6x; Mon, 08 Jun 2020 14:16:19 +0000
Received: from mail.nerd2nerd.org ([148.251.171.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIZ4-0003lY-HQ
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 14:15:53 +0000
Received: from maraskan.fritz.box
 (p200300ec770954001e6f65fffece4488.dip0.t-ipconnect.de
 [IPv6:2003:ec:7709:5400:1e6f:65ff:fece:4488])
 by mail.nerd2nerd.org (Postfix) with ESMTPSA id 3A623617C7;
 Mon,  8 Jun 2020 16:15:33 +0200 (CEST)
From: Johannes Kimmel <fff@bareminimum.eu>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 16:14:44 +0200
Message-Id: <20200608141445.309-3-fff@bareminimum.eu>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200608141445.309-1-fff@bareminimum.eu>
References: <20200608141445.309-1-fff@bareminimum.eu>
MIME-Version: 1.0
Authentication-Results: mail.nerd2nerd.org;
 auth=pass smtp.auth=info@bareminimum.eu smtp.mailfrom=fff@bareminimum.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_071550_721283_F8203B5E 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.251.171.25 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] vxlan: remove mandatory peeraddr
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

vxlan can be configured without a peer address. This is used to prepare
an interface and add peers later.

Signed-off-by: Johannes Kimmel <fff@bareminimum.eu>
---
 package/network/config/vxlan/files/vxlan.sh | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/package/network/config/vxlan/files/vxlan.sh b/package/network/config/vxlan/files/vxlan.sh
index 7b1c703..bdcaa62 100755
--- a/package/network/config/vxlan/files/vxlan.sh
+++ b/package/network/config/vxlan/files/vxlan.sh
@@ -55,12 +55,6 @@ proto_vxlan_setup() {
 	local ipaddr peeraddr
 	json_get_vars ipaddr peeraddr tunlink
 
-	[ -z "$peeraddr" ] && {
-		proto_notify_error "$cfg" "MISSING_ADDRESS"
-		proto_block_restart "$cfg"
-		exit
-	}
-
 	( proto_add_host_dependency "$cfg" '' "$tunlink" )
 
 	[ -z "$ipaddr" ] && {
@@ -85,12 +79,6 @@ proto_vxlan6_setup() {
 	local ip6addr peer6addr
 	json_get_vars ip6addr peer6addr tunlink
 
-	[ -z "$peer6addr" ] && {
-		proto_notify_error "$cfg" "MISSING_ADDRESS"
-		proto_block_restart "$cfg"
-		exit
-	}
-
 	( proto_add_host_dependency "$cfg" '' "$tunlink" )
 
 	[ -z "$ip6addr" ] && {
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
