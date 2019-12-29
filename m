Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4274712CAFA
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 22:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qU5B33NdjZWbfmkqXqrhGAMUDXq8N0zyh8P/FvLw/34=; b=BTfGsMbJF2ZxgQ
	MQbjmEGebVSo7H0BUdZVewYczmssxJji5qQ+HgI2KdSzFT9waK0QeNAObIDpv3XEIalMhBh+rCkzV
	um4uiB0Oif9ddto7fBoVxHhKH+qtMmjQgNsJKXeckmX6Fz/6tavpHCJ+GnnhHLinbUJ2f//7g/GvM
	1OGhBb30+1DTCkRcaW/JKuGmL0kaQJPqzqS5gBUj34tvdmMMESFZ6VeokNV/uLH2urZLROe89S2fk
	1UWh62q7+SnnaoQC86zv35n2+lvi0dbtUwfhT0/2LC8hT5+uXjumPWHEMyslAiVdl4L6JRYrnWeaG
	ecFmCEHVl3m6pdUbQVWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilg5M-0006qs-9N; Sun, 29 Dec 2019 21:26:52 +0000
Received: from out-5.smtp.github.com ([192.30.252.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilg5G-0006qS-H1
 for lede-dev@lists.infradead.org; Sun, 29 Dec 2019 21:26:48 +0000
Received: from github-lowworker-d31a065.va3-iad.github.net
 (github-lowworker-d31a065.va3-iad.github.net [10.48.17.70])
 by smtp.github.com (Postfix) with ESMTP id 0C282960240;
 Sun, 29 Dec 2019 13:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1577654803;
 bh=+Lmi8bm2G+9BudMiqKGy8A0y4aQSu1O9Xgeb56Cjsns=;
 h=Date:From:To:Subject:From;
 b=QaT532H4n8RxSshgdNaj7UqvdkBZjqCNWYaUshgVO5By5o4Or5jdF5q3YY+R8AQZB
 wQFcUSZZ7RPqDl4UtN8rUaCI4cKlP4Isq6oqmBU8M7wj8SbSHCS5sq5bAXSnW+zmPl
 +eyvG7XDf5ytEGzGYvSkZbQUw22RGvoI5Uhoeeds=
Date: Sun, 29 Dec 2019 13:26:42 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/ac019b-b52356@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_132646_668893_4ABE8F85 
X-CRM114-Status: UNSURE (   2.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.196 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] b52356: This week's
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
  Commit: b52356ed22538d192add9776624c48933490155f
      https://github.com/sdwalker/sdwalker.github.io/commit/b52356ed22538d192add9776624c48933490155f
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-12-29 (Sun, 29 Dec 2019)

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
