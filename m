Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E434349EE5
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 13:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXYWyNhMOp1SfxEvcVGP4bq2KpIwzIetl/KNuP4wgrY=; b=C4WMtoq5W4gYss
	D6i6EKLg3pf7yyZ2pDOLRGs/nT9KzhZpoTyuwk6iaOsdVod55XOuegWrEDxPSap8OaCQuyplOxQYS
	1PUK2H1+yE4UY/Rg7M8uq/dC8DT0+qzevZcUTUVIhr5krn0bezr0456F7NIcDcxwhuk/Y5JI38bRl
	xzH4KpDqwSkbKmuaJ4KfhLX4Z0wMipaHIlyzO6w2c3q6G2THiri9rx0s0fLDrf59iDxR+oj3q/vZn
	ub0H5EvH2NaDXsfqrxKA1SUU0NZ3LNdao2GDV0xwHTxvPxuKG+ChcPyejDm2BZJOkBa+JyY5H7lln
	eCsbRf30QFJBBOe3E4+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBuO-0000SV-Qw; Tue, 18 Jun 2019 11:04:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBuG-0000Ru-Ok
 for openwrt-devel@lists.openwrt.org; Tue, 18 Jun 2019 11:04:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id k18so12604712ljc.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 18 Jun 2019 04:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zC7Z+BNZAphGCV2D0mt6/CuFpqMeSbx28Opl3BJgRhY=;
 b=XuPm4geaYj25zgDTuP7JBHpQNVZRR4ZQQFfuvlr2GoIJQNxwMvF/kgt9hH9nrgGe5x
 j7Ej85h03LDE5ztjg9WVxOriiStL7x212cWySyvbMpoKJEkJZurvMmC7Gdd6FH720Ri2
 SkocHSyQQxB02M3LgB9WtUA3S+NwSCpnCvRtv72L8YCc3od6na6PIPUT34pjnumJ1cvZ
 IB/UXGwuTHqbD6XO8eU1BXb1GgQB7UEL4vtmPJ4hgomq/0woapj92OLuHpAiz9gfkzdA
 W+nLvuZ1tYQU6vpKPVIMiJJfihpD1WWi/yMt8UqLggDZLtgExjglXuk8oP/0ijRmhzfZ
 TFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zC7Z+BNZAphGCV2D0mt6/CuFpqMeSbx28Opl3BJgRhY=;
 b=hLmHQ0Pds0lIXvz4E9dYKdjNvNv9f4dv9+4k9WdqR6jCyYro/l3K2tg2LmIFh26zBD
 rbqTKaA7KDLw2KfCVV6XwYBkojur5mh6fzWcd9rrhq4IXUu1LWLOHysmQ4Fm5fH66Xr/
 etnYEfQn5PSqkxgov8FWtkc6FYKVVYnr/V8wTKBkr6PkBI19wkFq7jBiSj9LtIBvaW5d
 r/fVu7MwyHA6oxFa/pirY4pm4bvaEBsX91QWoqDC+g5aTdDj9O7I8YTPQa8sFnZmDcxg
 wAPzUlA7yqVcf/H/D3iReiEWVFmktBLh3vCXJfe6sSiEJOnN94xzPkgEY7genfSYO1dV
 9EJg==
X-Gm-Message-State: APjAAAUAYtVQmQZX9WOgZjyQpBg97JK7dVRGNhBFZrV/KE8hxACQ+GPF
 CNB+btxLcWNvPe76lVj8HRDW2nmw1xxhUQUFXTrYwg==
X-Google-Smtp-Source: APXvYqxITTW6iUrElJ07uwet9Hi8jhuhRWYkgX2K7H+7W6OPZBGhbC//vO3Z0HQgBhWOaKBXUqul786a3u7bIA1Bd28=
X-Received: by 2002:a2e:650a:: with SMTP id z10mr22435467ljb.28.1560855842303; 
 Tue, 18 Jun 2019 04:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190613210036.30922-1-mail@david-bauer.net>
 <7513956.bV6BmdoukA@debian64>
 <CACRpkdYbd2qY4=L1rrDnvnaPqMcKjfqdNB1kWg1+AJBKoZnjcA@mail.gmail.com>
 <c30d2d95-7d2b-ca8b-9e15-c0ffdd016ba9@david-bauer.net>
 <CACRpkdauGYJ3LU6Zhepczp80QKSch6Foz0EqOx_qu_ERLM23bQ@mail.gmail.com>
 <1ac0e1cc-dee9-1ab1-6362-b41c8c52b208@david-bauer.net>
 <CACRpkdZ1TGXKj922yRhPRyHzdMDCcovw+1xT2dF2v_v+Qk6R6A@mail.gmail.com>
 <e447a702-88b9-0a74-69aa-4ac728641e70@david-bauer.net>
In-Reply-To: <e447a702-88b9-0a74-69aa-4ac728641e70@david-bauer.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Jun 2019 13:03:50 +0200
Message-ID: <CACRpkdZxzo5KPeX6eWQQoBO5+MX3TuHOycBW4H0UfUbVKt+_RA@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_040404_810266_6530F518 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: read
 initial state
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jun 18, 2019 at 12:53 PM David Bauer <mail@david-bauer.net> wrote:
> On 17.06.19 22:26, Linus Walleij wrote:

> > I think it makes a lot of sense on mechanical pushbuttons to
> > implement generic debounce.
>
> This is, however, not the job of the GPIO driver or is it?

If the GPIO block supports it, GPIO provides an API to use a hardware
debounce timer.

I'e had exotic ideas like pulling the debounce support from the input
subsystem into the GPIO subsystem, so whenever a consumer asks
for debounce they will get it, sometimes with a software timer
sometimes from hardware. But it never became any more than a
pipe dream.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
