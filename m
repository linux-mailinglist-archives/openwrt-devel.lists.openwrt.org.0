Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF3D1E02C7
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 22:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0GRxP+3vA+HSNeBceJZ9R1NOzqJEl53SkGwy6a7LCj4=; b=Dlw9ceR8aM6RdZ
	we1LgTO17N00yWIKuXs2Y3bBguSd1jOFf5YzkL6mIHjNKNC691fJqAn4SeHAnyzrSENBgIN6ddZVj
	s9eho1g8uhcw9k2aBG2HhIHwSpND3hOXzttvVeNsxECasQBZOujan5Xt8rqpKEYlXTK3bOW0Z+OJW
	fGhP1slbm51XFsX1WSpClJDjvn0wkwgVXbqbHoDN0fuNickw0RsG69ua7mzXeJDd1t/cOS1bBbtC0
	Gg8dhm87VaQTZTVzbGXDQ8Uxlwaxsf1q2TXiPsEFgHGtVDI8J4tU9o/NQb8zC1okrGckH354YmHsl
	QWVoXo+MwHKKXGCZ+sDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcxNo-0003cK-3a; Sun, 24 May 2020 20:38:08 +0000
Received: from out-7.smtp.github.com ([192.30.252.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcxNh-0003bv-Jh
 for lede-dev@lists.infradead.org; Sun, 24 May 2020 20:38:03 +0000
Received: from github-lowworker-0f7e7fd.ash1-iad.github.net
 (github-lowworker-0f7e7fd.ash1-iad.github.net [10.56.110.17])
 by smtp.github.com (Postfix) with ESMTP id 822DD2C0BE3;
 Sun, 24 May 2020 13:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1590352678;
 bh=FOJV3q3/BdgnAxeW9liyd5u1pGNBuzAv0qwcegftZMo=;
 h=Date:From:To:Subject:From;
 b=JXmJYaRncrg/JsWSG7Gfle/f6CyMLafv6sJYVzmUtPpxQ/XmxmRiOira2k/H6yF03
 vNIbbtzeC27TXcO1ygQCdKl9p6cIp1aNCGCPFnbnUwNDvzwUnT/LQtXHKVbsao5vhk
 rFsItzMAG6JP5RijouhrmKEc6+6usek4KpV5ri3M=
Date: Sun, 24 May 2020 13:37:58 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/ab8059-a33bb0@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_133801_708466_7BB2495F 
X-CRM114-Status: UNSURE (   2.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.198 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.30.252.198 listed in wl.mailspike.net]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] a33bb0: This week's
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
  Commit: a33bb0d72905082885c013e87c28e8bcbde808d5
      https://github.com/sdwalker/sdwalker.github.io/commit/a33bb0d72905082885c013e87c28e8bcbde808d5
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-05-24 (Sun, 24 May 2020)

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
