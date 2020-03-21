Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B52418E0C2
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 12:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ti3gYDzKlL7qe/ySwea6fCssBb7YzAGZLU4vEYMOXXg=; b=m42lSamxXc6jCGUSkwuW2viz9
	REBEoryzmfVWk14bswcIBW5LwdbJGD3pV/LX1ApA8SEGh5eL2fzhxy42w62qjYZQ2+QuWuS90lRI3
	QtK9kV8LjswMETbfAViTOd98JBDrm39Y55l4FH8DRPpVOZN3tlnFhI7hh21/qsVKRJgZZ3/UpCKG1
	zdJTFS8pI9ePZWcRKXcEnNM2rY9GHdEq6kWH9afz/t9dmeRrQTjf7e2BgG7zQJM2GT9OECNg8H5AC
	0v2HG7FIeEVYVFZoudE5y+lMBCC2GLA/yj6VM/fNiHtD7HXFDCyiGuJTeb63vPUdVq5WKMtia3JPD
	mXeiLh5tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFcU7-0005lA-UC; Sat, 21 Mar 2020 11:40:11 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFcTq-0005km-EC
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 11:39:56 +0000
Received: by mail-oi1-x241.google.com with SMTP id 13so9482515oiy.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 04:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2G/fSoN5wMRbisIZ65asqSniav/BLqISdszhUsfOM64=;
 b=1pAFWvuU+7mGulPuwiYQYJmYzj9R0hvH6420U3dKyzHNMY48JcgL4xjWznJPSL43ym
 ot1KNN1VaHHoVjETo1j1TUsxs0xsP7DnFQPhTAdc6Wi5nPJOsXcA63FHtoY12T94qrYP
 g5wAppmlZTVMqvohf5nqAyWJWpZM1zK5fWkKwYofdFVK+6quZ7Jo+1TQ3lG1XXu3Yq4x
 kapwwo4GHAGcaj4vC+4ExENP1u58LSQ8uHn9kBPEVKFPl3KyjP2DBQwNHulnMH2l1cOp
 1aegfFVsEApktByAiAinDeDNZiVFeiwhYc02xYDQVQiQwKAsA1Xdcvj/kLAr5AwFnWpi
 1iQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2G/fSoN5wMRbisIZ65asqSniav/BLqISdszhUsfOM64=;
 b=D/RV4JaS80Rr9575k3jh4sfhnDHgz8uSvh6Bnh5cU3Hp+pvPIrnyCfiWgHx+VoSXpE
 T2f+hTf+w/Eqtg/skrhXCp4UTezjgIAPxCzh9wkg4hUhthPRXZvl95IWZvYGo0rh8b12
 Wjck3dK1nJbbwtsyNiTPMwIJfWkwiMZUETRYu4fDPrVr7WYmg0Bd8YA4vpitRyaU0oFc
 oM6uIntKu+OQmLOC3TDp0+7YvgdNcer/NVomfuAdIzzNttqRPpBWZtdOOYV+iwNi0uE8
 Mvwl4VfmBr5joaA5tZg4f5ZtD1wufMLU3bxxcdyCyMhT4aZUoxTe/NFQGtm7TmBucil/
 9IGA==
X-Gm-Message-State: ANhLgQ1KLdENi61JDkrOpXP1jsftIziSmfiL4uhp3UhgagPaWACDikTa
 pnAQKR40VLNL1yq8UEuboxYSthm9av7bDBXTQJi2kbr/
X-Google-Smtp-Source: ADFU+vvjhwbcOl9iCgAxKhC+I97/2ekPw75y4+o0gDU8QACkfgwgOhBJcQuKZbYqvmBympA5NBvdcak/ABGO2aQW+Pg=
X-Received: by 2002:aca:4d86:: with SMTP id a128mr10324910oib.96.1584790792637; 
 Sat, 21 Mar 2020 04:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200319112206.620246-1-robimarko@gmail.com>
 <C1FYY4LQF4LT.2MRJ5HFOPNKY7@tb>
In-Reply-To: <C1FYY4LQF4LT.2MRJ5HFOPNKY7@tb>
From: Robert Marko <robert.marko@sartura.hr>
Date: Sat, 21 Mar 2020 12:39:41 +0100
Message-ID: <CA+HBbNGAeQJVzUr=Ou+APF9NqJ20f9HOs5mRaYQq46t2kGfEHw@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_043954_509448_7289EC56 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] tools: squashfskit4: fix build with
 GCC10
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0180110195596920771=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0180110195596920771==
Content-Type: multipart/alternative; boundary="0000000000003d23aa05a15bdc39"

--0000000000003d23aa05a15bdc39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 20, 2020 at 10:11 PM Paul Spooren <mail@aparcar.org> wrote:

