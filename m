Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A33D197086
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Mar 2020 23:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oJSXpuL+2XNpOj4fjwoXLl361ndQ83XuzSEjs6uG+E0=; b=NbaA2psHLINv+J
	1HrvNmmzCD8RSE/8xuhE8MSrPi26BwOqmsWB+vnHUwuiIuQNO/f6czI0aHFpWnylJbkjMYYlHwD/E
	/8JrswzaTw0NMtVbsA5ZpLPnvzkHV4ideyspR3PeKYfk1CJaYNStUQHVJXFdv2zlAhGuk2KX/g9Pf
	O4Nk0SWeVfa5h3QCCl2Jd9AmE3n95DWYP1u64D9pNj2SFIA0k1xf2nj39nxLSZDWM6qgwBP1rC5I9
	0Y4nw2buLvds7hhLG13mtU4v/eaVRf28dUfW67OB4tlawx4M3Xq51S6uM70aUX9A7V6DFQvwSMSVx
	Q8oQ8Cd4o0pLc65ehDmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfXQ-0006SP-Pw; Sun, 29 Mar 2020 21:32:12 +0000
Received: from out-21.smtp.github.com ([192.30.252.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfXJ-0006Rs-9A
 for lede-dev@lists.infradead.org; Sun, 29 Mar 2020 21:32:07 +0000
Received: from github-lowworker-1dbcc59.ash1-iad.github.net
 (github-lowworker-1dbcc59.ash1-iad.github.net [10.56.105.54])
 by smtp.github.com (Postfix) with ESMTP id 590A2A009E;
 Sun, 29 Mar 2020 14:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1585517523;
 bh=OZemI5HfGRgXcm5VVHcvuyph8Ky4FW30iOlt2D5Mfhs=;
 h=Date:From:To:Subject:From;
 b=Uj2qJxnBCIe6A7ebVMrvXiOgsucNKpeGRX0X+XuK0TzvB54o1EqSjcm+RYM1j6h0n
 pTd/vNX2zYx/Iz+/asWJt8xdhGN4cqC5Ez9sOnINeujJuaJv13S+XM2xOHLQRapjao
 qn26ciR/su0756rMy/0DhLRJjFmTI3qbh8fZ/1CU=
Date: Sun, 29 Mar 2020 14:32:03 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/f792c3-2d2288@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_143205_859366_6F1A59D0 
X-CRM114-Status: UNSURE (   2.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.204 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 2d2288: This week's
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
  Commit: 2d2288c96f3179c1310d600e6ee65acc17c08380
      https://github.com/sdwalker/sdwalker.github.io/commit/2d2288c96f3179c1310d600e6ee65acc17c08380
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-03-29 (Sun, 29 Mar 2020)

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
