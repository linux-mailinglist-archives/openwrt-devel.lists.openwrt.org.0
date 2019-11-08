Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F168F4736
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 12:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+qfS6RcdvaCtXCgJCQn4Uwmt4QZPXIDHji8GNzn9N0=; b=neBSmhnUd/5nao
	4EOCVrJ4F3raplAXkZ6h5XoOxqOLM1t7RlbX5JMWPuQ49naXv9VkdH9nzsERjSwZl9hcM5sFQqAse
	1z+nzb4hkcy2RjbvJYvRgXynTKP72fk/jMeTIP135mqy/OfqAIs9bkIFWWgRK60LJucB5JP62axAz
	tH4eD3c7dS15y7mBoe2a/1yi8Bgl87RZ8m3A6T8Hsj20f0iV83vkyfSlQIkLfrum9fmzkcazseK5t
	DMI+MGn3VqpxD35wpzE3pPO4JuJNsSAY3hj5kFZ8P/RUzugRrGs7ECbQTcbS0rCbrdxCHKBvFaeTw
	2JRwFUWgC3M2FDxm3/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2lR-0006xg-Os; Fri, 08 Nov 2019 11:49:17 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2l1-0006ks-O3
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 11:48:53 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MeToK-1hssaf3AUm-00aYWj; Fri, 08 Nov 2019 12:48:45 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 12:48:41 +0100
Message-Id: <20191108114841.1343-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:s8uh5znUMJ/B6Fg1LeU97M+w/5WX1FNPDQiWpvm9uTE0jbE/VAe
 vqYtZaFvAARGXRF9V6QvpPa1N5knw5CVMsbBbkru+nraargBq9Mi6KOdinFcOr/UPkbfV9p
 zmbxhox/WYJP6Vfa2/VuWU6XqgbCboqWgd3HP7DlwjauNfW2bmQ9qKAGzTasCEOZm880fPe
 pjOFT0gzTxujQ9QP7oZXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S8KPSyiROsA=:WTVBwje7dDwQ2e73pZ1Tua
 88Yc3UqVhG9WUo3UGGSLLEqinhG2xIe9L3ZCVrKC9dUUCaQ+/nKd9nv5UY8XVC/bZ68ECewXo
 DUhB7p6LbiNsCTlJIdlQLfnxZoG6ORPinNPLfBZT6NYxVl9XArd/9TGXO01mcu1eMWPFgnlvW
 V8B471RvvWF1k0N9LfxBUXKEa/bBUY37YVKJJEq04QE3alXn6O915Ci/5b/CJj2OwQO9UsTmL
 xhsR5Lw2AJL1Dsco+vQjrcslDUqns5W7wd9RUI/QbOMh1fdTHbdPTkq5lhzR604VyFWthPGB3
 BzowoM7f+JVKdUwO5Z245DuzeVNrXmzlDXq9vLTYiZI5kIoGc4YAy5pPI+ReDHdiCUY3rnJ2u
 oHz51pOFl3wdSiWax5WgnYBgC8oxHPy+lfXMZNS6NjMWwR17kRNrPRp+DwkDkVfRcWqL5oWVG
 4VwXL3bgs7KjS0yI2lAgT7/uVfQ08N8J4mrgBZZ3IklzSnlx6te2PTWSpacpRJYFnO7ukIwVY
 iFe+N/T8mf2WRl4u6kdnC7Vxj5MNqV7iSGsI7iWRQZ+y65RHhYSoN/gwe644RSgRuxCwYcba0
 nKNwn/rxKGcKYJnKNui+p3JMIRhsY4ZyvoMtrXgSLO3vuqKNqdSCm2h8j+qJZJB1CWDtQfP5/
 gMxq4xJRCZvajmbJHuSps4o2n/3cXzHLawhiShB2peCs4UtxCn5JMZviJI3NLZ6t0/AfGEymU
 oighOkeJEBqeBN2Oh9LPerdsmWhnAd9frMISF/QAmWfOqSpHoa1Y5H0eDy+WaUP5bM7G1rAzo
 P75NrBgtqD5eYtUQqM1kRVaBhrOXrkm/0JgYBE+oWrAwykkNIZOXCJsrk7F/D5ggteS09QVbu
 bdybIz6S7KQacp8VQNlpbTRdO0HkXzNuWGt1o+78I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034852_072268_34CCC4B4 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI of mac
 address
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

If the label MAC address is provided for a device, the default SSID
will be set to contain the EUI of this address, e.g. OpenWrt-ddeeff.

With multiple routers, this will help the user to identify his device
based on the MAC address printed on the device.

If no label MAC address is specified, this will use "OpenWrt" as
done before.

Using a uci-defaults script for this is necessary as mac80211.sh is
executed before /etc/board.json is created, so label MAC addresses
set in 02_network would not be available there.

Suggested-by: Rosy Song <rosysong@rosinson.com>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This effectively uses a workaround to prevent SSID from being reset
after upgrade (match SSID vs. "OpenWrt"). If there is a nicer option,
please propose it.

Another option for this would be to explicitly mark the wireless uci
config as 'default setup' by a to-be-introduced option, which is
to be removed in a late uci-defaults script. This could then be
exploited for several other objectives, e.g. further config-dependent
WiFi setup tasks.
---
 .../etc/uci-defaults/15_wifi-ssid-mac-address | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address

diff --git a/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
new file mode 100644
index 0000000000..aeb46e39c0
--- /dev/null
+++ b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
@@ -0,0 +1,22 @@
+. /lib/functions.sh
+. /lib/functions/system.sh
+
+set_wifi_ssid() {
+	local iface="$1"
+
+	[ "$(uci get "wireless.${iface}.ssid")" = "OpenWrt" ] && \
+		uci set "wireless.${iface}.ssid=$ssid"
+}
+
+label_macaddr=$(get_mac_label)
+
+[ -n "$label_macaddr" ] || exit 0
+
+ssid="OpenWrt-$(macaddr_geteui $label_macaddr)"
+
+config_load wireless
+config_foreach set_wifi_ssid wifi-iface
+
+uci commit wireless
+
+exit 0
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
