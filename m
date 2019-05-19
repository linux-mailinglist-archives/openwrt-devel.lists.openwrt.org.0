Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D6322861
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 May 2019 20:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MXMunPvn8ACNH3U57HY+2NYp32zs36sUZOwtjaZGHCo=; b=L0eqeMeWSiYF9q
	DOxTPysjqyyKx3SgLoIxvg2Az7zQ/1uVicN2FZuxocsNkzcTYOQvr7EojRZ++ZeHW+WKuN8ebo0eC
	FU+wm7EW6cz3mU3TvdQmj+UJpMW2KOjdOfRRHbKfY8JJITUsuC4ve5zHq5ocOx9mlizIfQBLm7zcH
	CFXnkpCWnkDuwhIJ8OjpM/+XER3YuXe/Ps8KmQrjs8co03rqSowvHynKLYod9742NlYo3wdgt77wh
	D99EdGirnce87nLpu71rrgBDqx//IYW39tJ3XLEImqC4mnGzn4vNvtq27HJN6pmuGwov3hCN8z7Z1
	TXepytzF8y6R2dhDDBjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQkj-0003qX-4y; Sun, 19 May 2019 18:41:45 +0000
Received: from o8.sgmail.github.com ([167.89.101.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQkc-0003q7-9e
 for lede-dev@lists.infradead.org; Sun, 19 May 2019 18:41:39 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=github.com; 
 h=from:to:subject:mime-version:content-type:content-transfer-encoding; 
 s=s20150108; bh=VPMRKP/8wE+c75fhHwaNv8FUISE=; b=cG8MNRyA2NwDqWZk
 l4ljXkwd+wgQcK4zvfX5kohRoQ25p70qvZYD5GXWk+PS0Ft68A1Z5P3hZmakABsD
 Z3eKqav2yee2qDAhE5dUio4EkIHCPACqAO5MOLVJxtO2LEaYSPIbmGDIsFD2vqG8
 xT76jyVO6vsKbK8MOeLR1yOyw44=
Received: by filter0283p1iad2.sendgrid.net with SMTP id
 filter0283p1iad2-22755-5CE1A360-3A
 2019-05-19 18:41:36.706342099 +0000 UTC m=+511649.907595237
Received: from out-20.smtp.github.com (out-20.smtp.github.com [192.30.252.203])
 by ismtpd0023p1mdw1.sendgrid.net (SG) with ESMTP id QGr35Q-iTzmSpnCxvxh8OQ
 for <lede-dev@lists.infradead.org>; Sun, 19 May 2019 18:41:36.572 +0000 (UTC)
Date: Sun, 19 May 2019 18:41:36 +0000 (UTC)
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/bdf1b5-905c0b@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-SG-EID: AaZRcYDd1kbUYxcdbhY+GJT9jhw7cfeYxJFlayk/Y2Rxy5Oj5XwGCA5Hs1774iF9w4dJJMGJj1s8Xl
 7BDgMv1niNee4HrpjOytqLbGlLcCLAUL8UvqiBvleHtDXI/XWNBfmEgYj+vnhHnHTgJkBjaFvLe41C
 sKVQde65KPp1pK3dSrvgB5RCRCKQsoDx1RbSr4tLXkyIa6jeSlgcOA6DBnDkOHgzuPHWGFBN8bkfrH
 Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_114138_464224_ACD989F4 
X-CRM114-Status: UNSURE (   3.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [167.89.101.199 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 905c0b: This week's
 update
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
  Commit: 905c0b8e20bc3f411999aee627d3e9630f661a50
      https://github.com/sdwalker/sdwalker.github.io/commit/905c0b8e20bc3f411999aee627d3e9630f661a50
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-05-19 (Sun, 19 May 2019)

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
