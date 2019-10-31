Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210C0EB008
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 13:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SenlXzTNLwQgwmUtDiG7T8imS/Ig/LdkKD7YuYy1tkw=; b=TZuSOdGShg6HPP
	sBGZmTmDPMaZsAyyIGB0a+ZLbbX3K9vsZBJiOCF3ooXwffaKoFmW+0mVNbt8clPWZ9uVN5vLEzgsa
	vaQqBI/AlAgM5QLPoQHCNI6OLOJG6woI8AmH5eEOOcxIDDSxVnz8DOf1btw/wg299UW7YZUj44H66
	ccwLGKXdebeSH18NsnMk1ZXgqbKrzW+De2/A/jehX76HGpRk1utuQ1N262Mz9+IJF3OvLi1ymFF4C
	LP0gu5XylcifOPzIYETeYcYWGRTC1lQMXZieuxYRJtRk7xry5nA3GAtNwm/PkTZ4uKo3BblBzSl0O
	bvRsdbWLZ6TDkXwf+C+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9SN-0003dG-Ji; Thu, 31 Oct 2019 12:21:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9SD-0003ce-5n
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 12:21:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id g3so282215ljl.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 05:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Fi+kjT3RGe86S1fL8b/tIVMaFvs/6KmRUdDhHsjUuE=;
 b=TRhwft+Q3auUhJg329iwIEVywVleR2LoJMKwt+J5xbX4RYIDr4nEFEXIEBhll3CXFD
 AMThLKmBO917eP7/ghaTZTdla5SyeFaD8WJRmUaCTmmC+1VTkyrshNTJ2QLOtK0uvd7r
 fc232RogmDNSJZ126TUA/b8ayQdYlTwiZ3P5I9o9OwgNlKUEJhBXoHzGJ0ueHojCiJys
 /IyyyUBCIyO5JntR5PjWeI+ZxzMTntXgJNlWsp5iIWYfHl2wvZahJZJRjm8zYmE4d8w7
 O+7f9zjnJEsHYVC7sCY/maGQrisGCZpfZcj81f5n2OeMrJf1y+IyYeJBN25ba/CfWmBc
 v2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Fi+kjT3RGe86S1fL8b/tIVMaFvs/6KmRUdDhHsjUuE=;
 b=n384R2e5kfOUbTHCAWhCAomIxx6WkfbTisUx/9aBfeKAs+xjIcCVsx9pCqLHbQk3Bb
 U/8SWx3PiCMrHN19LsqhZjcrBJBmpD9E8cBf/TyQ1gPQcL4Rbxj/47efe89XllfKYQB3
 Ah6aT8htAtcXodnU71Qk6U62DaYMrEMbpTilD68thlCdi8+h1GO149JmZ8sljx+n8W8y
 Ox2/U0D4Q6FD8U7MZ6wjxgbcPNedI6POpVteBu6YJU1bkpcNewWhYIixrhHI4UGL4kgM
 Ub1mMKUO1ERadEWKY/PMBk5CcG/LdiYqVkRatfv+5m9vpU5WkcGp1vOlcuc/MKp+1e1l
 KIkA==
X-Gm-Message-State: APjAAAV+SGzJBUYKQq6I1t8i89kGcDfqoUXBaomA7/QHnWb2BIoVCKSm
 KOh3KOpMoHnAUI/UUQBXLQLeIziyPn8xNsAxES4=
X-Google-Smtp-Source: APXvYqzWnr3e8Sa2JnLKOF6pRejGbn4pSSI8+t0vuvXtV+kyuGrA9fNDC5JH22zoiRxH/vuCgl4xN58LvdrB2nYfEYg=
X-Received: by 2002:a2e:750c:: with SMTP id q12mr3977215ljc.138.1572524481925; 
 Thu, 31 Oct 2019 05:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <1570780880-11992-1-git-send-email-alin.nastac@technicolor.com>
 <9HoH4HEDjxXFVRViYIDhPrVwpRQxUfRWJfWnbky42388@mailpile>
In-Reply-To: <9HoH4HEDjxXFVRViYIDhPrVwpRQxUfRWJfWnbky42388@mailpile>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Thu, 31 Oct 2019 13:21:10 +0100
Message-ID: <CAF1oqRBZOhOBfcyfZuxSrW5weZxqNwJsZuuPqX6_ZuU-X_V6Qg@mail.gmail.com>
To: Karl Palsson <karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_052129_241946_40C445A3 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: add a hook before mounting
 the overlay
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Oct 24, 2019 at 11:24 PM Karl Palsson <karlp@tweak.net.au> wrote:
>
>
> Alin Nastac <alin.nastac@gmail.com> wrote:
> > From: Alin Nastac <alin.nastac@gmail.com>
> >
> > Scripts located in the directory /etc/mount_root.d will be
> > executed before mounting the overlay. It can be used to
> > implement configuration merges between old & new setup after
> > doing sysupgrade.
>
> >From the name of the directory it's unclear when these would be
> executed. (You say pre, it's what you needed, but what if I
> wanted afterwards? where would they go?)
>
> Perhaps these could be made compatible with the hotplug.d
> scripts, where they have environment variables passed to them
> with the ACTION (pre/post) and so on. See
> https://openwrt.org/docs/guide-user/base-system/hotplug
>
> You could even just have another directory under /etc/hotplug.d ?

The only action handled in my scripts is "pre-overlay-activation" and
I used it to merge parts of the old config into the new overlay file
system. If community finds this useful, I can move the scripts to
/etc/hotplug.d/overlay and run the equivalent of the shell command
   ACTION=activate /sbin/hotplug-call overlay

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
