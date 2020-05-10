Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A1B1CCBA4
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TsqBo+RCR4krni/4g0j2PsHM1oYFAJgMgNKprCPUz3s=; b=s9qOIqLsGLt4N5AFld/fAZBWkh
	MYwxFKyjathbjE4+D/3baEQz47diZzIJTu6CSw8t/uMX5pKYIUWvzvCWa5qR2sQWNZ53Y5FcMwycU
	LyBwlCN0u21L1MYor1X/ahxiJXSZSOECwEpwBmZC2cY6J0cxZtPQk9ijJYBQkZrH9EWQ91+zgmlqQ
	Vge+jK3ktyGLgLwPDBgu44iAOiIl2xt8P/MGVFLUnH+y0FKVFR5xRWlKHPZiEvEJ01LFeSg14gOM/
	IfRLEQNEwkVLm+e2zgD1Mf7msg4CC1dexSjLpSmFUFLr8pCP2/pdEXUTIedfws1muU65vd9kQGfTe
	fNfTxSWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnHA-0007cA-Bd; Sun, 10 May 2020 14:49:56 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG8-0006CN-Ei
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:54 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MUok5-1jgyK22xtp-00Qguu for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:51 +0200
Message-Id: <20200510144754.10751-7-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wxOqa6K7Gt1Kq5FO3nCGKt9LaxfBgAX/z39Hjokm5MEH+Uq/0qP
 dgRf7Ye801oAI6Yx5Vtxx0+7uJzmLvql2oHKtviMpgMsLc6NF6mdutvYlrF0VOuBkvD75hh
 evA4+1084NgGZi2gQjjSjDuukOhW5qHfRkcxdG0nGlaPMItkgCIU3nFl6tFJQHQx+iDAu+d
 ooftJTZUClivv3zZe9zPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sEi4tKTcrgs=:MBcZt4bx+vqY81bFQ8r494
 /uukVQniIsVrBtoCuRXiaUeU0WPp2zY4MlI7eFyfAxO/ThDHEb0GqMKKOZMj06F73VqxUB3H6
 5Ogug9TMUfetdF8Y+MbmOqJVVQakB9Ha2ugvNWoWdiwyeZL13PB+luL3qOZLWJkpHHkVvvl/n
 tW5jsHaP+4RmcC4V7p6A6sFMTY87P2eyJTLbszQGGqI099xubZwccnoCOz0xU6rqUzK4tsMw7
 6Swh1etbycXSPkjXpvdV4RWub6GOSKLA8hcxC8R2ASs6BqZn/eP0d+w8jLsBtdD9SgSo6vTE+
 VWCFs7R3LlHRhGAm5p0G5aEAdLt/ZsTHVl7kG6KQrbMuNZsh1DtP3Ef6QmtAcM22BkSec9e+P
 QXFAeoJlxYlqSUlrUe3C4D2/GBwLkKokxAECxW9lGgLCVd6hqlRWPEfsdbIJVOcgD1uwhyusp
 OZopwicg9j5f/ZLacPUg1rLiy/A/DkujYvU1GF0RLQIBprtqfdklcX/HJFLzOu6ot4GZv45QJ
 1jWIAqiaTrPqFRxQtFkTvlk3gJyyEhjhFvgkr+9xRq/OwcsBoeAvw1lqc2ETFjAhLVQkkjrs8
 l+HpFuLP6wr4sTGHhdv7/XV2sUnJ5NW/IvJfNbKJAg9MqnvoncaLUgvcZ+6tq8/oaW3rnTiDQ
 AfrA99km5rVpQK98UrWar62L4ZZ/jRgSOXRaDXEwYlWcdMHYatEkx4s+kNv5UFko3y3bEUPSC
 okl9jx8PqlWiAiqTh3qm+k83tGgbGS6QCFDH97TN5aBTAdF7Lkqn33JchBXaBL9iHrjln1Dt5
 4uCeyrckXqonyiA9Sm3eNXsyQqQCvqyeul7uX/819mcIMJ7gD+eRfdncIpgaNtXC1UCX/jo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074852_793900_B23FFBFA 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 07/10] wireguard-tools: replace backticks by
 $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../utils/wireguard-tools/files/wireguard_watchdog        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/network/utils/wireguard-tools/files/wireguard_watchdog b/package/network/utils/wireguard-tools/files/wireguard_watchdog
index 5fbbeafec1..c0a5a0aa33 100644
--- a/package/network/utils/wireguard-tools/files/wireguard_watchdog
+++ b/package/network/utils/wireguard-tools/files/wireguard_watchdog
@@ -27,7 +27,7 @@ check_peer_activity() {
   config_get public_key "${cfg}" "public_key"
   config_get endpoint_host "${cfg}" "endpoint_host"
   config_get endpoint_port "${cfg}" "endpoint_port"
-  persistent_keepalive=`wg show ${iface} persistent-keepalive | grep ${public_key} | awk '{print $2}'`
+  persistent_keepalive=$(wg show ${iface} persistent-keepalive | grep ${public_key} | awk '{print $2}')
 
   # only process peers with endpoints and keepalive set
   [ -z ${endpoint_host} ] && return 0;
@@ -42,16 +42,16 @@ check_peer_activity() {
   [ -n "${IPV4}" -o -n "${IPV6}" ] && return 0;
 
   # re-resolve endpoint hostname if not responding for too long
-  last_handshake=`wg show ${iface} latest-handshakes | grep ${public_key} | awk '{print $2}'`
+  last_handshake=$(wg show ${iface} latest-handshakes | grep ${public_key} | awk '{print $2}')
   [ -z ${last_handshake} ] && return 0;
-  idle_seconds=$((`date +%s`-${last_handshake}))
+  idle_seconds=$(($(date +%s)-${last_handshake}))
   [ ${idle_seconds} -lt 150 ] && return 0;
   logger -t "wireguard_monitor" "${iface} endpoint ${endpoint_host}:${endpoint_port} is not responding for ${idle_seconds} seconds, trying to re-resolve hostname"
   wg set ${iface} peer ${public_key} endpoint "${endpoint_host}:${endpoint_port}"
 }
 
 # query ubus for all active wireguard interfaces
-wg_ifaces=`ubus -S call network.interface dump | jsonfilter -e '@.interface[@.up=true]' | jsonfilter -a -e '@[@.proto="wireguard"].interface' | tr "\n" " "`
+wg_ifaces=$(ubus -S call network.interface dump | jsonfilter -e '@.interface[@.up=true]' | jsonfilter -a -e '@[@.proto="wireguard"].interface' | tr "\n" " ")
 
 # check every peer in every active wireguard interface
 config_load network
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
