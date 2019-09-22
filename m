Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FA4BA418
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 20:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JF5OvJanR9ggir8Ql5cU5uAdO8773l0HBXjxaWahuic=; b=DMXNV8v0HN4kuR
	/3Bnd/MAkDJrTDhG3PYXO38aAy1k5+LQ+iLnDvUHUOvIE7tF/4HMEvLPGE2YQaW1ZFxU01qhr1XA7
	8zEP4S5gqB4KniU35oXl/FYrlOPSsXMySVYY6iAmqLKC0KCgAZV2ZUgIe7NdX69hbey0ebenNRBHb
	2sYp0v6mqnMv1twf91Q74AzCxRnXPzAjLnp2cLqwND84dhlLwoaWm1zWJq3meX16E1C41vZkgsO8o
	CFwtrfD71VamMFtFEWa5n3grQzIuT4Hy6frbqrdc6g8W/adUc/T5hcph6wFZli1z4qeWJhNvYY86I
	lUtYDMliNYgkfT0qByKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC70B-0003Kw-2P; Sun, 22 Sep 2019 18:54:31 +0000
Received: from out-21.smtp.github.com ([192.30.252.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC700-0003KM-0U
 for lede-dev@lists.infradead.org; Sun, 22 Sep 2019 18:54:21 +0000
Date: Sun, 22 Sep 2019 11:54:18 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1569178458;
 bh=pSl3tzkM+rwyYhQe3c8mtogKXeLJ6gNdULOGLygqW4c=;
 h=Date:From:To:Subject:From;
 b=muqENgpfAvdN4LH83KqU83ou07/J4BP/S++Fnu41E7aLl7tNDk1PyTqIpqiKf4pFE
 RzQQPC4mQoFfw2Js9EOqINXvjH+UnKEW+FI4DmdXP61zabYbdW970Hg54RTxV9y88M
 QPrIc+mZhK7C2QwLfKEs9OgacgGhyXwOTigfK6YM=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/4b1ac0-a8cdda@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_115420_116284_2CF3C128 
X-CRM114-Status: UNSURE (   1.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.204 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] a8cdda: This week's
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
  Commit: a8cdda328bc2290618b943506d84c496c6cf77c0
      https://github.com/sdwalker/sdwalker.github.io/commit/a8cdda328bc2290618b943506d84c496c6cf77c0
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-09-22 (Sun, 22 Sep 2019)

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
