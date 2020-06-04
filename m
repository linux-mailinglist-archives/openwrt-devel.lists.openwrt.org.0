Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BB71EDBFE
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 06:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oKp4dm0nuPiK0rqreoD4grfghjR15oPCyuZzQA4JJZc=; b=Qka32iwKY80l/d
	vGsJRn87CXBs/XKd8IhNCeEwR3/yMCrhwU1EWMXBSbtDVFofveYIadGbuKNYzmqEL6jw9zsdQ4W6E
	9fX7uT6gnoFyTFtMijMYVCyARSA2eHrzz8sDdPFK3uAj+QD3qHLgQhXmKV7kmRKm3mW2H4He6qSm5
	ldGZ3IakTwGPOvCI/c1eNN0e/axed0hKRmKqwD1sab1YqEUlwVV01cwtoXGCRwqye7Ui0RheFaEmC
	rkhOzWF51SB+n9i0aP1Ohpch1uWTOL3vPBryQlsKh3HYpIGC9Nr92a2OVNvSTb2YG68TjPhcbDRSp
	uFhTfjd5KYHuVQj6N00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgh4N-0006Kb-IS; Thu, 04 Jun 2020 04:01:31 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgh4F-0006Hy-P4
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 04:01:26 +0000
X-QQ-mid: bizesmtp21t1591243245tbiw06b0
Received: from i9.localdomain (unknown [120.236.174.147])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 04 Jun 2020 12:00:44 +0800 (CST)
X-QQ-SSF: 0140000000600070I6F0B00A0000000
X-QQ-FEAT: RUJ7g7zpdcGfedUtFIzkB98p0aXYvgxT5/Rdxk7qj76nn/sHwX1j/PBvP85Lp
 2JD6BP5Mnq8cwxFXY2GfKRVwfF0UDUwiujlcNs7Kqxg3Bp7OH6Loe2v5cQE+cyTXv3A8Ir8
 SmuF+MKwoTR0vIkm9RaZvwfyS6PR+NMO1HEmIU1g/KWSK/Q52e3UMNoleBywa0dcoF2m7ee
 q6oHjRAk5Qu3vZcUrX87ZTAt3g4D7karZAjTguhNtioPH/esF0fAC0dE6pDG6s73iTCP+Fu
 OfT1TCZac7OY0X1VyE1bI+g0UoNjmpzwyA7GmEhzaUXrUq3XCOlwEdUsGbndwfZ9ZFWxFZx
 2UoEWuuFy4vd8aYeMUGXQrp7rxccQ==
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  4 Jun 2020 12:00:44 +0800
Message-Id: <20200604040044.5612-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.16.6
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_210124_184842_DCB7EA0E 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.206.16.166 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: refactor set affinity script
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
Cc: Felix Fietkau <nbd@nbd.name>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The current one only looks for mt76x2e and mt7603e, and
does not work for 2 or more same Wi-Fi chips.
Refactor the script to cover those cases.

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 .../mt7621/base-files/etc/init.d/set-irq-affinity  | 26 ++++++----------------
 1 file changed, 7 insertions(+), 19 deletions(-)

diff --git a/target/linux/ramips/mt7621/base-files/etc/init.d/set-irq-affinity b/target/linux/ramips/mt7621/base-files/etc/init.d/set-irq-affinity
index 9a3afefa5a..c118d928a7 100755
--- a/target/linux/ramips/mt7621/base-files/etc/init.d/set-irq-affinity
+++ b/target/linux/ramips/mt7621/base-files/etc/init.d/set-irq-affinity
@@ -2,30 +2,18 @@
 
 START=99
 
-get_irq() {
-	local name="$1"
-	grep -m 1 "$name" /proc/interrupts | cut -d: -f1 | sed 's, *,,'
-}
-
-set_irq_affinity() {
-	local name="$1"
-	local val="$2"
-	local irq="$(get_irq "$name")"
-	[ -n "$irq" ] || return
-	echo "$val" > "/proc/irq/$irq/smp_affinity"
-}
-
 start() {
 	if grep -q 'processor.*: 2' /proc/cpuinfo; then
-		mask1=4
-		mask2=8
+		mask=4
 	elif grep -q 'processor.*: 1' /proc/cpuinfo; then
-		mask1=2
-		mask2=2
+		mask=2
 	else
 		return
 	fi
 
-	set_irq_affinity mt76x2e $mask1
-	set_irq_affinity mt7603e $mask2
+	for irq in $(grep "mt76..e" /proc/interrupts | cut -d: -f1 | sed 's, *,,')
+	do
+		echo "$mask" > "/proc/irq/$irq/smp_affinity"
+		[ $mask = 4 ] && mask=8
+	done
 }
-- 
2.16.6




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