> Hi,
>
> wan't squashfskit4 created as a workaround for an inactive upstream
> maintainer? Wouldn't it make sense to move back to upstream now that it
> is more up to date than our fork?
>
> Best,
> Paul
>
Sorry, I did not know about that situation but after a look it seems that
squashfs-tools is more up to date that the fork.
There has been a 4.4 release and couple of patches each month to it.

>
> On Thu Mar 19, 2020 at 2:22 AM PST, Robert Marko wrote:
> > From: Robert Marko <robert.marko@sartura.hr>
> >
> > In order to build squashfskit with GCC10, this backport from upstream i=
s
> > needed.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> > ...002-fix-build-failure-against-gcc-10.patch | 43 +++++++++++++++++++
> > 1 file changed, 43 insertions(+)
> > create mode 100644
> > tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.patch
> >
> > diff --git
> > a/tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.patc=
h
> > b/tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.patc=
h
> > new file mode 100644
> > index 0000000000..46c6a5ea0f
> > --- /dev/null
> > +++
> > b/tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.patc=
h
> > @@ -0,0 +1,43 @@
> > +From fe2f5da4b0f8994169c53e84b7cb8a0feefc97b5 Mon Sep 17 00:00:00 2001
> > +From: Sergei Trofimovich <slyfox@gentoo.org>
> > +Date: Sun, 26 Jan 2020 18:35:13 +0000
> > +Subject: [PATCH] squashfs-tools: fix build failure against gcc-10
> > +MIME-Version: 1.0
> > +Content-Type: text/plain; charset=3DUTF-8
> > +Content-Transfer-Encoding: 8bit
> > +
> > +On gcc-10 (and gcc-9 -fno-common) build fails as:
> > +
> > +```
> > +cc ... -o mksquashfs
> > +ld: read_fs.o:(.bss+0x0):
> > + multiple definition of `fwriter_buffer'; mksquashfs.o:(.bss+0x400c90)=
:
> > first defined here
> > +ld: read_fs.o:(.bss+0x8):
> > + multiple definition of `bwriter_buffer'; mksquashfs.o:(.bss+0x400c98)=
:
> > first defined here
> > +```
> > +
> > +gcc-10 will change the default from -fcommon to fno-common:
> > +https://gcc.gnu.org/PR85678.
> > +
> > +The error also happens if CFLAGS=3D-fno-common passed explicitly.
> > +
> > +Reported-by: Toralf F=C3=B6rster
> > +Bug: https://bugs.gentoo.org/706456
> > +Signed-off-by: Sergei Trofimovich <slyfox@gentoo.org>
> > +---
> > + squashfs-tools/mksquashfs.h | 2 +-
> > + 1 file changed, 1 insertion(+), 1 deletion(-)
> > +
> > +diff --git a/squashfs-tools/mksquashfs.h b/squashfs-tools/mksquashfs.h
> > +index 1beefef7..b6503063 100644
> > +--- a/squashfs-tools/mksquashfs.h
> > ++++ b/squashfs-tools/mksquashfs.h
> > +@@ -143,7 +143,7 @@ struct append_file {
> > + #endif
> > +
> > + extern struct cache *reader_buffer, *fragment_buffer, *reserve_cache;
> > +-struct cache *bwriter_buffer, *fwriter_buffer;
> > ++extern struct cache *bwriter_buffer, *fwriter_buffer;
> > + extern struct queue *to_reader, *to_deflate, *to_writer, *from_writer=
,
> > + *to_frag, *locked_fragment, *to_process_frag;
> > + extern struct append_file **file_mapping;
> > --
> > 2.26.0.rc2
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>

--0000000000003d23aa05a15bdc39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020 at 10:11 PM Paul=
 Spooren &lt;<a href=3D"mailto:mail@aparcar.org">mail@aparcar.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
wan&#39;t squashfskit4 created as a workaround for an inactive upstream<br>
maintainer? Wouldn&#39;t it make sense to move back to upstream now that it=
<br>
is more up to date than our fork?<br>
<br>
Best,<br>
Paul<br></blockquote><div>Sorry, I did not know about that situation but af=
ter a look it seems that squashfs-tools is more up to date that the fork.</=
div><div>There has been a 4.4 release and couple of patches each month to i=
t.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
On Thu Mar 19, 2020 at 2:22 AM PST, Robert Marko wrote:<br>
&gt; From: Robert Marko &lt;<a href=3D"mailto:robert.marko@sartura.hr" targ=
et=3D"_blank">robert.marko@sartura.hr</a>&gt;<br>
&gt;<br>
&gt; In order to build squashfskit with GCC10, this backport from upstream =
is<br>
&gt; needed.<br>
&gt;<br>
&gt; Signed-off-by: Robert Marko &lt;<a href=3D"mailto:robert.marko@sartura=
.hr" target=3D"_blank">robert.marko@sartura.hr</a>&gt;<br>
&gt; ---<br>
&gt; ...002-fix-build-failure-against-gcc-10.patch | 43 +++++++++++++++++++=
<br>
&gt; 1 file changed, 43 insertions(+)<br>
&gt; create mode 100644<br>
&gt; tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.patch=
<br>
&gt;<br>
&gt; diff --git<br>
&gt; a/tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.pat=
ch<br>
&gt; b/tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.pat=
ch<br>
&gt; new file mode 100644<br>
&gt; index 0000000000..46c6a5ea0f<br>
&gt; --- /dev/null<br>
&gt; +++<br>
&gt; b/tools/squashfskit4/patches/0002-fix-build-failure-against-gcc-10.pat=
ch<br>
&gt; @@ -0,0 +1,43 @@<br>
&gt; +From fe2f5da4b0f8994169c53e84b7cb8a0feefc97b5 Mon Sep 17 00:00:00 200=
1<br>
&gt; +From: Sergei Trofimovich &lt;<a href=3D"mailto:slyfox@gentoo.org" tar=
get=3D"_blank">slyfox@gentoo.org</a>&gt;<br>
&gt; +Date: Sun, 26 Jan 2020 18:35:13 +0000<br>
&gt; +Subject: [PATCH] squashfs-tools: fix build failure against gcc-10<br>
&gt; +MIME-Version: 1.0<br>
&gt; +Content-Type: text/plain; charset=3DUTF-8<br>
&gt; +Content-Transfer-Encoding: 8bit<br>
&gt; +<br>
&gt; +On gcc-10 (and gcc-9 -fno-common) build fails as:<br>
&gt; +<br>
&gt; +```<br>
&gt; +cc ... -o mksquashfs<br>
&gt; +ld: read_fs.o:(.bss+0x0):<br>
&gt; + multiple definition of `fwriter_buffer&#39;; mksquashfs.o:(.bss+0x40=
0c90):<br>
&gt; first defined here<br>
&gt; +ld: read_fs.o:(.bss+0x8):<br>
&gt; + multiple definition of `bwriter_buffer&#39;; mksquashfs.o:(.bss+0x40=
0c98):<br>
&gt; first defined here<br>
&gt; +```<br>
&gt; +<br>
&gt; +gcc-10 will change the default from -fcommon to fno-common:<br>
&gt; +<a href=3D"https://gcc.gnu.org/PR85678" rel=3D"noreferrer" target=3D"=
_blank">https://gcc.gnu.org/PR85678</a>.<br>
&gt; +<br>
&gt; +The error also happens if CFLAGS=3D-fno-common passed explicitly.<br>
&gt; +<br>
&gt; +Reported-by: Toralf F=C3=B6rster<br>
&gt; +Bug: <a href=3D"https://bugs.gentoo.org/706456" rel=3D"noreferrer" ta=
rget=3D"_blank">https://bugs.gentoo.org/706456</a><br>
&gt; +Signed-off-by: Sergei Trofimovich &lt;<a href=3D"mailto:slyfox@gentoo=
.org" target=3D"_blank">slyfox@gentoo.org</a>&gt;<br>
&gt; +---<br>
&gt; + squashfs-tools/mksquashfs.h | 2 +-<br>
&gt; + 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; +<br>
&gt; +diff --git a/squashfs-tools/mksquashfs.h b/squashfs-tools/mksquashfs.=
h<br>
&gt; +index 1beefef7..b6503063 100644<br>
&gt; +--- a/squashfs-tools/mksquashfs.h<br>
&gt; ++++ b/squashfs-tools/mksquashfs.h<br>
&gt; +@@ -143,7 +143,7 @@ struct append_file {<br>
&gt; + #endif<br>
&gt; +<br>
&gt; + extern struct cache *reader_buffer, *fragment_buffer, *reserve_cache=
;<br>
&gt; +-struct cache *bwriter_buffer, *fwriter_buffer;<br>
&gt; ++extern struct cache *bwriter_buffer, *fwriter_buffer;<br>
&gt; + extern struct queue *to_reader, *to_deflate, *to_writer, *from_write=
r,<br>
&gt; + *to_frag, *locked_fragment, *to_process_frag;<br>
&gt; + extern struct append_file **file_mapping;<br>
&gt; --<br>
&gt; 2.26.0.rc2<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
<br>
</blockquote></div></div>

--0000000000003d23aa05a15bdc39--


--===============0180110195596920771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0180110195596920771==--

