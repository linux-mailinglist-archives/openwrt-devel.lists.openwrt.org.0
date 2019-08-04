Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64DE80BEE
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 19:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ypLM6020jhkip0QcqHMMbXKjW5oSCoSMrQl3LZCPl2c=; b=Z+YGZ50jWxC+5m
	lDdPPUkFmhEFYxrEtKcxkH7Tj/mScCKuVbhi5bzlmZgbt1SHWd8AFCTKbWigPFve+8kl1jk0eFJrN
	/n+Np+CgxUYJ7m5ICRFVx7/1GmNnbsG6DU7X6Ae5qsyukdbvAwU5CD6ApHP6xlbGWy1wNeC3YABTb
	CvrIXCMaHGM4tZC3JwrCziJvB/XaE0y+s3goPTwjqUiC5acaqhARUFue8MJc72SkPtscyB0dDjRJg
	3FvKGp0CUdlnn4K47FG4ZozbL93AAM8jY0lzwC7cVFPN6Iip7MDYi0n5IQ97WFiwjwGAjFxRamE1V
	O/D8qQkK+1e1w1IzH8LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huKe6-0006Cr-DJ; Sun, 04 Aug 2019 17:50:14 +0000
Received: from out-4.smtp.github.com ([192.30.252.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huKe1-0006Bh-31
 for lede-dev@lists.infradead.org; Sun, 04 Aug 2019 17:50:10 +0000
Date: Sun, 04 Aug 2019 10:50:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1564941006;
 bh=+s1Bs8qUJJ3Tyi2taJO/yvWeQ38AiSwLWjlKOv7OnxA=;
 h=Date:From:To:Subject:From;
 b=OppvJq0fURltSqwS11Bsc4oOCYhouV/OqNa2pBiozs1S72POLWn+F5Zlu++Eks2ns
 sb54Nfc0Orp63mFssUU/l2+O4TgQX1RyJXSsdhSe/mZHKR4pLauGFzOK7PMgwSR1xE
 iPItwVlgfzbXqeCN71K+NY060b976zVkACF9ycLg=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/7d9b0b-5c698c@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_105009_201311_CA9C0E41 
X-CRM114-Status: UNSURE (   1.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 5c698c: This week's
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
  Commit: 5c698c4b33d62404320302a1aad7f06bac7bd396
      https://github.com/sdwalker/sdwalker.github.io/commit/5c698c4b33d62404320302a1aad7f06bac7bd396
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-08-04 (Sun, 04 Aug 2019)

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
