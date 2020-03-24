Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5F5190C93
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 12:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ao37MTXualbf/6s9OPNmNS3GcfP0GiFNBe0QH/Puxvs=; b=b02Ynh4az/qWRF4HWglWjqr99
	67GCN7b6MFcmyNioEv4EYMjfoQdgTblFIhylpMDE4i2AkkLPIbARisPmiXFDkxk8qD5sYt/ZqZQEu
	RKM3oUX0epjUwdS0TmKeWEX3rUAgbH+f2e3YmTmanHYGR2W4mkCP8h5I1wTEihwMSUVMy/th9D+qd
	3/PV4dglsCZaLAK/WyTl278NZR814EkhPKf/B3plqcuXcBxFKGZybk2kPGMY3cvMV3a5eno6Ie1Wy
	3WKf/fl7VxjN+T6ovKqV+LDZ8dIZ2XXQ62av4mT5qq/bD+ToWKCDMqRvt6m5F3ji5YR52LfoelvTH
	vCRaw5ufg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhql-0007vO-0c; Tue, 24 Mar 2020 11:36:03 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhqa-0007uO-2S
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 11:35:55 +0000
Received: by mail-ed1-x52a.google.com with SMTP id z3so20228813edq.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 04:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=WpKkm9g0cS8Y4uWhbr28GY5WrK5lWrz81AN/Gq4BX20=;
 b=t54MV+vAj5ZJ5oWaeBmQ5qJcbABoIDBrWlAMUYR0MbLqsE3Mlig+kRMsKnY3jdoIkP
 yKOGLB30GRK0/faCG+1/KubeBEvVjeqbaqhp/t/Jes4g8uHgoVpMolmo8N9Z+dLcuuKn
 Qe8Ss9IxqO6GlsSjlVaAPB/GfzRSMjTsN6EtIOlwP8m5CxLoecqqyAiroUkuVayIFVo0
 Ufx2Jx7XJC2+WwBXk2qJ8AH2Sutb1LAzBv+oMbnOsMqF2zfVa7zfbvKTZPp6o6jUgmIe
 MeH3Znzq3Ax+3xwFN/l7EtyolHN8L8DV055TIKl0ZMcet7llHrBXnh0bO05F7LtJ0oTg
 e1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=WpKkm9g0cS8Y4uWhbr28GY5WrK5lWrz81AN/Gq4BX20=;
 b=oiE+xDMqbtnSuCRYIpJMkvtte6VuBgBhtJ/zQ084fCTljVF1b8yWzT1uSxWcHvm5/c
 ForttiwPLA4eQ9UT720Pz6GsG8F8FnehbOV1CP7vsAYh0DdoWcCevfsrNOXSrwZ2NRsa
 sXOrrYfcg6UIyvuv5ZsSBNsFGZn45X7XuDtShJRQPQjP+cvuR/LT+oM1g3s6PGF0Wfpl
 xPhT1pto+D4rVjOg9WmYMO6KeA8EuWBRsDegLTqYytmn7K9M6PfXrt/a+goyJkq05xNk
 8u5ALCieOlSb+l91MiPLuZvbdQVrszMgvdwvsAvvBWsP1cuBjxiQlHrugwE9j9gk55XF
 BROQ==
X-Gm-Message-State: ANhLgQ2Tjvo5yTR7Dm40+4OCndT5kzGkwdhc2EK79jgkeZnT4IFdl7n+
 CsJnFwUbVboZ8DeO9aAd4wckx2QCZS7o0qjdRAmAxrGD
X-Google-Smtp-Source: ADFU+vuUnmqBsVab9gKlJNcGtN2yyWy9QO79+t8nQN64YvecjFwM52axuqVhW8ZFWUxXwS/ImTzxYToPBR0oa0/qAvc=
X-Received: by 2002:aa7:c745:: with SMTP id c5mr26059921eds.181.1585049750135; 
 Tue, 24 Mar 2020 04:35:50 -0700 (PDT)
MIME-Version: 1.0
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
 <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
 <alpine.LNX.2.22.413.2003241157170.7925@localhost.localdomain>
 <CALYKT1hD+HgDsJCOOPk2L0Y=HmZTFPsRrsQXo9c96cygXaPo9w@mail.gmail.com>
In-Reply-To: <CALYKT1hD+HgDsJCOOPk2L0Y=HmZTFPsRrsQXo9c96cygXaPo9w@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 24 Mar 2020 20:35:38 +0900
Message-ID: <CALYKT1g3F2o1LBURTN4v29f7ftK9ucxi1SnsMM26hVcGoP3Q4Q@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_043552_142741_4E3852A6 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52a listed in]
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
Content-Type: multipart/mixed; boundary="===============0593953848034971110=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0593953848034971110==
Content-Type: multipart/alternative; boundary="0000000000004f01e005a1982784"

--0000000000004f01e005a1982784
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I've successfully added strace!
make menuconfig was what I was supposed to do!

Thank you!
Jeonghum




2020=EB=85=84 3=EC=9B=94 24=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 8:08, J=
eonghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1=
:

