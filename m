Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC4D4FDAC
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 20:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F7/IcX4trNxLta35cMLDu8mvMIm1Y3swrDlAi8rk2R8=; b=SgM51bStV57qGl
	6cbp+JlZ05OFMvA8Wn1UYRQcVitFRkkn/4l2xaROP7xWfNCMPLrapV1Ctgo2QlzQ/FjVM5vpeYsMJ
	vT/pNlezxBDIWmEQNXjAShAfms8DHPfJPEFlFj6njJ3xmk0UsbsMBpTEBz6qRiWP00O98JuFr7l2k
	9ovia74ORA4lM2GKc7HlNVXqEgUvo/2UMBf6pNVRbf8mKIgu8Gj5Z/c1tgMvYCw9N6MyK2oqUlRt9
	zXG0xhuApBHaQYDG+So4557zcb3loRAIA3l7BG20bg+CVtIgASq8/cDzkLssXYFOBP+2oxvS3tMry
	LZ4i9r3YrsRWh448lwvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf7LI-0006AO-DY; Sun, 23 Jun 2019 18:35:56 +0000
Received: from out-4.smtp.github.com ([192.30.252.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf7L9-00069f-G0
 for lede-dev@lists.infradead.org; Sun, 23 Jun 2019 18:35:49 +0000
Date: Sun, 23 Jun 2019 11:35:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1561314945;
 bh=JmiQfOu7UOT+Sn21E3D0OLNQXNoaa8BSU+LDF1DioBc=;
 h=Date:From:To:Subject:From;
 b=OtMJJpe1WKhU7QvqLFfx9bG0AVjL7jx0LgbbN7nA4S2kRksTGKPLyzV4NL/JiTJWE
 EA6OmEl+CRX+9yeeu3ZdkpdaSzsXFFmBmEuwAAslKdE2MIPjnhQ5PVdnFhbCISjSkc
 NVpz79ZFov2t17Gm6ft3p9F5157OCPqJbKSH7v5Y=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/413a1f-a8fb3e@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_113547_603860_0E9473BE 
X-CRM114-Status: UNSURE (   1.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.195 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] a8fb3e: This week's
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
  Commit: a8fb3ec5a67cb2675e3653830ede988ed6ed9788
      https://github.com/sdwalker/sdwalker.github.io/commit/a8fb3ec5a67cb2675e3653830ede988ed6ed9788
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-06-23 (Sun, 23 Jun 2019)

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
