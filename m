Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F22130AA3
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 00:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L3mU7LgMpFUi0z0/2fet7tph/XT/l3buzunb+U9HLaU=; b=ew+Ut4BjG7i0KP
	JW4NkVUoqeD/7FuvV4J7Ry/bjFov5ueehbUh+d4UY2ua0O4fjfN7UZ7qkQvLqkHdPTB8/JQHPl1zM
	rwUFHFFO0bJAzDrZTv/r4LwkhF0W8qxVqIwj6UBAWnc1LNForDKjCwqw84Vdto6GCJyxJisQJMwhy
	+L6d/G6u0tkf2AAtyqM1AODoOTppZPxMMPgIPoadtZ8+QscZVNd9VTS4MWvkbrc9rBm42NVaYC7/U
	ktwPkwymtjSOh5TyIRcJHEEYGLrlSBNYTnIf/ZX5X2/rUKeeAVKavxFZs/PfqbhJvAL9KfEakyFrW
	2E+GTtDHdo98cavVdu0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioEsl-0006Gm-VU; Sun, 05 Jan 2020 23:00:27 +0000
Received: from out-9.smtp.github.com ([192.30.254.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioEsf-0006FQ-7G
 for lede-dev@lists.infradead.org; Sun, 05 Jan 2020 23:00:22 +0000
Received: from github-lowworker-b19c547.va3-iad.github.net
 (github-lowworker-b19c547.va3-iad.github.net [10.48.17.66])
 by smtp.github.com (Postfix) with ESMTP id B8111261663;
 Sun,  5 Jan 2020 15:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1578265219;
 bh=bsrFFLyTOXKu3A6f9tNJFPcXidl26LpgX8U6ykttVWs=;
 h=Date:From:To:Subject:From;
 b=0XlkFyskvlQp2GHdnz+TfYlyGAqPhKRadyVyNz9RI8t6rl0y/NXdencvGxERkGpDb
 tXSTQBJTTPJ+dx4WZn0RdXxfU2g7gMDw1xNCHrNHke8acslKOUItzncrBQ8E/4Q1uv
 pKQaimNpmiHSu802uWp4E6NDVZCqH8jw0I5uOydM=
Date: Sun, 05 Jan 2020 15:00:19 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/b52356-9a4ea2@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_150021_329357_90C71736 
X-CRM114-Status: UNSURE (   2.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.254.192 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 9a4ea2: This week's
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
  Commit: 9a4ea277be13410f72ab6a36931401cbb886960f
      https://github.com/sdwalker/sdwalker.github.io/commit/9a4ea277be13410f72ab6a36931401cbb886960f
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-01-05 (Sun, 05 Jan 2020)

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
