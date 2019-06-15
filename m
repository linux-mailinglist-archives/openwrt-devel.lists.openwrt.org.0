Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0304723C
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 23:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ywO2kJCIvH+naPZtelvn07zDx6uaOVtlFs5nnOwNb4=; b=JIMcNRjuS/W6Ou
	3y6PIflL55jCORzm4DE18bOZtFEhEHsgTlkOoHEW5nB1X9d/ImSMc3SyuB+p+eq6f8BPXB7U/Hy+J
	LzVyW+VGyLSfvjkB5tbdr+vpNe3ClDj0nB7wjhquQQcXbj51YvncQ1a/GE+ZGekITziyZx/TjyVGa
	gF94suQE80pRfJrOcofGFcgzVLrHy602L3rqYF3bg2Z8kY+5Erq7kKBE/VvqWFOdIvRXuLEONpwOz
	7VSwPlE9JnMUvHiWKSx9IRdOJmfuM2XahwNbUiHoXyJcEQLnNTRjIGiY7DqmuyBmJ/P3vqb1F8pvB
	bZz0Z8iB1TYiU+26sPXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcGQP-0005OV-10; Sat, 15 Jun 2019 21:41:25 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcGQF-0005OE-Cv
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 21:41:16 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 9A4F225B55;
 Sat, 15 Jun 2019 14:41:09 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 14:40:55 -0700
Message-Id: <20190615214056.11729-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_144115_441424_ABB61F29 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 0/1] ipq40xx: Linksys: sysupgrade: Ensure
 OEM volumes are removed
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

User reported that second sysupgrade of EA8300 resulted in hang

Problem determined to be that an OEM "ubifs" volume was present
in the OEM firmware, like the already handled "squashfs" volume.

Recommend applying/backporting to openwrt-19.07

Jeff


Jeff Kletsky (1):
  ipq40xx: Linksys: sysupgrade: Ensure OEM volumes are removed

 .../ipq40xx/base-files/lib/upgrade/linksys.sh | 22 +++++++++++--------
 1 file changed, 13 insertions(+), 9 deletions(-)

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
