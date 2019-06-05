Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADF535D44
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 14:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNdfA7ipRmRZasyzYSb8Jln3aR0LPB4I8VU6FWuzen4=; b=SljY1uTLUW2d4T
	CB6FINJ+5AZSJBmH7G+LhLkovprppt/MKLnIQYgX86Md5LFwAgRY37q06G7dXBCM6Phwi7GOZvyBy
	XDMpRTIAPQb4YxIct6EtpHq0sn9szPcXKS3BV6I61iN1rdQWXkPnHZOaojYln5S70b6De+iEIFAlC
	7myDEqg7UO19P/L2HtiKQnLLPO5WhP+A/gnqPls9UrqPwnhT3JitJIu04yY4dAmL/pw1eKFEaHZoS
	6hGvBtWXFbRrOsLe6oxG8FdtuhBxVUvgn+ABlZgTPfePoU9L1G2mBVUMqaIDt15BWLIbq6l5NIocl
	lEVA8JDaebaQExCs2xiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVQt-0001Pb-OJ; Wed, 05 Jun 2019 12:54:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVQm-0001Na-8g
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 12:54:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so14101221wrw.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oZh/pzkTDWx1pwOk1ZORHanGbXA0EwerluUbqnedm2k=;
 b=DBnkDpnqaDip80MKBXT6zXem/g91GFLlMghB2lhvZSf9hNDBWk2o9L8D+H5KIosN76
 kpzRWFOZhyvWfr9csNVPbrdFN8681EVLLm4GC4IIvL1egYnT0nKycyJYUEiKbHarMV65
 Yq08AKUJz/ofCtD3Ft+t4J8L2PLs4AMET+TSsat3ACxdj0Xfb9yGkVIbA+ahMBqtjJz8
 h2rHecvJzFe3QGiWW8nbAbJohTDd5NpBbPiAOuDYDBTY+zDs8XzZ20w2OQQuv3fxPGI/
 9zjmzcDCkgzHED51wq9ZcMNNu/315p67YWq8Ytt9ytbZK/iPmYM3wb/ffGehHzN33afd
 ua0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oZh/pzkTDWx1pwOk1ZORHanGbXA0EwerluUbqnedm2k=;
 b=i8aiFvz8+t5QOnfCxHDoUtJLq7HmuqrMlXF5+MbTBT/xEMAtBuHVDxINiFk5JngbI2
 88smWDU55rxAC68TOf5mFEMyv6m1UvG9X4VfPthVFMVEIc+Cie7wUzg0/iYn5gMfn/bl
 9t+nYvLvUFADWUPYpMjo1yurrxTwR+aEt4jN1Ha9yVMRRsM/MKaDllj6q8CKn+QeAWtA
 zQAR5HE3Tgg/Z2+st171JdHKs8wBm7Cz1riJ4ywjbfY/Eku7nHEXv+/naNvaproIhyfS
 idJo56P9VTT6V+9jFJ1+jHcUXuI4JHUcdbpR9+/reChrBTLaKWy8bDAca9gpwwVjT5oa
 t0oQ==
X-Gm-Message-State: APjAAAVoUWQ5xhOy4A9DwrfBHDc5gQbDHqr3sev7jaq432rfPbm/1KrL
 XJeYOI+qYOI+UfRT4PTlqr61izI70ek+I9gPfU0O5w==
X-Google-Smtp-Source: APXvYqz7SYM66HiC9HtmWz2nxmyH4+DZVpdE4jAjlyWS6h3F9l3bQKOksUCJSTzXIJbDcBDPJDs1csp5wG9z/QzInP0=
X-Received: by 2002:adf:8028:: with SMTP id 37mr24859320wrk.106.1559739254174; 
 Wed, 05 Jun 2019 05:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
In-Reply-To: <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 5 Jun 2019 14:54:11 +0200
Message-ID: <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_055416_306102_51E84DCD 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
 Karl Palsson <karlp@tweak.net.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Wed, 5 Jun 2019 at 14:33, John Crispin <john@phrozen.org> wrote:
>
>
> On 05/06/2019 13:35, Karl Palsson wrote:
> > John Crispin <john@phrozen.org> wrote:
> >> On 05/06/2019 12:17, Karl Palsson wrote:
> >>> John Crispin <john@phrozen.org> wrote:
> >>>> This can be used inside build setups for easy feeds.conf
> >>>> generation.
> >>> Could you give us an example of how this is actually easy, or
> >>> what sort of functionality this is providing beyond "cat
> >>> feeds.conf.default feeds.conf.extra > feeds.conf"
> >>>
> >>> It seems like a lot of perl for a narrow usecase.
> >>>
> >>> Sincerely,
> >>> Karl Palsson
> >> This was brought up as a missing feature by the prpl folks. I
> >> considered on how to best implement this and find that having
> >> proper tooling is much better than having to carry around an
> >> extra file that is cat. being able to build the feeds.conf
> >> dynamically like this just seems much cleaner to me and will
> >> allow downstream users, vendors, odms and integrators to have
> >> less need to patch their trees to death.
> > So, they still have to have a script, but now the script has...
> >
> >
> > ...
> > ./scripts/feeds setup -b src-git,private-aa,git://blah
> > src-link,private-bb,/wop/blah
> > ...
> >
> > instead of
> > ...
> > cp feeds.conf.default feeds.conf
> > echo "src-git private-aa git://blah" >> feeds.conf
> > echo "src-link private-bb /wop/blah" >> feeds.conf
> > ...
> >
> > I mean, _yes_ it's "simpler" but it's only simpler by bringing in
> > new tools with new layers of abstraction. I really question
> > whether that's actually simpler for anyone in the long run, and
> > also how this really counts as a "missing feature" There's still
> > going to be a requirement for that vendor script.
> >
> > Sincerely,
> > Karl Palsson
>
> Its not a new tool, its an extra call to an already existing one. I
> believe that the one liner is much cleaner than the 3 line scriptage.
> there is no requirement for a vendor script. they ship with a PDF that
> has the build steps. This oneline will be much easier to use I believe.

Since the use case is having additional custom feeds to the normal
package feeds, maybe it would make more sense to have a e.g.
feeds.conf.custom that is used as an addition to the
feeds.conf.default instead of completely replacing it. That way you
would avoid missing upstream changes in the feeds.conf.default when
updating your build environment.

Then we could add a few commands to scripts/feeds for manipulating
that feeds.conf.custom (adding/removing feeds, changing their
types/addresses/names etc).

We should also sanity check the arguments, as IIRC dashes are actually
not allowed in feed names ;P


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
