Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01FD174F67
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 21:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gycTutdZnR17MGczCw/RfqhU6v57glO1uJlNtvmM7ik=; b=fm6qU4gfFXtogj
	oyW/DUqKcxwfRuAm0EaRNqLLbPN6A9FtfrEoD3QHEoOgkg8qG5dPQmr6H0YtFEXnrz93+ak41Vp9u
	q0ISu19UP11+7xzRsFl52qP/3SuTo9yAutFX5wfH+hgWinqjdsqGvPOxkv1ASc1ISUFRFsMPqVjwv
	IN1u1JY70IQb+eHSkGOMXwYdmesV/5TMB0S7qp7nXRPA/k3v9X6hzsWZ3SD4kU0vhslaI41uae6az
	6x9zeBdIVrqc2QeNXlSrM/rAiWavZtC2TOpnuRPnk/Mv+aljCQGgPC5t7TBKWXT7363IfnlGJXN/Q
	bPimAnRR5o/b5pDul+Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8UqM-0008TD-I2; Sun, 01 Mar 2020 20:05:42 +0000
Received: from out-4.smtp.github.com ([192.30.252.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8UqG-0008Sj-6c
 for lede-dev@lists.infradead.org; Sun, 01 Mar 2020 20:05:37 +0000
Received: from github-lowworker-fa7043e.ash1-iad.github.net
 (github-lowworker-fa7043e.ash1-iad.github.net [10.56.109.45])
 by smtp.github.com (Postfix) with ESMTP id BFD78C60637;
 Sun,  1 Mar 2020 12:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1583093134;
 bh=npHPr0oK+r4E3NvvHhPig1A4EWe9Zf+Q3eKeTR9YILo=;
 h=Date:From:To:Subject:From;
 b=Hg6HfWh60YUngMOKyD4Ltbp6Mze3YhJ/eA1xH7qT2u2yiY+OZsr1Z9DaY9ES37E9R
 oP3dIBIMQhC+Sd1kE5/FgEv9c3PYQ92dNYIM42dq0qatOHb4ZJpPRPGPYcGdvWEGqN
 AHyRIpkk+FH52BD9keCCgGsJVuiDyqrIBAtWHJ3I=
Date: Sun, 01 Mar 2020 12:05:34 -0800
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/6d4712-d19be5@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_120536_307483_B0BDB301 
X-CRM114-Status: UNSURE (   3.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.195 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] d19be5: This week's
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
  Commit: d19be5bc910acc190f3a19d30fc210efc9876a7f
      https://github.com/sdwalker/sdwalker.github.io/commit/d19be5bc910acc190f3a19d30fc210efc9876a7f
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-03-01 (Sun, 01 Mar 2020)

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
