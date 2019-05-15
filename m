Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC611EDF5
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 13:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z0PymeSKqqD2/U8NLJNo2K0Bj3ca+mYB0OE/UEt+gw0=; b=AFkv3hhXYCpdqOywCSUY4+khJ
	UrdMDTWiMjJN78wGOg2WYXq2fc0vlLB0OZIldUvMP8/escbuLFAzZikzf3DKfWzb3+qUXjTvd99Ua
	14BH8Y4McPwFbPZXrJuw12IxMH/ZGocSg/ubUp7OSyi/fRS7InQTJIHdh0Uh5VB7ljX+e59UlTzlT
	cvZztXKq16n5hws6eMftciQ6mRK9ESDfTi0PK/zD5H3e7+pKDRGWxgOQ0Plxi718BFEtEPc8jx895
	FQ+Sk63BX1ijM3v85f/F/RejkYQH3FcUXaPjvnXhbiDntKLfWpdNkt0vy51CsdNVHuSFfBHL1LV+u
	M3APeyBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrsi-0002pX-BE; Wed, 15 May 2019 11:15:32 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrsa-0002oq-MP
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 11:15:26 +0000
Received: by mail-it1-x144.google.com with SMTP id 9so3875995itf.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 04:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E1KTUsNwJttCbYMpP/vSQN7Lpy8rB0FVs5Ld3t0BZdU=;
 b=FiuRe05OV+4W5HxmhYrhdnR6is56tx7kftRu7tShMGeU3CBF9kvf/fkzk0UcOi6z+K
 SpukfAs5dUAJ4bnMxU/4P2v4mOXPB60R6KTMMMh7BAbumxFM/CJJ+EbLZZEdvTepa3nI
 0nf4i8IOtdVaTgIA/rivq2S6NiTQY0/V6qt0VCdQCLGMqAXDQSqlfuoAkYCgWqlvHO6J
 F6CIq+fMNvc5dIN2Gb2XEG9gMXneLMxy/ijEtR6wfL7tE8SFcPBsuBGshQCLghZkh/ga
 UiBkcD+xdzTr8DWLYKcqh1Q9rNVmBKm0tIzGfTkIfq1EsugkO0XOVUR/BY0ZxoYsTCeX
 lvjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E1KTUsNwJttCbYMpP/vSQN7Lpy8rB0FVs5Ld3t0BZdU=;
 b=BErUCn3nvvvxeddNebr5qAHnS8nF75I1xIVU/i8YB4Ra1hYRVnExnrMctpFl6QueqE
 Jboh24FCBtAwHtBSmql/cmAfs/07SoJg4Ov7w/t5mUIsPu43A8nURXF6kLNnaB6q3mGK
 RFg/nco4N/ohkAeyzyoQlLdP3obbiT3Wh/rW/dfp+zW+7oc2QOxk5e2FZx0mq3nRdCh0
 2etyMiITPV9c9oFUhr9xvHSFW6Nujn6ZJ7+OL8S+MSE0+sMCLl80ssIhuIc7ypK0oT77
 uG4mJ2i1ptKiPqz7IYXRLPH1nMKbkbHOfX6XI80wPvg/rVjcGXCHxJk1l06A9q6diruY
 GT5A==
X-Gm-Message-State: APjAAAUgMWWfMDjkHS7n0buQLLFmkXzSIk+3Y/9iJT7KD4k8Q0CGlFuW
 zRtZbjyfobr4S6yTPPRUXhp9f0I8PFDora+WvX194qG1
X-Google-Smtp-Source: APXvYqwlfgZIjuTgPOMIlVCOkc/a4ZvGA86DRe8tiuFKZPMvMjmuPIm3KwAu6urfrA2HXqBaS+9a6DoR5v1/iaukRdA=
X-Received: by 2002:a24:93c2:: with SMTP id y185mr7172779itd.95.1557918923641; 
 Wed, 15 May 2019 04:15:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190502173327.23285-1-jeffery.to@gmail.com>
 <20190503093959.GG346@meh.true.cz>
 <CAJXyS=gLNzkQ4aMavWd6adrS0OiKWU-uwTMxu3bEoUztRWD2PQ@mail.gmail.com>
