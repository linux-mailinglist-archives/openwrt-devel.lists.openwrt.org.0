Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD0417B076
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 22:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZuWV846yKMrTb5mqk//qKS09Q7OdHoEUk/Yu4Q22JiM=; b=g7BHoE3AWyXJrU
	zUNxetFxWbAy9aUTNgigQrfoBgl4Mvr2hcSB4sN9CT9TuT9b8pCAKyLEbjGt6tHP0R1ALig5XeMC3
	pdRjk4o/vUn/6MkKDkXEfFarpgs4yuxjsWhqsK5nBipUJkZpMsBZe8MLHrlExAj/ukaUBJ//caZQe
	EiA2AMnOdToThg4enwDTdzGmzwkpzMNbHWBdNGz+I0TAglHJjuN7+UBc1N3DAt5DgUW7YOLKFNRtW
	1uaA+T5BPZR0tilSGURxz6FW5I+VaWwciQhJQtoP0n26Y1AI8F1U+iLcO0DWB2EwEfgLJnQQqF52x
	2FQGMeF2q+Z7vI7Ksm+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xrv-0000vZ-Mt; Thu, 05 Mar 2020 21:17:23 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xro-0000tS-VF
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 21:17:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1583443927; h=Feedback-ID:
 X-Smtpcorp-Track:Message-Id:Date:Subject:To:From:Reply-To:Sender:
 List-Unsubscribe; bh=KA6nAVzinBdDCApsoU6AN2AWUqUcJuPY8RbyS39hnPA=; b=FOCKp3t9
 geGXKfNc+DX+1U8mJ+aT3W6xQJY+8HOSD/m4SBSDPqKCNU43AGZ6BQYV4w5yXzwDuHGAXygoZKnTn
 rnpzc2st979LiGleIvWEF9+JaQRkWTKBfZSnXLzSUMD/GEmFaRfKxClNnxwwcroar9Iura2tPTinC
 OSLS4lMxjOAk5ImAB5QS8S2Do+TuyV4VJzVy5fUdOd9G0tMKAayo3ofidM4FxSprjl5rLK6/RpQAY
 4pi5i5M08eAcolOxNBONJcg1w/28EWqY94hMYp55+HXVOeACuttVnXDtH0jpvOOLXQYZ/wq2llEnQ
 DmFEZIG8AfsQMe5keJhbbJ2Z1Q==;
Received: from [10.173.255.233] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1j9xrT-ItkGjA-1s
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 21:16:55 +0000
Received: from [10.162.83.196] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1j9xrS-IbZojw-M0
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 21:16:54 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id DF1E261D028
 for <openwrt-devel@lists.openwrt.org>; Thu,  5 Mar 2020 16:16:46 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id DWMTvS3xSjbo for <openwrt-devel@lists.openwrt.org>;
 Thu,  5 Mar 2020 16:16:45 -0500 (EST)
Received: from blaze.homeip.net (blaze
 [IPv6:2001:470:1f07:a3a:dc8:1e2:a6b:6125])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 5A7C361D026
 for <openwrt-devel@lists.openwrt.org>; Thu,  5 Mar 2020 16:16:45 -0500 (EST)
Received: by blaze.homeip.net (Postfix, from userid 4444)
 id 0A49E2078E51; Thu,  5 Mar 2020 16:16:46 -0500 (EST)
From: Paul Blazejowski <paulb@blazebox.homeip.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Mar 2020 16:16:46 -0500
Message-Id: <20200305211646.25767-1-paulb@blazebox.homeip.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Smtpcorp-Track: 1M9xrSmPZoMwu0.YSxH1lEYr
Feedback-ID: 316702m:316702a3jAEqy:316702sNvLe4-WLw
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_131717_181041_D1F48C1E 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] ath79: nand: add missing symbols
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

Removed in 53ab9865c2b91bc6a239b2adee800dc52875b6bc

Fixes unable to find root fs

Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
---
 target/linux/ath79/nand/config-default | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index 50bc550794..97563d5781 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -5,7 +5,10 @@ CONFIG_CRYPTO_HASH_INFO=y
 CONFIG_CRYPTO_LZO=y
 CONFIG_LZO_COMPRESS=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_MTD_NAND=y
+CONFIG_MTD_NAND_AR934X=y
 CONFIG_MTD_NAND_CORE=y
+CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_SPI_NAND=y
 CONFIG_MTD_SPLIT_MINOR_FW=y
 CONFIG_MTD_UBI=y
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
