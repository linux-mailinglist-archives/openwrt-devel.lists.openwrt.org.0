Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516513D213
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 03:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2VHvZOhPSegIeAk5fldeA3LYHrgWVVRDiaYPjvAv5U=; b=CN4BeJkDqQ2jQX
	/XBIF6SCi7EwtTLOtXPpFRDhJt92a+OJndPGUIB9cpeQAxWXS657n5dGhn+2eEiLtjRq0/lka6kNQ
	qZ+O0E/dpww+a7KFT5LCd1BB7ple7ibL5QXK5Cf4iOgychwrW34eL+KK3s7t4t8Vq3OlyIHSj3BSb
	fAOOCqgHu/u8s7hnhKYIi271x8bTWCQAHWzltrk3mipHuWPSi3LIFz/EFA71R9DAAsBwnH59/yHHh
	zGhDDePbe9nT4Lk1cQrmzeUtegrkov3w5dqMPNJUnic2XMZVZZUfW9GIPa5kQrIkMeA2EuEiS8Yq8
	0+bHpCEon9kR1A5vO6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irui6-0005ve-9q; Thu, 16 Jan 2020 02:16:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iruhO-0005VP-Ad
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 02:15:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id w127so17733596qkb.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Jan 2020 18:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1yPuAyy99cIawbFhEiqsN0EP3+B9ls2vv7vDwoUXS04=;
 b=bVyweqmZ6aq2Oo4z0eq9zFJ7MEt1uP5wMTsVY5gxDNf5UVVlBXDX9XTk0yUi3Erjsy
 KdkdD8oj3pV2SZ3zxOAf558m+WgX0BXBGH7WJ4up8aD30X1f+pMkMhcGygH7WLW4DiLM
 rZQJquqFRKsZWfi3zgTMp1ffzR3R9UU/Iw8W97YAiulpdM5yV4UOw1tKZj/WmrPntxZr
 eKsPjQUItc9WDCu9tLffXxETtO5GcH/nCZ/K90KJoYtLv8XpMOYJ1pPaczIaq+/+8rnH
 160X3n1E14Wj9mRjsTLsIEtSbhj5meoRgix2GZ+HqNcyuQHwWAToX3BM/pUoyT2yRoM8
 aIQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1yPuAyy99cIawbFhEiqsN0EP3+B9ls2vv7vDwoUXS04=;
 b=uHPuLG5C0xrFxewkyJum2sthAsG9/ezDf8GGGionOKrsV0TFbrxtYCTug1Fh8xVat/
 dkwhPvV+IRbIw5hM3iJpe4qlLPbBrlfbO3w6cJkrvgShTpr39vrgXu6rdzoVksWmpeSG
 /KJVobNARnQ3+OzuE9emv3itxbPhEjlS+sK9pwuN0m6N71nHo+wdcKEr8IqUdJXxy4FN
 NJX2KiiVyHIpF2yhCcOOtY4vTGCSUzqsFfceoQMRCZFRPU49+j1HuiTDHxpzSJB3u+Cj
 b1ftpE80Rs1rKdY7xQzKHTQmq2R5elVKPhMrOnNeCcQdpBlUmR6P+1pcZmRzuUsjbtX/
 J1mQ==
X-Gm-Message-State: APjAAAXjbfKpFqDY5a7rmVDHZwijT9i89CrtsZgY6w68Oh2GrNRz9NbI
 KUhvYnxRTbrz7vOdPn1sGxp5zkV1axDos5m4hBRiGL5kCz0=
X-Google-Smtp-Source: APXvYqwzyZXeavLzFRAYZeB/FaC1t7iIiEmUvmHivB26zcsK+2a94IZVYvEACw/faZXV3Cd5ryv3jopiT0KdO45cmSA=
X-Received: by 2002:a37:bc04:: with SMTP id m4mr26612867qkf.224.1579140951759; 
 Wed, 15 Jan 2020 18:15:51 -0800 (PST)
MIME-Version: 1.0
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
In-Reply-To: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 15 Jan 2020 21:15:41 -0500
Message-ID: <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_181554_422417_74E7869D 
X-CRM114-Status: GOOD (  34.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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

On Wed, Jan 15, 2020 at 6:01 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> Hi,
>
> I meet with jow about 2 weeks ago and we talked about a lot of OpenWrt
> related stuff, one of the topics was the release after 19.07.
>
> As the 19.07 release is now done, I would like to follow up on this topic.
>
> We thought that the time between the 19.07 branch and the final release
> was way too long, this should be much shorter in the next release, we
> should target 8 weeks for that.
>
> My preferred timeline would the the following:
> * Beginning of February: freeze master for big changes (adding new
> boards is no problem)
> * Beginning of March: branch off 20.3 release branch
> * 1 week after the branch was created: tag and build 20.3-rc1
> * 3 weeks later tag and build 20.3-rc2
> * 3 weeks later tag and build 20.3 final
>
> Then we would do the next final release in May 2020.
>
> This plan is based on using kernel 4.19, if we use kernel 5.4 I would
> assume we have to shift all dates by 3 months, so branch off in
> beginning of June and final release in August.
>
> Koen is working on adding generic 5.4 support and also some targets are
> already ported, I assume the generic part should be finished soon:
> https://git.openwrt.org/?p=openwrt/staging/xback.git;a=shortlog
>
> We had a longer discussion which kernel to use here:
> https://lists.infradead.org/pipermail/openwrt-devel/2019-November/020403.html
> There was also a discussion about this in IRC some days ago.
>
> I think we will get some years of LTS support for both versions, as
> Android will probably use kernel 4.19 and 5.4 and then Google wants to
> have LTS support from Greg Kroah-Hartman & Sasha Levin. Support for
> kernel 4.19 was announced till December 2020, but it is used in Debian
> and in the past Ben Hutchings took over and maintained Debian kernels
> longer, like he still does for kernel 3.16. For previous kernel versions
> the 5 year LTS support was also announced later.
>
> I am fine with kernel 4.19 or 5.4, but we should decide and not stay in
> a limbo for log, so we can work io the right direction.
>
> If we decide for kernel 4.19 I am fine with adding kernel 5.4 support to
> master and add it as testing kernel to some targets in master. We can
> then branch off the next release in October with kernel 5.4.

Good Evening,

I know I'm relatively new to this community, so take my input with a
grain of salt.
I think it is wise to target 4.19 as it has been in the nightly
releases, and as such has been in testing.
Once that change is in place, target 5.4 for the nightly releases.
This will allow 5.4 to be tested by those who are willing to run the
bleeding edge, before the 21.x release.

I must say though I'm sad with the 4/32 support loss, as I have openwrt on a
Netgear WN3000RP v3, and with zram enabled it's orders of magnitude
better than stock.

>
> It would be nice to have jails activated by default, but there are still
> problems when using an initramfs, I will probably not have the time to
> investigate into this problem in the next 4 weeks.
>
> Should wpad-openssl or better wpad-wolfssl (after it works with WPA3) be
> added as default wpad version now? If we do this we can also activate
> https support for luci by default https support should not cost much
> space when we already have an ssl library.
>
> Are there any other bigger changes planned you would like to get into
> the next release?

It would be nice to have lxd support in the full release, instead of
needing to custom build to enable support.

>
> Should we do a vote on the kernel version and release plan in the end?
> The most important thing to get this done is that someone takes care and
> does the branching, releasing and keeping an overview.
>
> Hauke
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
