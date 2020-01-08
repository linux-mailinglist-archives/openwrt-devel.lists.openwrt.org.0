Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B5D13386A
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 02:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xfHcbNZFMx773VAykf+jbaE+lc1JVVc3x56rAgn2KE=; b=Rkec7dURc4mnHU
	4qMi2fypEaXZZ6dcdq+bLHPmnOLyrPVST2WdnwwvmI+ilU8SgNTORMew21f+XfpXlwMgQO6X6L5lQ
	G3b6kS9SGCHJbe3yPxXgvBY6iibJLhN6nKvxybuhlWf/tSUCbaGtZVY8NzjJ9X0LFRGas6iULzaqB
	+oqCCWs7vWCcXvX9OVchh2RylW0htCrMJLDCIQNJCPO4ncXE/c00zsveq0bPtmOHl1eDG+H5k7d65
	DipN3mAuQGtBfbKjHaF/3HIgKdh4m8UfGR5OHaSJ2Lg3LB1ALnng6Dz8f5TI54WOuFzPVyhxv/cA6
	stfzXoxI1BliU2UIWymw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip05P-00027X-GX; Wed, 08 Jan 2020 01:24:39 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip05I-000279-8w
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 01:24:33 +0000
Received: by mail-ot1-x341.google.com with SMTP id p8so1973984oth.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Jan 2020 17:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DccokWyLZFCsJ8ECPG/43nnDtAXIAu5Wl018E3MDP9g=;
 b=TvzhwZ8G8JDqTyZEfxRG0bZIlKoHR8YV7veJMq/NyRGFCA2/DrSZCHgRHo5ooKW0KE
 tUGRh2yLq2tQU7s7z9TbC6Sn1Gh6WKdf1182PlWvrWxF/dI4eAd9OaNH8XJFPK1SQd5n
 93OI1fzBdcCN3KntbqFAj8HwGFHZSweS9KKndVlGUZdgaN7T2m/cPTtVeunMpScbTEV7
 dhWkahNhU3gxQwEieitz4LIlNamhXTobYQ2oqAnWrugAB7mIgWIlEna3Fh6hhY3vD9M9
 L+FO3NMIZmP5276t9FaqJMISucAG8CN43TuqVbOf626H77k1ylsJxZKKVsA6H06Epwif
 J82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DccokWyLZFCsJ8ECPG/43nnDtAXIAu5Wl018E3MDP9g=;
 b=GTLojFeJJfZw4ie692dh5U8Emci9B4sa8ZyyCIDLk3yIXUQfzhVNuRt8eohRG4SDeX
 T6BWLJvgU/HS2jrBkUblcJfmY8bCF9KCBGZvFiCdkkVaqcAU2EcG2U7UardQzrv78CgY
 drIonm2+htjGBhSGnfKBefV7qjqGzExvFQP8XI0W+ewa/cLblVXBRtSZrKdgj/JSv6W8
 x+swQvLAUKP5KeEV+SAjR1erS2AW4OJa2Army6uZggXiSSsSivetes69E/hYXcqDmc6I
 u+xqfkQWCBD7zSNIuZLoJEmhGpgxje0UOCJeyzsB8BtTltminmqRG6IQbKH7nPwAKoUc
 HbEg==
X-Gm-Message-State: APjAAAU2egSWxnOWmr4OHTT7qgqXmMUzX6LwzhnEaDcs0LnoAArzVuVV
 xBh89NDOify1JCo34Xpb9z9Tvy/D3PGr776EB74=
X-Google-Smtp-Source: APXvYqwhVAgPhUzabKn8IC7AaoTOwdi4xkNYzwIxcO2yn/AzKvltsklsLrJyDJtsSIDlryfdlF9Mw7u+Rgq6PKRMZWo=
X-Received: by 2002:a9d:3bc4:: with SMTP id k62mr2468111otc.186.1578446668529; 
 Tue, 07 Jan 2020 17:24:28 -0800 (PST)
MIME-Version: 1.0
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <94437c48-7467-97e0-d47c-2c825ac73742@hauke-m.de>
In-Reply-To: <94437c48-7467-97e0-d47c-2c825ac73742@hauke-m.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 7 Jan 2020 17:24:17 -0800
Message-ID: <CAKxU2N_18meaRHSFvAGVEHr4i4gGqaNoZPq0iaguq52ADaG04w@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_172432_340907_960A46D2 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] buildsystem: Activate PIE ASLR for
 some packages
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
Cc: Daniel Engberg <daniel.engberg.lists@pyret.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>, lynxis@fe80.eu,
 Dave Taht <dave@taht.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jan 7, 2020 at 2:21 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 10/27/19 6:44 PM, Hauke Mehrtens wrote:
> > This is a follow up patch on this discussion on the mailing list:
> > https://patchwork.ozlabs.org/patch/1041647/
> >
> > This allows to activate PIE only for some packages where we thing it is
> > necessary and not only globally for all of them.
> >
> > Hauke Mehrtens (6):
> >   buildsystem: Make PIE ASLR option tristate
> >   dnsmasq: Activate PIE by default
> >   dropbear: Activate PIE by default
> >   hostapd: Activate PIE by default
> >   uhttpd: Activate PIE by default
> >   lantiq: Allow PKG_ASLR_PIE for DSL and voice drivers
> >
> >  config/Config-build.in                       | 22 ++++++++++++++++----
> >  include/hardening.mk                         |  9 +++++++-
> >  package/kernel/lantiq/ltq-adsl/Makefile      |  1 -
> >  package/kernel/lantiq/ltq-ifxos/Makefile     |  1 -
> >  package/kernel/lantiq/ltq-tapi/Makefile      |  1 -
> >  package/kernel/lantiq/ltq-vdsl-mei/Makefile  |  2 --
> >  package/kernel/lantiq/ltq-vdsl/Makefile      |  1 -
> >  package/kernel/lantiq/ltq-vmmc/Makefile      |  1 -
> >  package/network/config/ltq-vdsl-app/Makefile |  1 -
> >  package/network/services/dnsmasq/Makefile    |  1 +
> >  package/network/services/dropbear/Makefile   |  1 +
> >  package/network/services/hostapd/Makefile    |  1 +
> >  package/network/services/uhttpd/Makefile     |  1 +
> >  13 files changed, 30 insertions(+), 13 deletions(-)
> >
>
> Hi,
>
> I would like to apply these patches to master?
>
> Are there any objections to this? I already activated LTO to reduce the
> size for all these components and the lantiq patch is already applied.
ACK from me.
>
> Hauke
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
