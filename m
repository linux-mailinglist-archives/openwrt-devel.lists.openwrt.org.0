Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9378617AA8C
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 17:33:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjAgBBx6cMKexfPKOn7WhijWcKkMfJmpmMAS35xH9/U=; b=Jk7gj+JBhTcwnl
	IZoQqL8ZvISNzdAVvb3QoWs096jRShnbekgO+f0FU/kBS0cG5ceHhoYMuKC1KrRQAB1DloS+YZLPy
	qmVPjJ4VtpaytU+L7YWDiSfmoYj4/ALeKF2zvoVHK4CutoHou0nsyZQwYU13aOLFdKpu1RBuH3edH
	KHZXB1YNT4Ac4Oq5OFekzsuU3uud5bIxAQC6Amyu5r96Yq0eIkqD2MbQy38LbMMK/FaqnQvVYfryj
	14XsoLpBhiX/nelZjRpM5D9UclLc6LFVP0V76ki7wCG4qj/GVPjofWiofuAS8IxBooPTGhZd9dSfM
	T87dZ127ZKDOj+g03kUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tRS-0004JE-KK; Thu, 05 Mar 2020 16:33:46 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tQv-0003uC-Kd
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 16:33:15 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48YGWq67t3zQlGK;
 Thu,  5 Mar 2020 17:33:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1583425990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rkHCMA9i7kFOlOxrQeJzTWASCUlwagqnKnbaVItwvMI=;
 b=H3WGfjgH7PCLHXyN0ayXvSwUYtXjSH+zKL9RBa3IBdMOlhLIF3Fl+oxEfmxLTkUIuk5RoI
 l3SzV9bMCnlqHqQLGMrd+T1bCAbqHwb2fxREVWS9sZtAxRTlaY3Vlz1XBQHm7vwaf93Opt
 uIXSi/5TtDqMOQKfGOWigMQ8ncxia40q+Q4Q/0EEreCF0GqC2rypiwnfdetCyEp7ExhEOb
 eEdBKEmBC3r0aX8sIjodToFo8AsUnGc21RX1HCZPDlOjvT4hxBXXmkWA97Wn7Tyv3LXSs7
 ly6+kZzftor3QLlE8+IaFhslbMNPJt4w6HhR9YAqLIY8s5Nz8CLwsYZJFzr/jQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id MvM4vPFjqWyi; Thu,  5 Mar 2020 17:33:09 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Mar 2020 01:32:46 +0900
Message-Id: <20200305163248.361572-3-mans0n@gorani.run>
In-Reply-To: <20200305163248.361572-1-mans0n@gorani.run>
References: <20200305163248.361572-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083313_842078_F1BACE20 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/4] ar71xx: fix sysupgrade for Arduino Yun
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

Commit bb46b635df48 changed its partition scheme, but sysupgrade image
validation still uses the old format. This commit fixes it so that
force flag is not needed for sysupgrade.

Fixes: bb46b635df48 ("ar71xx: move Arduino Yun to generic building code")

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 target/linux/ar71xx/base-files/lib/upgrade/platform.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
index a76842bdde..a376452838 100755
--- a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
@@ -217,6 +217,7 @@ platform_check_image() {
 	archer-c60-v2|\
 	archer-c7-v4|\
 	archer-c7-v5|\
+	arduino-yun|\
 	bullet-m|\
 	bullet-m-xw|\
 	c-55|\
@@ -346,7 +347,6 @@ platform_check_image() {
 	ap152|\
 	ap91-5g|\
 	ap96|\
-	arduino-yun|\
 	bhr-4grv2|\
 	bxu2000n-2-a1|\
 	db120|\
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
