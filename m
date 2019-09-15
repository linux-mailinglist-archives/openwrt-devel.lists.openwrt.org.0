Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8861B325F
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 00:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XyBePRwsGUux+P6nMtdbE+S0j4yLosXK++ZQ4Wj2n3s=; b=ozwI0KWCTC+v+D
	JLMj6fEr3SRt1XZp+vDwwVeryXmkvaDZqT9Lmof7ychD8q4ebQHZFtLBQ2SR/pmkQ0H1FVi/IL6hU
	himUt8HG7b10FFLnqVr9qZ/Bu/ri1/Pj2NZsg+k0H3j6eCJ8WiWCEkexLYnn+9kvbNMxAPp+ZfC6r
	25Wm+DNTfJNLgDx3nX4qlPCjMTSDHTQSAFZQvboRqPQQ86bi5UQ1TucC4wCZk3poZlay792qsAGJt
	IrPh20WgaIu9KaKqDXLm7wzlQrPdTR4ALh5Pfbtzt1SRn4BlHYpmSpZz8h3RaZ8MAlOde8VX9hj0h
	Q5bwUziAI1gGMxalxsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ccH-00026n-M9; Sun, 15 Sep 2019 22:03:33 +0000
Received: from out-24.smtp.github.com ([192.30.252.207])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9cc8-00026Q-1w
 for lede-dev@lists.infradead.org; Sun, 15 Sep 2019 22:03:25 +0000
Date: Sun, 15 Sep 2019 15:03:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1568584999;
 bh=Z8BFT8QQVfeipJINlWLZa3d4RUOklyr3qxX1K2WhFC8=;
 h=Date:From:To:Subject:From;
 b=lsX20n8RQIwb0qyF+mkw3WKVFD02yqDfr2GPQS14CPAf55yxcgFa/dCR9xnpPZtTX
 rohiopbDu3hIfUSFgDsX9LKwUoOOtOejYKdbFmlyGEhzv3Av6S2Z2z+jDu+7kNFR3T
 kUg2wQi3fXUJ/hxITXS0EXRUQIxA5dXkUV0hQz6g=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/fced31-4b1ac0@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_150324_166249_120ECDE5 
X-CRM114-Status: UNSURE (   2.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.207 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 4b1ac0: This week's
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
  Commit: 4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102
      https://github.com/sdwalker/sdwalker.github.io/commit/4b1ac0e52c1d0f0bac5b464e6a01d2bda1b97102
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-09-15 (Sun, 15 Sep 2019)

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
