Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EA9ABBB0
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 17:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+XJ+fVl6irimhS49byQniGOFqO+dG5PrbNSrxoytx3I=; b=bGf22PsW9PwVVR
	LTcKvNGyOYJiWjOH1G+cvesxXJiJQI6yJt1f7hhCQdRMXHPnJuPwosWnYGYjsJu95cvOqItRiUi+s
	6tfv/KvNI4llSlv3Rbi2UK8d1xKFhVmYyFBHJFs/gvZB3VDitOhdg61hKeCeX4jWJsyCr+KqScF4D
	Gt0NyVpFYW4EwHeRtbb9X4xdIioNKCxHI9Daza4AYEptZeh1VKPWUC2Gi9npy0UyhYqnHG4Wsi8Yh
	w1UEiTwzgqbKUwf1lDGewqR3VvQKxShN/7mcwVfLw6q52I2IO5CGC4dEKhYnDognRvG1LfKfmDWYW
	cShanC9JI503JcteemkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Fke-0003yw-5E; Fri, 06 Sep 2019 15:02:16 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fjn-0003BC-Hf
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 15:01:25 +0000
Received: (wp-smtpd smtp.tlen.pl 23388 invoked from network);
 6 Sep 2019 17:01:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1567782075; bh=zq9d/eMAqxehur5UX6AqgSUyIYxU7vqo69Eo+KV0DMY=;
 h=From:To:Subject;
 b=osuu8fnIiZwuDy7b8zJhOHdDPUGppAswq72O4TaHFjol2I8Tac7mK8MS7JVxtsjpf
 6kvM9WjMRZXuy6mWJjjHauTOX4lr5iG5kOO9FEpTAVEPr0sWIHS9rT0j8IPHhFSaps
 7kKzFVM8rNj6y3zvdL7nQ0ODrFHC3kBV5bkrWIo0=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Sep 2019 17:01:15 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 17:01:05 +0200
Message-Id: <20190906150108.31098-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-WP-MailID: b25e448ee316f3cbbc00348e40e6ce6e
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [QXFm]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080123_740755_F97AB71D 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/4 openwrt-19.07] ath79: dts: fix ja76pf2
 spi frequency
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

The frequency was filled acording the information from datasheet for
particular chip (Winbond 25Q128BVFG). Unfortunately this led to
coruption and introduced bad blocks on the chip. Reducing the frequency
to commonly used in ath79, made the board more stable and no new bad
blocks were spoted.

Fixes: b3a0c97 ("ath79: add support for jjPlus JA76PF2")
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
(cherry picked from commit c1db564cbc7cad88606f3caedf81d07b0a60931f)
---
 target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
index 76f140fa55..b983d1b994 100644
--- a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
+++ b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
@@ -111,7 +111,7 @@
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <104000000>;
+		spi-max-frequency = <25000000>;
 
 		partitions {
 			#address-cells = <1>;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
