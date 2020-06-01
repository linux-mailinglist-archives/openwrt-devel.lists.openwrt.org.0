Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1971EAC22
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 20:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2mxDF0KfCyRkatBu4YC+46YaaBsuBUoXbdvjNgedgZ4=; b=KVIGAKtwi3uv73IU0VHoGIlL0
	2yJgZK/+lmUi7MWaVI/WQyEDdsu+FV8evqlcevXIp7fqjRjOIKh6M2F57+4JZIzIPau8RGeMeBJ2D
	nCyo1hsBfNX+RZKk5Gh5RIIhG/3ajLDkBVVMFOMxje693t4CHw1FeHHfLwfy9S1yjT4Yp7jNjOslY
	wrTTqCyxXMX5i9EjiNr9kkIDHhXoP8nbnrWyxvvC78Nc6tiyKmBbQ3dDoG2LSRSUXPaXZHRtato6p
	ga6d6BC/XE9APG5W9zqVvBDCevj9xDu+Abe8HBr5f9L+6ttxPSwznUB45Asqw3/YoDXZp/keHX2Ja
	0AJJADVtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpHG-0007NZ-SO; Mon, 01 Jun 2020 18:35:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpH6-0006Gr-Fu
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 18:35:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id z6so9343546ljm.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jun 2020 11:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OjBOl8pXoD8FuTSfoyiCqwCwIYFtHYTnz85nroeDZ6s=;
 b=GEqiFEbmQ1v4yxbUr18tEdYTZSFFMfVCVN0DAyQLehvba/eQw8N8eFnItHUTvsk3D2
 5gtTBNjhxhV9a3nRyI0xQxmXWUh+JlvsjbQiTiPPqE9/ULBgB01KMqd/SacR4UnH7PD2
 KIfCVZi0NxqQTDXrcnpy/rfgu1bcrDNWAxExWfzZ7MYK/L2Tw9apo6Dfd/9xna6CChhu
 FZU/3osaR39m7YFDkTg9szjlfdws9YhVy1a5Qbsg+qcBAa94yjma9RidVK7f/u4hc1Zd
 bOZditnkD6HcXtVxT85UsMhnsxbsAsot9RDdmz4OPYGhGMjTYoth0wXS1DrZdLDXc0eU
 WUig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OjBOl8pXoD8FuTSfoyiCqwCwIYFtHYTnz85nroeDZ6s=;
 b=YYLLFmOThkh0uuz6UE3jZILn2N2cjdbMlv2JmIaGD2mdlp0gk8Wdzsa59m9/yKiiTR
 88COLXRxSoveBTzf0rURtztUpymxfEWuC/P/zqRJQD1RbtIG/w5wZEqdWOiIXQoVJldj
 6pEOzlZnS8MBu56Cxty9tvKzY6JrP7XB5eSubbwslo4Gj7W9LS1zcv2Jlahu1o2YyBPM
 vZFv5G2BkJxd0kqZRyBNLAP8HFeVLIB4eSiDZz5J51Fx6y5P0bz5x1l54r+wAr/r+kBC
 U5TMBBLsPXoNb2gpqMekhYN1gGpFJEbB6xnYfpWK/8O7yW+9uqy0JP3BVDWR/e3kvUwm
 Ar8Q==
X-Gm-Message-State: AOAM532PHZ9tytW92rj3wWpjCg47qeY1QaAHZWp7hF9ownb8L2xtRlcq
 Cpl9/g3EJMr/iVkBadPTB1KYup89fmvLu5sykSqxkA==
X-Google-Smtp-Source: ABdhPJwlNzJ+8i10kuoo7yCt7OlNEZdpzPuOrI1Q8Qglo+JNIezGtK/nXjDiKVLHOEsCsAfkrbB3Azxx4TrqEZNAJKs=
X-Received: by 2002:a2e:9105:: with SMTP id m5mr12036054ljg.408.1591036502335; 
 Mon, 01 Jun 2020 11:35:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200601153226.15229-1-roman@advem.lv>
 <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
 <6406348b-1e10-5e6d-0c20-9e2716099833@nbd.name>
In-Reply-To: <6406348b-1e10-5e6d-0c20-9e2716099833@nbd.name>
From: Michael Jones <mike@meshplusplus.com>
Date: Mon, 1 Jun 2020 13:34:51 -0500
Message-ID: <CAJQUmm7kmKh-yNdHWWLVRwbVKhc7RXXZQhOo3+9vhWX+1taSdA@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_113504_608101_0D2BF7D4 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Cc: Roman Yeryomin <roman@advem.lv>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5527310256800123734=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5527310256800123734==
Content-Type: multipart/alternative; boundary="0000000000008bf4cf05a70a0de9"

--0000000000008bf4cf05a70a0de9
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 1, 2020 at 1:22 PM Felix Fietkau <nbd@nbd.name> wrote:

