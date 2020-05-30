Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703BB1E90CC
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 13:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+dnuZ+3XxbSlbwhe8egfdsJuzdM7lgaOIPdlQmJYCA=; b=jB+23FtihYH6U5
	vN3rcUSIdH5V6yV7XCNH8UpVzDsYAhL39bH8G7NARdTTmv7elHH/8t+VPUrW8Lpec9fJmlVVrPuXj
	VlgL3U23uuN+D0BkkobjnZWyKCipMn/EBSXdbyNJuB41h2Q6gAQNBIh0RLoAztWCKrAGwZD4llt52
	g3W9MaqohXDRsUwBCLlCP8idkwysItAKYcsTneLLjXj9ltXe89zOP5JS5YEqxRCea/jNn/QmmbzdY
	gMFCWPrHH29Q5xBnX8/Uo+bDyVrL9vgcFvyq0F3vhY0nCJjRPi74CK7hWl7P4H8dgPkvpYFNRu3c8
	KCjZ6kRBtm4de2/aTFJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jezeo-0000l0-8j; Sat, 30 May 2020 11:28:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jezej-0000kX-9C
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 11:28:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id r125so1192533lff.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 May 2020 04:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bj8MiYqztGpMfW8MivqZzuseDqdrtwfZS0BZ4dxSSCE=;
 b=Lt07yDHCDEV760+EjM42gaazxgEw/+Bbk+iyhkJ6p7UtjNMA/lw6N3F7h4QlDQctBU
 UcIVW4tSKZCmXiIgqWGEmtcIhwTTQwBJ+3x/4255XyUhfp18rzgEViu9kTMZr12eS4hG
 LlUbV31Lxtm530s9VZMIGctrS6GcyLNRV+XfWh/zV7keddAIIlytEWSHdMPz4HM06CQy
 lHO2+tzgewRWrpQknGBsqTj7obt3MJbSay4iX+o/klFH9YEvN3Kh5njxHLpWjSYMH9sU
 xuHsaCwik7niW4yt8TtUC1D2SX3oNCQeiil4ysUfPFS8IbvgloKr7YoUX3AbZkkLiZpz
 tOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bj8MiYqztGpMfW8MivqZzuseDqdrtwfZS0BZ4dxSSCE=;
 b=OTq6Qi3JR/KHtstV/1MHjjNEe1aNSCYJ+8OaEFIIUeKh20FelHgXKHIGOit4mgT2jI
 4PcczCyemwAmout39c6j74FzcWv2AuuAl3G15Hjo/6N+cK1KA4BgQkyye77Pc/rR1hv8
 WEuTa0CDwnBJkzaKx+THRyaj0D3n8ZehwDpQNxuVbtM4tFIwjHDe0Ty9CMmZP8JhY8uD
 62IuS4oyEVn6V+tr+25tfy5Dgy9bzeWReSAJ7pvQCu53VrcPqS4PuWwPMyoyWc7gY10t
 tFPCA26hvBYPu/nSWVY6HoqWVq0/K/lHDx2l/sFtrd161fPcqDBjK/T8GG2KtsOlT26u
 AlJA==
X-Gm-Message-State: AOAM531CljmjNPHOAzQl3pi8GY5tjWPBrk9REEEk7nrLj5IKf65+/Ga6
 2ZE1TV8AQSCVCPbFbjicTC5algwRnOZygF66MuBMmw==
X-Google-Smtp-Source: ABdhPJzCQiSMKfR2vVgoa7H8V+Ng5BlUGUaChp2uZY6mKDMfUBBFr8wts3mB06ONUHD5LF87TbQ5/l7ADGLBUByB3Q0=
X-Received: by 2002:ac2:562b:: with SMTP id b11mr1253875lff.47.1590838079016; 
 Sat, 30 May 2020 04:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-4-freifunk@adrianschmutzler.de>
 <b580be00-df26-3938-c8f1-7a0bbc3f1419@universe-factory.net>
 <01d201d635fb$190b6950$4b223bf0$@adrianschmutzler.de>
 <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
In-Reply-To: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 30 May 2020 13:27:48 +0200
Message-ID: <CACRpkdaypdA4xPBkN3kPbr008YuGDjc+kxkGLLNObLsmVfoe1A@mail.gmail.com>
To: Matthias Schiffer <mschiffer@universe-factory.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_042801_326092_401460CD 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, May 29, 2020 at 11:12 PM Matthias Schiffer
<mschiffer@universe-factory.net> wrote:

> Meanwhile I've found another target-specific config setting in the busybox
> package: BUSYBOX_DEFAULT_TRUNCATE is enabled for TARGET_bcm53xx only.
>
> I assume "truncate" is tiny enough that it doesn't really justify making
> busybox non-shared, we could just build in truncate unconditionally. I
> don't know how contrained some of the "nas" targets are, but maybe we
> should just replace the busybox hack with a full-featured hdparm on these
> targets?

That works.

My approach in the patch that started the discussion was more along the
lines of "least common denominator" - if any target needs hdparm then all
targets get hdparm - but that is I suppose ultimately not the best solution
for minimalism reasons.

BTW I noticed this when using ArchLinux ARM and OpenWrt on the same
device an the hard drive would not spin down on OpenWrt and finally
hashed out that ArchLinux was setting the spin down time using
hdparm.

I have a small rc script to do the same on OpenWrt as well that I will
add once we hashed out the overall structure for NAS type devices.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
