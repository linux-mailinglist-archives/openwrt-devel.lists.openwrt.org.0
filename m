Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9196E5B267
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 01:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7wzuGgfTuPfdpPLjUjxYD922YOCxa1gWN6T5VMvvVQ8=; b=YPivwkVmv6IW8s
	OVoZhUN8y9RZjlaJqT9RnmzRh7ouU2KJCI/4cHH5phoE/EvJVUbdnqBcKgZluLOuevRJtAqpeY8Zx
	+aBTUR3Mi5O+6ZsPzcSGnsSoACUlgXe0o7uA1AiRDRryQhNg54y+Y7VkAEB78ExHV9mj5QbJxZay+
	1N3E36w94YmxAzRN1AyfIO8VsWY0KuJcesAA5pVSdqskKK7dbeVWuLYU9b9yYdYA2ioYnySptPS4o
	O4sIpX6SmLasDnu1rbYqpCtKQtooi4hDa+eV9N87+o2xM0T7issR4ytzuEx/gv1HswOLBqx8sOdUX
	edCPDDPDYa1pDN6VloPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhjcQ-0001UO-Bm; Sun, 30 Jun 2019 23:52:26 +0000
Received: from out-23.smtp.github.com ([192.30.252.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhjc6-0001U5-R9
 for lede-dev@lists.infradead.org; Sun, 30 Jun 2019 23:52:08 +0000
Date: Sun, 30 Jun 2019 16:52:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com;
 s=pf2014; t=1561938724;
 bh=wGNKV1dCzHIf5xLLwP/Oy/xYVjUUrz1qDK/3fbgKZuI=;
 h=Date:From:To:Subject:From;
 b=aPNA88mB0UmQ/kYNv/mXFwLjf+wlCeURPugyfGXTmPLhbui+FJcPOhZkM/uVdxbI7
 W6hen9fH2984CbUCBExztolHSk/ABTea5jTLPtzG+gALH+TABYr4dTCsf8KuHqYLpR
 HphdQaLAqzGJs4hHz7BeQ5OzxvUw3p0NZiP/wRrw=
From: Stephen Walker <noreply@github.com>
To: stephendwalker+github@gmail.com, 
 openwrt-devel@lists.openwrt.org
Message-ID: <sdwalker/sdwalker.github.io/push/refs/heads/master/a8fb3e-0de1ac@github.com>
Mime-Version: 1.0
X-GitHub-Recipient-Address: stephendwalker+github@gmail.com,
 lede-dev@lists.infradead.org
X-Auto-Response-Suppress: All
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_165206_949312_935DFE10 
X-CRM114-Status: UNSURE (   1.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.30.252.206 listed in list.dnswl.org]
 2.5 HEADER_SPAM            Bulk email fingerprint (header-based) found
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [sdwalker/sdwalker.github.io] 0de1ac: This week's
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
  Commit: 0de1ac03b490d610a49775c6946e31a841ede73a
      https://github.com/sdwalker/sdwalker.github.io/commit/0de1ac03b490d610a49775c6946e31a841ede73a
  Author: Stephen Walker <stephendwalker+github@gmail.com>
  Date:   2019-06-30 (Sun, 30 Jun 2019)

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
