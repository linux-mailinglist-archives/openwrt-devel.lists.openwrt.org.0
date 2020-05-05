Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853401C5AF0
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 17:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwv3E2mBAtEB263qQc/3JpWWJz/S4DSwhcXCLqFWp1Q=; b=g5RbnIn/k64xAo
	zQTGQS3T7/bLKXVxftsQ1UXBuiSeUI2ATXTP4hfuPksU8ZAc1s79+2kyXuA8hLsp//ffrtuBHw93x
	6Dqf97TcDox65Yt5NcxdelNOLbT7hxKbOkgb2dMjHAAffXTHTe2nUp2vpP9bq7nW+9dy3s9dAGTBl
	F6vJXglX6ELPiZCfru8vhy1E8kqKL+/amr0kmI6HcXpd0VVqh0wCmaqgxod5Ezx0I7cxNEpTlOr5q
	Ar7Xw4+9mbrRrwjaExcu/yoVdg5A71r4Q3IKZZ7N+ww6o1yhKwDkQesCIWnJnguyXWgmOma+ZcC9R
	icICviyyHjlllY+9L7ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzPM-0004P8-ID; Tue, 05 May 2020 15:22:56 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzPE-0004OZ-GM
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 15:22:50 +0000
Received: by mail-il1-x12a.google.com with SMTP id q10so1253881ile.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 May 2020 08:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h5P5RJOx4l3HoUgO9vwyd36p0gWPgarq20HCDoAJRb0=;
 b=Br5b4mi1rhdROSbZD9u3uK8YTLCedVVlNQA5tYQNAjLZ6RPgTYH+adITDIyj4aahkF
 yKjULJTOwdUoy2+g84q1I1JVNQER1KiwzcmI+DSdCd548bSyI1BDZW1ZmHIKfThNCWIb
 iPbXnR6I32pEU8GzQxWN3FRUXz3yOjXTbrOTfmnuJg5obcqSA9mzYaGOfLsErDYdL5QK
 SWZQGy9De+KXlGYSG/pxOR0j4WhIjIWlhZ6qTmA1dGbGcvBH2g1avf6ZzY+B+xIYEoL0
 OZ1bFtRUuG9Xqq07ssgSFa+gOyaHpBJQ5RXMNFSs1IXlaLmCdTAJzdpmwTqTbbmemwLd
 sZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h5P5RJOx4l3HoUgO9vwyd36p0gWPgarq20HCDoAJRb0=;
 b=mCbWrqVes5DIJ81GTW1ZbmkApE5lC5/PwOvYOaqaGehGQaljfjbYKKBmxXroqhoK6g
 HpnBx49ZfHm0mcQLwP0nrr/4car+gtHOGK/nJg5eYZLgoNF1j2hnHRGM7vVzftOfs7i9
 sAnkJyP43MtvPGRwd5YRspHZ/J8AnUPhaSdXagoYX9Er7bvCN2GrB9+BBmOlVDKdvBwr
 qLAcw48nJNXgdhrqMkr3LirJeCrdd18/c6SpeNzYSeFMYMHGU/bgBDZvnajHaP+Yu8EB
 Qiak4JUsqn6xQx6Ishtq3r/FcBIhiDtyyRwkJwAqW4YZIe0ByKpD9c7es7I79qS6GOfs
 0qnA==
X-Gm-Message-State: AGi0PuZfTI+tafq5dLfM7bzV0GiOXUWkZpiLbyajcEEocdE+YsKkow2v
 BmSXYBXbxNqJozQV/orynJ+Dv8wCiIQn0zM9UXFPYg==
X-Google-Smtp-Source: APiQypLl8Tjfp82OrqyGEpCE22UzR0Jf6NMqg9QfdQlYey/fj4TBD76rxku5fGnUTxy/vgC4OAt2fiywcXNEthxnfTg=
X-Received: by 2002:a05:6e02:48b:: with SMTP id
 b11mr4130826ils.304.1588692166950; 
 Tue, 05 May 2020 08:22:46 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
In-Reply-To: <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 5 May 2020 17:22:35 +0200
Message-ID: <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_082248_603872_B16B8612 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey Jeonghum,

> Thank you for the very kind message!
> I tried "mmcli -L" and received an error message:
>   root at LEDE:~# mmcli -L
>   error: couldn't create manager: Timeout was reached
>

This is extremely weird, and it would show some issue with your setup,
maybe with how DBus is installed/running in the system. mmcli should
never fail in that way; if the ModemManager daemon owns the
well-known-name in DBus, a manager object should be created; and if
there is no MM daemon running, mmcli would just return with a
different error (couldn't find the ModemManager process in the bus).
The fact that you're getting a timeout when trying to talk to the DBus
server is not expected at all.

> I added "--debug" option into the ModemManager start command.
> I used device path: "/sys/devices/platform/1a0c0000.usb/usb2/2-1" in the /etc/config/network.
>
> And I got an logread output file.
> I will attach it to this email.
>
> I already posted this question to the ModemManager maillist also:
> https://lists.freedesktop.org/archives/modemmanager-devel/2020-May/007798.html
>
> So now I'm waiting Alexander's reply message about my problem.

I'm also in this mailing list :D

> But, If you have any idea, please let me know.
>

Did you try with the suggestion to configure baudrate and flow control
settings? Looking at the kind of modem you're working with, I highly
doubt those port settings will have any effect at the end, as you're
really a device that exposes the TTY via USB port, and it also looks
like you have a cdc-wdm+wwan pair (QMI? MBIM?). What modem
manufacturer/model is this?

--
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
