Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFA73A56D
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 14:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8T/lAYynl/qiN7aRHDX/o/twCRtKBFTAEa4k6FHUc8Q=; b=ju8QOHsGtSJmY4
	R0kpywDiReuSVl2eeuecegNymS7ucpeW482UZsdVf6GbVGQeSGW2l7/wjGSPqtu+gIE5Ga/g/V+54
	GnJfU1pTdawjsVtqwCIshUbs5SNgeFAGdbu6NJ+E5ewSgPx85NFt6p1srjHfoNGJlZU142JCWA1b8
	Y+D3gf9htOSwqkkmt1zcagsbfIuZp5yvl2ew1lGeW4r9wVq9ecUmzBBsohDZYDy8/oWGYnVlbKuwH
	tws4ufZGsk+jEBMCsurILEq2yimJfVoJaoAvEt/1nM3ZXyCmUfWV4xjvOYNW8s6ZsChYl6W1Gc7yg
	PX9ReNFev2jlLqnrBd1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZwrr-0000pZ-RX; Sun, 09 Jun 2019 12:24:11 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZwrh-0000oi-NT
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 12:24:03 +0000
Received: by mail-io1-xd42.google.com with SMTP id w25so4812896ioc.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 09 Jun 2019 05:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ftbtER7mXIptpXrfOWlsHgxS/MPmWVX/NFrSlq1Rdc8=;
 b=RYq69nE84q6BpzZIo4kgnpVmDMf8TgLqIm693F1mAVh+4rYsDQN3hh10eg/+bLm+Ng
 uKeq7N4CoeMkFBg9xqMOnzKZlNj+RO6kZc5XojusFAm6jMZ5fe4FBzCpUcWm8KfE6QEY
 Hrivnmb8KeJu0jsVYDf4aQzTc4myDTMh8vwzYFD6voCEQ8yXCSANvYA4HDJnurzvinmB
 VOyyAiuHnWk1GQVVRr4fRVZA8jpuAE50xQfZX/lq//tBVk2Fey8KsdjuoeVo7UJbKfGu
 95tvelsuxEl2UymwgdeGJ7dKjs6pVq0heDVEnhBtsduPH30QU6x8IOIe81xWMs3E2Bir
 gb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ftbtER7mXIptpXrfOWlsHgxS/MPmWVX/NFrSlq1Rdc8=;
 b=e7JmVQR+guG6xFRiGOrrLQkLqaDd/Mx2TMxXCFUN+EAsTUHwITAEGsQ3O2KP6xexIr
 wTzMoPqQf6BvjzvH9HkWECd33VAXvzAsRMeLNSClCNxfbX0IucAfz30Cv8V00Kx2omJO
 GJlOwNfZd+raM6vNhzSnUH1zOMVanFMN4n90DrncwV5MRhdhMuEPjIXN1b21ZqdB7g7Y
 4H7XfJQoeDUwiRohSR4YuoX0BDLByzEj+tx1RQMi0y24jSF9ioEi5k/Qkb4iIMOKAv7m
 Vf+aOPAfIvFOAokCBuT3VsnO3P6lgKjj0TYyb+3i7fvSTKsZbSwGf1L1C5eqQDLdooQN
 r7iA==
X-Gm-Message-State: APjAAAVCGmjFGfKljuyIPglGA/3QiYtU2ADeZQ8PdPb3JgzPjeF0GdgB
 v5J7kOd81aK/iM1Sac8aKhC1/6SsMsWG/eUzyhg=
X-Google-Smtp-Source: APXvYqyROgBwMMldjZ1j3zNreXqvFt7bW+iEZ+lOzNMNoIFD+dE9e1TvcJzeSr4t8pjxXjILfHvLr7aHgTwWW4J2bxQ=
X-Received: by 2002:a5d:88c6:: with SMTP id i6mr24884720iol.107.1560083039574; 
 Sun, 09 Jun 2019 05:23:59 -0700 (PDT)
MIME-Version: 1.0
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
 <CAKfDRXj1c32aAw5WVqkC9ULD8Xw8UoSjwamo=R3vanMvhOcPEg@mail.gmail.com>
 <9290831.qgf20FLg21@debian64>
In-Reply-To: <9290831.qgf20FLg21@debian64>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sun, 9 Jun 2019 14:23:48 +0200
Message-ID: <CAKfDRXh4DrTdb0OH3G56M629SmbUv7dp5_4Au_bSgjtWJH3FZQ@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_052401_769165_EB1D8C44 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
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
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Sun, Jun 9, 2019 at 10:06 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> @ynezz, @Kristian
>
> The APM821xx checks out with both as well. While there are spurious
> events on enabling the interrupt (one released event),
> the /etc/rc.button/ scripts are setup to handle that. So, which patch
> should we take and who gets the merge them? (I've seen that ynezz has
> more patches as well.)

I am unfortunately not familiar enough with the code in question to
have an opinion on which patch is the most correct or the best way for
going forward. I will let you two decide on which patch to merge and
who gets the honor :)

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
