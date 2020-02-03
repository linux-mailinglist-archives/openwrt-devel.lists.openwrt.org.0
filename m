Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31AB150564
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 12:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vDzUEHJTAP0roziUNnLn1hfE7EmbLzwMYozLtCoJJXE=; b=kMs/MBq9dsSnM6
	dL6zhCe+6277Wum6UoXFFJGeRWnvGYlAarubimEF2TGcbsKiiwBNNmOO0+wQd40GPmzkjMN/MgIAm
	Bsh74YYhPxXSx6ygDYiUsBKxxc1crt56WNQCSsMUUPibj9milMhhaOMlR5jYs+MCszQd37Pthhdxb
	D+dw8WnJ5kn5WBhB9tg14KJ7o0jbnqeX3nNu4UD2+XGPhMpXGMub5hbM7dJvNnmTxdnCQVUxUtZH/
	mEQErrEQQfsAdPFM0NchoZGqwYBNWHEiMPtTmxaXLn+lGOWHJmomK9DDzGnrjAPOhcZ7gYHIwwadJ
	itn7Nnpp10bUyr4Y7pLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iya4E-0004mW-Pd; Mon, 03 Feb 2020 11:39:02 +0000
Received: from o7.sgmail.github.com ([167.89.101.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iya47-0004m0-Og
 for lede-dev@lists.infradead.org; Mon, 03 Feb 2020 11:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=3BD2EOIHYOGYPmRMc/MApzQWVjkxz4ADa1s1zEkkwpc=; b=
 K/5PF3ANuEnyOEQoJONvmHUkdZNkN4BQV+mGoMNCyAqIwBkw3yZxbt/hmCnw3ivY
 cn0HXfsnljPyEh9WBjcHE/fdU75yiiCoXQyOjP75HXdY94xBDna326po7trQ86CD
 ZuaY76WLJ2ses2RkWWvr4ky/ThUt9LNmKy3RVJcY2VU=
Received: by filter0371p1iad2.sendgrid.net with SMTP id
 filter0371p1iad2-32203-5E38064D-10
 2020-02-03 11:38:53.551777185 +0000 UTC m=+597856.154221981
Received: from out-24.smtp.github.com (out-24.smtp.github.com [192.30.252.207])
 by ismtpd0020p1iad2.sendgrid.net (SG) with ESMTP id sKSpSZfoQTi8FKxRPDF4yA
 for <lede-dev@lists.infradead.org>; Mon, 03 Feb 2020 11:38:53.535 +0000 (UTC)
Date: Mon, 03 Feb 2020 11:38:53 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/fdb67b-70670f@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2R5ws3jcF2HvRnXdzXjNqgTZU8MarYlc6aiZ2
 tcgViM5jm7XwPambMJmFpeZf5eJ16OkYYuztXqq9w5fer9Ux05uZ5kWaTWSp+OAmpDdiJFnirwtPg+
 EmUWjVcWA8OHy/tdv1Sc++wqPGLJnawlgsvbj6lr7N7EGYDU1oZsxSbXEIlam3VZWA9nBKIs0xuxSx
 4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_033855_961596_FD158BAF 
X-CRM114-Status: UNSURE (   3.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [167.89.101.198 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.101.198 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 70670f: This week's
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
  Commit: 70670f30aeb73e2441c7cc54e9043b23b8de80fa
      https://github.com/sdwalker/sdwalker.github.io/commit/70670f30aeb73e2441c7cc54e9043b23b8de80fa
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-02-03 (Mon, 03 Feb 2020)

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
