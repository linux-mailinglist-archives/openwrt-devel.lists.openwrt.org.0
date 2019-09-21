Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D36CB9FE2
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 00:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QZNxAFlc7OXWg7P2wu2ZFP5T5/GixRQyaKhq+tI5ZDU=; b=bTzkxzq9HyS0wJMy6Q4ABtNob
	1rDO52S3tqwkBEjlTYCahOIev46vB151hHeHGd/y4cC6C2wbxkb2sT4fIoMc8fjx5vF2RW5U7bkna
	/js5wK3qJg3x6vfeeNpXMAucGy89cg5Ub7Qlgkbjcj7KIn0Ggf7XK0ELWy3VZIRh5aR4KSP8fkR7r
	GdvcCtgpVhskmwHIzDESfUMiLQ5p96zaENTxAZtSfB2vxZC+Z5yazBrqYqKPoja/9fnlzutwKswpU
	tQWNc1WyPB7aEj6WGQZKWdq9EcFF5nqCl8DwVom42MkkkUy1K+qDMTSy8Xtub14hwsSS/hKA/YueC
	KbjmjK0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBo0G-0002Ns-M5; Sat, 21 Sep 2019 22:37:20 +0000
References: <mailman.25186.1568674551.19300.openwrt-devel@lists.openwrt.org>
 <20190920191550.GA40628@meh.true.cz>
In-Reply-To: <20190920191550.GA40628@meh.true.cz>
Date: Sat, 21 Sep 2019 17:36:52 -0500
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.26325.1569105427.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Thomas Albers <thomas.gameiro@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix make kernel_menuconfig
Content-Type: multipart/mixed; boundary="===============9005974915693449411=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9005974915693449411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9005974915693449411==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBo00-0002NW-OQ
	for openwrt-devel@lists.openwrt.org; Sat, 21 Sep 2019 22:37:06 +0000
Received: by mail-vs1-xe42.google.com with SMTP id p13so7083183vsr.4
        for <openwrt-devel@lists.openwrt.org>; Sat, 21 Sep 2019 15:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XLl0sgCaTw/vwOwFRsNIuYc8aHn/syr9BSG54w5YgnI=;
        b=AG6Fa0zGwn9bxWA3BziNsuWJcdvW/jf36Obuk2/ixsUvIm2fY5ReXiY+E1rWbOKmqn
         y1SmZsStJyaE2yLM0hP+puPQbnxyFl3Cnm8gNMul8XKW0GZT23/olPNLswLGcBSH4Js2
         tuqwRlopdWzpBLzc2Y4KC5XZz19aIwqw4Rrb0WzlHnWsgC4bMto9UymNruT8hoJ0YasG
         W5w0AdfLmzpWg7DeLaTyR93ZwHUy1Qulkzl2riDGn/LQn+gkAy7IL1jzgtQCIJ5VgEFT
         UJD9HcT1CfxkSp2km/FqJW6vXimnPfY621m1KGfr2DCHZZ0YxcMv0LMuwQq2J4Lw8Vnv
         Tb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XLl0sgCaTw/vwOwFRsNIuYc8aHn/syr9BSG54w5YgnI=;
        b=uRDSshTCqzTCE7qopA1hcsIkbKjQILGgTI+EfUzPSH7cfVhI9HrKssRURvnYDprCWA
         /bPMkz/3SDVXqTcke1ZEgtBMOaCYP7+Z39HyfWIypj+Zs7U27j89yZnPukl6Y1LJSyuo
         xe178N8kpwiCKgvXupeE1yliyQ6M8Q43I1WIb0Jgi03NrB4JSIr64jBHHz0uPFzpTe/g
         my5jB14OGGAycAmdBUaaAJr6MDHFOgifnwqFRmsgi1Z/H3uzT8wMl4iIm6sBTxeSDo3z
         wS7LnVFnVbqE96WN6M9pbSz5kx709EO4nKl3Dkp2lgOC+wslmxZ5NweKG3Y4uhssYGMo
         9v7g==
X-Gm-Message-State: APjAAAWO0eTKl6uV9FJBm0Jxe5ONXfTvk2tYheCHHCNZN5F+FH9CJ45v
	ySRncXh7utvAnziFUReo9Jnb8SfsUK1gCsGvTWw/s+yV
X-Google-Smtp-Source: APXvYqxIGE/lYx9VMZ+y229da0CpyyDEm81lXv7bQGnEPBN0sjUHjfLC9QujNL6QwF2EshNJY7of/0o2c7gYaZ0CGG8=
X-Received: by 2002:a67:f08d:: with SMTP id i13mr6638893vsl.193.1569105422984;
 Sat, 21 Sep 2019 15:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.25186.1568674551.19300.openwrt-devel@lists.openwrt.org> <20190920191550.GA40628@meh.true.cz>
In-Reply-To: <20190920191550.GA40628@meh.true.cz>
From: Thomas Albers <thomas.gameiro@googlemail.com>
Date: Sat, 21 Sep 2019 17:36:52 -0500
Message-ID: <CALYGOBUcJBgubAZnLr0jYjQfWMFeECKW2ah_qsqvTip8WbieSA@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix make kernel_menuconfig
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_153704_831446_29CDF1A0 
X-CRM114-Status: UNSURE (   4.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:e42 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (thomas.gameiro[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

This patch is working for me.

Minor issue: currently make kernel_nconfig is failing for the same
reason (target calling pkg-config from the toolchain/host), so we
might fix that target as well now.

Around line 157 in file include/toplevel.mk the patch should read

+ifneq ($(DISTRO_PKG_CONFIG),)
+kernel_menuconfig: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
+kernel_nconfig: export PATH:=$(dir $(DISTRO_PKG_CONFIG)):$(PATH)
+endif

Regards,
Thomas


--===============9005974915693449411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9005974915693449411==--
