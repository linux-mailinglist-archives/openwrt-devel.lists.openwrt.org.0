Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B351CF4737
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 12:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yr0NATLGCOed89bnGQlM7AQkktpiB2Ixc7KcRw/Czdg=; b=NJN9dd9OyDii4e
	PKk2MbZsbafzBXYM+0VDtOtfhnh+nTNgmbSq6BltFUYrJUrjtJX9tXaBXPqRXg+kmFgN7eA4bUMkD
	b3Ro2IAkXpDeZPeRKmrLxxJPoD7T7n4EhZFCNStFEGaq4CSiXh21VeCxOcP47L3T0DUc3YKyIWBtL
	/qGiK1UF3l2PQiUVlReto+PI1AgSB4giQVkoM+APvkJ7/1SJ6JEEpibQYiSrXVZ5kodE3eLcj9LGP
	atJBFCDlxE8mzxm8qjEAzSKfD9MEORzTosu1t7T/Yo/EVDrGKjfrBDtDyXtVVDip3bsKKX860dNZx
	mhu9ESX2MJOeYDp7F6qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2lh-0007GO-Rj; Fri, 08 Nov 2019 11:49:33 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2l5-0006mb-0P
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 11:48:56 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MgNMV-1hzkCw2SHX-00hyNa; Fri, 08 Nov 2019 12:48:45 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 12:48:40 +0100
Message-Id: <20191108114841.1343-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:L64PlSYcotIJPJ2rcS6y7qB5HW2DnCElU33q+sWL40VIu0EA/zj
 LYRbSsyzrvKZrqw4qVxamVAC7tDplwk/p42PQPmnt2B4Yhug2eoFNrJ1uBui4YrcD6wth7q
 h+RbKjQnz2E/Ngru2Es/YRM/pI9jH4gXEewCLK3bnvQY82gqHadfxv/hG2Y9Qqy8xyHHlFD
 FuxtwD/ha096iINMwBnkQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yZe6ndrKtso=:b5/jimL9JPGy2uBnQvrTYb
 tsWrsAiZS9sCuLFeFi6+jz53LlqLsQOXwxwxn4Q699nCfHxsjSuwQ3YHNFqnPNDYtSGN/qm7o
 VR89rJ95zXt9g4th8UJJ7IUZ/GHUco9mLrfO1UYRDC+2D4g5va1bCkql+5EyudM1HI+l51iN4
 rriwr0Ula7DIgeHq1++dWEX0PNhTWgvsPeL0PW+OxT/XidEB2GND/iIPdpEQfjuCu+fdk+kQc
 Fr6v1+dBPYUkOE69fKG92Sqvh5hLv4Tq4v9LQlcJJr/7SOYlut35gIDQopW8S06x1+wx3WX9Q
 J9+sWzNGKQyo7OXGjZmQmD0Vmxlec8FaoUhc/WF+tb4jjynR16O6pPtBvvDsfta89hzSLsB2r
 teyCll+tNCOhOfyusCcTnud/zIppPw6hqClDO153KZh0PliwyCISO2XJ6qb0x9NzfinWkBhUg
 +hXF0XOSqx/cM5MDhRaEOBcXsh7TL0o3zAn9CzNZ2dlG7dbbJhRoktRGEKiI+CPvvmieKn74E
 JxDAjRw1aFHWEl/EvamnJz+TCU5ILI2TTecvlbYVD8YlTDUDbRj/v19LYB6PA1POsxw9DLaxV
 +kgrO5FZJLIm2TPLHiWy/8RpUA6MxqgQfhTj+Qtt5MJFVIt7FV09Dr28Qdog9A31rDu5xShvr
 P7RwgaukIBGcHRxzbyZoQLJ6GLgzevOucOiSXlHTrO9stmSel+zfzv3KUSx5i+buTBkCH8NAN
 f9PJeJAkXLvokZSQj/hfynjTcmhIpDyYcQKEXLIjBt4YKs41bTZ/LGRZ04oa2dGDhwVN3GCMG
 lAcJonL1mhsDpqi19/rt/OkXSR7NOfeaBSgJvyJ017ubrzKW1GCOq1TOWRTDWwEadKHt943Ks
 pkEucYlAhNA2SPlqSffFyEmp1gcTZrCxABICD2XEk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034855_352454_9AB7E0D7 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: rename hostname with EUI of
 mac address
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

From: Rosy Song <rosysong@rosinson.com>

If a label MAC address is provided for device, system
will rename the hostname with OpenWrt_<EUI of MAC address>.
This helps to distinguish between different devices.

Since it's no good idea to nest json_* functions, this code does
not use get_mac_label directly, but only get_mac_label_dt as
external resource.

Signed-off-by: Rosy Song <rosysong@rosinson.com>
[rebased on updated label MAC address storage, extended commit message]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/bin/config_generate | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/package/base-files/files/bin/config_generate b/package/base-files/files/bin/config_generate
index 3ca035ca8b..b473eba9e9 100755
--- a/package/base-files/files/bin/config_generate
+++ b/package/base-files/files/bin/config_generate
@@ -3,6 +3,7 @@
 CFG=/etc/board.json
 
 . /usr/share/libubox/jshn.sh
+. /lib/functions/system.sh
 
 [ -s $CFG ] || /bin/board_detect || exit 1
 [ -s /etc/config/network -a -s /etc/config/system ] && exit 0
@@ -253,9 +254,22 @@ generate_static_system() {
 		add_list system.ntp.server='3.openwrt.pool.ntp.org'
 	EOF
 
+	local label_macaddr=$(get_mac_label_dt)
+	local hostname
+
+	if json_is_a system object; then
+		json_select system
+			[ -n "$label_macaddr" ] || json_get_var label_macaddr label_macaddr
+		json_select ..
+	fi
+
+	if [ -n "$label_macaddr" ]; then
+		hostname="OpenWrt-$(macaddr_geteui $label_macaddr)"
+		uci -q set "system.@system[-1].hostname=$hostname"
+	fi
+
 	if json_is_a system object; then
 		json_select system
-			local hostname
 			if json_get_var hostname hostname; then
 				uci -q set "system.@system[-1].hostname=$hostname"
 			fi
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