> Hello,
>
> Many reply messages! So quickly! Thank you all!
>
> I tried this way,
>
> root@LEDE:~# opkg install strace
> Unknown package 'strace'.
> Collected errors:
>  * opkg_install_cmd: Cannot install package strace.
>
>
> root@LEDE:~# uname -a
> Linux LEDE 4.4.124 #0 SMP PREEMPT Fri Mar 13 06:40:09 UTC 2020 aarch64
> GNU/Linux
> root@LEDE:~# Linux LEDE 4.4.124 #0 SMP PREEMPT Fri Mar 13 06:40:09 UTC
> 2020 aarc
>
>
> I am using mediatek sdk and it is open -
> https://downloads.openwrt.org/releases/19.07.2/targets/mediatek/mt7622/
>
> I guess I have to copy strace source code from some repo. There is one I
> found.
>
> https://openwrt.org/packages/pkgdata_owrt18_6/strace
> But I am not sure that would work for my Linux LEDE 4.4.124.
>
> Do you have some suggestion for me?
>
> Thank you very much!
> Jeonghum
>
>
>
>
>
>
> 2020=EB=85=84 3=EC=9B=94 24=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 7:58,=
 Enrico Mioso <mrkiko.rs@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
>> you may install strace with opkg from within the running device, assumin=
g
>> it has connectivity to the outside:
>> opkg install strace
>>
>> or, you may select strace itself when building the firmware.
>> or
>>
>>
>> On Tue, 24 Mar 2020, Jeonghum Joh wrote:
>>
>> > Date: Tue, 24 Mar 2020 11:39:05
>> > From: Jeonghum Joh <oosaprogrammer@gmail.com>
>> > To: openwrt-devel@lists.openwrt.org
>> > Subject: [OpenWrt-Devel] How can I include strace into the firmware?
>> >
>> > Hello,
>> > I'd like to use "strace" in openwrt firmware.
>> > As you might know strace uses automake, autoconf and autotools.
>> > It uses configure.ac and Makefile.am.
>> >
>> > If it's just suing simple Makefile, the directory package/ would be go=
od
>> > place to place it, but strace uses automake - Makefile.am and
>> configure.ac,
>> > ...
>> >
>> > How am I supposed to include strace into openwrt source code?
>> >
>> > Thank you in advance!
>> > Jeonghum
>> >
>> >
>>
>> Enrico Mioso
>> Personal Phone Number: +39 3807096934
>> Tox ID is:
>>
>> 7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C=
7475
>>
>

--0000000000004f01e005a1982784
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;ve=C2=A0successfully added=
 strace!</div><div>make menuconfig was what I was supposed to do!</div><div=
><br></div><div>Thank you!</div><div>Jeonghum</div><div><br></div><div><br>=
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">2020=EB=85=84 3=EC=9B=94 24=EC=9D=BC (=ED=99=94) =EC=
=98=A4=ED=9B=84 8:08, Jeonghum Joh &lt;<a href=3D"mailto:oosaprogrammer@gma=
il.com">oosaprogrammer@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=
=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hello,</div><div><br></div><div>Many reply messages! So quickly!=
 Thank you all!</div><div><br></div><div>I tried this way,</div><div><br></=
div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><=
div>root@LEDE:~# opkg install strace</div><div>Unknown package &#39;strace&=
#39;.</div><div>Collected errors:</div><div>=C2=A0* opkg_install_cmd: Canno=
t install package strace.</div></blockquote><div><blockquote style=3D"margi=
n:0px 0px 0px 40px;border:none;padding:0px"><div><br></div><div>root@LEDE:~=
# uname -a</div><div>Linux LEDE 4.4.124 #0 SMP PREEMPT Fri Mar 13 06:40:09 =
UTC 2020 aarch64 GNU/Linux</div><div>root@LEDE:~# Linux LEDE 4.4.124 #0 SMP=
 PREEMPT Fri Mar 13 06:40:09 UTC 2020 aarc</div><div><br></div></blockquote=
></div><div><br></div><div>I am using mediatek sdk and it is open -=C2=A0<a=
 href=3D"https://downloads.openwrt.org/releases/19.07.2/targets/mediatek/mt=
7622/" target=3D"_blank">https://downloads.openwrt.org/releases/19.07.2/tar=
gets/mediatek/mt7622/</a></div><div><br></div><div>I guess=C2=A0I have to c=
opy strace source code from some repo. There is one I found.</div><div><br>=
</div><div><a href=3D"https://openwrt.org/packages/pkgdata_owrt18_6/strace"=
 target=3D"_blank">https://openwrt.org/packages/pkgdata_owrt18_6/strace</a>=
=C2=A0</div><div>But I am not sure that would work for my=C2=A0Linux LEDE 4=
.4.124.</div><div><br></div><div>Do you have some suggestion=C2=A0for me?</=
div><div><br></div><div>Thank you very much!</div><div>Jeonghum=C2=A0<br></=
div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">20=
20=EB=85=84 3=EC=9B=94 24=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 7:58, Enr=
ico Mioso &lt;<a href=3D"mailto:mrkiko.rs@gmail.com" target=3D"_blank">mrki=
ko.rs@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">you may install strace with o=
pkg from within the running device, assuming it has connectivity to the out=
side:<br>
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
</blockquote></div>

--0000000000004f01e005a1982784--


--===============0593953848034971110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0593953848034971110==--

