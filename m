Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB28B8F7C
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 14:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MURv9XDBAjIsa+gc/W6NN/npUolUVz1SJBPpSrSpQwc=; b=uLLS2QOwA9yatA
	y6NHPeTsdK6Joavbf6PdFY/K5HNyt0T6vqXeSscWr49Dmh33qePn3D++EDDJ5MPEZlME923jnlBvL
	Ob1jeAWsS3+VVOzU0xilpCcQ2oIoydKuWJDKuewuRJtk6qKa9TXers4jM+Dz0bYGpcKFPjnV4sGpP
	vKRGt9hahaudgklUEajY/WiL0A2y9TKybS0GlijwYn86QQMWutV4Drokzm5ugsPQhCd4/DTuxJcfu
	vTnSqFXxqCcyXV8Vq1fUJhA/F8CSZS72JvpvP4Ri7enRpGAWkEnfXUYxkthuOLaSZrkzrLJghHCea
	og4q5bchBrA+UC9UC96A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHho-0000h4-Pl; Fri, 20 Sep 2019 12:08:08 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHhh-0000gd-Gu
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 12:08:03 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M3loZ-1iC6uq0hQB-000xRx for <openwrt-devel@lists.openwrt.org>; Fri, 20
 Sep 2019 14:07:59 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Sep 2019 14:07:56 +0200
Message-Id: <20190920120756.3996-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:9+DnTg6GMuqqYyPHPgX8x3rdRcrK9IqJUm+EZpVjTglUBwTZ54E
 t4hTHlf4Vz0NLBxGEq9cuwRybyQBxxj7aKCv6Wc6nOJA37katKa+X+HkJsMHxx4NqxY8ajX
 iaI3OmX7YMelef1S4X7l2pDlcsRyx9ywsLnUZCuTW3pv0NR0gkPcKMO8k6spoe4jSvjyn5/
 f2AuV5UNRN0gw5oTDUAdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GSDHqMcFEEA=:mqttaxzjhDHhaCC0jjQ/+3
 LJpX1jBEfrUXHmSyIdxEHoPNiZdqLdQEeRzjT78nGxMCD8lhPRSyyoogmAUuLGVyqfs2QvoxS
 zQ1BDlvJjI1KLeqFhyPkrz3DKb4LLLKJO/8FT9+FiR5sBf3nucioQ1Ni47AwQNfO3Zdqbyw1F
 JYm0nzQpdDluvV3jWpd4roqSEc0nxu8leWxsbx8FEyvlpw+UGaFuIfY501IiWcsqk3iNGxe3I
 dSgQ2ulVvTW63nBcz4PDvyK4xcXXd04ytc8Kzlfg2Nc1GkKPC9tN0GeQFiZqpTp10P+UaMiVd
 Y9zihp8je+U10shbPljQQhxs0U2Ky3SBElpTSFj0uPoLkqLWpFhdYTyY+5P5j3begzN7oiIhZ
 uo5qOqRrCheUFQvFoLVMJiC5jbgrznVvEOXjk8bmQ4JUL/oL3P9ZcZWoIzelymG75cQfLfiCQ
 PVRdmpz2ey6CvdmOo+Tv7kP34ijAgA1nyhBntl5MTVMe9vVSXoHemEE67Ex4967b19YV6TIlw
 FJp0H2HbsDa3OxP5+ufcMj5d00GDQOYb+yGYb2ZaA8dY0pxcadsndRBWJZ121gJtCN1lZj8T9
 yYMozUQ7V67dT3Wp86++ZEsIHdK67vpU4xgrpBS0oeex0w5+OloPHkALU9L/ar3Oez0lAFrP3
 6OiordqqFjmkF1gdz46vppiXYkCdzsleD547OmuxcnR1knQvsj4qujTOpEdLXGFjR+CttDifF
 DQlqaHuojSQZOP5pWzJSY2GYJyj/EqNY7zR5/nDRsdkzC32PjfrmJKJq1JWHWuL8KOI/V4aT1
 bSgHIyKbkNN5SBKkMZvtlMz+tM11zE9IACALAFP1KvZt9G10I/vFsn3aGj6HGWoBT7Sz/QkTR
 qq6jENgsso9OnI9Ch0/HRjosXFVOHhJBeRTIoOw8k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_050801_857876_BA5A3883 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v3] ramips: replace backticks by $(...)
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

While at it, remove some useless cat commands and deprecated
egrep commands.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v3: rebase
---
 target/linux/ramips/base-files/etc/board.d/02_network       | 6 +++---
 .../base-files/lib/preinit/07_set_preinit_iface_ramips      | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 7ecc11b37b..63644331e5 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -14,10 +14,10 @@ ramips_setup_rt3x5x_vlans()
 	local wanports=""
 	local lanports=""
 	for port in 5 4 3 2 1 0; do
-		if [ `swconfig dev rt305x port $port get disable` = "1" ]; then
+		if [ "$(swconfig dev rt305x port $port get disable)" = "1" ]; then
 			continue
 		fi
-		if [ `swconfig dev rt305x port $port get lan` = "0" ]; then
+		if [ "$(swconfig dev rt305x port $port get lan)" = "0" ]; then
 			wanports="$port:wan $wanports"
 		else
 			lanports="$port:lan $lanports"
@@ -503,7 +503,7 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "7t@eth0"
 		;;
 	*)
-		RT3X5X=`cat /proc/cpuinfo | egrep "(RT3.5|RT5350)"`
+		RT3X5X=$(grep -E "(RT3.5|RT5350)" /proc/cpuinfo)
 		if [ -n "${RT3X5X}" ]; then
 			ramips_setup_rt3x5x_vlans
 		else
diff --git a/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips b/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
index a395956d04..003a4dda7b 100644
--- a/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
+++ b/target/linux/ramips/base-files/lib/preinit/07_set_preinit_iface_ramips
@@ -4,7 +4,7 @@
 #
 
 ramips_set_preinit_iface() {
-	RT3X5X=`cat /proc/cpuinfo | egrep "(RT3.5|RT5350|MT7628|MT7688|MT7620|MT7621)"`
+	RT3X5X=$(grep -E "(RT3.5|RT5350|MT7628|MT7688|MT7620|MT7621)" /proc/cpuinfo)
 
 	if [ -n "${RT3X5X}" ]; then
 		# The ethernet switch driver enables VLAN by default, but
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
