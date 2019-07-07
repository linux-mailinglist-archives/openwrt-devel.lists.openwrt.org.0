Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F39615CF
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 20:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jt7SbnB+Ey1mgqxy3nRC+qdUqd0bnrd6FBbk2yvv6FM=; b=YtlDaf+bZ3SNBd
	tPody5N2vig5IO53jhpgQavlnnqt11BDm6GiQTgDE1i/IHtuaB0l/BrwXSQtvksISRJl3ok1N2PsA
	NOg04nkmzS/ohFmL1GyEZIhfg4fx/aRruzuNLYkNOYaxv/4JXeFQAjd2JLoGhHCvzknCF8kW8s09i
	tM2ZMvc2hBXwDI7F9jVkMxVfdEhuwuU83W0ueI+kSxV0TPhXXWwQpe8D0DtRO/sVK+vrNAUJie5xj
	DL17FzMCL4Dx/YWnGa2mKV3fOE/SrSXFgzVSulLpGiosS5Nb68dJ76GfNjAOmYD+vBsy1qnGlibC0
	TMw5WDBYaInCnYvqR+DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkBfF-0002Pr-U0; Sun, 07 Jul 2019 18:13:29 +0000
Received: from out-19.smtp.github.com ([192.30.252.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkBf5-0002PO-GC
 for lede-dev@lists.infradead.org; Sun, 07 Jul 2019 18:13:21 +0000
Date: Sun, 07 Jul 2019 11:13:17 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1562523197;
 bh=pyighsdOoXN96eErz3HJAWgSM1ZGwSgpoFj2aKqwA/Q=;
 h=Date:From:To:Subject:From;
 b=ztUMWAJGmz6FZrzGPJdNlsC3ZkS44+LfcW0MrkFi1mj0iZxwMNB+We6XaVHUJnYtv
 9aTDSlIwK2aux55LvAUfgnLC7Kqwk5CxGc05Uss4HNa+ToO04sVRWsTcSg1IaITA1c
 6yn813pOjD9Vl2jcYlYZ50JNN+egFD+dzsU8hHKU=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/0de1ac-a9c7e0@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_111319_608213_4050DB4E 
X-CRM114-Status: UNSURE (   2.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.202 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] a9c7e0: This week's
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
  Commit: a9c7e0a7d927c3ede2d67bbfb7be12972dfb15c4
      https://github.com/sdwalker/sdwalker.github.io/commit/a9c7e0a7d927c3ede2d67bbfb7be12972dfb15c4
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-07-07 (Sun, 07 Jul 2019)

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
