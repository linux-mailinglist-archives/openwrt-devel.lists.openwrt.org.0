Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6692A1AFE4D
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 23:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=srQJm25ln6MwM2PLNYwA5enivmmL/9B5Tt1a9pass+s=; b=Wkm7yJrori/Rik
	zYvW/41M8ebgu0aXIfVE5cxImvG8ZU7aCU4pw4w+jIbPO7YaML80eon0QPTeUvslZQ6sV7pn8DdAH
	ObCIf1ec6gGeNOeHh5wfcZ83nKftA8WXhmh9qFrXJOdrbjIRlFii72/eMnc/j5XOXplss6YvmykOx
	q6jGPo/IIDWQROHRZ1+5PzaVoAtQyqLtUjG0WgQuBCyW8jcSnzav85ZPCZ+J5PaGhFv3YFvx+P02c
	MLGkPqdXXSyuII2GQRyRtix04sPaLQ6lm9hevd/d54ckwcpt52Zpf8TMZwJq0pp8ALvrXJ2P33itv
	dGqq9yuyjfplqIwViDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQHCv-0007h7-M0; Sun, 19 Apr 2020 21:10:29 +0000
Received: from out-2.smtp.github.com ([192.30.252.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQHCo-0007gd-S9
 for lede-dev@lists.infradead.org; Sun, 19 Apr 2020 21:10:24 +0000
Received: from github-lowworker-5825cd4.ac4-iad.github.net
 (github-lowworker-5825cd4.ac4-iad.github.net [10.52.22.68])
 by smtp.github.com (Postfix) with ESMTP id D67BC1C0ABF;
 Sun, 19 Apr 2020 14:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1587330618;
 bh=+7nQDKq0YtnQNc2XV2RAnhPe/PoLrMR/sWLBEUKJuv4=;
 h=Date:From:To:Subject:From;
 b=FT03q2iLIGkWrVPEutkHrDBkzIfqlPeoVuIh04YU/UNmNC8+rPfLx+dhrnirv5FRL
 lt7cy8T3tpr1rWD7SitfvzN9R1ZpMY3ZwNc0OA2r15n22TAIbVjVLhDOwLDS0Mi3+A
 1x2rWg86RzRjJ2HQgHt2s+d93hKlTB9NV87oWH1o=
Date: Sun, 19 Apr 2020 14:10:18 -0700
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/6b8b60-3edb67@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_141022_979144_5948C3BA 
X-CRM114-Status: UNSURE (   2.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.193 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 3edb67: This week's
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
  Commit: 3edb673752adbb80a61fe89ace18be87be99c4b4
      https://github.com/sdwalker/sdwalker.github.io/commit/3edb673752adbb80a61fe89ace18be87be99c4b4
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-04-19 (Sun, 19 Apr 2020)

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
