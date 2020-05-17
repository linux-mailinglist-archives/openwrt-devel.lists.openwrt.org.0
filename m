Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAC01D6CF9
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 22:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bkcDjPEEhfJpv4N1QBSNj+cLpVv8nagexl23Jaz5njA=; b=JO0tqKFsKC0ZQy
	wDN2vUJCpFfhmxrmipcQ0MvcPjNr1sILrj03PiOBcNqan6+HFbXGCRLWdVte4kvhZZw8gw8JEqoVq
	/hMHEzMpHhbHKJ4uZF+Ij4F58OnN96vWMagRYDVx5PXIbm+ZmKS+g09qb5awv9JbNny206KB+eHU6
	5bqyGLoxV2WxJFCRJ9Iu6+neCH0yB5DqZqxUv18dMmpXn0CRP0LGWPkbXuY21Rk3OaaXTTGKhVJlw
	P97YcsLcg7NNNST/t+GcHLLPqklY3jkcMW0wbcd3FL4TNopu5Ezfg5mYpJun+hxotUYuqRQX4TgCu
	7mSL/3wNccTQhly0x4JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaQGx-0003XI-NV; Sun, 17 May 2020 20:52:35 +0000
Received: from o6.sgmail.github.com ([192.254.113.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaQGr-0003Wu-83
 for lede-dev@lists.infradead.org; Sun, 17 May 2020 20:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=UPW2Q32gY/aiueztbeo7wGwFSOCtCYfin9K9TxAi7fs=; b=
 d2cnNHzgSL5zrcFAr2OVGUCdGMZhlgE1PmvvKAIHt3J8qOiUNJRoPFczGZ13zw5o
 2jfJuUFjya0rt0b6VaAwz6gT6UuVUOHhPj8/+d9rxODk9BtKrCYEf1+xC4jU5j8/
 +ILFtXg4elRVuY+HwGlGwkeUwl0t47ndnwJWg/vvAR4=
Received: by filter1527p1las1.sendgrid.net with SMTP id
 filter1527p1las1-18671-5EC1A40A-7
 2020-05-17 20:52:26.1314357 +0000 UTC m=+2749604.594860550
Received: from out-23.smtp.github.com (unknown)
 by ismtpd0053p1mdw1.sendgrid.net (SG) with ESMTP id y0JX5v5jQiWvsRP0t6xtdg
 for <lede-dev@lists.infradead.org>; Sun, 17 May 2020 20:52:25.929 +0000 (UTC)
Received: from github-lowworker-c53a806.ac4-iad.github.net
 (github-lowworker-c53a806.ac4-iad.github.net [10.52.23.45])
 by smtp.github.com (Postfix) with ESMTP id A445E6603AA;
 Sun, 17 May 2020 13:52:21 -0700 (PDT)
Date: Sun, 17 May 2020 20:52:26 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/320564-ab8059@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2TiQDjPescA+Su0s4HqxoREUZ0OcuCroszFwA
 5/mhvblRnFi+SwLBvthRMqxg+NmwEEHFV8tPZJe3ss7nb+aFNXZfwybkoSsw4sNMhtVPYU68fS+e5n
 dWexed9CVT/CiS1ZTe/vNCbVcNpW5pgUBLLQrM+Xp1F/ABAroeGSkkHNvV6MY99mGp9NfjLXlf/D2S
 s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_135229_307182_AF5117FE 
X-CRM114-Status: UNSURE (   3.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.254.113.101 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.254.113.101 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] ab8059: This week's
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
  Commit: ab8059ea195ba50a41d59dbb8f8d3a6dae737f51
      https://github.com/sdwalker/sdwalker.github.io/commit/ab8059ea195ba50a41d59dbb8f8d3a6dae737f51
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-05-17 (Sun, 17 May 2020)

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
