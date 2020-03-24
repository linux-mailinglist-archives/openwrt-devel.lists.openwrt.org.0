Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1110C190C01
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 12:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g8/+xpz81eMkdOBJX6miMlS90yC6LRHftEKb2eoS0bs=; b=nADMEi5tpuz7eBihfwYbut5pd
	WL6hSUlEZyUizKQdvzSQY7vCaOfHUqrCDnyir8qs7k2L0Tj1uV6VomUmwlIATHJ5OccvMZumgjZ/8
	gTynx9QwwPrbBj4E3LspPlZWHS+khIV4V7u6I7e6WMYH4/ktG8jPCwGvWLlX3lqsI/ogm5tVT9XaI
	XXKpKWGT9KtO2vk2mOrd+Q44ft0JK1QIyvNiFOLAvYQP2rFeF0So6StlhAQ05KxitXwELJueWx8mA
	+6MCSOGmQ0G4tVSP/BnhWhuL26IeKl3NnNJ2LeGcGTDfwNCF4ARODU63Xlo6yMir/gaU5zty/4AdR
	yPgnVKl3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhQB-0004NB-L3; Tue, 24 Mar 2020 11:08:35 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhPx-0004M7-PO
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 11:08:24 +0000
Received: by mail-ed1-x535.google.com with SMTP id w26so13852350edu.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 04:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=cQfpUllFOopTJS0y7T4qdsTA6c5jnJEEuB4pEPiWshs=;
 b=CF/6KUhPvWYzoW0ODjTYN/oLulnxxkEIEKHElfs+GggjiEhOTco09c/qld69F2ZGtb
 HoALBOHV/9Z/tUVblnaq82ZeQqXJhCypHguex24CserZIohSIlyRttUKVlPGdcTb3Uet
 j/q4Gir94MXVkd0LgD3xFn3zgjlDJGaynlNdSbSKA4zPbSwi45zpx/oKoTVHzLB2VoXN
 5Hfm1+dW6Qo779V3SELgAS28uvoIn5vEJe/uXDMXsehz1L0W3RAxO7A9c80To+NMG7+W
 QT6qIFvncqwOn8POpu5z6+D5Dw9zxSdGGcoP6CHOb3YOxUOr6rmEsBn/MBU0ZXYu+pi3
 UW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=cQfpUllFOopTJS0y7T4qdsTA6c5jnJEEuB4pEPiWshs=;
 b=E4CUTQCheh6DQ76AQgv5PdQtdS4lkBJBN1DmA7cVGsW5T6ZuqfAnNThAZV2vDVD0/q
 QCKpiwlJ10WNNE9pTExKq+T5uIL0NCYX50+a9dKYr/OykVnAsMThTFr3f3XGyFwBIwiI
 S2vzl5uIMIYemnpquPxmNOX7SiCu127JeWKeLZMRetgov9mFev+jIDFbil6UmLf81ICM
 inqNse33n/CkWQK+80m+StjVVqEfYwf/MN9jDCAcVIMlnLkDKE1kScghIljDhkaOz413
 d/pkClTZKBWZBDXL8152cJCk0vPu/dwnYkMC45iStdonpzGQikJCtQW9nBBvABa8t1L2
 Q6TQ==
X-Gm-Message-State: ANhLgQ1wBfPsjSydkuOOHaGJjPvxnO80tAMdLQHFJfIn7mKhZPIOyjYA
 o12uhLNiyaeyHTV9C6OEWJdfWKMlgocRsek4fONeuJ2NasI=
X-Google-Smtp-Source: ADFU+vsilLbsFNU/F6/StJn8RpFeTThiWZq+c6465+hUK6zZjEalEf/UFMuRM4+mcbTOyP+g6mRx8ERcid4AHzTkeKU=
X-Received: by 2002:a50:f09c:: with SMTP id v28mr25176454edl.46.1585048100071; 
 Tue, 24 Mar 2020 04:08:20 -0700 (PDT)
MIME-Version: 1.0
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
 <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
 <alpine.LNX.2.22.413.2003241157170.7925@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.22.413.2003241157170.7925@localhost.localdomain>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 24 Mar 2020 20:08:08 +0900
Message-ID: <CALYKT1hD+HgDsJCOOPk2L0Y=HmZTFPsRrsQXo9c96cygXaPo9w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_040821_829056_C186B142 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] How can I include strace into the firmware?
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
Content-Type: multipart/mixed; boundary="===============3487167689657380052=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3487167689657380052==
Content-Type: multipart/alternative; boundary="000000000000f4ecff05a197c47e"

--000000000000f4ecff05a197c47e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Many reply messages! So quickly! Thank you all!

I tried this way,

root@LEDE:~# opkg install strace
Unknown package 'strace'.
Collected errors:
 * opkg_install_cmd: Cannot install package strace.


root@LEDE:~# uname -a
Linux LEDE 4.4.124 #0 SMP PREEMPT Fri Mar 13 06:40:09 UTC 2020 aarch64
GNU/Linux
root@LEDE:~# Linux LEDE 4.4.124 #0 SMP PREEMPT Fri Mar 13 06:40:09 UTC 2020
aarc


I am using mediatek sdk and it is open -
https://downloads.openwrt.org/releases/19.07.2/targets/mediatek/mt7622/

I guess I have to copy strace source code from some repo. There is one I
found.

