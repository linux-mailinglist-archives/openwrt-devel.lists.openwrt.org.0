Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA9B191EC4
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 03:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=32Hx3bDc31bDYj3J/ya79/JPTf2pEgQmXlQRevi+vYM=; b=jV5p+aR8IS+Esx
	TXLmVi7G/uKzw/wOWuWN+caQun33rnyG36Vkhq3UaK/aSoaFH99DxMXwIZGLrnlIwetnNcH0T1wn7
	m9zh2MrMroFgVmDKO7HJxVrxv6QEJIvbg8AWreFHdsnX0Jkvg+1vYP9n32eU8iN7AxNEVBcTriAgq
	rR9M3zZwGq48YQsHH6OZZUSXyL4msFHz4u5yA9c+Umk6lXsCSIGPDRNGMzDq61y3/XcyTjhSvExjx
	Mr2rK7yJjgPAbDtFknZPEAIryxsZLJA6qQCXe1jLz1Bx6fMXbEW3MbNzPkY76KlgO+b6k8HIvbdl6
	0ttepX0GlTi5HtsFhV0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvLf-0000pc-94; Wed, 25 Mar 2020 02:00:51 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvLX-0000od-9z
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 02:00:46 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id D25DD42730;
 Tue, 24 Mar 2020 22:00:35 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id C5647425DD;
 Tue, 24 Mar 2020 22:00:34 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 22:00:27 -0400
Message-Id: <20200325020030.19933-1-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_190043_407633_026E91FD 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 0/3] Add kernel support for Fintek
 Super-IO chips
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This series enables packaging of the Linux hwmon, watchdog and gpio
drivers that support multiple Fintek Super-IO chips.  In particular,
the Fintek F71869A is used on the Jetway NF99FL board and the stock
OpenWRT kernels appear to completely lack drivers for this chip.

v2: Add @TARGET_x86 dependency to these drivers.

Nick Bowler (3):
  kernel: package f71882fg hwmon driver
  kernel: package f71808e-wdt driver
  kernel: package gpio-f7188x driver

 package/kernel/linux/modules/hwmon.mk | 15 +++++++++++++
 package/kernel/linux/modules/other.mk | 32 +++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
