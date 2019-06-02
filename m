Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F591324CD
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 22:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTyTcppW4PrMWqtHjcexlNr1RQI7J7hwjszuAI1OcjA=; b=BizRHhwWIxj7Sc
	JP834onk6EYTc6Mvw0mSo/mqcDxFTwhklm5ANQ9v8+nJjoX22CLgdKs0VHD7A/TOEqy12xLM4zHLq
	x3KFW0JyWHlcticpREzdNOKsXJuGeiDqL+xIatfYMkkvZfhBXO69oKgczheuof/iIj/tipmjQgmJF
	S6FNZWgVR0dPkYcN6S3Iy9J6xhxCuRZc2LQ93eWbT53YRKiYtHGHPW00CwlZ1SEPYxlv4PWE1+SAC
	HXDkTJmULQPQCHLCoMiz/Bo12ixf9DkntQPE8WzyW5vhgMpyzB6AQkw+MZrv/DGMZwHR9b/d3fjF8
	JmhEBKctt+lCZKNT6XUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXXJo-0006wg-6q; Sun, 02 Jun 2019 20:43:04 +0000
Received: from out-20.smtp.github.com ([192.30.252.203])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXXJh-0006vq-EQ
 for lede-dev@lists.infradead.org; Sun, 02 Jun 2019 20:42:58 +0000
Date: Sun, 02 Jun 2019 13:42:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1559508174;
 bh=vUQI6AabP2fs9anRU0WkK3sy5CSXkp2UALi8tpPt7wQ=;
 h=Date:From:To:Subject:From;
 b=BGnS8a/ZxAGoOFwMmiIMY4fwPb2WC+tWhKwi5wcKpU8eICRrgpBmneQ9qPcc+9YfF
 hLCBPGv+2mxOiuwZYaxRbkYr3csxEieYqgSEnDx4ZeEyEUl/KhWFs7qst9SG+D3dOQ
 RxUOc+5JWvaFZd92UBiRwgbOTrgnmcXT63JQrJNg=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/472bd4-0bf753@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_134257_546653_5F200B57 
X-CRM114-Status: UNSURE (   1.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.203 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 0bf753: This week's
 update
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
  Commit: 0bf75338b08aaf45bca2c0818a999d1478d86c4e
      https://github.com/sdwalker/sdwalker.github.io/commit/0bf75338b08aaf45bca2c0818a999d1478d86c4e
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-06-02 (Sun, 02 Jun 2019)

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
