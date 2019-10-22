Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A895E0243
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 12:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pFyBx5UUrpdsyS0pFFi0dOSw01bFgKW+f5/VhDzvpLM=; b=UwcwRXF6iUBMOIai0RDPBdDUaL
	++MujO1olQjbUb5VzYesT99zkR243sK555NjGbD6PNHG+wOd6k9/RK4JXrEPUtdnvASitE1esOZUV
	vz4vS/txR6YyBwlCgteYOOzEyXvf1EaEg2Gqa8nUNZSS+/B9VdqHH2YfqcktbW35Czaf56YXYXZhd
	daZsYD3PyBMHGjCZ5cSjfj086JNFwv8ZJDG8E1RGptapqMI41t9isvUggQSexNYFx255jQBOl2uBJ
	5TJxNEDL8YQcQxzxJouvK8K2Ysh4i3M7OljxiL/OCl7Czdvd7tvzHujNW0OvV+Vi0t+KlIBM/gJNa
	sQTVDC6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMrdk-0003e2-Fr; Tue, 22 Oct 2019 10:43:48 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMrdY-0003dN-VL
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 10:43:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3E4E841AC;
 Tue, 22 Oct 2019 12:43:30 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 40f43f4e;
 Tue, 22 Oct 2019 12:43:19 +0200 (CEST)
Date: Tue, 22 Oct 2019 12:43:19 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191022104319.GA22393@meh.true.cz>
References: <20191008010225.8822-1-rosenp@gmail.com>
 <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
 <080086a1-b4dc-1ef3-2bc5-cafea5640421@gmail.com>
 <49128945-A6B3-49E0-BCD0-79A3018BE488@oranjevos.nl>
 <CAKxU2N_KTr6J61B2OesraKJiZZopnuYpbrV799_CebinnTaiAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N_KTr6J61B2OesraKJiZZopnuYpbrV799_CebinnTaiAQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_034337_158119_D657EDD7 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Paul Oranje <por@oranjevos.nl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-10-16 11:36:22]:

> Some, like the dosfstools are also consistency updates.

If you're talking about patch 3 of 8 "tools/dosfstools: Replace iconv patch with
upstream submission" then it looks like your suggested fix[1] was replaced by
more comphrensive fix[2] and you were happy with the result.

So perhaps bumping dosfstools would make more sense now?

1. https://github.com/dosfstools/dosfstools/pull/124
2. https://github.com/dosfstools/dosfstools/pull/126

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
