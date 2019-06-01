Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7CC31FA5
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 16:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XMxJ4ndkTU5CU4j7a6D28FJkvVNtx9wJDVNPa2ZCZAg=; b=gou
	WrsWsEqydAXyudJxjxD/t/K1dfEGI/2L8bPrdlf4mrWBMkxyyW2Anenp/8spEoaSsFjy6yxtXCBgA
	AOhbPFJ6rNoO+W5iLcfZSb5SxPpPOzpAuLorR2SqYTgD6kB+PirYmrBXXZyiSAtHIsy0/vnlqSTz4
	1z/H+WMUtYqwy/bh5fyXeKDFsVG6OGwlbWJTJEMHngYiCrRAw/7AzrS1mzwsTWJFyviyE9kUXDiWL
	L2ZbabNqDF/OUfLFjbSIiQxFnxIosgF2w9oHO//fAdpyRaF6yX9rxoHTZTek8EqjFp0dTt/vmosjF
	igiIWj00eMxGx94ipJNrgugBNLoH88A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX4i8-00066V-1J; Sat, 01 Jun 2019 14:10:16 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX4i0-0005DB-53
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 14:10:10 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 45GNVy5fgNz9s3Z
 for <openwrt-devel@lists.openwrt.org>; Sun,  2 Jun 2019 00:10:02 +1000 (AEST)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 01 Jun 2019 14:10:02 -0000
Message-ID: <20190601141002.24465.40750@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_071008_379612_BC96E549 
X-CRM114-Status: UNSURE (   4.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 1 patch updated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

 * openwrt: [OpenWrt-Devel,v2,18.06] openssl: update to 1.0.2s
     - http://patchwork.ozlabs.org/patch/1108503/
     - for: OpenWrt development
    was: New
    now: Accepted

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
