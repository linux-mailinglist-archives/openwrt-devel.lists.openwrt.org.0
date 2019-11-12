Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51585F9EA0
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 00:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PDDJtEUeJr1XLR//R/fqimmIR92FMAk2SpLSaAHtq9o=; b=sjV1/X7QURTTAA
	47PIDXOx1Cy16RK47dKnzK/zyVYgq7iNhR69KyWeqRLz5EI6+YGTzTLmPTqKoi1RAkoKPRP2kX5BY
	rGPnHiBq20oo+NE8xmOhnKUQCH4B692GucMFnh71SvCUFcDRcZ3z43ix/PFFr+r1l3XgMavh9CpjU
	oREjMf6O/vlebkJ0nyAOTTiTYHkYVxWNVSY8vE4bSFp24m7MJY0XVWByHv46N/7a4uoDWc87RfqoP
	kMRP+iUPsb1STxtKw0xd+g0orRjqh7XvsqrZyhpk1hJNtliEYGXmKgO7hZEtT6O7VFMZUQzM3Xnvi
	fHIQ+6t4Yd0hi0oYpzMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUg2K-0002Uk-BK; Tue, 12 Nov 2019 23:57:28 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUg2D-0002Ts-3G
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 23:57:22 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2mS2-1hlgd32DiW-01399D; Wed, 13 Nov 2019 00:57:13 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 00:57:09 +0100
Message-Id: <20191112235709.60227-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:BGxgnBm2UCVDtLW92P+q9jBo2nQwKRXljk/zJy+OOEW2XdiaX/6
 tKBNLhp9M1VJrWE57LDsHQ4QAUFhbHZ83hQ4mr8aSoVyyc9sMrOpD5e2/F118Knv4EtZnCs
 t7fugFgK7PkhbSXbulR0sywIZT1M1YrMDZG2Z4f6GY9e19yZEXKLMIfcIGkRU4n4Wb5b8mB
 Do+CyvnE0pHixWi2zOYnA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GJRuUhzbSSg=:3lgMlN1x6qOg4vjfwwuZnl
 lYbFw5HFpjFfqdh80X2jgHTfWr1Cw+ydu4lKzmObaojiEVp9rVf9LnW9W90cd1Pt3n9Uu/JRY
 PiwPd1rSBH0tE3cB5lhHjqHEt17cMcJirxMR+pODTEY5nbBmWxicwEa7G2U32dIJLTzDVoL3X
 Y8P82taReKQbfAQSE+5AFlqhndY5z+CgJbsRoHogPZQwkySBK5AjBEla6XRrweL0tT5TcmPz8
 /D7JN/Iymn7VbtaHdX0if+zSR7IkF/XuA0IIaJssoX4R0Tetu3cpBAOmjTjEDdjn9kotD2AQH
 2BRsHN06OxKaT3iTgjm4ls80FsNLKXE2A5IZ8vJMJyvA+jfwlD4gEPMJerlQlBQOX0WV0FKhb
 c2BAUktde972C3iN2NZvKXtpfJg2Lzb/HLnRQF3Be2qQx0C3ABeCCV1s9pGWje2aabHAkGvLS
 XQWrenN26kWlsD4TjBsGmcU6p3ZMBcXriTLAz2w2mNCgvT/XO+oX9RnMiH2ryYcCSUxjrYIFy
 MwTZgWsR2Rrk4/u9XvEs7HCW+7Rc23SFVOsO8G37Wiaihr76SetTezVPtUW7oIgqT4jkbVhYL
 Wz1CWE0BVVi2X1jb/x41dYfQ6bVXiax/HKnfW1+dbudi5VGsszV3C/gKUdUrDlZUwV5SVx4PK
 0Ugji/N43cXbho6/n2nhYxhS8Y34BXe6kpKpTz/EQCueegt/HrcZ+K61MZY73EG7RBDb7LTPG
 3nK8agWhfWgYNz7DRNdoguxz7RhgDK4b4Ftp6/3aTh/GK2kMZEi+IJcdtdclLAfFM50q26CME
 ssnDXECBU+GCs8D7A0gLE0kR/xqCVgHe6rOqH+QKnA18p/2nSuqgpFgbIfbD2bA8Qvw/6xz0x
 oiIIRk9P+1j65F6p9+6tw997hY/yT+IKhzB/NX4os=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_155721_434969_1E76A83D 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: config_generate: split macaddr
 with multiple ifaces
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Sungbo Eo <mans0n@gorani.run>

netifd does not handle network.@device[x].name properly if it
contains multiple ifaces separated by spaces. Due to this, board.d
lan_mac setup does not work if multiple ifaces are set to LAN by
ucidef_set_interface_lan.

To fix this, create a device node for each member iface when
running config_generate. Those are named based on the member
ifname:

  ucidef_set_interface_lan "eth0 eth1.1"
  ucidef_set_interface_macaddr "lan" "yy:yy:yy:yy:yy:01"

will return

  config device 'eth0_dev'
        option name 'eth0'
        option macaddr 'yy:yy:yy:yy:yy:01'

  config device 'eth1_1_dev'
        option name 'eth1.1'
        option macaddr 'yy:yy:yy:yy:yy:01'

The updated node names are only used for cases where more than
one member iface is specified. The typical single-ifname case
won't be altered (lan_dev, wan_dev).

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
[extended description, changed commit title]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

I plan to also backport this to at least 19.07 and 18.06, as it's
essentially a fix.

Note that it actually would be easier to use the new naming scheme
consistently also for single-member lan/wan. I have not done that
here as it would mean a (cosmetic) change affecting many users,
while the changes shown here would limit the new node names to those
users actually having multiple members in lan.

From the perspective of tidyness however, it would actually be
preferable to switch to the new syntax entirely:
- It will only change for new installations/sysupgrade -n anyway
- It is more logical to extend when the user adds a member to lan
  manually later
- No duplicate setup code
- Uniform names for device nodes

Please share your views on this aspect.
---
 package/base-files/files/bin/config_generate | 27 +++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 3ca035ca8b..874ce289cf 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -85,12 +85,27 @@ generate_network() {
 		set network.$1.proto='none'
 	EOF
 
-	[ -n "$macaddr" ] && uci -q batch <<-EOF
-		delete network.$1_dev
-		set network.$1_dev='device'
-		set network.$1_dev.name='$ifname'
-		set network.$1_dev.macaddr='$macaddr'
-	EOF
+	[ -n "$macaddr" ] && case "$ifname" in
+	*\ *)
+		uci -q delete network.$1_dev
+		for name in $ifname; do
+			uci -q batch <<-EOF
+				delete network.${name/./_}_dev
+				set network.${name/./_}_dev='device'
+				set network.${name/./_}_dev.name='$name'
+				set network.${name/./_}_dev.macaddr='$macaddr'
+			EOF
+		done
+		;;
+	*)
+		uci -q batch <<-EOF
+			delete network.$1_dev
+			set network.$1_dev='device'
+			set network.$1_dev.name='$ifname'
+			set network.$1_dev.macaddr='$macaddr'
+		EOF
+		;;
+	esac
 
 	case "$protocol" in
 		static)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
