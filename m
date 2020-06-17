Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E0B1FD70D
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 23:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JrrUOm5Beuf9R0JKHfl11vGeW9fU2uBt+Pd6wlNBkS8=; b=ehQe6xB6rhqCJV
	PiWNtlvCvBRjZwAOaZc6hYIciuxz9w7PbE2veDAyuvpDDwUbvw8MUEc+XJYi7qu5gAECUn6ULKLE+
	tr0s+GBfs6hK0ho48y9r43fjHkWf2dcjSV3ENWuuVhnfBsKAxHTXZ8RNwSI2zRAPIpk5hbJqKunIw
	4KTZmFj/i3XtBKk5c1z7OtoVvwD1a6kUNqrgXPxrCVAkqJ81Up4rMvoe1gOcFCKoTmb4TwA3MC69i
	1783EC3A1JhJsws0ANB9rGCPNW3cT27iLnMsE/1S5Z6XjmqrWTMFEb4/1FvBO9x+zDjug5Y6xmCF7
	1nk9NKRrY91BG+tYU1pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfUf-0001LK-JH; Wed, 17 Jun 2020 21:21:13 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfUX-0001Kp-H2
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 21:21:07 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 9177B6DEE7; Wed, 17 Jun 2020 23:21:03 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 68AE06DEE2
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 23:21:03 +0200 (CEST)
Received: (qmail 42354 invoked from network); 17 Jun 2020 23:21:03 +0200
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 17 Jun 2020 23:21:03 +0200
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Wed, 17 Jun 2020 23:21:02 +0200
Message-Id: <20200617212102.1767618-1-jo@mein.io>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_142105_712043_A67E74FF 
X-CRM114-Status: UNSURE (   2.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
 1.0 PDS_TONAME_EQ_TOLOCAL_VSHORT Very short body and From looks like
 2 different emails
Subject: [OpenWrt-Devel] Merged: Use autoclear for overlay loopbackdevice
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into project/fstools.git, branch master at
http://git.openwrt.org/?p=project/fstools.git.

Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
