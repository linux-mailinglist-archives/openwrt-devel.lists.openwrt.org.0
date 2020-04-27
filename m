Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DE11B955C
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 05:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h+9JpamZ5//NwtJeiWSqMLaR0KzO/zZb79QBV3UpRoc=; b=maeIzEvtp67yYn
	W3OCvqqmkITPq+68W+EEUgQqM72cKPk40ISLgI1d/VAfS1TncV3SeaPs8oFrtqO36VyIvHZsxbhBB
	7Ba+9L4jR1dN7m83Z8Eq+WFmsG1i4s8+jN0RuBKvu1Zai25nIbh9yzIKnvSMFtMcMUkdn76MhY6wT
	C8fQxLDpO/sTSJkvhzJ4b0XCh5VwdS5h13j398wrznPZqmWe4yB2R0PXpN/Y4XNtVdg1sJZOHcuAR
	/RL9mxv7M59EEzZFExBqq5y2jmFy5uftDRxKt1vmoa6/iFvxiYNXXU18UH3IPrBz3oqWppOJlPr6M
	EnU4FIGQkC2r8IqRerOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSuGD-0002ML-Hr; Mon, 27 Apr 2020 03:16:45 +0000
Received: from out-20.smtp.github.com ([192.30.252.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSuG7-0002LN-Sa
 for lede-dev@lists.infradead.org; Mon, 27 Apr 2020 03:16:41 +0000
Received: from github-lowworker-5825cd4.ac4-iad.github.net
 (github-lowworker-5825cd4.ac4-iad.github.net [10.52.22.68])
 by smtp.github.com (Postfix) with ESMTP id 57B5D8C0055;
 Sun, 26 Apr 2020 20:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1587957396;
 bh=hxcc9mNCTaEyxp0DHMC4aXMOOcWBwV0Z93HnBdIYCxY=;
 h=Date:From:To:Subject:From;
 b=HboXOBhUIL4wZH9gSBsJv9EeKHDadRakP5CCn3qwl1WG3qxpuLq28lO6gxi1jz52d
 B7J8ICCKsA8iyCWWmsLQ6UQZwPC60b41l3I6KFfIXxHgRBQPvBlYYVdmDzI6Q0YIxa
 fJ40sHDLg6Pw21C8MQUBdqWNihhXzrudvsSoslus=
Date: Sun, 26 Apr 2020 20:16:36 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/3edb67-9d51ce@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_201639_994869_10A959B5 
X-CRM114-Status: UNSURE (   2.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 9d51ce: This week's
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
  Commit: 9d51ce0b6762fe5af66c8517cf9ef9052aa017ab
      https://github.com/sdwalker/sdwalker.github.io/commit/9d51ce0b6762fe5af66c8517cf9ef9052aa017ab
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-04-26 (Sun, 26 Apr 2020)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index-19.07.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
