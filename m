Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D386CDF39
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 12:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4nSJvr9X2eVJ9O8Xmicz/eWPpilQT9gC3koNv1Q+IFA=; b=pQUK+6J/aiilRd
	EqZ//uFEzUwnsdgO7y3CRvFFb8VX3ii9JedOJ7Kf8Fl2JOwZLHGVexAhq3t+H6uCM5wfxQ+Rj0FUw
	Us7FeTPk7xI/g1DSismONAlRVlh6x4PXhrWvU87q9A/Cxw+ba4mvWcteTI1mjkHpIamOpT//LS5r0
	dqNigibSs2N84uBVmzWqmmEE37+E9MZk6ZraGxOcTeg50lE4ewfMZW0ss58J2WUSoTZSkIFTLfFvo
	yA36sM48ogXEMuLXuF1mOQFmORjeDm/sGCRezkksW3kVsF1EuoQBT98CPYZaqJQNtg3pbn967vq+T
	w0gBf6aTAi164W8y3zBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQDP-0006ID-Ir; Mon, 07 Oct 2019 10:26:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQDI-0006Hi-1T
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 10:26:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3B1AFAC2E;
 Mon,  7 Oct 2019 10:25:56 +0000 (UTC)
Date: Mon, 7 Oct 2019 12:25:54 +0200
From: Torsten Duwe <duwe@suse.de>
To: p.wassi@gmx.at
Message-ID: <20191007102554.GA5470@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_032600_227426_E6750FC4 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] kirkwood: DT flash partitioning broken
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
Cc: openwrt-devel@lists.openwrt.org,
 Daniel Engberg <daniel.engberg.lists@pyret.net>,
 Mathias Kresin <dev@kresin.me>, Alberto Bursi <alberto.bursi@outlook.it>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all!

I'm currently (re-)activating dockstars and found strange contents in
OpenWRT's /proc/mtd. The root cause seem to be git commits 1447784a8c3
and 9808b9ae024, respectively.

To my knowledge, the "reg" property in a device tree node is always of the
form <base size>, _not_ <start end>.

Could you please have a look?

	Torsten



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
