Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6175A15100A
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 19:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IWoCYb2bAN6RHkAgh6zU9WeJRevsbmuNbKfaLkpRpP4=; b=NcPAAZJy0Pb31U
	fWN7YjFu59L2a8FOkyiXAWYHv/dHX2Pw0ndDUfyz6z70mOajdvkndo+u7OiXMYxzUYls4rNG2q2kt
	66wmlV+0GuYkJOBk2SrO4eA6UhvAyuK8mgqFg1/5MGrarqb0r3TuBfuYuTwERhdiLyf0ssT9+OV1I
	IH9yj0IQMx/6op1NcsgsgLAAfo8HtQ71OcpShkFxJ5LqL4ydKRY0r38nvwb+hCb3p9glN6p5Mj/iU
	mZ7W/m012uxJ618kpE6RPD5jQjupdaXbr8pmY2ABpxFhvU4z+pRf3GwOzJ6mVVwf1CiEvPwWu2IjE
	GWjUQv+WWQ2o7jf4sRjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iygsv-0002R5-Mo; Mon, 03 Feb 2020 18:55:49 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iygsl-0002QU-P2
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 18:55:41 +0000
Received: (wp-smtpd smtp.wp.pl 5714 invoked from network);
 3 Feb 2020 19:55:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1580756133; bh=xRn/4PXoXFD1E4sE5P8S/D1gn1rD+Ug4Oq42yDwSK/A=;
 h=From:To:Cc:Subject;
 b=n/aM1DVcxlYvcLCCCWZuin9gdzSjI/9TWLhsdiwCAxQUFZycgKwWxe3JE7mM7qyrS
 +795sMlm6S0ppQ4iha4PsZznocm3IRStY7yE4lSaKVGnkxMdtqtmPM2UfhZeIP1juf
 zrRee3XRNTF0zX8euL6D5kWg2IoD3Ntz3hHBoFCM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 3 Feb 2020 19:55:33 +0100
Date: Mon, 3 Feb 2020 19:54:31 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200203195431.33881551@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: d89a282bbea2838cc045d49a39f44bbe
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [cfPh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_105540_348668_BBD9B6F2 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ath79: WNDR3700 v1/v2: make u-boot env
 partition writable
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Remove read-only flag from U-boot environment partition for Netgear
WNDR3700 v1 and v2 so u-boot-envtools can modify data there.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts | 1 -
 target/linux/ath79/dts/ar7161_netgear_wndr3700.dts    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts b/target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts
index f3d27f2bdf..96573bdf14 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700-v2.dts
@@ -18,7 +18,6 @@
 	partition@50000 {
 		label = "u-boot-env";
 		reg = <0x050000 0x020000>;
-		read-only;
 	};
 
 	partition@70000 {
diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dts b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dts
index ac6f2362ec..75c68d83c7 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dts
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dts
@@ -18,7 +18,6 @@
 	partition@50000 {
 		label = "u-boot-env";
 		reg = <0x050000 0x020000>;
-		read-only;
 	};
 
 	partition@70000 {
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
