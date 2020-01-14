Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D960713B35C
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 21:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ew7XWhl1tXiKBHMggKxw3WjOXJkARo94BsSvBpF/pCw=; b=olprn/sW+kVhNizAuql+V5nEm
	5zQDMFi5RPSRxp6I355esWDpeFRRNPqmvI0uvIYhrafA/tUVbmsZUXkxM85A07z98ISATzty/dcPz
	I98+BNCP5IDsbkRqVDRZjQ+A59M3nRg3q78fZJHOnEdhUfBWO/40ED44MnsDyswacT7dudmlTxmzF
	7yrSLTYQIrpJktmnOaQTsG9ojv29EZm3BuELzy8dt86zYw8Pw7pJMsMHeKY8qD7y6xx8HTOlCfZHM
	5JtnjZsVsHPLzsfM0yn9saaIv3CVzhtkb/v3h7FIBpMjJ1dZBYigbfClrcLp/jQnbbj02WDy3uskG
	TsqdbWkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irSSv-0002pm-WF; Tue, 14 Jan 2020 20:07:06 +0000
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <CAFBinCByt2Jukn5ZgtrABF2OtqduT733LEvvZLqd97j60Vj9dQ@mail.gmail.com>
 <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
In-Reply-To: <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
Date: Tue, 14 Jan 2020 21:06:40 +0100
To: Paul Spooren <mail@aparcar.org>
MIME-Version: 1.0
Message-ID: <mailman.24630.1579032419.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new
 devices
Content-Type: multipart/mixed; boundary="===============4367409515227130096=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4367409515227130096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4367409515227130096==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irSSk-0002p0-24
	for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 20:06:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id t17so13143569eds.6
        for <openwrt-devel@lists.openwrt.org>; Tue, 14 Jan 2020 12:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t+NmfzZgZdNhbL0o8hdUJMgM4+2l7WhGXCSPYzom1ng=;
        b=K8497TseaON5GpBnyxodAp6pkIkxEb+jJaz6Zfiq5gPbwJ2Qu4SNgrh47RJ+jrEBH/
         QB/pZeQiw8VgQQ0/n7eLGbzi7nyquZsk1Xdi2PSDH28l2ItGQCj3KHrmeeUw4YBCfhqF
         d5BktC/F6u3/oJB6WcAXBUkzkO3zxvRupdwFxXuI5vR4jUfup2WMQWyMqmcuKHMoObnq
         IjXuw0+/iEfZJdXk1Qs2HNPiO7tzKo+PRIKZwwnbcxYiMB/jzsucK3/4JdVlaxU5sJf8
         Eru/b3xHa4QHq5o4LLmbdHo79ixqBBSDHo/NkfHLGcCW5IkxhzE8ERBXUSC6goRN0w6Z
         wLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t+NmfzZgZdNhbL0o8hdUJMgM4+2l7WhGXCSPYzom1ng=;
        b=qneoHTitEiTPFyR5BD6FCQAr2cGNwNJHS1SUQk1WbN3roItr19QyvBPV0OCwzHqkhA
         IBOMogeLhTcP2NZvIqmDPYYoK6l11a0N9i08GHYdAmcXCXVtoKAiz2ah5pKVM5rV4xUs
         IBL7nRlDZJE+/8/uBp07dlakKMqQQWPCCGXjajAL52sNcM3RObmHcRp4ZpU2I5El2Zq4
         R3eC2WIuFBttMZVlyLG3eSJoDNTrivFrtsyhXukVFI+5SZNXU8beDKgfrcPVbEEU3Kq2
         2vm4Geqz5MOR/QLhFDpRxRhSFifmVrAANmCHhfFjDfq5CfiIVOxIK29Eg9V9aySS//w1
         GJOg==
X-Gm-Message-State: APjAAAXfMc//Zko9wpP3SakR3OgqVQAF68NnRgpEZe3Ox++e8RNwR8FS
	qXD1UnYVRyhiJwWRONNILdnu5sY1HylC9YbN9d0=
X-Google-Smtp-Source: APXvYqzU/S459htYspTX2j9VGyPEZHQWzQzm7UH8Z4fIn6ev28wjLr0LqNp6I3pfR1Yjb/B4WdSc6jqlhKMOHTzjJNE=
X-Received: by 2002:a17:906:604c:: with SMTP id p12mr24279298ejj.202.1579032411973;
 Tue, 14 Jan 2020 12:06:51 -0800 (PST)
MIME-Version: 1.0
References: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
 <CAFBinCByt2Jukn5ZgtrABF2OtqduT733LEvvZLqd97j60Vj9dQ@mail.gmail.com> <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
In-Reply-To: <4f4382fd-ab37-cccb-5bca-b20ab13c1f96@aparcar.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 14 Jan 2020 21:06:40 +0100
Message-ID: <CAFBinCBLNZWy39N+CU7N0Ub=rkRZiQkULkd22SP7+WQDK+gB6A@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [RFC] commit message in YAML format for new devices
To: Paul Spooren <mail@aparcar.org>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_120654_127021_911D3AF9 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:541 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hi Paul,

On Mon, Jan 13, 2020 at 9:13 AM Paul Spooren <mail@aparcar.org> wrote:
>
> Hi,
>
> On 1/12/20 1:05 PM, Martin Blumenstingl wrote:
> > Hi Paul,
> >
> > On Sun, Jan 12, 2020 at 10:47 PM Paul Spooren <mail@aparcar.org> wrote:
> >> Hi all,
> >>
> >> some time ago I created a (now outdated) device overview[0] based on
> >> YAML meta data. This approach could simplify maintaining an device
> >> overview and device specific pages[1].
> >>
> >> All commits adding new devices already include most relevant information
> >> for creating the overview. However it would be convenient if developers
> >> would format their commit messages in a generic format, therefore I'd
> >> propose the following:
> >>
> >> Every commit message for newly added devices must contain a number of
> >> hardware information and steps for an initial installation.
> >> The hardware information should contain at least the following
> >> information, maybe more:
> >>
> >> SoC, flash, ram, wifi, LEDs, buttons, USB, serial, vendor, model, device
> >> tree ID, Ethernet ports
> > can we automate this somehow?
> > the device tree files already contain most of that information.
>
> If you have a tool to extract such data or ideas on how to create such,
> that'd be great.
I don't have such a tool
my idea was that most of the data is already available in the .dts
files (or .dtb files, I haven't really thought about the
up-/downsides):
- SoC
- flash size
- RAM size
- (wifi can be detected on some devices where wifi is either part of
the SoC or the PCI(e) wifi chip is described in the .dts)
- buttons
- serial console (existence of such)
- model
- Ethernet ports
- USB controller(s)

this data can be parsed periodically to ensure that the TOH is
up-to-date, for example if a missing LED is added after the initial
submission of the device.
there are probably downsides when going this route, but I have not
thought these through yet (because I don't have time to implement a
tool which would do the parsing)

> As an alternative I could also create a shell script that extracts data
> on a running machine, but that might miss some details.
that would be another solution
the downside I see compared to .dts/.dtb parsing is that you need
access to the device to update the TOH. but I don't know whether this
is relevant for the use-case that we're discussing


Martin


--===============4367409515227130096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4367409515227130096==--
