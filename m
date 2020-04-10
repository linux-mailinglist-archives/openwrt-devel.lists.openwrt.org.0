Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD101A44C8
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 11:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UK48Sv1h98KUMGDmZuslTiVy9i4BRv3/GNkyAygpRFI=; b=GBvwhyUl5sliyUe3g3sJvP8ta
	+f+fmft1tItcwnYgJUJYL7OS6FnsbeNSpkhwqqeoQurpAuDpiqIAlAt9SHWfVUhWUQklKxSL0iHDy
	zHO1FGnY25Q2wWax7zM9Jsr8hp954pkyHSK4fKxkZ+w/TCZDI0Mb07ZNGPCh4sprxPS5zVSzeh0G8
	82UitM+qzC8Ko2sam7/cR/35sTPribVVuAIGMjm8fkRvuvU5/vNP2D5VX5L7lUnTZLuU/bEiTpG9s
	6Ppnl1QVtmFVaz2euTxhywj4Kw/4bKTOySc60COLHKJ8XbHSBbJ8Ch/Kl+tJS5M0HKW+P/lION1IZ
	17c0J0c0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqO8-0004G7-4G; Fri, 10 Apr 2020 09:55:52 +0000
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
In-Reply-To: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
Date: Fri, 10 Apr 2020 11:55:30 +0200
To: "guilin.wang@gl-inet.com" <guilin.wang@gl-inet.com>
MIME-Version: 1.0
Message-ID: <mailman.2455.1586512546.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200
 (GL.iNet)
Content-Type: multipart/mixed; boundary="===============6900858570739141421=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6900858570739141421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6900858570739141421==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqNz-0004Fp-Sa
	for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 09:55:45 +0000
Received: by mail-ed1-x543.google.com with SMTP id e5so1814384edq.5
        for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 02:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CmlIBfUwCDH6RNfo/0si9sxdL14KZ4VbaF39Zbk9p0Y=;
        b=rjn1C0JA625KIK2dZJreo7MnEWFjE6u1n5D750nk1GHGlufuD89NQIJp+B87g0LSO1
         NZcQ9UeQhUZrMlFUfh7KIF/ifY9HiJMB5KlE7pwGgGIflL9isz+oY784FhpggABSMbo/
         bOycfeq8SSfqGfvo1pJpVNvmEHrX+eZKoK7R8CWdDlbJP504QT68W6Deh2tv7bTZMD1A
         2ZHjDVLy7LSWPiIURC2ar6C+IH8ec8AcB5NG1SOgc0lcf0BdVc5JiuMBgkq88lpWyFFc
         xbqNLglS2zd2/rrV9pnjmYaqL9BHp2xUk2rzgqFJ4cuvKn9bIXM5k1Kcz/FSvvVU/ASc
         18ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CmlIBfUwCDH6RNfo/0si9sxdL14KZ4VbaF39Zbk9p0Y=;
        b=YPT+l61fdWD0kPJyVkD5Nx2p9j2Mr3+DdqiwE8qDn7Mr7X3roD8HYndvTFRv+HaA25
         d4tI8hWZNQnW8hBprayALaycUTF+WzKgHW9pX1mYJCOjvrw2jtH6MulUi+U1ZJjh7CFO
         CyWj1i9NEJDVCT7X4nyK0szy1D4Yl6+VWnv3kXxVzvqlq3sQXqGKuab0hdI2F91jRjFE
         pWynuSculHP3UGCJy+bP932UAeBcIBGZ3UZA5+A9mCUgwhtUD3WjWB4NOKDjxadaif+i
         32tyK8bpC2thW4CpKImbcP2Pehjget/8g/k997Jv+IJk+LDogcW3FjYanFkFVpfOHM4R
         xUng==
X-Gm-Message-State: AGi0PubcrCt+8PgB7t0wlSyw1JCGJZl3zdxoYnhcz/XFCpnb5pBadi3O
	vn6/FP56URC33T0VTYxmcJHdWLNuXzC1L9yztLidkBaJJNk=
X-Google-Smtp-Source: APiQypI4412l0vgKarXBhbSQp5pmP8ZIQX05rP95Qr/0+yx0DotKnZI85XsPHjQqBEoSk7xrl8Yi0eNiVa9XaCLeo98=
X-Received: by 2002:a17:906:3085:: with SMTP id 5mr3111772ejv.381.1586512541459;
 Fri, 10 Apr 2020 02:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
In-Reply-To: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 10 Apr 2020 11:55:30 +0200
Message-ID: <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200 (GL.iNet)
To: "guilin.wang@gl-inet.com" <guilin.wang@gl-inet.com>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_025543_947188_9EB6EBBD 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:543 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi,

On Fri, Apr 10, 2020 at 11:47 AM guilin.wang@gl-inet.com
<guilin.wang@gl-inet.com> wrote:
>
> Signed-off-by: guilin.wang@gl-inet.com <guilin.wang@gl-inet.com>
the format should be "your name <email@address.com>"

> ---
>  package/kernel/om-watchdog/Makefile               |  2 +-
>  package/kernel/om-watchdog/files/om-watchdog      | 40 +++++++++++++++++++----
>  package/kernel/om-watchdog/files/om-watchdog.init |  2 ++
>  3 files changed, 37 insertions(+), 7 deletions(-)
why not use a GPIO watchdog node in board.dts instead? see [0] for an example


Martin


[0] https://github.com/torvalds/linux/blob/v5.4/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt


--===============6900858570739141421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6900858570739141421==--