https://openwrt.org/packages/pkgdata_owrt18_6/strace
But I am not sure that would work for my Linux LEDE 4.4.124.

Do you have some suggestion for me?

Thank you very much!
Jeonghum






2020=EB=85=84 3=EC=9B=94 24=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 7:58, E=
nrico Mioso <mrkiko.rs@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> you may install strace with opkg from within the running device, assuming
> it has connectivity to the outside:
> opkg install strace
>
> or, you may select strace itself when building the firmware.
> or
>
>
> On Tue, 24 Mar 2020, Jeonghum Joh wrote:
>
> > Date: Tue, 24 Mar 2020 11:39:05
> > From: Jeonghum Joh <oosaprogrammer@gmail.com>
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] How can I include strace into the firmware?
> >
> > Hello,
> > I'd like to use "strace" in openwrt firmware.
> > As you might know strace uses automake, autoconf and autotools.
> > It uses configure.ac and Makefile.am.
> >
> > If it's just suing simple Makefile, the directory package/ would be goo=
d
> > place to place it, but strace uses automake - Makefile.am and
> configure.ac,
> > ...
> >
> > How am I supposed to include strace into openwrt source code?
> >
> > Thank you in advance!
> > Jeonghum
> >
> >
>
> Enrico Mioso
> Personal Phone Number: +39 3807096934
> Tox ID is:
>
> 7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C7=
475
>

--000000000000f4ecff05a197c47e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Many reply messages! =
So quickly! Thank you all!</div><div><br></div><div>I tried this way,</div>=
<div><br></div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0=
px"><div>root@LEDE:~# opkg install strace</div><div>Unknown package &#39;st=
race&#39;.</div><div>Collected errors:</div><div>=C2=A0* opkg_install_cmd: =
Cannot install package strace.</div></blockquote><div><blockquote style=3D"=
margin:0 0 0 40px;border:none;padding:0px"><div><br></div><div>root@LEDE:~#=
 uname -a</div><div>Linux LEDE 4.4.124 #0 SMP PREEMPT Fri Mar 13 06:40:09 U=
TC 2020 aarch64 GNU/Linux</div><div>root@LEDE:~# Linux LEDE 4.4.124 #0 SMP =
PREEMPT Fri Mar 13 06:40:09 UTC 2020 aarc</div><div><br></div></blockquote>=
</div><div><br></div><div>I am using mediatek sdk and it is open -=C2=A0<a =
href=3D"https://downloads.openwrt.org/releases/19.07.2/targets/mediatek/mt7=
622/">https://downloads.openwrt.org/releases/19.07.2/targets/mediatek/mt762=
2/</a></div><div><br></div><div>I guess=C2=A0I have to copy strace source c=
ode from some repo. There is one I found.</div><div><br></div><div><a href=
=3D"https://openwrt.org/packages/pkgdata_owrt18_6/strace">https://openwrt.o=
rg/packages/pkgdata_owrt18_6/strace</a>=C2=A0</div><div>But I am not sure t=
hat would work for my=C2=A0Linux LEDE 4.4.124.</div><div><br></div><div>Do =
you have some suggestion=C2=A0for me?</div><div><br></div><div>Thank you ve=
ry much!</div><div>Jeonghum=C2=A0<br></div><div><br></div><div><br></div><d=
iv><br></div><div><br></div><div><br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 3=EC=9B=94 24=EC=9D=BC (=
=ED=99=94) =EC=98=A4=ED=9B=84 7:58, Enrico Mioso &lt;<a href=3D"mailto:mrki=
ko.rs@gmail.com">mrkiko.rs@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=
=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">you may =
install strace with opkg from within the running device, assuming it has co=
nnectivity to the outside:<br>
opkg install strace<br>
<br>
or, you may select strace itself when building the firmware.<br>
or<br>
<br>
<br>
On Tue, 24 Mar 2020, Jeonghum Joh wrote:<br>
<br>
&gt; Date: Tue, 24 Mar 2020 11:39:05<br>
&gt; From: Jeonghum Joh &lt;<a href=3D"mailto:oosaprogrammer@gmail.com" tar=
get=3D"_blank">oosaprogrammer@gmail.com</a>&gt;<br>
&gt; To: <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt; Subject: [OpenWrt-Devel] How can I include strace into the firmware?<b=
r>
&gt; <br>
&gt; Hello,<br>
&gt; I&#39;d like to use &quot;strace&quot; in openwrt firmware.<br>
&gt; As you might know strace uses automake, autoconf and autotools.<br>
&gt; It uses <a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_=
blank">configure.ac</a> and Makefile.am.<br>
&gt; <br>
&gt; If it&#39;s just suing simple Makefile, the directory package/ would b=
e good<br>
&gt; place to place it, but strace uses automake - Makefile.am and <a href=
=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">configure.ac<=
/a>,<br>
&gt; ...<br>
&gt; <br>
&gt; How am I supposed to include strace into openwrt source code?<br>
&gt; <br>
&gt; Thank you in advance!<br>
&gt; Jeonghum<br>
&gt; <br>
&gt;<br>
<br>
Enrico Mioso<br>
Personal Phone Number: +39 3807096934<br>
Tox ID is:<br>
7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C747=
5<br>
</blockquote></div></div>

--000000000000f4ecff05a197c47e--


--===============3487167689657380052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3487167689657380052==--

