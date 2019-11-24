Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA0108466
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 Nov 2019 18:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rQEhPsED8K8WJYSVv1sxwTtjHnHnYNNNjjcKzQmOyOo=; b=YSmj7Ihl6MZWA5
	fb1RnR9vZFg/H68eaxReaezpeOoXLXIn5wB6ai4AT5R4XvzvuL3SSBbxeM1ImClzEkft0t8UNVkci
	9drbtUS8192yTZrUl+Bg4QviAJOYtBMCAkXy+AqUmOEucVth3ZAayPApZ/bXFoKUdVaSWrpDx57sj
	8v74QtbMOfysczcj9XMNRsQpbwXR8ggYZcPEKDElnfHmN8COMwOFhhbbcJDVKkO7yCom/oyd9BWu1
	VCnZmYl7e9jtAM5tJpWuNEOxakUb0vjDmu2Dz35d4ena+/ZQAifqZZ0ws1BiocHVpXycrfZET4Fr7
	YocrSmjCEeUdJd3rAa/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYvuo-0002BP-12; Sun, 24 Nov 2019 17:43:18 +0000
Received: from out-17.smtp.github.com ([192.30.252.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvug-0002B4-4t
 for lede-dev@lists.infradead.org; Sun, 24 Nov 2019 17:43:11 +0000
Date: Sun, 24 Nov 2019 09:43:06 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1574617386;
 bh=mKdaJrmOEQU4E4o5OwFDFuP0bF0XwAVMfJQ17x4yQjo=;
 h=Date:From:To:Subject:From;
 b=jbQ2k7We521DKzExdZioes8HwN3QeuOYSV8WPfScsgxBM/RFd0giWa/aonUM5j4Lt
 I8UslfYYrkH3kcWnRMMmq+7X8N/+SPhsUu5U36utMc/2+2ZYtDm1KWa3YUvgf9CNhc
 u0xjIyAZXkM6GSlkDQAv1dxcCoKkEyRE4C5YYfm8=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/335a5b-8d0624@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_094310_259929_23A5DC1F 
X-CRM114-Status: UNSURE (   1.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.200 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 8d0624: This week's
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
  Commit: 8d0624ff47abb60d18fe3be7a3fff9c73b68dea8
      https://github.com/sdwalker/sdwalker.github.io/commit/8d0624ff47abb60d18fe3be7a3fff9c73b68dea8
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-11-24 (Sun, 24 Nov 2019)

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
