Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714DC13EE9
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 12:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlLVuqVLjQ+qXc/9V1INnFLgDGqdXNgfz+NMzkxKCwQ=; b=Xu8HuyqnHeot1s
	vxzWALilIQseKkgep/iwwl3V3oOxFyQdmwNXLLiaySVJ2Mq3mH1Ha3mGlQqZVL9FpT7Jk9cpSzK6+
	+Uv0j8Rd19iRx3MaklejCmWWDjLjc0Lwx/vOuPjQphoYkdLNFRyn435B6/IFbd3MyH1tywfRISQyR
	qd7XVMlsqZWIyhyVgcEtrcMownNtrkqdPKrTL8EGxeoZCltOX9plk110gO7+CKsTt3zn44enTPTAF
	ks2X2/cCMcLNVyZi7pT99UX3qVmka4T5+AHKqIkO+7QL5zylimCt9EhM+mKwwX0xXrrZVc2SVnOz8
	Pi2Lb0x1hJHbCHhc2p8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNEa9-0006SL-DT; Sun, 05 May 2019 10:41:21 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNEa0-0006Rw-QO
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 10:41:14 +0000
Received: by mail-ot1-x342.google.com with SMTP id b1so9088350otp.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 03:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wom/aCH0EpZHxoidDy1cLu5l7DJoQ2Iab715MF5pnlI=;
 b=T0MDnIWdV2Hkba/sYRy9/T3o7Hb3pnYNo2dF1dJOGpNTCx73qIOU9wmNjUAtYzbKI/
 iXfn4qSmvPgOe5UsIIZhQKdK1NF+e8cKzBCSDSb1pusE/tZ6fNaNLllMu+5edRmnvzMb
 sNlbBmNhN3TG2STZz7F2SWSr9ih4/Wz0WVnlI1+jFkAz4a2HME9Wyy0HV2YoSke0ks4c
 mzdrorhQwuptYVsRS8Ak916+XJuuGy4CZjHKG4p/JlYz5I4vtMdwz4EiH37S81B8EWwC
 XQgyeao99DJZZvoK+DsT6EA03KqndBUF47rX2h2AUB+qqcYyc7iOVcv9Avg67ARW1/nZ
 fh/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wom/aCH0EpZHxoidDy1cLu5l7DJoQ2Iab715MF5pnlI=;
 b=Du4zfpq5kQ4SwXIwBWCoILS211cKy0nadIXaRzfh3rk027DV/8lkRlWvbrmL30jCiP
 NUL7nC51X9P9b2DgIIiaoc22Y6tk5WuWlZ/+jBLL1mkoMCqwwBNZkLd5+gUpXfNOTN/U
 sGzy+stGU+Q0gNt0Ifs2K7vzGo3vOCKYjMZFlCsBXBvT+0n36I/aqNeNPfFMZgaFRlAH
 gLAqGplrtdmCUjNn28M2kBhinU8lSUgApgwqp9kXSja4wLKcjaVhIlNHWIwFlmkwVYAU
 D5NWnouHaoxw/bNhkUl1HWCsRfIrRpifSlrXRYQsNhIZKYtqfq6QXt3MvYMoNDfrb8fe
 /njA==
X-Gm-Message-State: APjAAAVKl0dQf2EIFc+umgmJqHl6xIEo1v/gWJpCaIikeDUhknAMueez
 OrMQA3aGdVfgmhsKN4qZbsmDNSm3z/NoYS4vWY8=
X-Google-Smtp-Source: APXvYqxJO4tfxmYB57s/bF9R3e+8w4huo7rV6cMaDomnGtz2qIoLJ1BuJ1dLkXDb5NcgWe4cfKwbUGefWbX20OG1Wz8=
X-Received: by 2002:a9d:77d6:: with SMTP id w22mr13037976otl.154.1557052871530; 
 Sun, 05 May 2019 03:41:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
 <20190503163247.GF71477@meh.true.cz>
 <CAKfDRXghj-ymqjT01cNvwXa-w=mWDK38wxFfROgLvx1XjKcw5Q@mail.gmail.com>
In-Reply-To: <CAKfDRXghj-ymqjT01cNvwXa-w=mWDK38wxFfROgLvx1XjKcw5Q@mail.gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sun, 5 May 2019 12:41:00 +0200
Message-ID: <CAKfDRXhLbMCS+g-LSGusgnajDcSc43E7UWF0_a+Q1ub6JjJSLg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_034112_885453_80E6C9C2 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Hello again,

On Sat, May 4, 2019 at 12:07 PM Kristian Evensen
<kristian.evensen@gmail.com> wrote:
> Also, I am having some issues getting a ramdisk image to be built by
> default. After adding ramdisk to FEATURES, I still need to manually
> choose to build a ramdisk image. I have spent some time looking into
> the different mk-files to try to figure out what could be wrong, but
> without any luck. Do you have any pointers?

I made a second attempt here and turns out I had made a stupid mistake
- I had forgot to remove my old config. After starting from a clean
build dir, ramdisk is correctly enabled after selecting mt7620. I
still wonder if there is a way to only enable ramdisk for the HDRM200
though.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
