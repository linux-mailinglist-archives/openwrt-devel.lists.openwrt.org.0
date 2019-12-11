Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9474311BEF6
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 22:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lCO0nYQuPrNyObdIPRlywnVKGNKeZQW3JOyNYegQMg=; b=VZhzS555A3yOQ/
	FsTLwvOxqXufo1tTKX2sQ+YF0myQslWo67CCMPeun0oXUV6tNde5lLYzvnwqdUxtuLbLM6iDFLVA0
	1/UfgxYcaIywL/rlBDSKPr9IA9opEzb09dzCQ+LP7KjBl5J5GUcBdKwQV856ozcsWRNS/8uvfnyH4
	K12AY2n1jGKZyXDO47T2oO/hWDr1DINcaTy0TMTkGLjmROvFjXVP25i8psqQkjhQGv7+2+vogb4zy
	OdjAUlrads4Pcqm0caza+oTijzfse922SBzLxJ3f3SVrRgNPI356WPhgbYfruDEeF04HT4qA2Yw/+
	b6+yk2Xgud6EWshH9gKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if9Mp-0000eN-RG; Wed, 11 Dec 2019 21:17:55 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if9Mh-0000dt-3W
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 21:17:48 +0000
Received: by mail-ot1-x32a.google.com with SMTP id g18so4373otj.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 13:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6BPBPK8ppJPe8bK4NIITawe1rw01RmRPb6wFCgMvQkQ=;
 b=PolJtIrQN0VlPf4rHGvRzBPCHWUfNHKWdPC3ZbhYI//SGIfVhsmWDcWSly+dVx20yH
 Sb0jylIRBcCRJZKI8hLMa/YPiKCLEMeMZRB/hhZRWeqI1goLJnuWS49HWFdvJF/XM2TU
 byVuSPWdYsDR3Opi+5pimr3zDtnkZkon/7pixwB/BJ2QtL96aC9lmEBt2RvbYBbuB3SA
 pt+wVO6G9MjiZ69FCxM96OkO5VhsiEsfv5L468HcFRlem+oQ11Rr1wBD5zK8v3AK12Xz
 QuEG2mjHgZ1AIrQVdGHiWMq3b4ME47i7Y3ehqKaLskS9rTD4/ZgTgmDucYpwvuunmxRh
 2ucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6BPBPK8ppJPe8bK4NIITawe1rw01RmRPb6wFCgMvQkQ=;
 b=Bi2XtbWwtobOdmwT7L2reZ1RcDVRDDCdNQ/DV8SmL/ikuz+oVzSOWlF1YFZ9bGvDXm
 X0L/HXPVsFYXL4kGoLAQ9TYacjgCAVtaUfER5sdM+7LrOfjrPE/lrPwfCqWxOcza25zn
 lUbHVhnBJGL1iKdRdMp4uL1HCNHk0rx3ojyLZs7+dOLef/Z/etKv2PERJRx3/WukFwnJ
 7gyBtHsFb3E3IMKRjA97kT/W7VKn/GslUMZw117amPCBH9H1w1ROtxffaWM+KLnU9Qlr
 NUBqRiyuZdh/7eRt6/KgOEsxat4bPJ2d34cr9TeYJzaKG9dWKhxWyGkC5aELKSp0C503
 P59g==
X-Gm-Message-State: APjAAAVgUznTmlA5xVTtg+z76IcHXjd21kxmg5RlQkpdyxjcmIdNSsw2
 Y9dKOzsOTl2rBObbEuUWMx5eqAkuh91cnx/pwhU=
X-Google-Smtp-Source: APXvYqyKIEYUAe7qQJyay/ObgFHRhxd130mGb4qPNR6mQxjT9YXBA7vsg3ZCAvZP277qG8mTfmjGpG9Z1ON+0WZV7T4=
X-Received: by 2002:a05:6830:16c6:: with SMTP id
 l6mr4151399otr.186.1576099065365; 
 Wed, 11 Dec 2019 13:17:45 -0800 (PST)
MIME-Version: 1.0
References: <trinity-108cc2ee-b593-4dec-a1d9-77c447ee9eed-1576082246699@3c-app-mailcom-lxa07>
 <20191211175432.GI1371@makrotopia.org>
 <911d8b6a-df86-5a3f-906d-c6bb1c1d7e43@gmail.com>
In-Reply-To: <911d8b6a-df86-5a3f-906d-c6bb1c1d7e43@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 11 Dec 2019 13:17:34 -0800
Message-ID: <CAKxU2N8VhkB-kf6UWFQBg0+9VCAxUJ=S5AE0X_iYv-VeKwM+KA@mail.gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_131747_171834_BE5A371C 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Dec 11, 2019 at 11:32 AM Alberto Bursi
<bobafetthotmail@gmail.com> wrote:
>
>
>
> On 11/12/19 18:54, Daniel Golle wrote:
> > On Wed, Dec 11, 2019 at 05:37:26PM +0100, WRT Burner wrote:
> >> On 11/12/2019 15:22, Daniel Golle wrote:
> >>> And it's even needless to say that
> >>> replying to a spam email in which ever way will always make it worse.
> >>
> >> +1. There is no constructive value in replying to spam. Let's keep openwrt-devel
> >> nice and clean.
> >>
> >> On 11/12/2019 15:22, Daniel Golle wrote:
> >>> You statement "suck it" (guess what) is also an obvious
> >>> and disgusting example of a masculist culture which hurts our community
> >>> as a whole and I strongly believe we should not tolerate that.
> >>
> >> -1. This is a software development mailing list, not tumblr.com.
> >
> > '-1'? So I get right, you are saying it's ok to be insulting other
> > people because this mailing list is about software development?
> > If that's really what you wanted to say, I'm glad that's only a single
> > individual opinion coming from an email address which has never
> > actually been used on this mailing list.
> > And btw, this is your first 'contribution', and it's not even about
> > software development...
> >
>
> He is just disappointed at your pointing out the "masculinist culture"
> in a place where he expected more maturity.
>
> Yours is mostly SJW-speak and I'm also not fond of it, I'll explain why.
> It is a double-edged blade.
> In this case your definition is technically correct, we all know what
> "suck it" implies.
> But this highly polarizing approach to life and people can (and does,
> especially in its dens like tumblr.com as mentioned) slippery slope into
> full blown hate and reverse oppression, which is equally bad.
>
> I'm not impressed by your reaction here, first thing you do is a blatant
> strawman logical fallacy and then proceed to attack him on his personal
> values as a person without even asking to clarify his position first.
> He just posted a single short sentence, for heaven's sake.
>
> This is EXACTLY an example of slippery slope into blind hate rage as I
> said above, and exactly why this kind of polarizing categorizations and
> statements should be avoided at all costs in a serious and sane environment.
>
> We should really not jump at each other's throats on a moment's notice
> like that, especially not in a software development mailing list.
+1

Unnecessary drama is not needed.
>
> -Alberto
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
