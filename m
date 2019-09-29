Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56A3C19A9
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Sep 2019 23:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SyUPJycbdwnyc0sf+X5qSaUeYKFAM985/Kpw5mEf0fo=; b=jHbDB29gxh1M09
	qrRNatPu2mT2lepljbQFDjtmP0u4IvY9W9cgr2oXtRwjQIXtqwtT4Xjq27VxogQGyfjOaIugvCgZA
	pZTF1B+4uruqKtZ5IRYUko8LJIY/fdMOLVc3X2fU40ofg/fxstPWWq1UeR9ldUM9FWOJNHJS/81+2
	haM7rOm+H54VKXOkYfRjsoMmif1W5ZpRnluQnJnTAGptom3RLSz+BKWhf0srN+KOefPCOX9tEOS/8
	gK4cj2TJjiC2eHkwFfl0cxJnO7GYqc8UjGVaM/aFHQ0tW41efff8Me5Fxx4trBphkfZHOCEtXxEp9
	LJAjlvlxS0GIm3xUHAPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEhCC-0005bN-ED; Sun, 29 Sep 2019 21:57:36 +0000
Received: from out-7.smtp.github.com ([192.30.252.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEhC3-0005ah-FG
 for lede-dev@lists.infradead.org; Sun, 29 Sep 2019 21:57:30 +0000
Received: from github-lowworker-2300405.va3-iad.github.net
 (github-lowworker-2300405.va3-iad.github.net [10.48.17.39])
 by smtp.github.com (Postfix) with ESMTP id E7E702C0060;
 Sun, 29 Sep 2019 14:57:25 -0700 (PDT)
Date: Sun, 29 Sep 2019 14:57:25 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/a8cdda-319bd8@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_145727_573096_E10D4F79 
X-CRM114-Status: UNSURE (   1.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 319bd8: This week's
 update, add 19.07
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
  Commit: 319bd82c4864ba3f0b695fd5aa3e8d99d88cf69b
      https://github.com/sdwalker/sdwalker.github.io/commit/319bd82c4864ba3f0b695fd5aa3e8d99d88cf69b
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-09-29 (Sun, 29 Sep 2019)

  Changed paths:
    M uscan/index-18.06.html
    A uscan/index-19.07.html
    M uscan/index.html
    A uscan/js/sort-19.07.js

  Log Message:
  -----------
  This week's update, add 19.07



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
