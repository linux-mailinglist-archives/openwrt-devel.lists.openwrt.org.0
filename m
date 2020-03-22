Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C3418EB9F
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 19:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BFenoLpQjNTrCNS0YCI/VWyXrDmLkHH16S7xTJnuj6w=; b=a/vX3ap9/vGdGK
	UraarUFWRyXontA3JrAO2ULLQzMFSmjTG09y1Luh6Jnns9MZ4bSEoAZVR5823NS/gE81tzjx3CzsF
	mL1AhsGP41xovm1UYzeVs1DrkWZSKKv+zzFTNgNYfacKa3ZOULtVGKoGdSfLT0P09E00WD6BSfwuu
	tEhU8nM8th1RV5MbHFZno5DA8eOTVw9zZ4Jsmp2BXZp8iD1/76AgZORtFRlwlN1vWBcqMZHDdn9kh
	l5Tl36E8bSkp5cCobyeBqFuKnDcNnUGTWcACFnED2wshKCp61DCqCVkOtM2Z6f1KxUvX/7Xzm2NYn
	krnW3psa+PZNRTx3F0tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG5ec-00082L-2g; Sun, 22 Mar 2020 18:48:58 +0000
Received: from out-13.smtp.github.com ([192.30.254.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG5eU-000824-IM
 for lede-dev@lists.infradead.org; Sun, 22 Mar 2020 18:48:52 +0000
Received: from github-lowworker-9bcb4a1.ac4-iad.github.net
 (github-lowworker-9bcb4a1.ac4-iad.github.net [10.52.25.84])
 by smtp.github.com (Postfix) with ESMTP id 6EBC8261599;
 Sun, 22 Mar 2020 11:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1584902928;
 bh=JWJW7We5DssmBBZf/ESYpvZD0w86a7vQTk98TJBajEM=;
 h=Date:From:To:Subject:From;
 b=MLBoKsHdpwcsAOHcFqMwr52r1sy6XPqBeNBQiXN8QuQyjYRK1dhpROOqGBwopZaU3
 PVl8J42q4568pQWZNwwz9xAOC6t3gCEpmiiu8Z2gRYEzxA1vGXjGXM/8qzk9CYqVt2
 BkE89Yt4JtcvZKrM7s1fVJFI6qAKeSOPS+Rw0tvw=
Date: Sun, 22 Mar 2020 11:48:48 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/cebd6a-f792c3@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_114850_641249_E37904D9 
X-CRM114-Status: UNSURE (   2.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.254.196 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] f792c3: This week's
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
  Commit: f792c35bac2177d31d2d12be0a4a1eeb455d6e20
      https://github.com/sdwalker/sdwalker.github.io/commit/f792c35bac2177d31d2d12be0a4a1eeb455d6e20
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-03-22 (Sun, 22 Mar 2020)

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
