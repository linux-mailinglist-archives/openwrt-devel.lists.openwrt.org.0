Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B16C4DC23
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 22:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XNS0LDFl0Al7Y1U03ePCetrbE2aYTQQvvLtB6cH8swo=; b=aqPsH6239hwdvB
	RPXjkmfQ8C0YxG1zrIunPC2HgsFphJGrzNHN1aaU2WTgZeSyUzJQF5649kfDG+cTKuWBlQ/eF2Yj5
	iiyZVZ0xHq5b5H+7TIfHlPP02Wubrt5P+Ho+Cm9i542bowR6SBWBLYjmX226nUIt3m9QoZY7XdZdc
	9ODXOthF2LbSgPfVFuBaUang83bFpy7O1JFJLj282fPSq7x/CzP4UD682Bu6epBLVojO/BVIsImEq
	11Ndhh8NgqU8ZQER1H/WelvwAnAEidBAQJ8MNrKlrvUjyN+FQ+XOfr73rRMgbNf6FhzV0w6VIsNHY
	NOW9puH1KV0iOaYvYtPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he49b-0004mR-J4; Thu, 20 Jun 2019 20:59:31 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he49R-0004m5-K3
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 20:59:23 +0000
Received: from localhost.localdomain ([188.194.85.108]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mwfj2-1iWIMz3pPO-00yAix for <openwrt-devel@lists.openwrt.org>; Thu, 20
 Jun 2019 22:59:16 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 22:58:02 +0200
Message-Id: <20190620205802.62445-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:HdIgBf4fPPXIN/kHKB6PFippLZ87+Vgb1fVz8jbaHRwd52XnBp7
 rE1EsS6NXlFLd1x+kaTuagDILiDJH6Gm+iGN6jgOAfQJ0Js3fTpsX31NPij8aFljdodvjSU
 M3vsVCbQJOZbKmNP59Y1lXh+wl82h9QtSeo72JgKNzFjFES8qJDaV1zU5yNLJmO3g/UyQeI
 6MJBy58hBW2dRtPHs/vzw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NzUF5R9lJeU=:uwC2h0IqAV8DqKtsG5V1iU
 Eh05ZDQSHI7fVdjwM75N14Bn4l4NJ76vzNRgNwLcxjrgq17KBx1OrHWLFyo8bNmr9KVaZ/mmY
 ttvfAqxg3akh7xuMqbq9vsEHovytt4eccRFmpvvo8MuLXYv22Ne1t3u5l0/mE9NlClxz45uW5
 CU++AA6Fj9j6KJpHpM13C55F8x82F024hPnH9kQ1data/q3fiOWrETzyVzt7cgq2Ot8Xf3tdD
 P9rCzzRhXVGl59aij0wH727J6eql4HhioEiGXU1qWwC3CyB+TvR1XiLwLxu7ez2uW6/9WljAv
 ryiX5dIRsKnwuLqzabBdLVjKRz3KFiNBpz5rmZn3Kb48B0u5dR9ZP3MSl74T7Q9yy/NfV6aD+
 z1hEySSCnqHHk60L8EsbSj5g942lFKcaficUztMr1sajvuR3NF5OOZqkvPe8Mb3JCgHeaKH8/
 wgxxamsYk+4X+pIOZDNRFCelzWVC9XqkyXGCJddBE1iGpdEat1TL6h9TLO8MdfuK1IR8Kepqf
 r8YjBECGhwO3kgzSmOSW9zfGw55e1rOetjrgZl1geK5pNt1Y94yoto///A/S/G+SjxI/Sx41G
 XxvX1WgQyuuPgXFTUTMWi7AHigSUO6ZDiFB0+cFkmDiqPq98h5zlprA6aKNS/iPbFp7iHA3ii
 dQXCteGK53Ep+FCHCwuanhqaHnSzmSMxaovn3+1hIBxCvWqKubG/SDN5gbHu6hSZRi7GkXmBH
 we2VpxScAezvNRN5nCA+jjBFDeMz2NTVL6hqyJUsoGzI91BhzAK/lV4RdkE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_135921_959224_1DF4B8C4 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: Remove redundant LED GPIO
 definitions for Archer C25 v1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Run-tested!
---
 target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts b/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts
index 3c971b5464..881e3a1822 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts
@@ -24,10 +24,6 @@
 		cs-gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 
-		/* can be removed on 4.19 */
-		gpio-sck = <&gpio 15 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio 14 GPIO_ACTIVE_HIGH>;
-
 		led_gpio: led_gpio@0 {
 			compatible = "fairchild,74hc595";
 			reg = <0>;
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