> On 2020-06-01 19:11, Michael Jones wrote:
> >
> >
> > On Mon, Jun 1, 2020 at 10:33 AM Roman Yeryomin <roman@advem.lv
> > <mailto:roman@advem.lv>> wrote:
> >
> >     Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).
> >     This allows to do clean and dirclean. Cache hit rate for test build
> >     after dirclean is ~65%.
> >     If CCACHE is enabled stats are printed out at the end of building
> >     process.
> >
> >     Signed-off-by: Roman Yeryomin <roman@advem.lv <mailto:roman@advem.lv
> >>
> >
> >
> > This certainly looks like an improvement.
> >
> > However, there is an important usage case that this change doesn't
> address.
> >
> > Frequently when I am working on OpenWRT related things, I have many
> > different workspaces all tied to the same git repository hosted
> > externally. The reason for this is to allow multiple builds to live and
> > run independently.
> >
> > Having the CCACHE_DIR be located *inside* the repository doesn't share
> > the cache between multiple workspaces.
> >
> > So can the CCACHE_DIR be made configurable at build time based on the
> > .config file? Perhaps it can default to this, and only be set to the
> > value in .config if provided? For my purposes, I would always set the
> > CCACHE_DIR to a path that all of my workspaces use.
> I don't think there's a need for that config option. You could simply
> add a .ccache symlink in your source dir and point it to your shared
> cache. I do the same with dl on my trees.
>
> - Felix
>

I disagree.

Having build behavior change based on a symlink is undesirable.

If it were a config option, it becomes a documented feature that is easily
discoverable in the menu config.

Additionally, having the ccache directory be a configuration option allows
it to persist across clones of the git repository, if the .config file is
stored in git. A symlink would need to be manually re-configured on each
clone.

--0000000000008bf4cf05a70a0de9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 1, 2020 at 1:22 PM Felix =
Fietkau &lt;<a href=3D"mailto:nbd@nbd.name">nbd@nbd.name</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">On 2020-06-01 19:11=
, Michael Jones wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Mon, Jun 1, 2020 at 10:33 AM Roman Yeryomin &lt;<a href=3D"mailto:r=
oman@advem.lv" target=3D"_blank">roman@advem.lv</a><br>
&gt; &lt;mailto:<a href=3D"mailto:roman@advem.lv" target=3D"_blank">roman@a=
dvem.lv</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASE=
DIR to $(TOPDIR).<br>
&gt;=C2=A0 =C2=A0 =C2=A0This allows to do clean and dirclean. Cache hit rat=
e for test build<br>
&gt;=C2=A0 =C2=A0 =C2=A0after dirclean is ~65%.<br>
&gt;=C2=A0 =C2=A0 =C2=A0If CCACHE is enabled stats are printed out at the e=
nd of building<br>
&gt;=C2=A0 =C2=A0 =C2=A0process.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Roman Yeryomin &lt;<a href=3D"mailto=
:roman@advem.lv" target=3D"_blank">roman@advem.lv</a> &lt;mailto:<a href=3D=
"mailto:roman@advem.lv" target=3D"_blank">roman@advem.lv</a>&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; This certainly looks like an improvement.<br>
&gt; <br>
&gt; However, there is an important usage case that this change doesn&#39;t=
 address.<br>
&gt; <br>
&gt; Frequently when I am working on OpenWRT related things, I have many<br=
>
&gt; different workspaces all tied to the same git repository hosted<br>
&gt; externally. The reason for this is to allow multiple builds to live an=
d<br>
&gt; run independently.<br>
&gt; <br>
&gt; Having the CCACHE_DIR be located *inside* the repository doesn&#39;t s=
hare<br>
&gt; the cache between multiple workspaces.<br>
&gt; <br>
&gt; So can the CCACHE_DIR be made configurable at build time based on the<=
br>
&gt; .config file? Perhaps it can default to this, and only be set to the<b=
r>
&gt; value in .config if provided? For my purposes, I would always set the<=
br>
&gt; CCACHE_DIR to a path that all of my workspaces use.<br>
I don&#39;t think there&#39;s a need for that config option. You could simp=
ly<br>
add a .ccache symlink in your source dir and point it to your shared<br>
cache. I do the same with dl on my trees.<br>
<br>
- Felix<br></blockquote><div><br></div><div>I disagree.</div><div><br></div=
><div>Having build behavior change based on a symlink is undesirable.</div>=
<div><br></div><div>If it were a config option, it becomes a documented fea=
ture that is easily discoverable in the menu config.</div><div><br></div><d=
iv>Additionally, having the ccache directory be a configuration option allo=
ws it to persist across clones of the git repository, if the .config file i=
s stored in git. A symlink would need to be manually re-configured on each =
clone.<br></div></div></div>

--0000000000008bf4cf05a70a0de9--


--===============5527310256800123734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5527310256800123734==--

