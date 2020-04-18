Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB091AEA06
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 07:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B2CuSnD0AxVe1aBx1vNivcp2ozdu+TsM8kCNjH02bNk=; b=iNtZtnwb2/qxKBiXNWQLhm0e2o
	wmYLcdV4D3Ysk5A4VoBVunUFgm2UXTGQwsBqXPcbyD35jyom+ybGakk6KUvdYR3VmPekyH/Qg3mOX
	4Zg66aP+lqLQP2YhIE+6qJbV35PyMwFfTHt0o7mMxLNp8UAMhz4ebM3i/FBmuWN2jsTfnCSXzIMOj
	2y3z0oEf719MvRR4E3d9IjTFS7txOl8v2hOZiNxWa1zkgOBr6Kn4MzkxiqSMthKWWO3AyEhhTg2U/
	EHla/y283oVhUXARQoYTR5TaZPpVr3T+95fkFjWUISFHycXMUXCPBKebYrtHjs5iQG034TmUKv57/
	7r/kEndg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPfwy-0006Ff-88; Sat, 18 Apr 2020 05:23:32 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPfwr-0006Ev-Ne
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 05:23:27 +0000
Received: by mail-oi1-x244.google.com with SMTP id j16so4024028oih.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 22:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=7FK7x91N9/54JXWpJjzeoTI/ELuvlpvblr16znwD9iY=;
 b=j3usQA1UWEl2iKbBv4t6lF1POCIwOG/5ulbEO/xlUJrga54GXsyjn+RXD1jcnhq/X8
 lSQb4gcxP2Ldip2HOHckxZhjyMz6a+gP+zi5JD1ieoz8ABL2/BEc8D5pGWRNiy4bdohv
 /uQ46IanAOyNTBKGWm07NOgY3WxKedDxwBDIZtIwm03aaD4nZ7o4gKUOr6oauhWDaO13
 FH/sGR0dcuUKaX8TdQ2w3+RBpu7LTovwldu8H7rWOQsZu4Pl8UdTEnCYkUP/a3SsWL0u
 djsBC+iKGtukh6HoMSL+fVrDUwKS1R55mPmNd6TwnbPG6FNs9yWQzODZEE4SWteXQavj
 gNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=7FK7x91N9/54JXWpJjzeoTI/ELuvlpvblr16znwD9iY=;
 b=Nvd0+5wOlrGNFPNsJnAUk3EoZVGb6Ubqk4c29r5SU1O9f6Zh6NwuoA8VO8d6TBPZ7f
 R0ojnpYya67OPsTRbPC0/HMyL0vHYW2Gb0R8e28tOB48+969ruaoaJl92yb8p/3/Un50
 OA4/mae/oNy+agvIDtCSOCMDxK3fTE+ljPk6+BSLnT/JUOf1utuV1Dh92lpS7ySDSczQ
 lguKJaszsaMi18+1U5P1lUjUv/7E2Bl/w2qh9F+hlFdYzZ78dRKNKWK1PsJwGJo+bBR3
 Xrxbz25lSDJD4k/Q7+XvBDAwVr8HlwIylvySNKDHOTdQa5cYq3T31+XXbNdD1mB//4UY
 4cGQ==
X-Gm-Message-State: AGi0PubWg+VcHW0R3PRFvJgfPs+uPplzeDcwN7jB9d7LOT6Wx55XueIV
 ahnfyAU7oO7bRTC2XIulVvGsBrSWVkZhnRT4aZ7e+0N+
X-Google-Smtp-Source: APiQypKceanNUxd9mnjf0zMpsmJ2llr/6lDyVJKRwqzCpLJs0U167FoyP4CXFfmBTm8W3kecA+aXbO+9KED5N8m/ueI=
X-Received: by 2002:aca:4285:: with SMTP id p127mr4731828oia.20.1587187404260; 
 Fri, 17 Apr 2020 22:23:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200330011356.3058801-1-rosenp@gmail.com>
In-Reply-To: <20200330011356.3058801-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 17 Apr 2020 22:23:13 -0700
Message-ID: <CAKxU2N_rDRgF7zKCdnZYoJT8gsHyeEoum_ysi1XP=bJYudNm1w@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_222325_795476_6EBA2BE4 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] prereq-build: test for perl's
 Data::Dumper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Mar 29, 2020 at 6:13 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> Required for installation of autoconf:
>
> make[5]: Entering directory `/openwrt/build_dir/host/autoconf-2.69'
> Making all in bin
> make[6]: Entering directory `/openwrt/build_dir/host/autoconf-2.69/bin'
> autom4te_perllibdir='..'/lib AUTOM4TE_CFG='../lib/autom4te.cfg'
> ../bin/autom4te -B '..'/lib -B '..'/lib         --language M4sh --cache
>  '' --melt ./autoconf.as -o autoconf.in
>
> Can't locate Data/Dumper.pm in @INC (@INC contains: ../lib
> /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl
> /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at
> ../lib/Autom4te/C4che.pm line 33.
> BEGIN failed--compilation aborted at ../lib/Autom4te/C4che.pm line 33.
> Compilation failed in require at ../bin/autom4te line 40.
> BEGIN failed--compilation aborted at ../bin/autom4te line 40.
> make[6]: *** [autoconf.in] Error 2
ping. I know most people do not encounter this issue as they have
autotools installed, but it is needed when autotools are missing on
the host.

I ran into this issue with a fairly barebones CentOS VM.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  include/prereq-build.mk | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/include/prereq-build.mk b/include/prereq-build.mk
> index 830a9eff9a..71d8c3c8e7 100644
> --- a/include/prereq-build.mk
> +++ b/include/prereq-build.mk
> @@ -62,6 +62,10 @@ else
>    zlib_link_flags := -lz
>  endif
>
> +$(eval $(call TestHostCommand,perl-data-dumper, \
> +       Please install the Perl Data::Dumper module, \
> +       perl -MData::Dumper -e 1))
> +
>  $(eval $(call TestHostCommand,perl-thread-queue, \
>         Please install the Perl Thread::Queue module, \
>         perl -MThread::Queue -e 1))
> --
> 2.25.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
