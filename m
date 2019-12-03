Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6671105ED
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 21:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tu1Yz416oVSB3kXUXIbP8b9ySGsSLjeOQssXIHhLrJw=; b=FHLNcb3qQ2z9iD
	5YHfi+Wm9Qxu+zzQ+QAHP/qn/guRYTNDW29FJsA1F4ki4Vosdh4gVhr0jDQdZ+2krb0i+xnALHuTB
	dB9fcCHmGSFchDwcI8NnL1cwmMlbcvhEjWc/dqUqQsOII1Wbj/d4OEGOGxdiNxJO+SmHUxN/ql+kz
	3hoIa5178xPtjyjs2T69KIZpJ1/BrUkoSX2hjPFhLU1VJ/w+HMKyNo88p1eZG0TiQ/yZdl4pB+XkD
	ZpdtE1UuY91IKU9dwt3KXAhXtuUnHgrc3NytKiU5PBw3PicD5RHYSMZmtG7/g0k/BnBMtov661MbW
	bzNwbzAEFd8064Wzt+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icEok-0000Jf-K6; Tue, 03 Dec 2019 20:30:42 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icEoV-0000Ix-Ee
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 20:30:29 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1icEoN-00055X-Ss; Tue, 03 Dec 2019 21:30:20 +0100
Date: Tue, 3 Dec 2019 21:30:15 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Message-ID: <20191203203015.GH1281@makrotopia.org>
References: <20191120181131.2622-1-uwe@kleine-koenig.org>
 <CAJLcKsGef==YdFG8mSjQS=KD9zXwwpuEuJfAhxNTqHadKLOy0w@mail.gmail.com>
 <6a20ec46-f61a-a1df-5530-54031c299c97@kleine-koenig.org>
 <CAJLcKsHhA3_qaWN2bHv8tAJCg5Ymdj6rfRLN5Gb89AqDzn6hYA@mail.gmail.com>
 <a7a0b354-7ecb-ff39-cca1-070276f8b747@kleine-koenig.org>
 <CAJLcKsH1EY3SRK3ByXBn8Exjb8bhSoJu94=7gK_-B6YHx1hvGg@mail.gmail.com>
 <1d820be9-1d5d-364d-f270-5ebce820c5ba@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d820be9-1d5d-364d-f270-5ebce820c5ba@kleine-koenig.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_123027_494709_785F5204 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] The meaning of Signed-off-by for netifd [Was:
 Re: [PATCH netifd] interface: warn if ip6hint is truncated]
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
Cc: Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Dec 03, 2019 at 08:56:46PM +0100, Uwe Kleine-K=F6nig wrote:
> On 12/3/19 4:28 PM, Hans Dedecker wrote:
> > On Tue, Dec 3, 2019 at 3:59 PM Uwe Kleine-K=F6nig <uwe@kleine-koenig.or=
g> wrote:
> >>
> >> Hello Hans,
> >>
> >> On 12/3/19 8:50 AM, Hans Dedecker wrote:
> >>> On Fri, Nov 29, 2019 at 9:29 PM Uwe Kleine-K=F6nig <uwe@kleine-koenig=
.org> wrote:
> >>>>
> >>>> On 11/29/19 8:50 PM, Hans Dedecker wrote:
> >>>>> On Wed, Nov 20, 2019 at 7:11 PM Uwe Kleine-K=F6nig <uwe@kleine-koen=
ig.org> wrote:
> >>>>>>
> >>>>>> When for example a /60 is assigned to a network the last 4 bits of=
 the
> >>>>>> ip6hint are unused. Emit a warning if any of these unused bits is =
set as
> >>>>>> it indicates that someone didn't understand how the hint is used. =
(As I
> >>>>>> did earlier today resulting in spending some time understanding the
> >>>>>> code.)
> >>>>> Patch applied with some minor tweaks
> >>>>> (https://git.openwrt.org/?p=3Dproject/netifd.git;a=3Dcommit;h=3De45=
b1408284c05984b38a910a1f0a07d6c761397);
> >>>>
> >>>> The updated warning message is fine.
> >>>>
> >>>>> I added your SoB as this was missing in the patch
> >>>>
> >>>> I wonder what the significance of the SoB is given that a) it's not
> >>>> documented (at least in the netifd sources) and b) it seems to be ok=
 to
> >>>> "fake" someone else's SoB and c) there are several commits in the ne=
wer
> >>>> history of netifd that don't have a SoB of either Author or Committer
> >>>> (or both).
> >>> For details why a SoB is required; see
> >>> https://openwrt.org/submitting-patches#sign_your_work.
> >>> If there're any commits in the netifd repo which don't have a SoB this
> >>> must rather stay an exception than becoming a general rule.
> >>
> >> ok, so you claim my SoB means that *I* confirmed that my change is
> >> compatible to the netifd's license. I didn't do that though.
> >>
> >> Even if it was me who added that line I doubt is has any relevance for
> >> netifd because nothing in the netifd sources explains what an SoB mean=
s.
> >> And the link you sent applies only to patches for openwrt, not netifd.
> >> (Also if this is the only place for openwrt where the significance of =
an
> >> SoB is described I wonder if this is relevant given that from the POV =
of
> >> openwrt.git the wiki is an external resource that can be modified by
> >> anyone. What if someone removes item (d) from the wiki or introduces an
> >> (e)?)
> >>
> >> Don't get me wrong, my patch is compatible to netifd's license. But if
> >> you want that netifd's license situation stays reasonably safe and
> >> clean, it IMHO cannot be that you add a SoB for someone else, and give
> >> that SoB a meaning that isn't documented for your project and assumes
> >> things about that someone else that you cannot know for sure. So if you
> >> require a formalism, please formalize it properly. (Of course INAL, but
> >> that's my understanding of how open source licensing works.)
> > I won't waste further my time and energy on this ...
> > I acted in good faith and next time if I find a patch from you without
> > SoB I will just simply reject it to avoid contra productive
> > discussions

Yes, and please do so as well for anyone else who doesn't add SoB
herself.

> =

> I would have expected that the discussion is in your interest because
> not being strict with licenses is something that really hurts when it
> goes wrong. My intention is not to drain your energy but to highlight
> the necessity[1] to be stricter with license stuff than the way my patch
> was handled.

I definitely agree, adding SoB on behalf of someone else should not
happen and I haven't seen it happening before this occasion.

> =

> > Patches delivered for all projects (netifd/libubox/ubus/...)
> > maintained by OpenWrt must have a SoB in line what is described on the
> > Wiki; this does not solely apply to the OpenWrt repo
> > =

> > This closes the discussion for me
> =

> Fine for me, I won't press the matter any further. I wish you that this
> problem won't backfire.

I hope as well...

> =

> Bye
> Uwe
> =

> [1] well, or at least what I consider to be necessary
> =


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
