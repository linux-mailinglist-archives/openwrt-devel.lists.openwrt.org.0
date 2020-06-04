Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ED61EE1E1
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 11:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFX8M8Gango5TDl4Cu5JuU2GMcNvdkWYHMUYuyM5R3s=; b=cwPyBuQIh2vYvJ
	CWNe3CQFijBnGmQjuWmX2BxV96RYbK/k5JGBqHxgZvS2gMmMUbSFNSF9XfoJkcSlPXcoPLHBtzKm7
	pNFyQNZCkBlugrZdkxtjyr+kh4b3Tra9r3+cdMs31VWWMluf0a1AmEQpF6AlOJMA5mMZXJ218rTIm
	auWg2Qc1zK2VZUQrjtVLyIyQ+Np4Iqo+xGGphGOehfkzmQNW6tTVHonOoID5bFAmm1m+ISSw7zM9V
	bsWksUErCwM29IXSt34Vw6vbtvsnwMnyTpFxAvyAtZUeCOpip5hUXi10eYjBY5YIbFhwELFpK3vi3
	rcrFs1GzmLafeoTNAoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmcF-0000Cg-Fv; Thu, 04 Jun 2020 09:56:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmcA-0000C4-CH
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 09:56:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id p5so5362964wrw.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 02:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m5RTYLHsOw7dGbQbjeV9lE+p9heQZtw29+DtV3xkHVE=;
 b=RYG02SWCefx646CyibFAGyDGLEngQOTUx9O/jMJFG7AZbfL5TyYX+WlQzcgm6rvolb
 nbbk/zMkm+SvL7qkbcgAzpTMovk+J0iZekWK++pG/fqJDngbAETJ0/Wz8AtgivW74M71
 mHrpVhCsnAO92sW7oc6ZOUh7sDbleJcr60gsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m5RTYLHsOw7dGbQbjeV9lE+p9heQZtw29+DtV3xkHVE=;
 b=EL+mlJHOHKUHj3FfB5zSv5Yu3Jk1M5QucZkK336sXdpul11SqPsAlYd1ox1zfWcs87
 5AQyK7OopnSg72H+Yk501YIZg2Vo/iRmNX8C53QqPanJYR/c9vDJExLdqsCFvuKN4Im5
 eqnShPgpvMePWllSzNipDS+HVFSq7ttde2EbKqNxWhUIY0VdeWzhJc/1S1n9WEYIvwE5
 d5chYNnv26KEv/HdggFxVc4EWd3WKz690jSQTjQHSHFrBGS1runbTP2tv2qUGp745hIu
 C5xeZEr3Om2NYN00AvG3W6cpl+85Z0C8znuzt8KFqo8AqIX2Ae02Y5hURb+NKAF8iUO5
 TVGw==
X-Gm-Message-State: AOAM531EjAf5+f56r4oo1nyWIMMSwtTHu/JTSOLLT1D6jOMBx9tiEpJG
 D4DJQH/JEDYbCT518QUIXRAowM1R1BdrVZrjNrMH8Z8sgucXEw==
X-Google-Smtp-Source: ABdhPJwpdEaapcA6qqgUzQSgBF6yV6rzBAJ+PVTNt8+eLUehX0bRWEMnRYXJ+1Bdd548/gh5FHIyQ82srEe/UFqtEOU=
X-Received: by 2002:a5d:50c9:: with SMTP id f9mr3815549wrt.9.1591264603304;
 Thu, 04 Jun 2020 02:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
 <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
 <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
In-Reply-To: <CAJQUmm7XTfcuiTQaGo=w=f9XyTMxNFu8jfw6rxHr8PyEE-pGJw@mail.gmail.com>
From: Stan Grishin <stangri@melmac.net>
Date: Thu, 4 Jun 2020 02:56:31 -0700
Message-ID: <CALu2O0RUvLaTthbO_jbB=zH-4Cx6ZsGz+nDF8kqfd1Z3Dpc0vA@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_025646_420607_A84D6356 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Wed, Jun 3, 2020 at 4:53 PM Michael Jones <mike@meshplusplus.com> wrote:
>
>
>
> On Wed, Jun 3, 2020 at 6:21 PM Stan Grishin <stangri@melmac.net> wrote:
>>
>> To obtain the list of enabled (for autostart) services, you'd type
>> service list-enabled. For disabled services service list-disabled. It
>> is useful when you need to quickly check which services are
>> enabled/disabled or when helping other users troubleshoot.
>>
>> An alternative to list-enabled/list-disabled that I have considered
>> was to output the enabled status of available services below the usage
>> output, ie replace:
>>                 if [ -n "$1" ]; then
>>                         echo "service "'"'"$1"'"'" not found, the
>> following services are available:"
>>                     ls "/etc/init.d"
>>                 fi
>>
>> with
>>
>>                 if [ -n "$1" ]; then
>>                         echo "service "'"'"$1"'"'" not found, the
>> following services are available:"
>>                     for F in /etc/init.d/* ; do
>>                         $F enabled && echo "$F (autostart enabled)" ||
>> echo "$F (autostart **disabled**)"
>>                     done;
>>                 fi
>>
>>
>> Please elaborate on the list-start and list-stop question, I'm not
>> sure I understand the purpose of those.
>
>
> Originally I asked that question because I misunderstood what the goal of this change was.
>
> I thought that you were proposing to add the ability to enable / disable multiple services at the same time, so I was asking about the ability to start / stop multiple services at the same time.
>
> It's clear not that's not what you were trying to propose.
>
> So instead, what about listing the services that are running, and also listing the services that are configured, but not running?

Is there an easy universal way to determine if the service is running?

> I don't know that that provides a lot of value, so it may not be worth doing.

If there's a one/two liner to figure out if a service is running or
not, it may be better to implement `service list` which would print
the table of available init scripts, wherever they are enabled or not
and wherever they are running or not.

If that is deemed to be a better approach I can resubmit the patch.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
