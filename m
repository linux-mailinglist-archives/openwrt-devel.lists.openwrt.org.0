Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6C41CCBA3
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tFwHT88k1y3hoYv3s/trV8fXoh2dsqmI8VXiGUB8aN0=; b=gvSP0mjDU6oQmd71xjF2Vq0LlF
	c0u3uhsqLtzTiMUgt/KIf40dbYRIMiltLb1Oz/2RQKymyIdv4+/VpLaP4dgfSC8EAst+EeZcAfwKN
	0cZUWQe1n8UEmfhYWJKkPYEh8jD9GAwm4p+dUXEMKrvXuaLLJmW91NtGdMrq9jm4/mDL1nO2Lte2h
	zyBqWMU3IuOT5EBWclvpOOUcIGc9yOB5mte/6aDLw2hej2+V7/InTUME16JcEuLo5cfKegrmhDtIp
	2nFODVf7jgMVl2A64hxXc9XZJlbsPFvUecGTJxTqo+q5BBgqJZxJdShh0xjRqblndj0CfRXs6X0Hc
	/SCk7QGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnGz-0007Li-FN; Sun, 10 May 2020 14:49:45 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG5-0006CK-HI
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:53 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N0o3Z-1jDM8E1NlV-00wkPU for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:48 +0200
Message-Id: <20200510144754.10751-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qxXnBrkYd53sqBWAAVd2+kdtXWZ5dovFy+9JhhGwOr+uDP0vfIy
 IuHQZSkxpmWLV51PLnHhui1nInfRTTgVn85et21P+WyXehxzL2c0TZN3R36Fg6Y5pBFcHoB
 8Ghhe8hKgdFl0WMEjotGaw7gUTgR8tN1Q2E6GZkHZkKRnyns4tO3QRJAJUrYF830fuj48Tr
 2xDGl+foYto9d2mBRJr0Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IumUyHFtkJg=:JaAHnewUF7YF3AotMLY0QT
 PgkrLZ1TsA1wrsCnZS4fjSFrUfrZIsbsHp6wVQF7Q6zHk8nj4jFue/xkMwpfZ4QLbnoSjq2Nt
 MZUI4c5bjZ75O79/4SSwhDgAl2XHOeIt6lZ8U7Wmc6sIXhdLuXYV/N5NPwerT48AcmXmkov/c
 c2U7mPlxI1yQsDGLc1CgSIyn3OSMPL9nlz+PYbao8TyrcOV1k1bsTdP96ZKhKXCqeuf0Pdsky
 ba8Ge6gFKby0c2MFiXZTo4lqecZ/CdgbYsgZQEAT8f+tx760gNn2e7Bhasf9lVdq/0REHSZDL
 Zk6T17yOauHJYmNgXFF9FlZBCsLJS29JbPYOFtXbMQd6lhASrFUyLYCsZhFjRi0XX+xbcJk9W
 p6JyGPHrbChBJNLXZWOIM/d/NiTBmL6wKeV3mI0qo3tuqGFVweDf20/9yiKvJ4XijUtyKkDJA
 0GlFhRXnPr+rZ6mdaVXOfv7ginxeY5ribEdcsMIVw+DUXbf/AfqNSmZFYxEIfeUxXP4wmA7M9
 RFa3wjkP7ll2hzE65Ukat7tE0Qq68T0xMmLzNueUaWH7MM6L7rYLnEcVE4hF97VYSUT0jznaM
 C/TEZhfeMKUjkGJBZ8OSyDMLV9L7goMkSf5z8KNp3368p5nIyVEXQK5YQYjWFv5JBm8KGFwKT
 m8Wc/WgFnFFVyjI1E6VP0q/fUPxkuPaBytMcFsKGsKmowszjzTS9faatXXYLoDxhT5IJrNRa/
 Lg+X8S5MLiKrvMCFXsLVTErim+HxGtHiX3gid9nwfxDiGZDgah27PGrClV+xyeYXTr9g5KgbI
 Rpe8KBuh+NopZhwwQVKoLTqQcfr7BKrWl5ZFJWjWPsW4navNEp1YNhBcQMkXjfGDqdHVkQ6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074849_869903_BD012C05 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 04/10] mac80211: replace backticks by $(...)
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
 package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh | 2 +-
 package/kernel/mac80211/scripts/import-backports.sh           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
index 88751ce3cc..7ca138c68c 100644
--- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
@@ -1040,7 +1040,7 @@ list_phy_interfaces() {
 drv_mac80211_teardown() {
 	wireless_process_kill_all
 
-	for phy in `ls /sys/class/ieee80211/`; do
+	for phy in $(ls /sys/class/ieee80211/); do
 		mac80211_interface_cleanup "$phy"
 		uci -q -P /var/state revert wireless._${phy}
 	done
diff --git a/package/kernel/mac80211/scripts/import-backports.sh b/package/kernel/mac80211/scripts/import-backports.sh
index d056eb6d04..35aa411e6c 100755
--- a/package/kernel/mac80211/scripts/import-backports.sh
+++ b/package/kernel/mac80211/scripts/import-backports.sh
@@ -70,7 +70,7 @@ get_next() {
 	done | tail -n1
 }
 
-CUR=`get_next`
+CUR=$(get_next)
 CUR="${CUR:-$BASE}"
 
 while [ -n "$1" ]; do
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
