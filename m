Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6764811639E
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 20:41:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1JmS0d4J3p14ItPLcwmX5ZhH8msxPBeiEJe2wMM8tOc=; b=OB3Ay0elsZgRug
	xj51GcHuvqoy8HcGv+IwypZE88oJ4R8dw9qoaOf1lafaSywd4IR8R8ZGqHVytMRJcM+DLrqEHIpi9
	q0TZkxNlY3Iil3sqzW5YcteLZK/xlILZIBtte4ifrD6/NpAkNx/6VA9ZoZXd/vITi/AM3aDDJseXd
	CFhuFeBnk9QcFE4XRMRHXq38cYVqoXRuD4IDuBz0DHOTUpBAEyLHx3zfzZxs0ycpRHG+AGIE1VNeT
	A+OoRe9vlQ/BDUHUbmT69otbmvqx9ZGuCTrdyZWXWPwzVvvjzqUJSqTQHCGnZtbfXr71clCQ8IBvU
	hWP7yHvJ870u9zZQdEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie2Qv-0008Hv-Lm; Sun, 08 Dec 2019 19:41:33 +0000
Received: from out-22.smtp.github.com ([192.30.252.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie2Qo-0008HS-Gt
 for lede-dev@lists.infradead.org; Sun, 08 Dec 2019 19:41:28 +0000
Received: from github-lowworker-c53a806.ac4-iad.github.net
 (github-lowworker-c53a806.ac4-iad.github.net [10.52.23.45])
 by smtp.github.com (Postfix) with ESMTP id 23D8EA0067;
 Sun,  8 Dec 2019 11:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1575834084;
 bh=3hltusvNM/j0wDStIIzwrr76f39XgGB3osPj4jQNv0U=;
 h=Date:From:To:Subject:From;
 b=ZDXZG26RJoCpc4B28R0N4AZKZoGKIILXUya0QHelZlEHo9VGH8TnZM3JI+Ul5pRcg
 956QCs6e8eR3oHgzke6xELR3eiwbLbqJgXnJQ1Gx5fQjk30xNm/5CaQDsKDLI3+P84
 9QiHy7V9wImSJ18oTO4dGbxzKElbkA7BwvEUwDVQ=
Date: Sun, 08 Dec 2019 11:41:24 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/83c714-d4b099@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_114126_632564_2BAB2635 
X-CRM114-Status: UNSURE (   1.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.205 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] d4b099: This week's
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
  Commit: d4b09966b2363f0d81c2c79dee32482b79cbc05b
      https://github.com/sdwalker/sdwalker.github.io/commit/d4b09966b2363f0d81c2c79dee32482b79cbc05b
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-12-08 (Sun, 08 Dec 2019)

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
