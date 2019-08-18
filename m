Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FD1917D0
	for <lists+openwrt-devel@lfdr.de>; Sun, 18 Aug 2019 18:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TczG7B/FHAXyE3cn8mf5wLp6CMHuzSJMw80BJpNR9F0=; b=GGiLp5cgKiYOSG
	iQW/oyBxNZnrYrWWU1HO2PL1JvJ1tqir7095ebc/nc0JpscKZ+QeGhCzlanBcEHs4p6qarTzQc58K
	l7FoNsQsK+9DVJkZ6W/6Atqo93/Tro5a0wpesEldmhAnCNyye8B+Xe4vYppsJgIpdw8ETRunRFfu5
	rT7tqE5HY33gD53/hdv6MvUBqVfKa+6xj1v+FSlly5BV0gK9b9RR4K5Vy1jVBG82dPLF14YeUowzc
	HlOrZ0Tbpo7XYKil3mpAZvntIoPl6gjRvWucPQIstmOcWV7R3jh39RA19M/BcKGYdXkCJHb5ik4qj
	OSxBB4wb20//UY5t3gcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzO1O-0006mL-2v; Sun, 18 Aug 2019 16:27:10 +0000
Received: from out-1.smtp.github.com ([192.30.252.192])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzO1G-0006m4-Ea
 for lede-dev@lists.infradead.org; Sun, 18 Aug 2019 16:27:03 +0000
Date: Sun, 18 Aug 2019 09:27:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1566145620;
 bh=tgvZiARzPjZ3gjy9KlLdpROMKNKvoxqY3OjLACdrg5U=;
 h=Date:From:To:Subject:From;
 b=oeeyR/ww2kxA4jFSL6XsywoUhN8TdoC7N8f6uPqYHwq786zhHZyG4rqujkiAS71CO
 NLLOUunAdFRdIzj8NZfRHbeeOHAyXLbR9rXAMiVTWe0xFsKGRlVYawGXRETrE8m2Zw
 BZ6u6/6icj790YNjdTu/nrLXfvSY3V0IxGPeB/nc=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/75e9cb-aa423b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_092702_554314_18DDBFF0 
X-CRM114-Status: UNSURE (   1.99  )
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
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] aa423b: This week's
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
  Commit: aa423b7f2b7da00e83ea04dff2cea3e6ec53286e
      https://github.com/sdwalker/sdwalker.github.io/commit/aa423b7f2b7da00e83ea04dff2cea3e6ec53286e
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-08-18 (Sun, 18 Aug 2019)

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
