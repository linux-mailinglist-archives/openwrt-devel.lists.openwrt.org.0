Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DEB680A4
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 20:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cmCGcZb4zGHwX/AeH1dLQg7w/dY2cvEU1WQKUgPNvdM=; b=nxgP7j2cLMIDPS
	9QBbzIVSI9iWiL3e2zpYnFAnnsdn0+mKPivmAcPwwnYh4Nuf/cC5CJrOE2Y8vb9wgKiY6wTV4EeW4
	qYlEv2FZ2yT0JvVyDSW8FUwbQwQBs+FX/f0G7xGo1uZkv79Wd40nsUmMsSuf3Isfu/hSDl3GFEoKz
	SRVT1JGZ+EmZO8g/aGsYkhlaa+Ppix5gHwhPSpbK356Jq/VS1TrsFVBgVwhYXNPT8Vu4IzFD0m73k
	AcvYlga85rTSmcZkjvhdAw3UasUQdr0DJkxbRf3eTWz0me0L/llbWU4z6Y73WVqKV6NW2pCKh7VvK
	K8HBLAf0OI5wtdMRLWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmj2s-0006k5-42; Sun, 14 Jul 2019 18:16:22 +0000
Received: from out-3.smtp.github.com ([192.30.252.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmj2j-0006jb-Hn
 for lede-dev@lists.infradead.org; Sun, 14 Jul 2019 18:16:15 +0000
Date: Sun, 14 Jul 2019 11:16:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1563128171;
 bh=UKL9MRlaZfGx1shlhtYur+QoP9f2l43+phQGBvR/LX8=;
 h=Date:From:To:Subject:From;
 b=Jl+d0Cinru1d+HNHFPDcGPjE6E9mIo6xl5rOZXp8mP6iChu4hQ/m07HB6IBjAxrjh
 fn1cmYrM4MIZjLy44yb0Y8+7KwyxG6j+dWYAhU9CI+oRtO3RVvkBhh4kBogYePIuhI
 Mpgc7DSmBtFVWx/aWa57QsDt9/sDre2DOBY84Vxw=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/a9c7e0-7b7b8e@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_111613_661878_0EDB5204 
X-CRM114-Status: UNSURE (   2.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.194 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 7b7b8e: This week's
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
  Commit: 7b7b8e8a25ddb6444c3c91fbb23f41a5f4b80deb
      https://github.com/sdwalker/sdwalker.github.io/commit/7b7b8e8a25ddb6444c3c91fbb23f41a5f4b80deb
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-07-14 (Sun, 14 Jul 2019)

  Changed paths:
    M uscan/index-18.06.html
    M uscan/index.html

  Log Message:
  -----------
  This week's update



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
