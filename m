Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C954185FE5
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 22:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2YA/wFRRkgHi/SvfG6gd1gLLKuy0/EIze15VkCHvP/k=; b=OGvQKPzgSKc/kX
	SYYzFlIzsP/dZrZvA4ziAle6RcqNtx8zChG+9VxsvLftddRxyoMRak97BwyUIEyt5A1oEfJ2PKwG/
	SQn4zyECjbdBfUxUVB1V85EPBlVIbw1ExZDSs6dp6A074Bszv9wBwWVkLc6o/W6qoNMttCQqFlfVU
	rKiPmS/CuE9qdJf/6zwBgCXQU4ZazGf6XSRhqNpuyDvIAg85tIbg9KPOGOtuvXy+ToFQ5PTRLdkzH
	tdEJvhOpumMoD1vzCGCn/NI0kitUwPaIMmCQDsv/uoANcqguU7kyZbX+mi1pffRfdXasO4opP9P8Z
	7XOWnV/cylTeptKCtNbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDaPV-0002bs-BG; Sun, 15 Mar 2020 21:03:01 +0000
Received: from o4.sgmail.github.com ([192.254.112.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDaPP-0002bZ-Ec
 for lede-dev@lists.infradead.org; Sun, 15 Mar 2020 21:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=7cmwZDtyonx+Rbs2Je659W1Ry5xTC+dFZYqwjaciWkU=; b=
 pfrHLd9NK0zi57MCMkBtoCYQrVxIyMOEBYY7Qhh910b8Xj4cTkWEhPH5L8dnBVGd
 HPrf0MK/JvQwxmDtczgyKFUgPClbh/7tf7GD5vsu/UMdoWUjd0DVDdFcyblQZyLG
 Yd55DN8k5Nhhgo8xki0clUiFHE+8KpPYjW429WsmOC0=
Received: by filter1720p1mdw1.sendgrid.net with SMTP id
 filter1720p1mdw1-20690-5E6E97F6-5F
 2020-03-15 21:02:46.89815779 +0000 UTC m=+328429.165963044
Received: from out-28.smtp.github.com (out-28.smtp.github.com [192.30.252.211])
 by ismtpd0051p1mdw1.sendgrid.net (SG) with ESMTP id rHcMSB_TSxK0ezo32oPL6A
 for <lede-dev@lists.infradead.org>; Sun, 15 Mar 2020 21:02:46.766 +0000 (UTC)
Received: from github-lowworker-0f78100.ash1-iad.github.net
 (github-lowworker-0f78100.ash1-iad.github.net [10.56.25.48])
 by smtp.github.com (Postfix) with ESMTP id 80DE48C0AC0;
 Sun, 15 Mar 2020 14:02:42 -0700 (PDT)
Date: Sun, 15 Mar 2020 21:02:48 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/629076-cebd6a@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2Sj7/96ynq5s6C29c+2tITGHxTD4WGpfjv0CS
 8FdqN7acThdCW7fwTH8psyXmWLQUr6KdZJUs/fCPvmlvto41St1hiE0rkFF1c8FvtljFdGDDeNx5h6
 +yvx8+3WXOwiUlZBjKzNkvMI9m1eOzogzGG4feByqfKt7P20wwg5pGihdCET9kH2kOULwKK1IamhrR
 Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_140255_636203_140EFC24 
X-CRM114-Status: UNSURE (   3.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.254.112.99 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.254.112.99 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] cebd6a: This week's
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
  Commit: cebd6a1ffab432fb9e4dabefdd24638420f26c72
      https://github.com/sdwalker/sdwalker.github.io/commit/cebd6a1ffab432fb9e4dabefdd24638420f26c72
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-03-15 (Sun, 15 Mar 2020)

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
