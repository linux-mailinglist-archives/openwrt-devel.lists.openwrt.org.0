Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF2218AB2A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 04:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5mx5lJnRDAuoIsEWhBsDT9Hr1K8VRO2YoUC4wNPocT4=; b=h3lG3HhTBFaKnd
	HyOVKBW8X/i3ACUXI0BhqnIV4MlpIcO1ygOaxGEto7y+EWkF4iQfwX/N9asxLsO80fnfZrZoeUIBm
	i+LJXEVOs8gmGVX5eMr/GEhSL19+QgzSa8X1/Pb1YZYlUNiUQej83A3Y17CCUP7bz/lhQo112WTcM
	8AljsX7nSwm313JuLyPQhnp2EdBj2U7Q9xPq5Gc9sBO1zlxVbL6W5QWtMROmSP0SkIMTb1SmgYpaN
	llnSj/GvVv1AHTw1QGceTUpqe5TruVVN326Gf/XGDCONbWN3KBS0NsKzzKR56riWrwXcTpDFIs9Dc
	p0kQXA0yKOuZY0oeEmHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jElqp-0000Ds-U0; Thu, 19 Mar 2020 03:28:07 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jElqL-0008EX-7W
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 03:27:38 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id CBBDC42822
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:26 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id A03B14281F
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:23 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:09 -0400
Message-Id: <20200319032712.31676-1-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_202737_337378_E5E80C12 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/3] Add kernel support for Fintek Super-IO
 chips
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

This series enables packaging of the Linux hwmon, watchdog and gpio
drivers that support multiple Fintek Super-IO chips.  In particular,
the Fintek F71869A is used on the Jetway NF99FL board and the stock
OpenWRT kernels appear to completely lack drivers for this chip.

Nick Bowler (3):
  kernel: package f71882fg hwmon driver
  kernel: package f71808e-wdt driver
  kernel: package gpio-f7188x driver

 package/kernel/linux/modules/hwmon.mk | 15 +++++++++++++
 package/kernel/linux/modules/other.mk | 31 +++++++++++++++++++++++++++
 2 files changed, 46 insertions(+)

-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
