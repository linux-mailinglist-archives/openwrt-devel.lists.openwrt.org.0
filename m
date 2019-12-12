Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9200111D8B1
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 22:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiYe/B1HoxYwz1MAPsW/TGrYstuBFOY9FbzMgnQ57yA=; b=Zs5dRZpjbi30Xm
	BKsZUrIyaDUaGu7uTQ8UeELR7AVfMBVLI6qHnpel1QFcrgocEdTYVnU8aC+V5k7j4LaQY1e+1oWY5
	3rlpv389hz5urhn4VeUyYhbb7kfrJf5qzN+2w4cPNs0TaJOZ6eSqPQjiuk4QR0tmbRujZi+TrWj8r
	vtAPxbAOoGQe+x6MCjQcG9coePc/5q7vyoMug9mmLzll5099DAK8hQtp0N8de9iiPTn7lW63zqDo0
	A/1Jc8gxMV6xltmsEJWbcwJKkLGFeb/endX50z19Iu6Dr1dLhUDq/kQv/5qIvOdRdeRC6YdhNdDkV
	qZC8CXcEMmP1PmIYGYiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWEk-0001Eq-7q; Thu, 12 Dec 2019 21:43:06 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWEd-0001Dk-Mq
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 21:43:01 +0000
Received: by mail-ot1-x336.google.com with SMTP id d17so3611595otc.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Dec 2019 13:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BxlLS92xfMSIThYBKNc0iY4IgwVqFYuW+lHCO2gEAOg=;
 b=KAUdmPwsFSurDlRh12adyiKVYuIn60MdC9yqBU2+H+Cr/kamBcB3GkNStxrDn1lgk6
 ytUqb+1ud5tFkU254f4ve2d2kIHkqyBjla173tavNLyHlSGoEn25RHyGoK4jCPHNoTg0
 jXHB0L0TsMikTnyj+u2a7wUP5RfpjYBIIRsrBw5SeajYOijQSvBDrGwyBD8EmCFfgLbJ
 zADlnfHTNxY7AYCblrTyjSDy9bVg6ZQjbA9BAt6GcPBN0hL4j80NuL15KBYA1Np2Iazo
 lagUue3IRZgRzDCAgb3IUP2FuT4mLEH9AWK5r93WKb4dPnsA6ETBPOZzjsnQXeHZTDsB
 8d6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BxlLS92xfMSIThYBKNc0iY4IgwVqFYuW+lHCO2gEAOg=;
 b=G3E3CVfjsx3ZVsrVFbjBLjlz+GoRsUajm3CV54aO+ZAq/vtg0SjYg5bxh+SUkc71xG
 J885Imfni18fmDNGAZi2KXl/wdZA0obkqN0Yy5pc0LZ5k4cgvouhMFJzfS2RvXB31jqd
 IMQwErFEgsbpv0TG/EhC4hl7vbE0AzA+1mECynYlulSgpKoYwDsymhuqQogjHE+h1IoY
 dgjpY+VouWdquLljI7mqIBMKxUBU36yEGvyq3s5Pja1hzBZpnfKVjSerPhZa4q42934f
 2EQS151lEzWzzVR9VDMIq5tDFsrId/KcLeYOsSwtMI8PmrvUJdW8t522+B0dBvYuzzuC
 MhYw==
X-Gm-Message-State: APjAAAUS0PJos00lxxxxy3gXwqQ8h77p33neizWpwZVarUMt4RireulB
 Izuh/w02LXb6rA6Xy2jtOiF4s14KsjqSsKE2x/U=
X-Google-Smtp-Source: APXvYqyD+d70tG/FKWJF7JlNyyMxPacjDBn1l+0asBjhikdbuSLz8ecjsCZL1iOKhE5V8wMsSymzdvU7682XKjgOVyw=
X-Received: by 2002:a05:6830:16c6:: with SMTP id
 l6mr10934778otr.186.1576186977101; 
 Thu, 12 Dec 2019 13:42:57 -0800 (PST)
MIME-Version: 1.0
References: <trinity-108cc2ee-b593-4dec-a1d9-77c447ee9eed-1576082246699@3c-app-mailcom-lxa07>
 <20191211175432.GI1371@makrotopia.org>
 <911d8b6a-df86-5a3f-906d-c6bb1c1d7e43@gmail.com>
 <20191212100104.GA22359@makrotopia.org>