In-Reply-To: <CAJXyS=gLNzkQ4aMavWd6adrS0OiKWU-uwTMxu3bEoUztRWD2PQ@mail.gmail.com>
From: Jeffery To <jeffery.to@gmail.com>
Date: Wed, 15 May 2019 19:15:11 +0800
Message-ID: <CAJXyS=gGBaurfw-E6epZ1C1ZVpPWB6ZvFynw7fy0P_oF==4X4A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_041524_732032_EFC4EE6C 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] build: fix STAGING_DIR cleaning when
 filenames contain spaces
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5000312539777490149=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5000312539777490149==
Content-Type: multipart/alternative; boundary="00000000000008570f0588eb44cc"

--00000000000008570f0588eb44cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2019 at 7:03 PM Jeffery To <jeffery.to@gmail.com> wrote:

> On Fri, May 3, 2019 at 5:40 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>
>> Jeffery To <jeffery.to@gmail.com> [2019-05-03 01:33:27]:
>>
>> > When looping through a package's STAGING_FILES_LIST (a list of
>> > file/directory paths delimited by newlines), if the path contains
>> > spaces, then the path will be split by the while loops, and the
>> > file/directory will not be deleted/removed.
>> >
>> > This sets the internal field separator to the newline only so that the
>> > entire path is considered when deleting/removing.
>> >
>> > Signed-off-by: Jeffery To <jeffery.to@gmail.com>
>> > ---
>> >  scripts/clean-package.sh | 2 ++
>> >  1 file changed, 2 insertions(+)
>> >
>> > diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
>> > index e580566a52..3a824929c6 100755
>> > --- a/scripts/clean-package.sh
>> > +++ b/scripts/clean-package.sh
>> > @@ -1,4 +1,6 @@
>> >  #!/usr/bin/env bash
>> > +IFS=3D"
>> > +"
>> >  [ -n "$1" -a -n "$2" ] || {
>> >       echo "Usage: $0 <file> <directory>"
>> >       exit 1
>>
>> just for the record, copy&pasting my comment from your PR[1]:
>>
>> I'm just wondering, if this proposed fix with this strange looking IFS i=
s
>> the
>> right direction. Usually if I've problem with whitespaces in filenames,
>> it's
>> because I've forget to use xargs. If I'm not mistaken, this [ -n "$entry=
"
>> ] ||
>> break construct could be replaced with xargs -r, there's even
>> XARGS:=3Dxargs -r
>> in rules.mk. Just my two cents.
>>
>> 1. https://github.com/openwrt/openwrt/pull/1806#issuecomment-475454138
>>
>> -- ynezz
>>
>
> For the record, here is my reply from the PR[1]:
>
> IFS[2] is a standard internal variable that controls how the shell splits
> tokens. Setting it here determines how the while loops further down the
> script will split the input (lines of file paths generated by find).
> Normally, IFS contains space, newline, and tab, which causes the while
> loops to incorrectly split paths with spaces. This problem is avoided by
> setting IFS to the newline only.
>
> The line you cite ([ -n "$entry" ] || break) causes the while loops (whic=
h
> delete the input file paths) to exit on the first empty line of input. It
> would make no sense to replace it with xargs.
>
> * * *
>
> I finally remembered, I copied this syntax from
> package/network/services/openvpn/files/openvpn.init[3]:
>
> LIST_SEP=3D"
> "
>
> then further down it's used in append_param()[4] as IFS=3D"$LIST_SEP" (I
> won't quote the whole for loop here).
>
> If you prefer, I can change this to use ksh93 syntax[5]:
>
> IFS=3D$'\n'
>
> If you want to rewrite the script to use xargs, please be my guest, but
> setting IFS solves the issue here of spaces in file paths (technically,
> lines of text read from a file list).
>
>
> 1. https://github.com/openwrt/openwrt/pull/1806#issuecomment-475506440
> 2. https://www.tldp.org/LDP/abs/html/internalvariables.html#IFSREF
> 3.
> https://github.com/openwrt/openwrt/blob/172b02c05f2dc199f511f1577aeddfabb=
7790dc0/package/network/services/openvpn/files/openvpn.init#L13-L14
> 4.
> https://github.com/openwrt/openwrt/blob/172b02c05f2dc199f511f1577aeddfabb=
7790dc0/package/network/services/openvpn/files/openvpn.init#L43
> 5. https://unix.stackexchange.com/a/184867
>
>
Just want to add, it may not be obvious why there would be spaces in file
paths (it wasn't obvious to me at first).

Apparently, some Go packages that users have been trying to build
(Docker[1], Delve[2]) include files with spaces in their names (mostly as
test cases for handling files with spaces in their name, I think). The Go
compilation issue was eventually fixed, but I noticed that the files were
not cleaned up properly from STAGING_DIR.


1. https://github.com/openwrt/packages/pull/7127#issuecomment-439688448
2. https://github.com/openwrt/packages/issues/7639

--00000000000008570f0588eb44cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Wed,=
 May 15, 2019 at 7:03 PM Jeffery To &lt;<a href=3D"mailto:jeffery.to@gmail.=
com">jeffery.to@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr">On Fri, May 3, 2019 at 5:40 PM Petr =C5=A0te=
tiar &lt;<a href=3D"mailto:ynezz@true.cz" target=3D"_blank">ynezz@true.cz</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Jeffery To &lt;<a href=3D"mailto:jeffery.to@gmail.=
com" target=3D"_blank">jeffery.to@gmail.com</a>&gt; [2019-05-03 01:33:27]:<=
br>
<br>
&gt; When looping through a package&#39;s STAGING_FILES_LIST (a list of<br>
&gt; file/directory paths delimited by newlines), if the path contains<br>
&gt; spaces, then the path will be split by the while loops, and the<br>
&gt; file/directory will not be deleted/removed.<br>
&gt; <br>
&gt; This sets the internal field separator to the newline only so that the=
<br>
&gt; entire path is considered when deleting/removing.<br>
&gt; <br>
&gt; Signed-off-by: Jeffery To &lt;<a href=3D"mailto:jeffery.to@gmail.com" =
target=3D"_blank">jeffery.to@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 scripts/clean-package.sh | 2 ++<br>
&gt;=C2=A0 1 file changed, 2 insertions(+)<br>
&gt; <br>
&gt; diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh<br>
&gt; index e580566a52..3a824929c6 100755<br>
&gt; --- a/scripts/clean-package.sh<br>
&gt; +++ b/scripts/clean-package.sh<br>
&gt; @@ -1,4 +1,6 @@<br>
&gt;=C2=A0 #!/usr/bin/env bash<br>
&gt; +IFS=3D&quot;<br>
&gt; +&quot;<br>
&gt;=C2=A0 [ -n &quot;$1&quot; -a -n &quot;$2&quot; ] || {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Usage: $0 &lt;file&gt; &lt;direct=
ory&gt;&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0exit 1<br>
<br>
just for the record, copy&amp;pasting my comment from your PR[1]:<br>
<br>
I&#39;m just wondering, if this proposed fix with this strange looking IFS =
is the<br>
right direction. Usually if I&#39;ve problem with whitespaces in filenames,=
 it&#39;s<br>
because I&#39;ve forget to use xargs. If I&#39;m not mistaken, this [ -n &q=
uot;$entry&quot; ] ||<br>
break construct could be replaced with xargs -r, there&#39;s even XARGS:=3D=
xargs -r<br>
in <a href=3D"http://rules.mk" rel=3D"noreferrer" target=3D"_blank">rules.m=
k</a>. Just my two cents.<br>
<br>
1. <a href=3D"https://github.com/openwrt/openwrt/pull/1806#issuecomment-475=
454138" rel=3D"noreferrer" target=3D"_blank">https://github.com/openwrt/ope=
nwrt/pull/1806#issuecomment-475454138</a><br>
<br>
-- ynezz<br></blockquote><div><br></div><div>For the record, here is my rep=
ly from the PR[1]:</div><div><br></div><div>IFS[2] is a standard internal v=
ariable that controls how the shell splits tokens. Setting it here determin=
es how the while loops further down the script will split the input (lines =
of file paths generated by find). Normally, IFS contains space, newline, an=
d tab, which causes the while loops to incorrectly split paths with spaces.=
 This problem is avoided by setting IFS to the newline only.<br><br>The lin=
e you cite ([ -n &quot;$entry&quot; ] || break) causes the while loops (whi=
ch delete the input file paths) to exit on the first empty line of input. I=
t would make no sense to replace it with xargs.</div><div><br></div><div>* =
* *</div><div><br></div><div>I finally remembered, I copied this syntax fro=
m package/network/services/openvpn/files/openvpn.init[3]:<br></div><div><br=
></div><div>LIST_SEP=3D&quot;<br>&quot;<br><br></div><div>then further down=
 it&#39;s used in append_param()[4] as IFS=3D&quot;$LIST_SEP&quot; (I won&#=
39;t quote the whole for loop here).</div><div><br></div><div>If you prefer=
, I can change this to use ksh93 syntax[5]:</div><div><br></div><div>IFS=3D=
$&#39;\n&#39;<br></div><div><br></div><div>If you want to rewrite the scrip=
t to use xargs, please be my guest, but setting IFS solves the issue here o=
f spaces in file paths (technically, lines of text read from a file list).<=
br></div><div><br></div><div><br></div><div>1. <a href=3D"https://github.co=
m/openwrt/openwrt/pull/1806#issuecomment-475506440" target=3D"_blank">https=
://github.com/openwrt/openwrt/pull/1806#issuecomment-475506440</a></div><di=
v>2. <a href=3D"https://www.tldp.org/LDP/abs/html/internalvariables.html#IF=
SREF" target=3D"_blank">https://www.tldp.org/LDP/abs/html/internalvariables=
.html#IFSREF</a></div><div>3. <a href=3D"https://github.com/openwrt/openwrt=
/blob/172b02c05f2dc199f511f1577aeddfabb7790dc0/package/network/services/ope=
nvpn/files/openvpn.init#L13-L14" target=3D"_blank">https://github.com/openw=
rt/openwrt/blob/172b02c05f2dc199f511f1577aeddfabb7790dc0/package/network/se=
rvices/openvpn/files/openvpn.init#L13-L14</a></div><div>4. <a href=3D"https=
://github.com/openwrt/openwrt/blob/172b02c05f2dc199f511f1577aeddfabb7790dc0=
/package/network/services/openvpn/files/openvpn.init#L43" target=3D"_blank"=
>https://github.com/openwrt/openwrt/blob/172b02c05f2dc199f511f1577aeddfabb7=
790dc0/package/network/services/openvpn/files/openvpn.init#L43</a></div><di=
v>5. <a href=3D"https://unix.stackexchange.com/a/184867" target=3D"_blank">=
https://unix.stackexchange.com/a/184867</a></div><div><br></div></div></div=
></div></div></div></div></div></div></div></div></div></div></blockquote><=
div><br></div><div>Just want to add, it may not be obvious why there would =
be spaces in file paths (it wasn&#39;t obvious to me at first).</div><div><=
br></div><div>Apparently, some Go packages that users have been trying to b=
uild (Docker[1], Delve[2]) include files with spaces in their names (mostly=
 as test cases for handling files with spaces in their name, I think). The =
Go compilation issue was eventually fixed, but I noticed that the files wer=
e not cleaned up properly from STAGING_DIR.<br></div><div><br></div><div><b=
r></div><div>1. <a href=3D"https://github.com/openwrt/packages/pull/7127#is=
suecomment-439688448">https://github.com/openwrt/packages/pull/7127#issueco=
mment-439688448</a></div><div>2. <a href=3D"https://github.com/openwrt/pack=
ages/issues/7639">https://github.com/openwrt/packages/issues/7639</a></div>=
<div><br></div></div></div></div></div>

--00000000000008570f0588eb44cc--


--===============5000312539777490149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5000312539777490149==--

