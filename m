Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA621CF33D
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 13:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XH/gucsqZ3ebzphZJRSn1Z4G1g3+xJJRXcvA8W8RdqA=; b=PsfLq7Q6oiuK8/2UUl6Fb214o
	o0DksYzsRGMhCTLpuqN7PycK4n2IYDTQCyDOyeCosveqV8u2deNimzTNMqCZpdo7bdhS8dQ93CWGE
	VJQ6T8t9TO5tJ/8OK8xNcAlxg0dHvvJkru0AktoVXyA2N99equtrJl/u8CN/6vErJQZ6rUE5R+yAG
	jUb5hsbFJZe4iPwSNcgJcLG1JJEfOaIVZlQAQ3/F+lN3jpYsC4gBvhOh0DvCa7L4dQc4AMQOrZ1NG
	yDYidWATy0uvnS5hXpCyDjhIwWkwKtMcUaypUqHdRuKZzvq52oAInMl+54w4w4GdEgytER/4h6g9v
	H+DMaCo3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSzp-0005RK-6P; Tue, 12 May 2020 11:22:49 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSzc-0005QX-W5
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 11:22:38 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 6453D20F65;
 Tue, 12 May 2020 11:22:35 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 12 May 2020 13:22:35 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: Paul Fertser <fercerpav@gmail.com>
In-Reply-To: <20200511144355.GP16976@home.paul.comp>
References: <20200511113702.10975-1-fe@dev.tdt.de>
 <20200511142542.GB69771@meh.true.cz> <20200511144355.GP16976@home.paul.comp>
Message-ID: <6cc09f84ad49fecb6da4c4e22e7ae1fa@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_042237_535636_725EFBD4 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard-tools: fix version
 indicator
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
Cc: dedeckeh@gmail.com, =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Jason@zx2c4.com,
 Eckert.Florian@googlemail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Paul

Thank you for your thoughts.

>> ok, but I fail to see why this patch should be maintained by OpenWrt, 
>> this
>> looks like it should be fixed upstream. Thanks.

I think this is not possible every project does have his own rules.
I only noticed this with wireguard so I will send the changes upstream 
to wireguard.

> Probably the right way to solve this would be to have means to
> override the default git describe behaviour (and force specific
> version string instead) by a configure (or similar) flag. That would
> require collaboration with upstream but will also need some additional
> tweaks to the OpenWrt package Makefile.

My v3 patch does fix this in the wireguard-tools,
but I think we could export this variable during building of an package 
on Openwrt.
For example `export GIT_DIR="$(PKG_BUILD_DIR)/.git" in 
"include/package.mk" to pin the git dir for this package.

Regards

Florian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
