Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63951F0FEE
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 23:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hDwmS+Yj1jf1W8vso7fdVFhmPP8p9X7D8OAs8gGXhmk=; b=PlKaMOudMmoHxL
	cLjRQSo3id7sgP0VgpcEHXGhAJssdAIulc8EmGUl2MMyM8QIEiP9FEIKKzlDYQknDU/+eoyaF1zLw
	JT8CbrfDqn5obx/Fp5RSucxhvtkQYPdytRGju3UaAWfTa7ePdKUSI4jHVQxnFpMjNHthCvcGhQZph
	+q8L81/I4lEDEXRSk/muPXd9szzIV40/uhZR9qq0ThQEgvuKt8GcvK7jtttn9Opb6Pn5ktB4STGYW
	w3NrC3b3q8dOG2ddyHV8hYOdXNOR0hjzIH3MY5TB4kTGu1hsX7Ds+/ZbXGEhQTBt866f//2J9TMzo
	ip1NktSJiatVP8WftXMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji2XS-0001PS-Df; Sun, 07 Jun 2020 21:09:06 +0000
Received: from out-4.smtp.github.com ([192.30.252.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji2XM-0001Mi-09
 for lede-dev@lists.infradead.org; Sun, 07 Jun 2020 21:09:01 +0000
Received: from github-lowworker-56fcc46.va3-iad.github.net
 (github-lowworker-56fcc46.va3-iad.github.net [10.48.102.32])
 by smtp.github.com (Postfix) with ESMTP id 83832C6056C;
 Sun,  7 Jun 2020 14:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1591564135;
 bh=afcwGWcG0/hvLDRA5wqirzH4qL2MTlJB8/Rm+vj5Y38=;
 h=Date:From:To:Subject:From;
 b=QvJYJCF6QplhhizC2YVtmMdZylxcPNpNDbiMe4lkMBdbrBaM2JzAQfHtASgIUiYma
 XXgDs+eW39cHpazOeQAwOUjYuKJGHfYuukLksKKQydCLAa2TkpRPU2CfaZ0jZi/BhV
 HiEPW2abShHk0+5UNgSUE3u8gLz44qDXqFXY+x1A=
Date: Sun, 07 Jun 2020 14:08:55 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/59b2d7-8eec96@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_140900_106364_B62BCF97 
X-CRM114-Status: UNSURE (   2.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.195 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.30.252.195 listed in wl.mailspike.net]
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 8eec96: This week's
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
  Commit: 8eec96afe126fbc48ec648a0165e7ec5138d5e6a
      https://github.com/sdwalker/sdwalker.github.io/commit/8eec96afe126fbc48ec648a0165e7ec5138d5e6a
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-06-07 (Sun, 07 Jun 2020)

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
