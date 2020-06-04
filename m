Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD8D1EEE7C
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 01:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gh7Anht3X28NWtavzlf2yUUJMHulpSgAvo28142jnU4=; b=KZ9xT+5CVX0KXz
	pmVb9y9sLy+7xtEwI1IMGCjnLwPbBh3h+g62cgtwx7tSS3aKJsgBRCQalDoU6WbRopU7cwJN9eabq
	DZfUDzUlF5dTU5rN5QPa4fbwHqHIaMX/XNS7SoJr/B5VoDZQtnFHgO6h8yxCxdeQ+cbqOEOPpwTuD
	Gj6rMRpzra964LayGzjtf731Q/uV6K10SIZpc9v7Szrh9MtiY/U3OxorE71+aVlbEVttwukc7nCTP
	xiTFv6kFOlLJpBj5ZppJk2PIJS3qyK7BZkYcBrPm6COG8IcWXXrtkAt4lFrCn82L4dNePtJFwkkc4
	6BResTqwkIAdikPwKxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgzcl-0006bA-QJ; Thu, 04 Jun 2020 23:50:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgzcU-0006Zv-6T
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 23:49:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id j198so7901918wmj.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 16:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G0sbn+a4FVl6krr0eIob5BcFRCIEDtt28MoOTlfoWnU=;
 b=A1IFZNYWZmXZDchu2DlhqxecnNcTXgmy5bcrx3MjM4uD+NhK5uTHZQQtGW1iDtK+Qk
 YZ9d3SAZL3Y2gDtGvx4MTdAlPAeB7EUUCO5mJwBcDe7pr2/eHwEvAbulG3KbjqQswOTc
 7N4JCL+Z8A25wyU4CipkCtEw7znqcvFt++ShE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G0sbn+a4FVl6krr0eIob5BcFRCIEDtt28MoOTlfoWnU=;
 b=WiQtavXaKEcvCpBKEYKVZ1r39sJhuO5oMRHfyPNtr9uL+Nkr9F57idqQHymDrMpENx
 /mjquwQtnLPWd+orfUusvRRkPnShzQiz/FcXGOxYFPneu+rvdYJxhbiF6eM+i/JWYssg
 xVcVIIr6O6d3eNW+1Tyex+d/FUwdysyTB+ChDcpq2t2B3V5VEBx6uVSp6QDjkg0fZTJL
 kXj4ZjK6+FwcUTPv0/QbSQjaL7E/3REjT/36mGqTRDyQfgqXXWvfFbsXQBUB/Ic2ah0z
 fQ0VwfUUzkINiTALyX/9bHxI1k6Vw9tFxV9ArAziaRaouuHBozXtdLrg62KV+4+7GPAe
 nB5A==
X-Gm-Message-State: AOAM5324sB4z0OMU9HU73AMV2KWxvnZqaLUzSgLFlw84B7BabcPzqWVo
 vHxLyJ31OSmXgzb36lDUQBP1zzyao7nC0bQXtj3VPw==
X-Google-Smtp-Source: ABdhPJzvcAPhAK7A3c6cQizpkvO+Eeu2Xvt/mVtlmSo1/Jk5HvoKNaOW6FqQ/GxSGk5bJT3x+/HIYfKAfNrYHMSsB9M=
X-Received: by 2002:a1c:4189:: with SMTP id o131mr6481767wma.110.1591314596175; 
 Thu, 04 Jun 2020 16:49:56 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
 <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
 <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
 <CABzx=O1cYRmhMcB8oKRujjwWeRbXBNCGm6biBQUoB+P4_d6OqA@mail.gmail.com>
In-Reply-To: <CABzx=O1cYRmhMcB8oKRujjwWeRbXBNCGm6biBQUoB+P4_d6OqA@mail.gmail.com>
From: Stan Grishin <stangri@melmac.net>
Date: Thu, 4 Jun 2020 16:49:44 -0700
Message-ID: <CALu2O0SDM1nC4OX6Z3WpAvQ+1NLCStrJCwQ-gntS65TcY7ZN6Q@mail.gmail.com>
To: Daniel Bailey <danielb@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_164958_241853_191BB91C 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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

Daniel, thanks, that's what I ended up doing in the code for the `service list`.

Should I send the patch for `service list` and remove `service
list-enabled` and `service list-disabled`? Do people care about this
minor improvement?

On Thu, Jun 4, 2020 at 4:13 PM Daniel Bailey <danielb@meshplusplus.com> wrote:
>
> Somebody who is better with jsonfilter than me might be able to clean this up, but it does the trick:
>
> #!/bin/sh
>
> . /usr/share/libubox/jshn.sh
>
> json_load "$(ubus call service list)"
> json_get_keys SERVICES
>
> for SERVICE in $SERVICES; do
>     echo "$SERVICE: `ubus call service list | jsonfilter -e "@.$SERVICE.instances[\"*\"].running"`"
> done
>
> On Thu, Jun 4, 2020 at 2:56 AM Stan Grishin <stangri@melmac.net> wrote:
>>
>> On Wed, Jun 3, 2020 at 4:53 PM Michael Jones <mike@meshplusplus.com> wrote:
>> >
>> >
>> >
>> > On Wed, Jun 3, 2020 at 6:21 PM Stan Grishin <stangri@melmac.net> wrote:
>> >>
>> >> To obtain the list of enabled (for autostart) services, you'd type
>> >> service list-enabled. For disabled services service list-disabled. It
>> >> is useful when you need to quickly check which services are
>> >> enabled/disabled or when helping other users troubleshoot.
>> >>
>> >> An alternative to list-enabled/list-disabled that I have considered
>> >> was to output the enabled status of available services below the usage
>> >> output, ie replace:
>> >>                 if [ -n "$1" ]; then
>> >>                         echo "service "'"'"$1"'"'" not found, the
>> >> following services are available:"
>> >>                     ls "/etc/init.d"
>> >>                 fi
>> >>
>> >> with
>> >>
>> >>                 if [ -n "$1" ]; then
>> >>                         echo "service "'"'"$1"'"'" not found, the
>> >> following services are available:"
>> >>                     for F in /etc/init.d/* ; do
>> >>                         $F enabled && echo "$F (autostart enabled)" ||
>> >> echo "$F (autostart **disabled**)"
>> >>                     done;
>> >>                 fi
>> >>
>> >>
>> >> Please elaborate on the list-start and list-stop question, I'm not
>> >> sure I understand the purpose of those.
>> >
>> >
>> > Originally I asked that question because I misunderstood what the goal of this change was.
>> >
>> > I thought that you were proposing to add the ability to enable / disable multiple services at the same time, so I was asking about the ability to start / stop multiple services at the same time.
>> >
>> > It's clear not that's not what you were trying to propose.
>> >
>> > So instead, what about listing the services that are running, and also listing the services that are configured, but not running?
>>
>> Is there an easy universal way to determine if the service is running?
>>
>> > I don't know that that provides a lot of value, so it may not be worth doing.
>>
>> If there's a one/two liner to figure out if a service is running or
>> not, it may be better to implement `service list` which would print
>> the table of available init scripts, wherever they are enabled or not
>> and wherever they are running or not.
>>
>> If that is deemed to be a better approach I can resubmit the patch.
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
