Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F33A19F534
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 13:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E76qKN61pk6MX5K2JPxEN5avWRPtfKx/P8mPhwSakA8=; b=NH+Rsnhi9VmYrZ
	jUBxd5ozyCe91eEvFM2d33AUMdzEb8BC+O77X1vmlFsT9rsylFJtMmcX/rCm9ebUoLNdSzCod74b6
	NsT20Ff18s6LFnbwgELbRkoQ1Ngmo2sLd8E5RouPjqX4ljDY0ZlI6fZeQ0018pJVfV5G+/qe7gfWd
	DpqMApJNvHcJytN/12DWCzmn70BDtVGBFWYOfkFj2k7QgcNrh6DgC2oVCUpieuuhNLzOnu1BdmRDF
	+9AHm/TFsYNdG/ljpQIka/7tISdpKlEAXevNrW7bos5BhwVYru2SU3yahqhlepM7Mco3FFyJKPxtx
	sVXP/HdYTzTJmqsf0ysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQK7-0004gZ-2o; Mon, 06 Apr 2020 11:53:51 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQJz-0004fD-CS
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 11:53:45 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 22C97C0013;
 Mon,  6 Apr 2020 11:53:25 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 01:53:19 -1000
Message-Id: <20200406115319.43682-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_045343_557306_D598ADFC 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] scripts/download: add sources CDN as first
 mirror
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

OpenWrt now has a CDN for sources at sources.cdn.openwrt.org which
mirrors sources.openwrt.org.

Downloading sources outside Europe or US (mainland) could
result in low throughput, extremely slowing down the first compilation of
the build system.

This patch adds sources.cdn.openwrt.org as the first mirror to offer
worldwide fast download speeds by default. If the CDN goes down for
whatever reason, the script jumps to the next available mirror and
downloads requested files as before (in regional varying speed).

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 scripts/download.pl | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/download.pl b/scripts/download.pl
index dd49255367..1d3ff02c5b 100755
--- a/scripts/download.pl
+++ b/scripts/download.pl
@@ -258,6 +258,7 @@ foreach my $mirror (@ARGV) {
 	}
 }
 
+unshift @mirrors, 'https://sources.cdn.openwrt.org';
 #push @mirrors, 'https://mirror1.openwrt.org';
 push @mirrors, 'https://sources.openwrt.org';
 push @mirrors, 'https://mirror2.openwrt.org/sources';
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
