Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0DF102EB7
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 22:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSh0Bhl6GKI9rDdFbNq6g8SLdVVZgeVBBo+C2qMdSt0=; b=qpcN+yixaWcKNS
	DwzSTUihQly8FU3LcOTP8K4XB/xWxYTqoNMkdgbQp/w4s9El15wXDMCawgMrU7aGSFURhmkOegj4A
	jevTGzAPsnD4XYry5mnIFh40PRM+zanQIyqdU8I7WNsKFiRZ29YNrh7+Lv6HSPYVXSuyC8MKSdAXn
	WT8uVaVJ3EabnmZfN6BEJVLpSZIbmHDHVALxMn3QCe3HUQnM3POvpYau2/NuXFgU0FSPTJRgAktdt
	G3E14X3TGrydSUYbyCFQ7uCAIE79B7qz/TiWjWk+7al+mWG1LCYam70cJYvhsLA+W34jyrgi43W6E
	bOtvDIrUVMx1osyPhC9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXBW9-0005jF-Mw; Tue, 19 Nov 2019 21:58:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXBVx-0005il-BF
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 21:58:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so5620927wmk.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 13:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U01FwytevncdWETMU3DXBXNwQ6LSsHlH4krrYfovF1k=;
 b=H+W2A33YWQyHG+uOK5XHS+MhODu8NfGyqEwdhZTI6O2ajG1IgfWD4s4Y3mqDktLvAH
 A6+FLF6ErrpHNTVOMsfJ1BHpp207JmqGAw0UutoI63cn8F6JhYx5ZyyUUK8RhXpWdicx
 RAqDVodgPYBjORx2v6spGOrgJmut29okfnR0klZ6yZzUTwaJndfjpBt04Yh3Zp+4DyS/
 SYj/V2HBLZarmxzZs8s5NNie9kQlG1GRE/1owgI8Ud52mAFOLPR3BCqOeNAAafg3wRn+
 uZ6yfmpLJemFAUzZoiqvLvvbyRK+wakZbl/sjrPP2FJq5AuCHec0bOycvx8cOrVMs25C
 vd+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U01FwytevncdWETMU3DXBXNwQ6LSsHlH4krrYfovF1k=;
 b=bxhvZwq7nH4s0+xO25iG8k090AcUW9+ZuwRuk4CBAU88syDJyGetBTagZBEdWId0ed
 1IJI+ovYku/BeYL4ogo25eCecIT+42kEZRF8Ps0tnDo4RmDJv2Bjo3YPc5KVBC5O06Cl
 QKBKKcVEZMxHxWg4UHn7U2Qs+DJy1YDp4cyRwJHyW0/tNnrhYFzemOcyQqL1LgqTDKL+
 xWmUoP9sffKyer9C7JwCA0n+oaDrcPRgybR09wwG31uM2c1v0sOdZFjHl/HOEY+d/EoF
 P8jPABC30OEq2ddB6gZuufENxTwT5N+oSJm8oVdM3KQiTR2RMZaIm4VKPAQwLDDXpuWR
 8RSw==
X-Gm-Message-State: APjAAAX8Y4MGUHrWxCkCa0rvZCZW1LeC9iaPETRLxNUJLZaYO71yILqI
 kTBDuCV/OHYPzR/Pg2TuV6m/a5+sjNoTeLgki9Y=
X-Google-Smtp-Source: APXvYqy9otpME2diyI+YMJbG+rXv+46a8iPHzgeNWkVgHkThbUCQtxRr43YPpFs4oOk0Fbxsy4ahnMKKdw9xBDL/vXs=
X-Received: by 2002:a05:600c:3cc:: with SMTP id
 z12mr16752wmd.151.1574200703611; 
 Tue, 19 Nov 2019 13:58:23 -0800 (PST)
MIME-Version: 1.0
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
 <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
 <20191119173322.512c6669@kosmio.komorska>
 <CAOiHx=krODnS-PizVk3Y5arY69JSzVT9A8bTV28K_cUJs_pJ=A@mail.gmail.com>
 <20191119175900.0038eb08@kosmio.komorska>
In-Reply-To: <20191119175900.0038eb08@kosmio.komorska>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 19 Nov 2019 22:58:19 +0100
Message-ID: <CAOiHx=kZ27wDd4K+=eT-RLSmknbTiGjyF+9Aa5e8_FbRgHU6GQ@mail.gmail.com>
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_135825_410018_052F2338 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 19 Nov 2019 at 17:59, Michal Cieslakiewicz
<michal.cieslakiewicz@wp.pl> wrote:
>
> >
> > That was my question, if the "new" OpenWrt sysupgrade.bin still works
> > in the initial flash.
> >
>
> sysupgrade.bin for this model is in format tar+metadata, it is not
> designed to be put into flash directly.

Typo, I did mean factory.bin ... . The type you use to initially flash
OpenWrt ;-)

Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
