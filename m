Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D94319A535
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 08:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bp/duCWf0wGHdpHWj8XoBmhVhFiQhraXRVts3B0UlDI=; b=bREN99vY+750Co
	ielil1ZGV+aOJslXG+awnx2v23eVDzj9SX/BVQQShPyc3vu7EO9/gHkSouRU6TUpHn/xAU6ZLoHXr
	Ifh+e3SfEcFUxHVvEMrtp6B1GwyJK0HVAnjhN2lRAMrsQ3ay8DoWRX/z/RlR1/mEiGXa0pHfU1Yk5
	9KwZVgLCOWcbyFEMHsDx8gjWYj4StpSCzoqkiU2qzyBf7qgkjKzQ1nwOjiqHdXhMUNRty/OYMzhBo
	r9n/S8MNpTbFwZZMSyI4lcJT8pDaY4okctjALyMicAANTC5CKmIDXCS8ckPVvvVwjwbi5lsTvJo71
	xZS9maS95PFCHO1CSXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWhn-0007WI-LG; Wed, 01 Apr 2020 06:18:27 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWhg-0007VO-Ev
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 06:18:22 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D5D31FF809;
 Wed,  1 Apr 2020 06:18:15 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 20:17:46 -1000
Message-Id: <20200401061748.2022142-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_231820_632029_E13DC2AC 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/3] ImageBuilder: Show alternative names
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

The ImageBuilder was never really updated to work with alternative names
of 4ee3cf2b5a, this patch makes the alternative names visible when
running `make info`. Also I can now cross of "Do something with Perl"
from my bucket list.

Paul Spooren (3):
  scripts: target-metadata don't add PROFILES twice
  build: Introduce Target-Profile-AltNames
  ImageBuilder: Show alternative device names

 include/image.mk                   | 1 +
 scripts/metadata.pm                | 2 ++
 scripts/target-metadata.pl         | 6 +++++-
 target/imagebuilder/files/Makefile | 1 +
 4 files changed, 9 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
