Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309223C8F6
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 12:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f0PG9QgjUhe/3Q/QUTn0Z3HP53dVtW19uVjrBVnf8xg=; b=dwPC573U1clCwF
	k+XTPOBh999gYgs2v/BAbsGHHlQ9S6DZQ4gA66QFs8XvflPBuNv5ux6baruVq+gb4e3b8/CCOkb7K
	VjNyBk7J0b6tiIlTCfm9ukuGf52AGHijKeHwJDHfF0XDXpYN3KQ9TMUQcso7+fg8GRHX/fDKYVsNM
	I16pezycQd3etQQafPz6WPBxtnUaz+yWjVILvYUf2Zkywp+4ES+e2LnKSD5rDKSSJjvr8DAqgqDED
	miI05y/+btCMzNcLCa+ntYf5k3WRDkI6htiqyhe6i9SMly/rvT0sYC5wbNm/Ch4fRORCnF/p0a0Pr
	5jCqYSTYhgcqTsFVcjTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hae2g-0007M7-Ku; Tue, 11 Jun 2019 10:30:14 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hae2V-0006Qv-Ty
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 10:30:05 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5BANI3L075884;
 Tue, 11 Jun 2019 18:23:18 +0800 (GMT-8)
 (envelope-from nylon7@andestech.com)
Received: from atcfdc88.andestech.com (10.0.15.132) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3;
 Tue, 11 Jun 2019 18:29:47 +0800
From: Nylon Chen <nylon7@andestech.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 11 Jun 2019 18:30:40 +0800
Message-ID: <20190611103042.31736-1-nylon7@andestech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.0.15.132]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5BANI3L075884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_033004_269499_FD8D9C44 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: [OpenWrt-Devel] [PATCH 0/2] Add nds32 toolchain and ae3xx board
 support
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
Cc: Nylon Chen <nylon7717@gmail.com>, Nylon Chen <nylon7@andestech.com>,
 Che-Wei Chuang <cnoize@andestech.com>, Greentime Hu <greentime@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patchset adds basic support for Andes's nds32 ISA
and nds32 family's CPU IP based on ae3xx platform.
The board is entirely supported since Linux 4.19.

Nylon Chen (2):
  toolchain: add support of nds32 architecture
  nds32: add new target for AE3XX boards

 include/kernel.mk                             |   2 +
 include/site/nds32                            |  33 +++++
 include/target.mk                             |   4 +
 target/Config.in                              |   5 +
 target/linux/nds32/Makefile                   |  23 ++++
 target/linux/nds32/config-4.19                | 126 ++++++++++++++++++
 target/linux/nds32/image/Makefile             |  17 +++
 ...0001-nds32-Fix-boot-messages-garbled.patch |  29 ++++
 toolchain/Config.in                           |   9 +-
 9 files changed, 245 insertions(+), 3 deletions(-)
 create mode 100644 include/site/nds32
 create mode 100644 target/linux/nds32/Makefile
 create mode 100644 target/linux/nds32/config-4.19
 create mode 100644 target/linux/nds32/image/Makefile
 create mode 100644 target/linux/nds32/patches-4.19/0001-nds32-Fix-boot-messages-garbled.patch

-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
