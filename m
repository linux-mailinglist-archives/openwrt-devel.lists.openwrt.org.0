Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4360F1ECD10
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 12:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SOI4nD6454Aojm4ZtZA3/vb/JHVrkl60AgOKjsX0Sx8=; b=V6W
	q6Bb5d39pm4WPf30BzGqMVfyscaxF+QukQVJmZe6JX2uCRDItMeViY0DUYKU+SNKJSjaasZCvpyKc
	6GsjNFwRPJ1c22TQ65/bOQKNRLtfI/n/NULIJlG7I5gxSQ/5SSnZnFap2CWm0uGPxDpDcba88ViBf
	UqIMSkshRyTRFB7VUHBqmiG9PI7l/ThxQ6lq/kqUgnyVgHZ+s5POjPh3WTojT0eyo9HfT3xnSrBgu
	bbOOo1ClwTqD8My1XY9fVSvhUEMjAzp2ATAuKjBWLlWVTd//eGrfgYjL7dbf+SxsGhbF/NGZJOybL
	dm3mKF6unpMqt1ppTq1Fo2YaXNwu7VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQC4-0005zi-TZ; Wed, 03 Jun 2020 10:00:20 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQBp-0003te-ET
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 10:00:11 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 49cPXd5gKlz9sT6
 for <openwrt-devel@lists.openwrt.org>; Wed,  3 Jun 2020 20:00:01 +1000 (AEST)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 03 Jun 2020 10:00:01 -0000
Message-ID: <159117840179.17051.16691698619063804263@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_030005_662953_0D0C6543 
X-CRM114-Status: UNSURE (   3.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 1 patch updated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
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

Hello,

The following patch (submitted by you) has been updated in Patchwork:

 * openwrt: [OpenWrt-Devel] Do not hard-code IS_TTY in script scripts/feeds
     - http://patchwork.ozlabs.org/project/openwrt/patch/mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org/
     - for: OpenWrt development
    was: New
    now: Changes Requested

This email is a notification only - you do not need to respond.

Happy patchworking.

--

This is an automated mail sent by the Patchwork system at
patchwork.ozlabs.org. To stop receiving these notifications, edit
your mail settings at:
  http://patchwork.ozlabs.org/mail/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
