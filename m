Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776EF16A695
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 13:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=peqZrW4wnfOjYkZECq8rrsI63NpqUUHgmAjVDp6Yh7Q=; b=IiMcgqkF8H+dOR
	knrCiq3DAug2BmTE1V7U+Z4YA54eROM3uIwsH1Wd8f16aaPvEJfQtiVJE1LQHZ3SsQymRJwj7dOLY
	5jYif0s7MOqn+3DOnzDDmuK16G3Ee3SDHUQXilRAr6xJne+he6UEsFhU/SqDA6wdS7c+q1Fb2LXxs
	9ByGCYnXOoU/O4kH9bv29ezHiuzmGPsvPiJROSLbu3KB2lR5tPB3jj49q48QsPxXlsQnwlCsAvBGE
	cc75e8TGAUyAPq29WJiaxthpXxDxp3eDQNi/A0SDBpuZCjCiyu1TEk8PwLSQpCbyIb8DZ6q6BnshK
	3fbYXfra47UPsvkyfWuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DK4-0000EC-J4; Mon, 24 Feb 2020 12:58:56 +0000
Received: from mout-p-103.mailbox.org ([80.241.56.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DJu-0000Dh-Cp
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 12:58:48 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 48R2Dx3pHlzKmmQ
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Feb 2020 13:58:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id zdZTRldJORqc for <openwrt-devel@lists.openwrt.org>;
 Mon, 24 Feb 2020 13:58:40 +0100 (CET)
From: =?UTF-8?Q?Andreas_Br=c3=a4u?= <ab@andi95.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <a999a9b6-bf79-0cd0-b02d-8e8f28afe102@andi95.de>
Date: Mon, 24 Feb 2020 13:58:39 +0100
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_045846_590137_B49926D4 
X-CRM114-Status: UNSURE (   4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] freifunk@GSoC 2020
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

Hi there,

unfortunately we didn't get accepted for this year's Google Summer of Code.

If you know any other org that got accepted and your topics fits, feel
free apply at other organizations as mentor!

Maybe it's also good to have a break for a year, and we'll try it again
next time :)

Best regards,

Andi

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
