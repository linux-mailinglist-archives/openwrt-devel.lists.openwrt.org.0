Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B5A1D6124
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 14:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3UqacqyXRnR1zYl3cRCc2ztToccGpumDBAHoDVx09go=; b=JbZBxgJ3SsDJDrAboQsXHi+zck
	bizU0U4VyjrXjbNN/+sqod1bHoCNYAylWe916xybgOOC3ncXiMH2Tdrg24QZtP5LsM/zVFoH1d0L4
	Nm1ZULyI7grVqUIWr3hX66qjeDcsz/m3DcGwRfdWSblqwgK+qAkuT/PyHkc15XuWItxw7rZTXdJct
	WPqOG36nDQtf/E4Ljk9catZM5ju6nZsqyI9mTdTo4JEJ8WzTu+VLYmnr68/YOpLg7uWDJAJlBoXA8
	jmS9AKTH59wxxQkY9/ZbJiH90YrzAAG13ZPyGpT0zUJyTYiG6lz2PGHwcvUV/sjhRqXk85yJCvYHO
	ApBxLg/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwOg-0002Ns-C6; Sat, 16 May 2020 12:58:34 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwOX-0002ND-0M
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 12:58:28 +0000
Received: by mail-oi1-x244.google.com with SMTP id o7so4861148oif.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 May 2020 05:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=7HZhJ0MKZODAsCVeE+rrxYtrwoQWhInMRQhZk/4OW+E=;
 b=TAEmiPhtriApQZm+SqmslWvI50CzoOv6V5t1AmSU2UEghj45MlBjMTH81oaXuY5ftM
 7mVnS5Sp03NF/XqLoAoAuDWPen6uqO39ZzuArndiyoqhzP2ZEXJXp5L+z7gDtQDch7Pk
 ev5rfPN5/Wx/JCBBQn89ws8mZzzZYuZVDMRXMXYyjFCsaAg+GTEeaeN0Nm+zcM4faFtf
 jJSuR2JRKhptAp5xV1aceuob9jKjr2eHiKoL1vMfYr14PaL4gzTBsyG6Vn1GExX/KyVB
 jWErJK/Rj3ZoaKGv7LRDZofvqUlfKdf36DeklC6ujbRKViy5qmXhbpV9/pkebrm+kpZT
 uNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=7HZhJ0MKZODAsCVeE+rrxYtrwoQWhInMRQhZk/4OW+E=;
 b=Uj9XLGwQ8ovP18Q4lOvjUvCFIURR+MD0CIGjBRmVUK5wzqfUFP/lVNbS3b6sQPtuz1
 UfJT+OrjO+IVwjLHJX7wdTJXu5uYaxBrMOzzO1x3L5z3ugBfSSMvdJAdN5gq87VP6dCV
 bIw0mQCCan2xdV3WpngCEcfx+94PdhSpE31oNS2mBjT0WMgclEDjd3BocojPmhCHWe3M
 nPP1a+ULm+yBfKRZs/kF5vUH5vwvmOgxvBC8F+TqXhuOt24c89gOlKp4YQ0vOU5lmT/h
 QcFYnYyavnQo46qKZBmEda+j+4LsFH3Gct+7TFdunygePKj2GoWBuVwWzP9lMnXZ3kS0
 btTA==
X-Gm-Message-State: AOAM532ANswNl7ltLUzYCONaALLZjhOpHrryMPtQiqFU/fDpOyehXBIi
 /IqInKp3cUGRpdAAN6ZnPowP8pjgoUBQ0GL/rMB4NHrB
X-Google-Smtp-Source: ABdhPJzWVou30uTfZFyQ407KacI0kM9xVmR0diWksEHcxHYDFo0Afkt5T64xtcssHrej2hCa52SxOpopqYV/WgEPe+g=
X-Received: by 2002:aca:c5cb:: with SMTP id v194mr5319021oif.26.1589633903266; 
 Sat, 16 May 2020 05:58:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200311131310.32594-1-kristian.evensen@gmail.com>
In-Reply-To: <20200311131310.32594-1-kristian.evensen@gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sat, 16 May 2020 14:58:12 +0200
Message-ID: <CAKfDRXhsCTc-opf1EsDLX2q5mVQtd6=bY4CZRrJ=05dUszv6WQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_055825_070060_1FC5A302 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kristian.evensen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: Improve handling of device
 rename
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

On Wed, Mar 11, 2020 at 2:13 PM Kristian Evensen
<kristian.evensen@gmail.com> wrote:
>
> After an interface has been renamed on a "fast" device (for example
> x86_64), the interface is sometimes not handled correctly by netifd.
> Looking in the logs, I see the following messages when renaming fails:
>
> Wed Mar 11 08:52:44 2020 kern.info kernel: [68383.522038] igb 0000:03:00.0 nlw_1: renamed from eth2
> Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: __device_add_user(710): Add user for device 'nlw_1', refcount=2
> Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: device_claim(413): Claim Network device nlw_1, new active count: 2
> Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: device_claim(432): claim Network device nlw_1 failed: -1
>
> Instrumenting netifd further reveals that there is a race between the hotplug
> "@move" event and ioctl(SIOCGIFINDEX). When the above error happens, the
> ioctl-call fails with ENODEV. Looking closer at the kernel code, it seems the
> hotplug-event is triggered before the renaming is completed. The easiest way to
> trigger the race, is if an interface name with the old name is not handled by
> netifd and an interface with the new name is. If only the old name is handled,
> or both names, I was not able to provoke the race.
>
> When the renaming is complete, a NEWLINK-message is generated. This patch
> modifies the logic surrounding renaming, so that we wait for the
> NEWLINK-message before marking an interface as present. The changes made are:
>
> * We only handle move-events for interfaces we know, and we return after
> device has been set as not present.
> * When we receive a NEWLINK message for an interface managed by netifd,
> we call device_set_present. device_set_present is guarded by the same
> checks as the add hotplug-event.
>
> After these changes, renaming works properly on both "fast" and "slow"
> devices. Removing a device is also handled correctly.
>
> Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>

I was wondering if anyone has had time to look at this patch and have
any opinions? I've been running the change in production since the
change was submitted, and all my renaming issues have been resolved
(and no new ones have appeared :)).

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
