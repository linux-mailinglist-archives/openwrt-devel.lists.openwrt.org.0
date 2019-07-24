Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BD97364A
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 20:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73AElK/k9ghomUrAJdYCr/UOfL9aDgiFm7SzCHrs29s=; b=jvh9AvGpK8/hBY
	qrJ19hNzBPDGx9n5XOaczVbX9/2cf37ldSQBDoycFFXhFRzO26FxxEkGG5PSi1CVTLUiGMEallMhe
	RNYe/8y6P+9WMzSqzXGRD1ytHmAGTDmKQVMZc4PT7OaomRYefsv9n6Fi5JlcNL6Z/3e0gLNRTdDVF
	GEufaFGRMCFdjv6oee+fVg7XsnmqHauwoOw469Rn67Uc0mEa6MKMAOUg5/V0G1OIzo5zadZy9Zlti
	hvp0+bgqhIWUviE3kNQEGeI9caSI/QNIX9CNH6nI9kQ0YFWtI5XRHR0oP+5IAmbJ0IxkOMTmScTPH
	Vgm/vfaLHGQpdM6nIfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLeD-0007J4-TE; Wed, 24 Jul 2019 18:05:53 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLe3-0007If-FV
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 18:05:45 +0000
Received: by mail-ot1-x342.google.com with SMTP id r21so42771822otq.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 24 Jul 2019 11:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DSzhTP30i0fEwDxrtfmmrQjwTfGXhUafEBoTHynQZj0=;
 b=AC2V3BBtYdrUZM7WFgOW5cuV+wXxToADeF6SmnrSKpWFmsJGeMl/mNz7K5X/CqPeu5
 OxYqxgccnmsIWl5zlREMizwvuf7p9Ws9YoCN3bGCPcVq2HJ+Az8/3VkKTfq8bStVgfi7
 qO48Sf0Df+F9bZJQ53LR5TSRkUD1nw43NjmcSlZ3hHJ9Vw6193lL8DYcgitvqpdxIVwV
 ncQbcFyQXqlotg8F5dkMwwvLSxQXBvKY1DabHjV2xRUq/pxs3XISzyde5kBzHEipfD58
 Rfx6VmMWFUqEze9jdB9N+G2hCumwrDeV7ZP8blmGeFlnt+fGOBGVtUWiBQ3OVBRh4qbW
 Xs7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DSzhTP30i0fEwDxrtfmmrQjwTfGXhUafEBoTHynQZj0=;
 b=fKTa04xQdBtG5NcnUot5RrpTZV/D6V7gVSO2etQY1XST0D3iIvQ34MwKBI9Q/TP3Ha
 qlsex/T1Cqg2kEzm38yGMXhC46E9va8DVwmENQSlzFkU0CqAZFUwTLjri+0iU+lnNYRg
 RMkYodPKKY4ERTvU+Sep0EEJyc31i6BSHVSXeDWd6UqrH8/17rgC7DPfPa7fdEAZm/fk
 yTKGZHx76tXo58fzFLmhDbUpqIFS3Dy2TQh86TjhzJkYuRvZKDPCJlGPjZ8cnPopCrH8
 ojDtAG36epPSum2QsXvszfdK83jHvZX5Gnbd9un2JSf5A0GQZo9ANHqKMOxirsgw9P+7
 7Fog==
X-Gm-Message-State: APjAAAVcLDXczmHOBsOu3VtVUVSC4PwCHCUIk8UjFcRetnj3gB4sRXRF
 L5LDo/hpMAKcUdq8EnN3Vp850DRVx5/6mBE48tFqBEV8
X-Google-Smtp-Source: APXvYqwCKVvB9qQPxuUTcZDAX3OfNG6gKUR+jyZbqawYl8qlk2YgfgGSp6LsIHvMM9U+z2p0DWhOfEjlyyReyFV5cMI=
X-Received: by 2002:a05:6830:117:: with SMTP id
 i23mr21501837otp.47.1563991541800; 
 Wed, 24 Jul 2019 11:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190724133351.2283-1-freifunk@adrianschmutzler.de>
 <CAKxU2N8HPCaEb1WahtbfbVGnJ-XOcjWa5_2GU2Bn=3QV9fhBKA@mail.gmail.com>
 <011b01d54248$0f176e50$2d464af0$@adrianschmutzler.de>
In-Reply-To: <011b01d54248$0f176e50$2d464af0$@adrianschmutzler.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 24 Jul 2019 11:05:30 -0700
Message-ID: <CAKxU2N8AWz9UHk48pY0vBUbqOFBK9bZF+najpJiXFVYLA225Rg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_110543_522077_A731E722 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Jul 24, 2019 at 10:48 AM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> > -----Original Message-----
> > From: Rosen Penev [mailto:rosenp@gmail.com]
> > Sent: Mittwoch, 24. Juli 2019 18:54
> > To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> > Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Replace backticks by $(...)
> >
> > On Wed, Jul 24, 2019 at 6:34 AM Adrian Schmutzler
> > <freifunk@adrianschmutzler.de> wrote:
> > >
> > > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > > ---
> > >  target/linux/mvebu/base-files/lib/upgrade/linksys.sh | 2 +-
> > >  target/linux/mvebu/base-files/sbin/fan_ctrl.sh       | 6 +++---
> > >  2 files changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > > index 3f45d6cac5..ddf24836bc 100644
> > > --- a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > > +++ b/target/linux/mvebu/base-files/lib/upgrade/linksys.sh
> > > @@ -6,7 +6,7 @@ linksys_get_target_firmware() {
> > >
> > >         local cur_boot_part mtd_ubi0
> > >
> > > -       cur_boot_part=`/usr/sbin/fw_printenv -n boot_part`
> > > +       cur_boot_part=$(/usr/sbin/fw_printenv -n boot_part)
> > >         if [ -z "${cur_boot_part}" ] ; then
> > >                 mtd_ubi0=$(cat /sys/devices/virtual/ubi/ubi0/mtd_num)
> > >                 case $(egrep ^mtd${mtd_ubi0}: /proc/mtd | cut -d '"' -f 2) in
> > egrep is deprecated as well. I'm assuming you're running these through
> > shellcheck.
>
> I indeed got this hint from shellcheck, suggesting "grep -E" as replacement.
> However, I'm not familiar with the old egrep.
> So, I was not sure whether I really can replace it without side-effects, and since I cannot test on this target, I decided against changing that.
>
> If you tell me it's okay, I can include it in a v2.
egrep is equivalent to grep -E. I have never seen any fallout from
changing this.
>
> Best
>
> Adrian
>
> > > diff --git a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > > index 06e462119d..4234668317 100755
> > > --- a/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > > +++ b/target/linux/mvebu/base-files/sbin/fan_ctrl.sh
> > > @@ -1,8 +1,8 @@
> > >  #!/bin/sh
> > >
> > > -CPU_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input`
> > > -DDR_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input`
> > > -WIFI_TEMP=`cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input`
> > > +CPU_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon2/temp1_input)
> > > +DDR_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon1/temp1_input)
> > > +WIFI_TEMP=$(cut -c1-2 /sys/class/hwmon/hwmon1/temp2_input)
> > >
> > >  CPU_LOW=85
> > >  CPU_HIGH=95
> > > --
> > > 2.20.1
> > >
> > >
> > > _______________________________________________
> > > openwrt-devel mailing list
> > > openwrt-devel@lists.openwrt.org
> > > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
