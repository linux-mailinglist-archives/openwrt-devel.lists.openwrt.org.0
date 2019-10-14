Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9656ED5A81
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 07:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RWI/L5ZMGKQekPq3zDuFfxEgH0J9ccDX6oMgLKti6yE=; b=cqQCAh6ubUd02av0orZoS9tPj
	3UpyCcpt0a80vO6O2sabJHy0uHQOiEWerkFF33sVJNrdOmf+v/1rF8zoVW4VCkYecsHooefLa6QAi
	C9axEsRuD0vzCYjGaHNt8y8IJ93cncwIgLfKidmMur/uS4YWlQyNPDCg1vjToMyKD8nBV2sKv1Lqv
	kEylRVYruzjo6jjNjeA5hpTt77qFqmWlRIZMt9+4oaiilutVuHzNkwWdn+OLrwxPUSG2rn6Bd9z53
	zXPGgJrEd/WywwYsZX9UXRCQ+giEhR23x9vD04v/0/Fjf50d1GUMJsEowYRItuM2XFgyHLaD/sxBG
	vvp/FC6Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsW1-0002SV-LK; Mon, 14 Oct 2019 05:03:29 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJsVt-0002RR-Dz
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 05:03:23 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id D55A320942;
 Mon, 14 Oct 2019 05:03:15 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 14 Oct 2019 07:03:15 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: Gordon Shawn <capcoding@gmail.com>
Organization: TDT AG
In-Reply-To: <CAK0iFYzw=Khe1Qh_z7FeFZgF7i7RxMZiN=wLGcVi6DEnNdRO9w@mail.gmail.com>
References: <CAK0iFYzw=Khe1Qh_z7FeFZgF7i7RxMZiN=wLGcVi6DEnNdRO9w@mail.gmail.com>
Message-ID: <cda89b7567daded4d3da0a7e3c4157f9@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_220321_626168_DFBD5735 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-10-12 03:28, Gordon Shawn wrote:
> What about skipping 19.07 and focusing on 20.03 instead? Based on the
> resource I think one release per year is not bad. By then Luci will be
> in a better shape and a newer kernel can also be used instead.

Well, there are always some great changes in the master that you would 
like to have in the stable as well.

But you will never get a release if you don't stop transferring things 
from the master to the stable.

Since 19.07 is already quite a bit late anyway (I remember the 19.01 
plans) and some of us are already betting on this branch as their next 
release base, it would be extremely annoying and inconsistent to start 
all over again.

So my opinion:
Only add bugfixes and security patches into 19.07, no feature changes.

- Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
