Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3710718E7E1
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 10:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSXiCCWEw/tVBObVRWqCSx0bVHRkK/94IwRNonfO2RU=; b=PtItudJ5ymoMaU
	0h3HS4Pqxcy8WVaUll1ZGKHDO9ErlLpZ4oqbaafT7RXufYPenxUYFy0/N/puLzrXAjFUpKmSkBBl6
	+4In6aGRNLjx77ENmVbL1u5RKgH5FeRgHFmiIQAmbK5Rtv2ywO8l5/rDzeATxPE4awQCf7n96u046
	Qu1BGuyH7gGSQtUGwUdIjmwTMBPVRGO3fmIc/1Jx6cIDhrNclwEO2wPMpjouohy3CvCRkcWwCDfoZ
	7mY+Qy/tX92NEp6Yrlw+ekbykJOUH6QJ2yGWGktXaAWfq1pxcVdsNOueHM4CzDa0HnexPCc3pcxBT
	BLxcWTAJ9OqkYt5O6Uag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFx39-0004hA-9O; Sun, 22 Mar 2020 09:37:43 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFx2y-0004gb-VC
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 09:37:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id j16so10443768otl.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 02:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xcGCrEoXrm9ly6Yn2uwgPadneJC7Cb84ThV4E0U7Y/I=;
 b=IawHooS91d23CQ98OSnXD/T/cfrnW7dxMtADe9K5d1eGZ4rTxu+J4qqW7qtckNO4na
 FDn1WAeYmKvYXb+Vvsx568XwdbcYDzUgvfjJGW+lkXQfVyLRX83/aFGO0/WWpPoYJCJA
 Soc/kTtfwtK6JWOnyK13fkqOvRBbhkT7R9vhxgy5ozPvLvSQrcB1/4X00V1/T+yNy4py
 3c/10pOlsh3JH/JFvT5C/Q/YdPOZdjUL+9X1tLgvgPPv6kmh9dpS0LTreu5WzMltZ2Lb
 aht31K45Og4JQHVpipClahtN7FLCT21T0g/kgqcLUiwD/CztIl7fJKBXy7keR8kh37WP
 joFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xcGCrEoXrm9ly6Yn2uwgPadneJC7Cb84ThV4E0U7Y/I=;
 b=jrdT2oK9/2DUzxMf5skMNla0c6M25WxHZB9WvWWkYEk/PPyYUgl3eXz6mypk015cZc
 DaEBQvcVg24ikKVa5n+N3mbhuAXYTFrzvkrha+D+aoO2IVKAY58nxtNnK29sSrBkW3ES
 2IMq3hFDOwMU+aas4YgOy35zi+Lpnvp40+fUgk85mKsegY27a2sMVWLorHEeEm6Wbykh
 +yNQKe9zB6L8kA8OOj/ZfD+uqShpvpWxa9RYhMJ2MDYlfw4+v7H4ZnEro6DvqSxliy+p
 J9PxOvW32PZTmrquewA7MdG6f3kiyckyfn/z3p7Pw7de76oyfnKpMOCTP/TUe7C0zArQ
 vFBg==
X-Gm-Message-State: ANhLgQ10aB75g3gp2sE8zMwt9fWdd5jcEilQw3TuKlVyvMIFIGmgNx9N
 SWvECaO2n6Eulc1u1kfsyYO1+fX4sxxjURksy0w=
X-Google-Smtp-Source: ADFU+vu4+ekLTMQ85XdoiC5cnWlylNKUAzS4OWNYd+u1/LmEH046ecRX6cmB8pWrmfTOpvvg20PrbVdFqTiuDI75K+U=
X-Received: by 2002:a9d:19c8:: with SMTP id k66mr3980662otk.186.1584869850937; 
 Sun, 22 Mar 2020 02:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200322033615.285409-1-rosenp@gmail.com>
 <e69361ac-aa1c-6702-44b6-6eb681b3748b@welho.com>
In-Reply-To: <e69361ac-aa1c-6702-44b6-6eb681b3748b@welho.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 22 Mar 2020 02:37:26 -0700
Message-ID: <CAKxU2N8X8ykNAoOWb6SKZ3cZ+EhTM9x9=H-G0r0juhUFKvaKgA@mail.gmail.com>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_023733_032102_E8141FC0 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFT][PATCH] toolchain/musl: update to 1.2.0
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

On Sun, Mar 22, 2020 at 2:25 AM Hannu Nyman <hannu.nyman@welho.com> wrote:
>
> Rosen Penev wrote at Sat Mar 21 20:36:15 PDT 2020:
>
>  > Remove GLOB_ONLYDIR patch. Does not seem to be needed.
>  > ...
>  > The GLOB_ONLYDIR macro is only needed for fstools, which should be  fixed
> there.
>
>
> Which of those conflicting statements is true?
Probably both. I did not test absolutely every package. Some fail to
compile, even on the buildbots. That's before this patch btw. I also
made the latter comment after compiling most of the packages feed.
>
> "GLOB_ONLYDIR does not seem to be needed" or
> "The GLOB_ONLYDIR macro is only needed for fstools" so this patch would in
> effect break fstools unless it is modified ???
>
> The first one is in the proposed commit message, while the second is in the
> comments section.
>
>
> Grepping the source directories of my normal build for wrt3200acm I think
> that fstools still needs it:
I will submit a patch for fstools when I can.
>
> perus@ub1910:/Openwrt/wrt3200/build_dir/target-arm_cortex-a9+vfpv3_musl_eabi$
> grep -r GLOB_ONLYDIR .
>    ...
>    /fstools-2020-01-21-deb745f8/libfstools/overlay.c:    if (!glob(globdir,
> GLOB_NOESCAPE | GLOB_MARK | GLOB_ONLYDIR, NULL, &gl))
>
>
> (My own build has also some other packages that seem to to have GLOB_ONLYDIR
> in their source, but both nano and gnulib in gdb define it by themselves.)
And that's exactly the proper behavior. fstools is bugged and must be patched.
>
> I would be cautious in removing the patch with just "Does not seem to be
> needed" unless the need is really evaluated with all feeds.
As stated above, packages that don't define this are bugged and must be patched.
>
>
> In any case, great to see a patch for musl 1.2.0 version bump.
> Would be good to have that in before the next release branching.
>
>
> ps. The commit message has misspelled "woresize.h". Btw, how did you evaluate
> that wordsize.h is not needed any more?
I compiled most of the packages feed and base feeds. These includes
are hacks to be honest. They shouldn't be here. Unfortunately, too
many packages break without them currently.
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
