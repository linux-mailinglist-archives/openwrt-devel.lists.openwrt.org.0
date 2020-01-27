Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70307149E6A
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 04:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0grWadipaDKLKKQ9jq9YI75B4VaNu8FKC4M1NmfVV6k=; b=FXvjxCTr9HtRY7
	yja/AtU+eLzO93n6UuoM5MlRFtgZ02wWDUJ7NNQifsdk2hddfYVaIKr4W5jabyGYXeMSMxwnO2nOQ
	Fk9XHrYQgY/5eIFC+IS4kmeGReDKzceS0XKWnynT4VbCLa5jlGte8kQv/cfpQctvRhQS2N5QHgJSa
	o2UBhv0/GhzB8/8u2ZON2U7qQ4tnbbUZjGs9bLNbWXfTxnK2Va4n/xpYufOlYJ9JJh0lGxnLY+kDT
	ygjuIg0jWcawwzV9OGT0cAp8lhV14Iu0ckxMJBI8tlVutklUFn1WxnCeq7b4lLMW3YJrdNjwjMuCV
	lTwUAQzUluFmzLMPhpjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivvGY-0001tE-6j; Mon, 27 Jan 2020 03:40:46 +0000
Received: from out-5.smtp.github.com ([192.30.252.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivvGR-0001sd-Ey
 for lede-dev@lists.infradead.org; Mon, 27 Jan 2020 03:40:41 +0000
Received: from github-lowworker-f045d1f.ac4-iad.github.net
 (github-lowworker-f045d1f.ac4-iad.github.net [10.52.19.54])
 by smtp.github.com (Postfix) with ESMTP id 3ED5E96040A;
 Sun, 26 Jan 2020 19:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1580096431;
 bh=oJPB/LrIiVzMdZQb/VdY7GxNU+9PcDKbCQwtbU3N4IA=;
 h=Date:From:To:Subject:From;
 b=n1Wb66gpuFD4SEt7H6ujMOLzTc9YCQoRgGwblO9O78GRfC+Hez1pKov/pUST4F3RM
 mKonc4Z5yIfasPhpF7ZKTLYhbIEauAtE8KLGBp5e7vwCrWT6296oMNOBhv/V5oTB3f
 Y55Pp4wrv83G+zsxZA3DqyUOQ8cJMI5ssQH7fSzY=
Date: Sun, 26 Jan 2020 19:40:31 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/fd5324-fdb67b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_194039_565468_159F5826 
X-CRM114-Status: UNSURE (   2.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] fdb67b: This week's
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
  Commit: fdb67b7c73b6580d15f8b209764d31297f0cb68d
      https://github.com/sdwalker/sdwalker.github.io/commit/fdb67b7c73b6580d15f8b209764d31297f0cb68d
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-01-26 (Sun, 26 Jan 2020)

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
