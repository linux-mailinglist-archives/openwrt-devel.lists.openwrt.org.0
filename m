Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28651CCDAB
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 22:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WchcC2bExnz5k9w+dROd2kPkoQOrii+xrhx7mqnlYKk=; b=PmcOHPYrT/jAtV
	fUm/owkLPj8wGa0goyOyWfiDuRz+lInohyxpwicyULpexrR/R3L4nr2DOYgp646+LteDyjh86p7IG
	lgBqJZUiCe1UBiFS56TLlRbW2LpVT4NJo5yIkQ4Mq5paZvtdpJanfpPe/QcElHZ3aiKH1QP5VETtv
	Gdx4tjESHYjAN2NQB9I2NaIuwULyhd2/BvdreM+PnWMw5RXwfMIBN9N/TAz1y1rNMsT66TlQqzj5k
	rJdoYbeEkA3AX3x7HVtmZ90sBVsKBUwSszTHb6JhLy4mkG0G2DHT8lvej6sZQjtrCX5W9bsQ2o7AF
	QimfQl3fjPZIeBwSY5/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXsNO-0007QA-8z; Sun, 10 May 2020 20:16:42 +0000
Received: from o1.sgmail.github.com ([192.254.114.176])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXsGV-0004rU-GT
 for lede-dev@lists.infradead.org; Sun, 10 May 2020 20:09:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=zHgAQiEr715OxhiAjEo/uETF6mGDZoxH9uhGecblExk=; b=
 BG9gxirBdq6m7DgVcNJkcZx0qp7RspkbdqzpxnB7hS+sA8ZQPurVIYnGEo1Hz/Vs
 wPinxlVorZBhv3NCD2RXV7e6uIJJdMIBRPFT/e0c42OwNLNsAYbVJG55t37jg9rc
 xPDffY82u+v5WRSbqRfOsQSJtJGDe0KRWcO1qA2f5Z8=
Received: by filter1780p1mdw1.sendgrid.net with SMTP id
 filter1780p1mdw1-731-5EB85F79-18
 2020-05-10 20:09:30.105476021 +0000 UTC m=+1148725.991278295
Received: from out-25.smtp.github.com (unknown)
 by ismtpd0046p1iad1.sendgrid.net (SG) with ESMTP id 4EgxcfkxTYqk-K-XBbjSAA
 for <lede-dev@lists.infradead.org>; Sun, 10 May 2020 20:09:29.900 +0000 (UTC)
Received: from github-lowworker-ca235ff.ash1-iad.github.net
 (github-lowworker-ca235ff.ash1-iad.github.net [10.56.110.15])
 by smtp.github.com (Postfix) with ESMTP id C6754282B5C;
 Sun, 10 May 2020 13:09:25 -0700 (PDT)
Date: Sun, 10 May 2020 20:09:32 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/a1eb6c-320564@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2TAWNV5bDh2g6X45njSQt0RgpvfQmPkF+OvnQ
 HyDlullRSm2AZi2r++8RGvpCE18bH/sVBYBI2BdCervASa11pVvzKFeS3z0ylbXYwNw7xqrE72e3pc
 zJUwpUQDz3+rGKxRnXyk92ZtlYMLs4JZJvBYcyE7eZNhwN6ItnkjydlXJvAHtbFZay8YDu0iNsT04S
 M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_130935_703259_09DDD6F1 
X-CRM114-Status: UNSURE (   3.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.254.114.176 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.254.114.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 320564: This week's
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
  Commit: 3205648d602ce8c61e4e15b8b6a92e2317497d94
      https://github.com/sdwalker/sdwalker.github.io/commit/3205648d602ce8c61e4e15b8b6a92e2317497d94
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-05-10 (Sun, 10 May 2020)

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
