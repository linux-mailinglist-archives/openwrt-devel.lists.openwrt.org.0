Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB571D1E14
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 20:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QL7v9aS6vFtJKOTmANz8AP9LLnuJr74mImZICfnDXGM=; b=l/wmwIyLqAZVUe
	rPWy7SoYzFoszMXp0tWfn/wIGSrp/YLPulMFczsUAt/S4ryrHWzrMisSgvqNl2qANBE35UYneJCXc
	b+uU1CyYI9Vfsoq0co75PvxNYhcNQnaXjrbI1sI3j5v56Q7kdynG19vEifZDdtY/fZYPXKxFAshxD
	WJsX0e/c7RPeJhPGKlN4nWp6YAlpqsgVOpXHNIsc7og2fDDgMBt+0iyzXdOiLx0/v9PM/tZHA4vSe
	whbYG7Loyhltl4lmvs/LkQbK51IgKZhbhO7WLpM051KpSg4dM2jWGjqL9+sVZrzxwWRU1r+tR30SH
	M1Dil7S+AdAXJFYvH4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwW8-0004B9-IO; Wed, 13 May 2020 18:54:08 +0000
Received: from mail-vk1-xa2c.google.com ([2607:f8b0:4864:20::a2c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwVS-0003qM-UA
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 18:53:33 +0000
Received: by mail-vk1-xa2c.google.com with SMTP id m18so107312vkk.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 11:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/jX/0qpLXyVeK2CR9oL3Zvpu11HX/BCSJt2KMAJEuNM=;
 b=LxeLFv1MwyFsLTzezEEAY/qiayoC/YJ2dwZqMfmZCdxaYfWoQwmjcKfDBmV95+qsxb
 ftnC5Yq16pyNhbbsYbISFqmqoUBadZrrmmvt2icCXyC5YYey/GzINbRU8+MncmUlJIA3
 0b8OVq4T9XmP+noiHdvswI/7eTtjJFOs33hA416NrcLdJzhofNz8QbQlv9vKlHERCu+8
 OGkMU4L+w8jvUfzG9oXQImd0qgvyeq9Go3605f/sOLjEQfxs4jtR7LJg8J+2yR8ycEO3
 w/VVJIrDr7zB/a+LSNpNqmh/Yg6nD5UoDOnkkGGPsI8P5OlU9tFCASSoaatb3PM7IX/M
 leKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/jX/0qpLXyVeK2CR9oL3Zvpu11HX/BCSJt2KMAJEuNM=;
 b=LoTTnLduzym93QRDo+Z4q3riP5vfrdghQcRF810ssPztuRXX8LFBrH9+GPND1DuB5j
 aUQNFrEZSkAQWWbtdMhONF7VU+F+ZGYQORCCUzk9yMkoGQ3ja2EKAMFr/6jWf7+3PNTB
 y5lGzqyI36dAG5T/cWmV7k6aXzy/P7F2wyXHWCT9vfsKKR6pJ9L10CipVT2f3al4EkaM
 bRtnaqXmLCJuoUq0QvJASJIxFFdcWHwZlaJM3htAnyB3Aa+/dn8/0MxjQEznOzeRcp0H
 4izTmKSkYFDKetayAnPvPNupfZdQEH5k5K0D9tzMXfhyqkrB1rW1AJPUFbLxq/PS85qA
 k3Fg==
X-Gm-Message-State: AOAM533zscFp8H1OYfuiciJb523mVc70O+u0OAAfnDkTJ7KXvPT1wQM5
 xR/SLhfCj9WEkEbLgh3B3aCt0TzOzDeqte/cMVfXnmBBz7A=
X-Google-Smtp-Source: ABdhPJyrC8MQmgSRzJjI1vCGJ2KnuAkZAL2i0a2gXNZM2oEmR0wDKwXroJNbTDgeV+kV9keTh5Kf4taHBF97dBmFgZA=
X-Received: by 2002:a1f:a009:: with SMTP id j9mr638461vke.60.1589396004615;
 Wed, 13 May 2020 11:53:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
In-Reply-To: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
From: Eric Romano <gelstudios@gmail.com>
Date: Wed, 13 May 2020 14:53:08 -0400
Message-ID: <CAF2Tf9QnUZVwxA9xiObGTTtkp62+i21cuMD6GFOPt3JRZTURtg@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_115326_982887_EF5C7260 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a2c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gelstudios[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It does seem like process supervision would be a nice capability to
have within procd.

Previously I've done this by a combination of:
1. trying to crash / exit the process when an inconsistent state is hit.
2. monitoring for delayed writes to a timestamp pidfile in temp.

procd's respawn directive can handle the first case (i forget but
something like "respawn 10 5 0" did fine), but the second one...
depended on a clumsy nanny process to reap / kill any that failed to
update their timestamp.

Feature wise, it would be nice to have more than one way to perform
the process health check.

Some options that come to mind are:
- a ping / pong -like method via ubus
- expecting the process to "touch" a specified file, which procd could
read stat times for
- either of the above, with the ability to trigger a refresh via
signal like SIGUSR1 or SIGUSR2, etc.

Would be good to hear what other methods have been tried by others,
and what a generic interface to this could look like in procd's
config.



On Wed, May 13, 2020 at 1:49 PM Michael Jones <mike@meshplusplus.com> wrote:
>
> I have a critical service on my OpenWRT system that needs monitoring and re-starting if it's failed.
>
> I've been looking for a mechanism in procd that would allow me to request that my service be terminated if it did not periodically notify some watchdog endpoint via ubus.
>
> It seems to me like this is not something that is currently supported by procd, and I've written my own clumsy "watchdog" wrapper program that tries to do the job.
>
> Are there any plans to support a feature like this in procd directly in the future?
>
> If there are no plans, and I were to write code for this, would OpenWRT be interested in reviewing, and then merging, patches?
>
> Are there other people on this list who would take advantage of this feature if it were available? If so, what functionality would you like to see?
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
