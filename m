Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B42412DF58
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 17:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYe0AOVqUlv/3Q8SIyJAaM0T3F/Qfvek8qnoW+cqhzU=; b=o+HJISduZuonMq
	JDbJBEgpkiH35qWJtHp2XoYXZ8nSdmXnG5RHS6ZHlSAmC3++y9ZSBGhvjUGMiGLDvlVJ2M5jBO9Nh
	3CXW1Vusj6NTB57dbhsz4UUS72kV8mDxbal4tPwMPW5VIGeyXN93311IqtMnvgmB5LgGwG8dCsokK
	UOBF3WVdJvvinsoRhylj94Cvi5VQmS5o8JK10cRh91i/EQmQNWUanfpdiSZuUMlBF4LZun1epQ91v
	HQX2t1W427oVVH/D5915bNAtARYXfstceM4C02AXBDH90VOv1sNOOzJkwvp63fxtZxZNW2D1NKCmp
	SWdB518W4BBRZgf7QkfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgQ0-0007Rm-NC; Wed, 01 Jan 2020 16:00:20 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imgPl-0006Xv-Rr
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 16:00:07 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 939C9530D0; Wed,  1 Jan 2020 17:00:04 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 6D34C530CB
 for <openwrt-devel@lists.openwrt.org>; Wed,  1 Jan 2020 17:00:04 +0100 (CET)
Received: (qmail 99671 invoked from network); 1 Jan 2020 17:00:04 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 1 Jan 2020 17:00:04 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 Jan 2020 17:00:03 +0100
Message-Id: <20200101160003.6669-1-jo@mein.io>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200101033735.853371-2-rosenp@gmail.com>
References: <20200101033735.853371-2-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_080006_110942_02362ACB 
X-CRM114-Status: UNSURE (   3.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: libcxx: Add size optimizations
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
Cc: Jo-Philipp Wich <jo@mein.io>, Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into master at
http://git.openwrt.org/?p=openwrt/openwrt.git.

Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
