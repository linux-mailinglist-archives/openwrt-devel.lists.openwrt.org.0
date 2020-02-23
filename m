Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD42169A32
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 22:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jUgSi8UFXgZAWCSJQU9rIu9gKt21BJqQErQFadbqB1c=; b=SZ5mm1BTVvCr0F
	C3oHNpu4ooqFBSl7P4Sa9heBgHh/wFx1EROzgroWcZOddr7lCVX1LxYQ16S7Y9kiF1cONaRq1OiDQ
	/v/qnLKdfkHyqslXSaq+Led8+hqULKPXkqflkGVvWNCIyP/KnEKE3ml9xY24uUroB3oFw9WGoG39B
	j7O3jgipDS/1ndWt+h24qdWNLOfZKBRBrP0ms+y7AKpm9dkAqEn498UC2PzxCG3vd5+P1Fn+0h9Cz
	8qfWgmRfDsMMHlEaYlryYPWwPzHOUL+YUSuy+5K+dPu8O5yd4JMVqjxBRt0JycJAV1pxgCi5AqQLa
	b/tCifBhDmfWEYTGIsYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5yhL-00021h-JY; Sun, 23 Feb 2020 21:21:59 +0000
Received: from out-20.smtp.github.com ([192.30.252.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5yhC-00020V-D2
 for lede-dev@lists.infradead.org; Sun, 23 Feb 2020 21:21:52 +0000
Date: Sun, 23 Feb 2020 13:21:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1582492909;
 bh=IW7c5lDvYg+c7LxIb1rF1L0uzxwPKUInKwssIupz/Pk=;
 h=Date:From:To:Subject:From;
 b=QWyRDthsUVlJZTR3C54T11szKPk4VmPpIBrbsDPD11Jy8AJIMO2K6CFrIeGjWkhjc
 DFRtDxY/ccnPeDWWIyy9OxM8utDAyuFrpcn62ZbGNWfzRMkoa7Uq456qWF8MxK84LX
 Bu7eLv5SKE1peZEQsKvf+4EI+SbHSLLdF0+yUMsU=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/a4a666-6d4712@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_132150_500632_7273ED38 
X-CRM114-Status: UNSURE (   1.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.203 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 6d4712: This week's
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
  Commit: 6d4712a77c8de59daf46053fed71e6016390a45d
      https://github.com/sdwalker/sdwalker.github.io/commit/6d4712a77c8de59daf46053fed71e6016390a45d
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2020-02-23 (Sun, 23 Feb 2020)

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
