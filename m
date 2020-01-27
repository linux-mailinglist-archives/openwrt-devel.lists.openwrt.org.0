Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5345D14A7E3
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 17:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2tOQXLKaw431Wxf7HLw6LOsqWIeDJFNTzmXmhov9+0=; b=uEySOyZfpFt5jM
	YSN4zaVrhGvqCaq2pmvzJ6MPN6FLYXcZ0nAXhtl7KS2du9uNZCh69zSxWmnSYxiKRBlblVd2Y+8M5
	zVVG5JfIjSy3WF1tH0C0LNFVbLqgt7emf2+tWv1GHIf/wDHaUimckgex3XdalLtwV8sRHL/7IJaCV
	gkBUWOU9WcCH5rI9mdxWeTDyr88x4t/SfBpBsIQzEy8+nvH9DBhVYjx86UlaUZXqriP8X7vId5pnc
	l19vX38ahoaZO+kWSIAEqoKqE0652AxT+ea86z2+Y/MVrhv/XE5PH0qTf+5S8HaWaoe7+68NSdDnf
	e4fWpLgU/Y5WJhZ+sY0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw729-0001hS-CX; Mon, 27 Jan 2020 16:14:41 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw720-0001gn-FU
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 16:14:34 +0000
Received: by mail-io1-xd31.google.com with SMTP id k24so10602612ioc.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 08:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X/wOCSHTYVgca9lvqnL33uLIPoCvHbQUyASTLMW/SIM=;
 b=G1B2gFcT7zAOi0GL8Kn1qiZhu0uLY+B6MrG1PSyMr51hlKOXvC2B7AHfIWjHU8JZdL
 JrjdZwZ3rZbhEL4bzMx9blQyM4nItC+znNmOv/CSPOagSat25eQZh6s6PSK0gZqUEMsD
 H1K0U3alwfO+aPoxex8xIwfCh3zAlJpHWkmevFdSftUE+TNFayBdLHVm/rQ+qc2SnEpR
 ocU/sA6awtC5jlRXpwbUOiB0ThOU/pbYtEeQMAIq0p471IzLSoyPY5K5mOd9EDzaXUN8
 gJyAXt0dyEnMhE8rnq4bjSf3IjXuiUQTZE8tWzZ5qkFZrzJebZQaI01gNNQfX/Jfg8w2
 nrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X/wOCSHTYVgca9lvqnL33uLIPoCvHbQUyASTLMW/SIM=;
 b=nMCQke2ESfFLVum8vJETAgdn59X9fCJEg86sRfItpMToHynaQOIOhHOOcjN2Pr8eCh
 ZJ5+4rh+3ABjulMqOhEpC4s7/FRKoLzWiDvTUkWq/ISiMNuvTo0KHz+gfi+uAbwdgRCb
 hd4kn0dN1IbLLoHw2UJyiGNvqjp1famjvl/6HblB4hUoTjQfIdXObLj3ChAgV2b+iHpm
 dzY659L8MzyaQIzJM+r5z0qiDI8M65xIsFHE4arHwES24ptFmiuhr6PiJ6qmoJstKUhe
 JEJWg60bS0bxwZ93H0SG72GFRMirFfrMxyLOX3hWQkNdglD5xx0D+CQEiOd7ruzOolG0
 QhhQ==
X-Gm-Message-State: APjAAAVdCvTAGIZbccYUikHx4p6JtoHrwlvGz2ygVJB2UNG7RGCDxic/
 sPgVHz/RZgcjo0RQxV19Zt76Kg+Y7kHgAE+ofwoasqWt
X-Google-Smtp-Source: APXvYqxd+yrR8LSrxwkIeyjN58JKwVYPFCaVsBAr24I4sXu8JKa//XHyTln3pq4JB4DNpc6Fbv6DtbmO26qZOoqOaLU=
X-Received: by 2002:a5d:8892:: with SMTP id d18mr12216840ioo.59.1580141670032; 
 Mon, 27 Jan 2020 08:14:30 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2OkLzFj_xhfDXY9WObeV48RkZGLZ83z0jfoNtG9tNQS1A@mail.gmail.com>
 <20200126230936.GH1525457@lud.localdomain>
 <00cc01d5d4a1$40715510$c153ff30$@adrianschmutzler.de>
In-Reply-To: <00cc01d5d4a1$40715510$c153ff30$@adrianschmutzler.de>
From: Joe Ayers <joe@ayerscasa.com>
Date: Mon, 27 Jan 2020 08:14:20 -0800
Message-ID: <CAALvt2PNFULVP7NbnGx_ZYJ7rNPMG0Wr9Lguq+V+pVGKakg_mw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_081432_570748_7D6DBEAD 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d31 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] 19.07.0 boot hang on Mikrotik device
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
Cc: Baptiste Jonglez <baptiste@bitsofnetworks.org>, mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> >
> > You should report this bug under "openwrt-19.07":
> > https://bugs.openwrt.org/
> >
> > You are apparently using ar71xx, did you try an ath79 19.07 image?
>
> the first mikrotik device in ath79 was merged to master last week, so ath79 is not an option here ATM.
>
> Best
>
> Adrian
>
> >
> > Regards,
> > Baptiste
> >

The devices with this issue aren't supported with Openwrt images yet
:) .   Thus, submitting a defect may be problematic.   I've added a
few definitions on top of the openwrt "Mikrotik LHG 5" to add support
(and hopefully I can find the time to submit an openwrt PR).  There
are 3 devices with exact same motherboard "LHG 2nD" and same behavior
going from 18.06.2 to 19.07.0:

LDF 2nD
LHG 2nD
LHG 2nD-XL

I have narrowed down the problem.  By removing "40_run_failsafe_hook",
procd completes as expected.   Something seems to be triggering
failsafe mode and blocking procd.   If anyone knows what might have
changed or where to fix the root cause, would appreciate any
information to save time.   I'll dig a little more...

Joe AE6XE


> > On 25-01-20, Joe Ayers wrote:
> > > At http:\\arednmesh.org, we've had several mikrotik devices working,
> > > all with "LHG" motherboards.   One of the devices, RB LHG 2nD-XL no
> > > longer boots with upgrade from 18.06.2 to 19.07.0.  Other devices with
> > > same "LHG" mother board continue to work fine, e.g. RB LHG 5nD-XL, LHG
> > > 5nDHP.
> > >
> > > I'm stuck on getting this working, if you have any pointers, please
> > > let me know.    Here's dmesg where it hangs:
> > >

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
