Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E379A6F5C2
	for <lists+openwrt-devel@lfdr.de>; Sun, 21 Jul 2019 23:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eZNMk+OTZCvEIBwMXz61Ohf7ERwGDxAk4TD3I57W6wE=; b=bvHGsm1v+YMuXr
	DehWLOOOA3/EV4M1JWknzt8bXrqWSpXsKEE/QDYmSreWYH3wRScOg8U7UWefTxO8cwZGBmFik+uZt
	uA8wYtLDgZIGnqbAXKAq5FYqPrs/Btwt+hCwgwt6pYMoC0ZwA/HCa9lMbvR5Ag7XEUrzpA/9oImPA
	YRzp44UVkq8oVMr81PvSQSmcwKjg8C4DkLFQJpli/V+ibCwMNmg3LMG3YwtcTS+GsaWieMs7iHdoQ
	hyfcxDs5hJ/T3j3oWToizFLZIN7gUgzW+EhESCPWyZKwVkvlPNcqdQ+sC6oX9f8zmuHFUcEAhrEnj
	vJREBXV4e0M95Stcfh6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpJAm-0004ol-34; Sun, 21 Jul 2019 21:15:12 +0000
Received: from out-1.smtp.github.com ([192.30.252.192])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpJAP-0004oI-7V
 for lede-dev@lists.infradead.org; Sun, 21 Jul 2019 21:14:50 +0000
Date: Sun, 21 Jul 2019 14:14:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1563743687;
 bh=o4GLI+/4wd2a41wH/Iz3wJMDzWTXtufgXzhx5C+/upU=;
 h=Date:From:To:Subject:From;
 b=jXOGM/qRZIIgJArCXs480q0TyYVEt9RWKrL2/xNII88xnAKGlriW/BxOJNd046KWM
 GMPxDFpa3DwY7rw1QtTvC+5vu3PE57y8pmyXa9wXn0A37+cuQItO40WUob+Q8JAyK+
 nDfDC9DX4b5juROiIFxbejn0MORmZh6cLeLZ8N0k=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/7b7b8e-3d13a8@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_141449_336911_357DDFBF 
X-CRM114-Status: UNSURE (   2.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.192 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 3d13a8: This week's
 update
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

  Branch: refs/heads/master
  Home:   https://github.com/sdwalker/sdwalker.github.io
  Commit: 3d13a8b6a0aa4265ae0cf1d7039cc83968b2d3ca
      https://github.com/sdwalker/sdwalker.github.io/commit/3d13a8b6a0aa4265ae0cf1d7039cc83968b2d3ca
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-07-21 (Sun, 21 Jul 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
