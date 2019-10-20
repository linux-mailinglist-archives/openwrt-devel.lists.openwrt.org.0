Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F781DE03A
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 21:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HwId6P+CFGhjtBoC3zujlO9MitWMpiGVKRwTLD10tno=; b=iotdjNEJBdUZgx
	ORzBAzqPKAaw2H5+EIi/eLJAXyHSfPnp+RKm+p+TP8PSQXcyIFLBukWrrFBaa3b6LJMDu1J1sVRbk
	1Ui+l4e160dUOCdNMKnR3QVpnCW/OtHuP/wlMza2GazRCa0laG0UO9QOTfmd0Xj4gnHPPupzJxLQg
	+ht0PvMsUUZyJ1Rars4BllSamYsQJ1nCsaly356SpMz4YGIQjz5yIDfCr3yIZpvag6yKaUTLTBqQM
	P+XVf5Sut2KAzgmTKdP+vjN5AOyGfSopxUwZrRzhNyJVX+fnbbBig8292Qpk3TALD5BzMNBN+b/KV
	Nl8CXgscgjtkoctzLA0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMGuB-0006DO-K2; Sun, 20 Oct 2019 19:30:19 +0000
Received: from out-20.smtp.github.com ([192.30.252.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMGtq-0005Y6-Nw
 for lede-dev@lists.infradead.org; Sun, 20 Oct 2019 19:30:00 +0000
Date: Sun, 20 Oct 2019 12:29:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1571599792;
 bh=gA+9VbBL4ckF23MvejvE+JmJ5/Rjeep1k1XUEVw+sKo=;
 h=Date:From:To:Subject:From;
 b=QsF190Odf31KEpqz8OZUJ9lSCSZGVej8FiIG7ZgQw5W5cgXBtmL0hV9Fdf55vNuyi
 llHnXDdHFlBradKv77x+Ofp2FoSZPS6JMND82kJ4ZrOU9JyhEaBarR+RpPan/iTXOs
 NpVIOh9l7Zs1CjhkNwGQwhalFSeD+NkraWB59MyQ=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/c460d8-15f8ae@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_122958_864905_E08E5BFB 
X-CRM114-Status: UNSURE (   2.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 15f8ae: This week's
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
  Commit: 15f8ae15747cb4554f975a06d886cc913ef97204
      https://github.com/sdwalker/sdwalker.github.io/commit/15f8ae15747cb4554f975a06d886cc913ef97204
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-10-20 (Sun, 20 Oct 2019)

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
