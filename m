Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7FB12CC82
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 06:05:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tE/dMg948+BIQsEFsnqvbWDMDKcbZAqfkXd4KMo5rlA=; b=oZS5GL/6KXtl2s
	vHhC7Ev6A/MihLmDszoE58u+IBEgVNcEwzcuds2XcSyXR80X4ybgasT8mPypjiYwiWDc4ocaJwvD/
	1wspLL1iJK0smQwVCpVCOy5oAoLL+x1Po1JEevvQlojffcEToQlZxEUBvybZgm1hkimCszuftrd45
	H7ZOIBbO9aA4LUlmIssUbpUs1q4/pMS/RFUCSgShquaq7vtJL0wPx77M/YaFGxJp5XCqHTd0B+HDs
	2uFteTDBY/eqCdusKf5XAX3qbSzvFH3bvKrkVE7m3r6+U4OPAFiZ1LOFzFfzNAnMRLBcp1Fq1Pc/2
	1FrMKukMZ95lTa2iQbIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnEU-0004uJ-Au; Mon, 30 Dec 2019 05:04:46 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnEN-0004tx-0T
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 05:04:40 +0000
Received: by mail-ot1-x343.google.com with SMTP id 66so44790393otd.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 21:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QARZFUuLDN9yKLlwt7yE8nRANebOUCFyFElSUmazibc=;
 b=BCqiL54Je4gwS/iAFF7S+y+xSHPJAsHeQKIfctsc8oE6Tae85W7wWNp74kioAKyYWW
 24AoJnkZXuhd5TfRLYc6lih/KvHz1WvJSmpQgM5vCWmMwwK8g3dQxKkptws1Lr5ty2PS
 X05pHCI5tIM3QWU5SrKa8/ziyM8KM4LmiBFx+f88a5Po4VLtv7bbVAZfm0HcYjyuoky6
 2ciJOzRkPC5t+ulCattzwki18BlP5/kCZ0DLEuAcd0roeScV4PiwzLvCfB5tk7LHxR7A
 7pphVOxJlq4rpZELRLejYTGo4zFwbk3ysUrhDtmtzZH/OgCWqQL7SQ44oVnRucYfcPDa
 8eCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QARZFUuLDN9yKLlwt7yE8nRANebOUCFyFElSUmazibc=;
 b=tqURENHHDVHhS0e2L3GGAr8eg/Gh+Va17wE2Exi0hD3Ijn7rR974n9dKHUjiNi/Ff/
 QxxiPSIXbEf/olbUuTZay55AeX2MJ6Mq1NcJKQFq3DgGizUfOaA0kVPyF7YtWUj6QdBW
 b3+QJc3hzCF82VgQvo9PEGCFDqEMfbolt6r4b6dEz/8Sf6eR+yLJJ3KPMSUvYatjhQ8w
 sYKVoBZK/qY5bjV+enYsQKz7huE725nLk4PmSA6VxnlTiJ+6IlGFlzwYmU6EFIaJ8jMI
 Q8cGzTF3Y7pfRvrapkjH2xwuSR2r9A7MwnS2irWKwlwSskE89tSfqkbJGdiaeS9pqrbe
 4BCQ==
X-Gm-Message-State: APjAAAXdsLea3CkZOL6wpstLWSHWHfHhIXaXtVc6pra6QFMKnyfNfv+D
 zd9mWNGmwIaZCDBBtDhd1ISG7I1r4TDbSl0VoHw=
X-Google-Smtp-Source: APXvYqwHnTVxP9Aiv79EpK14gKSUbpoUWSRIM2fhs/2XbkqFqtg6ikPdCYFWLxRKNExpUMa/GFxD1d7ix4yPuvlcj+Q=
X-Received: by 2002:a9d:6a41:: with SMTP id h1mr38913266otn.279.1577682278130; 
 Sun, 29 Dec 2019 21:04:38 -0800 (PST)
MIME-Version: 1.0
References: <20191230034251.21873-1-rosenp@gmail.com>
 <20191230034251.21873-4-rosenp@gmail.com>
 <20191230051916.54ac3a81@mir>
In-Reply-To: <20191230051916.54ac3a81@mir>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 29 Dec 2019 21:04:27 -0800
Message-ID: <CAKxU2N94OHxcf6cdwTwi94YXuw5A3mBJoMKKhSQw3=r4dnbZvg@mail.gmail.com>
To: Stefan Lippers-Hollmann <s.l-h@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210439_074424_5F34C57F 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] scripts/gen_image_generic.sh: use
 /bin/sh
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

On Sun, Dec 29, 2019 at 8:19 PM Stefan Lippers-Hollmann <s.l-h@gmx.de> wrote:
>
> Hi
>
> On 2019-12-29, Rosen Penev wrote:
> > This has nothing bash specific.
> [...]
> > +++ b/scripts/gen_image_generic.sh
> > @@ -1,4 +1,4 @@
> > -#!/usr/bin/env bash
> > +#!/bin/bash
>
> I assume this was supposed to become #!/bin/sh instead?
Yes. Will resend.
>
> Regards
>         Stefan Lippers-Hollmann
>
> --
> Thanks for looking into this, unecessary bashisms have bothered me quite
> a bit as well.
The main benefit should be faster speed (hence why Ubuntu uses dash),

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
