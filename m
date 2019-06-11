Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30BB3C900
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 12:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4F+8ipdBIs0Ttw4ucZYaZuBwO7yJb6MR7KQJQ2QCrM=; b=iF4dqTdso2HLaj
	ZNv4bme2P6ExsTmItjFTkdtaJ8yS8VkbT1QAlReMH2RgGn+FtIpX2qW04yHaxx0a0i0YSagzHjO/U
	/VIRmccMp38pBrPwx84hFOpa5Pwec8FTCgtNdvmk5QACEWLgDcB0zSXgbU6zyjaRJGUwpbNCai0fF
	i3eRaAaruUkpNpx5fowKVLC2K/NPiNv3JaoBatxsMBn7IxpOLRvPV1O/x9yJxgxoBGtJioE6FvvBy
	DpQtii725ZLtQigKTcTV7BjV1R65afCdhgBpKwTl49E6G7Bh41hVkSsBezzACZ5enQoE22N/hODV8
	vG6z3fl84QIv5So2U6kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hae4J-0008UU-45; Tue, 11 Jun 2019 10:31:55 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hae48-0008U1-2o
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 10:31:45 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5BAP5PF076457;
 Tue, 11 Jun 2019 18:25:05 +0800 (GMT-8)
 (envelope-from nylon7@andestech.com)
Received: from atcfdc88.andestech.com (10.0.15.132) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3;
 Tue, 11 Jun 2019 18:31:35 +0800
From: Nylon Chen <nylon7@andestech.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 11 Jun 2019 18:32:31 +0800
Message-ID: <20190611103231.31851-1-nylon7@andestech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.0.15.132]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5BAP5PF076457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_033144_375161_75A9842E 
X-CRM114-Status: UNSURE (   4.48  )
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
Subject: [OpenWrt-Devel] [PATCH 3/4] ext-toolchain.sh: don't pass CFLAGS to
 gcc-* utilities
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

The current script passes CFLAGS parameters to gcc-* utilities,
but they can not identify CFLAGS parameters,
so following this script will fail package build

Signed-off-by: Che-Wei Chuang <cnoize@andestech.com>
Signed-off-by: Nylon Chen <nylon7@andestech.com>
---
 scripts/ext-toolchain.sh | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/scripts/ext-toolchain.sh b/scripts/ext-toolchain.sh
index ee7d9532f5..2720a509db 100755
--- a/scripts/ext-toolchain.sh
+++ b/scripts/ext-toolchain.sh
@@ -256,6 +256,15 @@ wrap_bins() {
 				fi
 
 				case "${cmd##*/}" in
+					*gcc-ar)
+						wrap_bin_other "$out" "$bin"
+					;;
+					*gcc-nm)
+						wrap_bin_other "$out" "$bin"
+					;;
+					*gcc-ranlib)
+						wrap_bin_other "$out" "$bin"
+					;;
 					*-*cc|*-*cc-*|*-*++|*-*++-*|*-cpp)
 						wrap_bin_cc "$out" "$bin"
 					;;
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