In-Reply-To: <20191212100104.GA22359@makrotopia.org>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 12 Dec 2019 13:42:44 -0800
Message-ID: <CAKxU2N9U5Fy27xJryv26xS9aVgNW3wscWQfC+=DcqhyCaopyQw@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_134259_774042_6A4DB2D9 
X-CRM114-Status: GOOD (  29.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Inquery
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
Cc: Alberto Bursi <bobafetthotmail@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Dec 12, 2019 at 2:01 AM Daniel Golle <daniel@makrotopia.org> wrote:
>
> Hi Alberto,
>
> On Wed, Dec 11, 2019 at 08:32:41PM +0100, Alberto Bursi wrote:
> >
> >
> > On 11/12/19 18:54, Daniel Golle wrote:
> > > On Wed, Dec 11, 2019 at 05:37:26PM +0100, WRT Burner wrote:
> > > > On 11/12/2019 15:22, Daniel Golle wrote:
> > > > > And it's even needless to say that
> > > > > replying to a spam email in which ever way will always make it worse.
> > > >
> > > > +1. There is no constructive value in replying to spam. Let's keep openwrt-devel
> > > > nice and clean.
> > > >
> > > > On 11/12/2019 15:22, Daniel Golle wrote:
> > > > > You statement "suck it" (guess what) is also an obvious
> > > > > and disgusting example of a masculist culture which hurts our community
> > > > > as a whole and I strongly believe we should not tolerate that.
> > > >
> > > > -1. This is a software development mailing list, not tumblr.com.
> > >
> > > '-1'? So I get right, you are saying it's ok to be insulting other
> > > people because this mailing list is about software development?
> > > If that's really what you wanted to say, I'm glad that's only a single
> > > individual opinion coming from an email address which has never
> > > actually been used on this mailing list.
> > > And btw, this is your first 'contribution', and it's not even about
> > > software development...
> > >
> >
> > He is just disappointed at your pointing out the "masculinist culture" in a
> > place where he expected more maturity.
>
> Maybe I don't understand this level of maturity where it can be
> alright to use language which has the only purpose to deliberately
> hurt other people. Maybe I even hope I will never get that 'mature'.
>
> I pointed out the masculinist culture a statement like his
> originates from just because that's what it is. Correct me if I'm
> getting something wrong, but "suck it" basically says, "I'm the male
> in the room here, so your rights are limited to please me sexually".
> To me is not a border-line grey-zone of overdoing political
> correctness and forcing everybody to use lots of virtue signalling
> and a very specificly coded language changing every two weeks accoring
> to fashion standards. It's not that he failed to use gender-correct
> language or wrongly assumed someones identity or any of those things
> which happen a lot without any bad intention involved.
> But what Tom wrote was **meant** as an insult.
>
> >
> > Yours is mostly SJW-speak and I'm also not fond of it, I'll explain why.
> > It is a double-edged blade.
> > In this case your definition is technically correct, we all know what "suck
> > it" implies.
> > But this highly polarizing approach to life and people can (and does,
> > especially in its dens like tumblr.com as mentioned) slippery slope into
> > full blown hate and reverse oppression, which is equally bad.
>
> I guess I partially agree with you one that. I have never visited
> tumblr nor know much about what's happening there. To me, "social
> justice" sounds like something desireable, however, I can also see that
> the fight for that is also being misused to call-out on people who
> didn't intend to do any harm to anyone in some cases.
>
> However, I don't think we need this debate here in this case, as very
> clearly "suck it" is just very obviously not nice, ie. violates the
> rule #12 "be nice to each other".
>
> >
> > I'm not impressed by your reaction here, first thing you do is a blatant
> > strawman logical fallacy and then proceed to attack him on his personal
> > values as a person without even asking to clarify his position first.
> > He just posted a single short sentence, for heaven's sake.
> >
> > This is EXACTLY an example of slippery slope into blind hate rage as I said
> > above, and exactly why this kind of polarizing categorizations and
> > statements should be avoided at all costs in a serious and sane environment.
> >
> > We should really not jump at each other's throats on a moment's notice like
> > that, especially not in a software development mailing list.
>
> I did asked for claritication, because it wasn't clear to me (see my
> reply, there are some "if"s). I didn't make any assumptions on his
> values, I was surprised and hoping that this would turn out to be just
> a case of misunderstanding each other. Simply because it's hard for me
> to imagine a setting where it would be ok to write "suck it" just
> because this is about software development (and I still fail to follow
> that logic, maybe you can explain that to me off-list).
>
> I also agree that I don't want people to the scared to be super correct
> and this is not the place to discuss subtle language details, for the
> exact same reason that we will loose potential contributors.
>
> Needless to say that WRT_Burner showed up out of nowhere (let me guess
> what 'burner' means in that choice of a name)
It's a spam message. The response by Tom may have been heavy but it's
nothing to cause commotion over.

That is to say, it was not serious. There is no need for a serious
response to it.
>
>
> Cheers
>
>
> Daniel
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
