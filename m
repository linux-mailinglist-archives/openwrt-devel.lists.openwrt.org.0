Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E05A7FCB
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 11:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdRkNY3tndXwRg0HSjTW2ADxjMlN+/Z8RdT8qvdqiww=; b=ZKaMEre3c65J8W
	lz6HU/2ytGPNs48DBXo9VlkhkoU7ZuMdn/T6HTZ1RFFYVSZgskHB/Z5kjH2EgG71++xdfL5KBsddr
	ZEf0Y7eSMO+m4uH0AqnGDwqcq9kKLw+E+GjbuDQPUqEzQaAGvjqTHzaZE7sBMy2tnj8+cen/MDEXK
	rWVCUFaXoKFVe+ECATrCC4oWqPNkDxfF4657jVGxT/moSmdBhmN8MJDBsaT7kjGfZ6Dg0CjsjBXNJ
	/FtyxngWUBea31LTnqCmIo6NoKOj8cgVNKYyi/0s9vbu03gAjC8sJITXK4ud7hxdv1c3T+TaoEOsW
	g2US1Sq8QfKiTCuh1qhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Rxk-0005x8-DP; Wed, 04 Sep 2019 09:52:28 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RxR-0005w2-Lt
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 09:52:11 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 0842352335; Wed,  4 Sep 2019 11:52:05 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id DD2A452331
 for <openwrt-devel@lists.openwrt.org>; Wed,  4 Sep 2019 11:52:03 +0200 (CEST)
Received: (qmail 88069 invoked from network); 4 Sep 2019 11:52:03 +0200
Received: from unknown (HELO ?10.42.0.249?) (jo%wwsnet.net@24.134.185.161)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 4 Sep 2019 11:52:03 +0200
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 openwrt-adm@lists.openwrt.org
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
Message-ID: <250c8e36-3f42-d9c0-25ce-607f0e62ddac@mein.io>
Date: Wed, 4 Sep 2019 11:52:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_025210_028771_573645A8 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> Buildbot is already crunching the images and packages, and pretty much
> all targets are green. So there are no obvious build related issues
> preventing the release. I have also not noticed any franctic discussion
> about specific major bugs blocking the release, so it looks pretty good
> at the moment.

there are various LuCI bugs which need to be addressed first.

> Has the actual release timetable been discussed? When could we expect
> first official release builds?

Afair there's been no recent discussions.

> I think that it would be good to get the initial .0 done, so that the
> wider user base could sysupgrade from 18.06 to 19.07 and the testing by
> the larger user base could start.

I'll try to allocate some time during the next week to produce tagged
builds.


~ Jo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
