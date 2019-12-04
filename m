Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A25511294E
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 11:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W2BsXWe0GO2Ds1ML9iDGqDVZFwA7TH8AqB9n34TkrtU=; b=Ju6CZa8OebANAO
	qdJiyNkdpzQ77rpttVMRYPyfP2CKVY76OEiOev6CeQmlNM06u8EQrp3yIGM67gnE9aZqOuFMQOoQZ
	ujzZhzt/RdIZ0CmLEsbalTe/7DXAF2zRmhYmxJUAqFwa7GJfVppUYFPGVYbLOIU3DOtBZUly97W2T
	5VEWq2CaVagWHgHBw4qaXMMos0Z6QUg5DyXcGSK2dw7TdQRd9dykYPuRIcLjHENvxEm9V83sDfQuM
	jcgclL/ZcYmWYd4amkE3aoO1osli59b5D6geuL5LygIRJFAg09ERNXAsCLqSNFA3j899gCxWLNttA
	A/wfPZ7C8N8ax4QzAt5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRwH-0006kT-Du; Wed, 04 Dec 2019 10:31:21 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRw7-0006jR-42
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 10:31:12 +0000
Received: from feckert01.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 70B48204BB;
 Wed,  4 Dec 2019 10:30:59 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com, Jason@zx2c4.com,
 ldir@darbyshire-bryant.me.uk, daniel.engberg.lists@pyret.net
Date: Wed,  4 Dec 2019 11:30:47 +0100
Message-Id: <20191204103047.17139-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_023111_318508_FEDB9746 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.3 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 3.5 TO_NO_BRKTS_DYNIP      To: lacks brackets and dynamic rDNS
Subject: [OpenWrt-Devel] [PATCH] wireguard: skip peer config if public key
 of the peer is not defined
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
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

If a config section of a peer does not have a public key defined, the
whole interface does not start. The following log is shown

daemon.notice netifd: test (21071): Line unrecognized: `PublicKey='
daemon.notice netifd: test (21071): Configuration parsing erro

The command 'wg show' does only show the interface name.

With this change we skip the peer for this interface and emit a log
message. So the other peers get configured.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/network/services/wireguard/files/wireguard.sh | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/package/network/services/wireguard/files/wireguard.sh b/package/network/services/wireguard/files/wireguard.sh
index 4c811c6ba9..f89be583f7 100644
--- a/package/network/services/wireguard/files/wireguard.sh
+++ b/package/network/services/wireguard/files/wireguard.sh
@@ -42,6 +42,11 @@ proto_wireguard_setup_peer() {
 	config_get endpoint_port "${peer_config}" "endpoint_port"
 	config_get persistent_keepalive "${peer_config}" "persistent_keepalive"
 
+	if [ -z "$public_key" ]; then
+		echo "Skipping peer config $peer_config public key not defined"
+		return 0
+	fi
+
 	echo "[Peer]" >> "${wg_cfg}"
 	echo "PublicKey=${public_key}" >> "${wg_cfg}"
 	if [ "${preshared_key}" ]; then
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
