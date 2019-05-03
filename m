Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E8A12C36
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 13:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NAvxIK8l1b/szRVXNWAUqGNuV/GJLkE1bs5YAyV5lzA=; b=YnXCAqggo24eWeBFU8XTiJFLbF
	S14I/gqz4v4trW9J/zmKGULNXtRiha0Vbn5RHiVZsPc0Ee3F420lkPn721FOHaS/8w0+PMVlxox9f
	iC36gDO929MNwKg+4PW+fq6nTEvZHtO69RD350xeI7JRFFRVIPcvF9m7RzWRlD2Jeqcs7up7anheC
	axWlivXLZw/oErRQo7E20Fz6igE4E6iYD2uP9yi/wOgHjb4iyO5HrI/91bg2DjETMRAe2QYXyDXjJ
	XrafT9m9N+haC7RghLjnolXqPGZrTmH952bpD/ytkYSUmUowUQJ3uqZMBSihrztnPza4QjE8Y2Ry5
	3s+PFAzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWEl-0006qn-JE; Fri, 03 May 2019 11:20:19 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWEe-0006qN-1a
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 11:20:13 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C94A2422A;
 Fri,  3 May 2019 13:20:09 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a678c0e3;
 Fri, 3 May 2019 13:20:08 +0200 (CEST)
Date: Fri, 3 May 2019 13:20:08 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190503112008.GJ346@meh.true.cz>
References: <8657fdac-f013-7025-e5f1-634665246af8@wagsky.com>
 <20190503101917.GH346@meh.true.cz>
 <62b2ed25-699b-7127-2de9-f6194c43704e@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62b2ed25-699b-7127-2de9-f6194c43704e@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_042012_241697_18C68670 
X-CRM114-Status: UNSURE (   3.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: glinet_gl-ar750s: Use QCA9887
 firmware
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-05-03 12:11:48]:

> That's strange -- perhaps another patch updated it?

no, if you look at the patchwork, the patch was simply sent out broken.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
