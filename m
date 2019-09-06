Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4422AAF93
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 02:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9vMhHE4twGGZDRALMqo5FJSPKO5HeoHywlAxuafWcPM=; b=dRdgrDRnToAKkT
	ADYtDIF2bQXi2yyQ9bmgoe3Fwli2KSONnfS04zsOuZJHiGqg29oLQ1TOS77kFO7HoB50WtnQRvXN8
	GGqVZP/uieyeEbAGqoR/KO9Z1ZbtFfJ6w30PoaFiVIddJ1KXZAF13dwB+DXpvrVTYSou9baOBPFsN
	UJ8wWjtklW8U+besvW6A7xtGhP7EvdPrmq03y6CwizMonDGCPPgnt50q/iQvr69+AZkAt3OQR+cuU
	EG0qRNUa5CtnBWf9qejo08lBnQl7ZxQd7Z+1LmqjSefFRAyEWkq4AqQ3/Kk0VwUsD3u28SYfDJ08r
	XnoF0haErPZ0CvH/EfAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i61nU-00060A-EE; Fri, 06 Sep 2019 00:08:16 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i61nN-0005z1-3A
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 00:08:10 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0DFC00622218086D3BFC63.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0d:fc00:6222:1808:6d3b:fc63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id A5ABC1E3D6
 for <openwrt-devel@lists.openwrt.org>; Fri,  6 Sep 2019 02:08:02 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 02:07:57 +0200
Message-Id: <20190906000758.30056-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_170809_289954_6DF57F37 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] iwinfo: add device id for Qualcomm
 Atheros QCA9887
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

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 hardware.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/hardware.txt b/hardware.txt
index 8950589..cf4d4c1 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -155,6 +155,7 @@
 0x168c 0x003c 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9880"
 0x168c 0x003c 0x19b6 0xd03c    0      0  "Mikrotik" "R11e-5HacT"
 0x168c 0x0046 0x168c 0xcafe    0      0  "Qualcomm Atheros" "QCA9984"
+0x168c 0x0050 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9887"
 0x1814 0x3050 0x1814 0x0005    0      0  "Ralink"   "Rt3050"
 0x1814 0x3051 0x1814 0x0007    0      0  "Ralink"   "Rt3051"
 0x1814 0x3052 0x1814 0x0008    0      0  "Ralink"   "Rt3052"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
