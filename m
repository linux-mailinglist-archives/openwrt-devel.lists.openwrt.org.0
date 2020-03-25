Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86642191E81
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 02:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh1MvUgKOS5n7177tc7duqPBoWSpX4l6AsjQs1UQvBY=; b=uG/RpZjj7+1xOf
	2dU2TWRc5B5MuyshM1dz8ZhMWnDDU3e8tC5KumheH0hK6GO18se/fEZHxa3hGoCN7A2YUaEUO1bHv
	E3YEUhsOeFy387F9RdYMZ1azTm7C5bLcVfeGkwSN0O5J6pY0+290rV31SrsJb6Zh0rxwkJ0XHk2jk
	YR8H91eZqF3eIaVrgeRISU5QV20T2UKqtKFTa9mXzM7d91u9IgBO3H+EQkqMnYKRt102ujeI7Nffu
	16OIOQcHLXF4lD7t13CIxqifn7Z+OStqO+ziLCxhqdAlhgr3aP40llowvJAwkvRi02oM5qMO2AXQk
	wCaV0E8LG0aSOLH0NYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGudT-0001a5-L8; Wed, 25 Mar 2020 01:15:11 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGudD-0001ZV-5D
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 01:14:56 +0000
Received: by mail-yb1-xb42.google.com with SMTP id 11so291257ybj.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 18:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=draconx-ca.20150623.gappssmtp.com; s=20150623;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=yjrCy0QTnyj55pFIZUQnAn3nluT6NSzelDtQsW93O7k=;
 b=0IgTjtnYchXEHL/iD2YRKU+bwX1MopFU0ZpCmJAwoaA6fiO8u6HvIAvG1V5ChShCy9
 NbVBH784Myn/84pJNf43pW3S6fVkQsbQKphgZsiG7kKVpthjDGvalj10eu6rM/ytMHfx
 nJiPcakPNDY+YWJOMq13qPWKMw3LiCY4GSt1Euu/uBR4DdxVlGFA45dWt8nCJmLs9/wO
 PlPzHgWtC3BwHNgizMlpn2uJqGsCpJR7b3bYG9aNUy+SLzIhiFQY4HVby/4NmxUtcPnz
 MF+MfZjyARLXQ1NRbjJSxDO5Z+eSUNpEmGYQloVY6VclniC1ZmpcA8lFsagD3C2k2QzY
 X9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=yjrCy0QTnyj55pFIZUQnAn3nluT6NSzelDtQsW93O7k=;
 b=kTYZLVJ/GJS46GgaAtAICgn5lU4KUU7Xja6MUbcOD6fdVrLZQL8q/QhTqQ/+FoWB6N
 foVdoanBfJ5Gb95X6EYsnSo+TBCiI4/x5vQ8XN4JZ6EMRcLSiVvJ+3VHH4WGJU8SUM6K
 fOL0KYIcsWSw31/bMhZDch/ttzW9fX7pZJUbQ4XoT0dWbs6QwoD0RH49a3Zh20FdQZx/
 TsABmv02m/yoiQ+DBGITwTk7SrP9aaUgMliOHywXWdkkkljDv3MJ0uij6Vm/OoOK1dWm
 kRWhCJ2sQwuRsTINSXSEY9pll5/VGdLnnboXxpFqjPqfaNSSiP3keloHAaPksIED9T/f
 X6/A==
X-Gm-Message-State: ANhLgQ09ZNuvkBLDm6isCEYD79RUmx1gCpVxwYAMxnHeB9Dwqus8SqDK
 mjMqulTmC5Hn1ZOQ8axSaQa+t+m9pAfKlM0emntFzQ==
X-Google-Smtp-Source: ADFU+vt2sbtfzzeZ6lUNigNInJKJCPZY/dL6wa+Qoau+oqYf6mVthOMm2SCJ0r32lcsgnk84GikqYnH6ZZca6dyM9H8=
X-Received: by 2002:a25:af52:: with SMTP id c18mr1495547ybj.481.1585098893035; 
 Tue, 24 Mar 2020 18:14:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:ca47:0:0:0:0:0 with HTTP; Tue, 24 Mar 2020 18:14:51
 -0700 (PDT)
X-Originating-IP: [24.53.240.163]
In-Reply-To: <20200321105015.GB1408@makrotopia.org>
References: <20200319032712.31676-1-nbowler@draconx.ca>
 <20200321105015.GB1408@makrotopia.org>
From: Nick Bowler <nbowler@draconx.ca>
Date: Tue, 24 Mar 2020 21:14:51 -0400
Message-ID: <CADyTPEzo82bT2Cdh88OYw6VLZihmZ07249=iv_nTVnQUkHb3vA@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_181455_255507_46902995 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] Add kernel support for Fintek
 Super-IO chips
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-03-21, Daniel Golle <daniel@makrotopia.org> wrote:
> On Wed, Mar 18, 2020 at 11:27:09PM -0400, Nick Bowler wrote:
>> This series enables packaging of the Linux hwmon, watchdog and gpio
>> drivers that support multiple Fintek Super-IO chips.  In particular,
>> the Fintek F71869A is used on the Jetway NF99FL board and the stock
>> OpenWRT kernels appear to completely lack drivers for this chip.
>
> The driver looks ACPI/x86-specific, please add target dependency or
> move the package definition to target/linux/x86/modules.mk.

I think there shouldn't be anything _inherently_ x86 specific about
the drivers themselves although probably nobody uses Super-IO chips
like these outside of the PC-compatible world.

I do see that most (but not all) drivers for Super-IO controllers
packaged in openwrt currently have a TARGET_x86 dependency, so I
will submit v2 with the dependency added to these new packages.

Cheers,
  Nick

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
