Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BFD18B2E5
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 13:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JlisOpOiAqEI3wTFqFDja3ZaN1XlKNUUodKEPT7BZMc=; b=pOyLvy0TABXHYm
	yGbCf7B5mvVIQYotjslJ/qqOSwZrT7vFFZmLA4shRLuZoAQyLt6J+De3jZn1cu0ixihNv/+rQSBFo
	gaFNGgDk3LKwSwZynNltvIEiMl+HKV0ln6dLBO9jTQbi0vgO94mualtW2VzCvTJSLMqeeAOUetUmD
	4xfFfJTMxMK0y+4JnlyTRT4KHNVgHLeE5VmROqUrC+v8FzcZjmcY+26Bhian/dSaNwUv0lP+E9xtN
	GpGzgVsd7D79FrX+e9Bw0oN3pvMdCaa0TEU3PljThFOuImQJOtMBqa82pNCdlGtgxLHy9iGPehOaW
	sqKqnyPL+EfDXHlgsNww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtu0-0002xb-7G; Thu, 19 Mar 2020 12:03:56 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtts-0002x7-IL
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 12:03:50 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id D538B204F5;
 Thu, 19 Mar 2020 12:03:32 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com
Date: Thu, 19 Mar 2020 13:03:20 +0100
Message-Id: <20200319120320.28651-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_050348_761472_7CFB05B3 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [PATCH 1/1] netifd: add pre-up/down post-up/down
 callback handling
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

In some situations it is useful to execute callback scripts when
manually triggering an ifdown/ifup event via the CLI/LuCI.

In my case I have a monitoring for a cellular connection.
If this fails the command `ubus call network.interface up` is execute to
restart the connection if a config option in uci of the interface
(keep_connected) flag is set.

But for me to disconnect correctly I need to know about a user
interaction with performed with CLI/LuCI.

With this change we can decide if this is a user interaction with CLI/LuCI,
because with the new callback mechanism I can set/delete a uci config flag so
that the connection should really disconnected. And so does not restart on a
failed connetion tracking again because the uci config flag is not set.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/network/config/netifd/files/sbin/ifup | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/package/network/config/netifd/files/sbin/ifup b/package/network/config/netifd/files/sbin/ifup
index 5515b91f76..c92dd46550 100755
--- a/package/network/config/netifd/files/sbin/ifup
+++ b/package/network/config/netifd/files/sbin/ifup
@@ -6,7 +6,9 @@ setup_wifi=
 if_call() {
 	local interface="$1"
 	for mode in $modes; do
+		env -i ACTION="pre-${mode}" INTERFACE="$interface" /sbin/hotplug-call netifd
 		ubus call network.interface $mode "{ \"interface\" : \"$interface\" }"
+		env -i ACTION="post-${mode}" INTERFACE="$interface" /sbin/hotplug-call netifd
 	done
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
