Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083ED21F56
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 23:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HN6mjfdmuRWnHoCkM1VVYRjo+yYUo8pVpfJu37Q6yH0=; b=onDAej/tHmoXQH0OSiz22TGA7
	QeugHhw0jX/dhi+KnsFsIY3YVCBkJ+37JXpC5r4zEa9tc6C14/ZJJNPXKyQHOV9Ngy5ffNUnk8gyX
	qeFr+FpZjxuKTxKh8igwasiQEY8h6EoVMSZv1bIyelw0iPeKlfjFxOcN647prb4QMGqrgOgsrfS1a
	A4PPWRciMsYsTYVYM9x/BqYwFf6Opa7f0HSQpsYClmf3k3G+cqr7V2RFRGdrU/P189H19dVRXjdVq
	HZAwz0yuThsY4lWG8jqbbq/H2Bj6g7IJ3I5u5B8/G/AZSpsmvkMN+amWxBPNcG5m/geDUFX0TRUfD
	WQgET4YxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRk3d-0005R9-Qs; Fri, 17 May 2019 21:06:25 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRk3W-0005Ql-34
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 21:06:20 +0000
Received: by mail-ua1-x941.google.com with SMTP id u4so3208826uau.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 14:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7T5eBWZdm72eIPPoeb6LBPaepyTP/yqBkm7JOh3aWYI=;
 b=AxI66UhDDfSHtd45vFZWOFEfQaJYrE0Q8mOiLYSbjmxn3eCFkeutIm15VTJRUPSohG
 yhTSFV7lvc7A7+G1K+5/Nbk4wijAJFqFL3+r7nvExo2FGVCEOaiitaWuW3up7isKwBtO
 ByIZ2AP05K5CI77UPeTSLDy+ROXP/IHlShf3qY7/0aXo8DdIZGqEI+bUDRv48+Q6gDbM
 kbCvTeKOBImvNOBrnzz/LuPcOJZsooG2fIbkgX2fnQvE9AZeg27tc9eBZmkUuPt1IFMs
 0m3uyrelSJIIE26FWzbyQUXbHnFP7E6Xd9LXgxCLVoNbnUh+V6x/nReAtIbC9NKAv3cv
 Q5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7T5eBWZdm72eIPPoeb6LBPaepyTP/yqBkm7JOh3aWYI=;
 b=rQy7+5lSUEQnLEO0c8VvOpRmuTzr6k6WIQmDXzEMcopidK/N/IDjxvLpC9WGA1YDjY
 pJ5U4ZRrGHcbJEdE7KMVRbN63QdHL07Ru6GGgNBiwEU/4sJd7FYoFVVZIJHhh7kUqr5Q
 F6RBX3+0QbNDFfh0NNokDka6t+qQWj4jWATVo6IrioHEu1xNhpc9XhXjeEe72NYf+q+Z
 gNVk+uBcv9238cnUioNzzmwBvEm3gb/o4bC2PZbcLsIcQEY0G5udx04gS5XC7vehUcy/
 7Ird+cnS/LGY6R4yGDtDtvq7vSiovTRs5YqwMEJs8n2wgps4YNs+saPLmF9mkbj4V/JZ
 GGlQ==
X-Gm-Message-State: APjAAAVaJMv+CpIFi7kp6bPuklp060QzIW2NcDOJPgr9pGDTVO+FWYys
 mAHh4gs1EarrDYmGMKG/9UHLPYuvrFaS2Lhyoik=
X-Google-Smtp-Source: APXvYqxxG+R7NjZeqDY5KYH1ffXfCCGWQOhjEeqkXVjGLOu+aDD7dB9dqKk9PYOFK6DMsPeOcjYmUhYUo1nTP3YXYIw=
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr26870387uae.19.1558127172683; 
 Fri, 17 May 2019 14:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <CAEdN=pENo3cxEyffOBdLd1OAcmbpTYzrkk9bWx_F6csoiwLGVA@mail.gmail.com>
 <20190515193528.GD63920@meh.true.cz> <4726228.ymKfrnX4o1@debian64>
In-Reply-To: <4726228.ymKfrnX4o1@debian64>
From: =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>
Date: Sat, 18 May 2019 00:06:01 +0300
Message-ID: <CAEdN=pGbwLDL5XbdGENBCmOZpTJ-raZs5=KfzHUvG7BA8hSiPg@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_140618_139495_9448949E 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (be.dissent[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Sven Eckelmann <sven@narfation.org>
Content-Type: multipart/mixed; boundary="===============3640515689648950426=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3640515689648950426==
Content-Type: multipart/alternative; boundary="000000000000a48adf05891bc0d1"

--000000000000a48adf05891bc0d1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D1=82, 17 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 23:18 Christian Lamparter=
 <chunkeey@gmail.com>:

> On Wednesday, May 15, 2019 9:35:28 PM CEST Petr =C5=A0tetiar wrote:
> > =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB <be.dissent@gmail.com> [2019-05-15 22:14=
:41]:
> >
> > > Not a problem, actually, but I've been suggested to squash them :)
> > > https://github.com/openwrt/openwrt/pull/2043#issuecomment-491581897
> >
> > ok, thanks for the background, but still, squashing doesn't mean changi=
ng
> > authorship and Christian has probably also warned you beforehand :-)
>
> Did it occure to anybody to look at these two patches for a second
> before writing long essays about that's right and not? Because Patch
> "one" is incomplete and the second patch is clearly doing a "FIXUP"
> for the first. That's why they should be squashed. I do think, you'll
> be just ignored if you try to post these as-is with your signed-off
> on the linux-msm-arm. But then, why not give it a shot, this would
> make for some good laughs if it went through as-is.
>
> But from what I noticed, nobody did any of the requested perf
> testing. These are absolutely necessary because the switch
> from kpss-v1 to kpss-v2 clearly did have an big impact on the
>

Actually I've compared openssl benchmark (difference that you've mentioned)
between kpss-acc-v2 and this one - there's completely no difference that I
could notice. For example sha256 produces the same result. Here's
cortex-a7acc edition:
root@OpenWrt:~# openssl speed sha256
Doing sha256 for 3s on 16 size blocks: 859807 sha256's in 3.00s
Doing sha256 for 3s on 64 size blocks: 493458 sha256's in 3.00s
Doing sha256 for 3s on 256 size blocks: 219786 sha256's in 3.00s
Doing sha256 for 3s on 1024 size blocks: 68287 sha256's in 3.00s
Doing sha256 for 3s on 8192 size blocks: 9187 sha256's in 3.00s
Doing sha256 for 3s on 16384 size blocks: 4619 sha256's in 3.00s
OpenSSL 1.1.1b  26 Feb 2019
built on: Thu May 16 12:57:06 2019 UTC
options:bn(64,32) rc4(char) des(long) aes(partial) blowfish(ptr)
compiler: arm-openwrt-linux-muslgnueabi-gcc -fPIC -pthread
-Wa,--noexecstack -Wall -O3 -pipe -fno-caller-saves -fno-plt -fhonour-copts
-Wno-error=3Dunused-but-set-variable -Wno-error=3Dunused-result
-mfloat-abi=3Dhard -Wformat -Werror=3Dformat-security -fstack-protector
-D_FORTIFY_SOURCE=3D1 -Wl,-z,now -Wl,-z,relro -O3 -fpic -ffunction-sections
-fdata-sections -znow -zrelro -DOPENSSL_USE_NODELETE -DOPENSSL_PIC
-DOPENSSL_CPUID_OBJ -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_GF2m -DSHA1_ASM
-DSHA256_ASM -DSHA512_ASM -DKECCAK1600_ASM -DAES_ASM -DBSAES_ASM
-DGHASH_ASM -DECP_NISTZ256_ASM -DPOLY1305_ASM -DNDEBUG
-DOPENSSL_PREFER_CHACHA_OVER_GCM
The 'numbers' are in 1000s of bytes per second processed.
type             16 bytes     64 bytes    256 bytes   1024 bytes   8192
bytes  16384 bytes
sha256            4585.64k    10527.10k    18755.07k    23308.63k
25086.63k    25225.90k

I'm not pasting the kpss-acc-v2 result because it doesn't differ.

But I indeed noticed 2x difference between oem firmware that is probably
still on kpss-acc-v1.

performance. So let's not break anything because of a possible
> incomplete patch (that might or might not require "ROM" support
> that might or might not be present on all devices).
>
> > "(Note: In some of the patches the "Author" in the commits is dissent1!
> So
> >   watch out before sending them off)"
> >
> > > Shouldn't the dev send the patch directly to me in order to be able t=
o
> post
> > > it on his behalf, like openwrt submitting patches guideline describes=
?
> >
> > From the kernel docs[1]:
> >
> > "The contribution is based upon previous work that, to the best of my
> >  knowledge, is covered under an appropriate open source license and I
> have the
> >  right under that license to submit that work with modifications, wheth=
er
> >  created in whole or in part by me, under the same open source license
> (unless
> >  I am permitted to submit under a different license), as indicated in
> the file;"
> >
> > so in short, kernel is covered by GPLv2 which allows you to do this if
> you
> > retain the authorship.
> The other aspect of this is that you can also "offload" some of the blame
> with retaining the original authorship if the patch goes sour. Because as
> you have seen even the benight 32KHz (32000Hz vs 32768Hz) non-issue
> (since it gets "rounded down" by the qcom-clk to 32000 see kernel debug)
> can be a hot topic with conflicting "facts". Simply because we don't know
> how the clock count is attained. If it's an external osc then it's probab=
ly
> the "round" 32768 Hz, but if this sleep clock is generated from the 48 MH=
z
> Osc reference (which we know is there, because these osc are big enough t=
o
> be spotted by looking at the PCB) then a "odd" 32000Hz is possible.
>
> (That said, the highres timer fix seems to be definitely a winner.
> I'm glad that you spotted it).
>
> Regrads,
> Christian
>
>
>

--000000000000a48adf05891bc0d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D0=BF=D1=82, 17 =D0=BC=D0=B0=D1=8F 2019 =D0=B3., 23:1=
8 Christian Lamparter &lt;<a href=3D"mailto:chunkeey@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">chunkeey@gmail.com</a>&gt;:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">On Wednesday, May 15, 2019 9:35:28 PM CEST Petr =C5=A0te=
tiar wrote:<br>
&gt; =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB &lt;<a href=3D"mailto:be.dissent@gmail.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">be.dissent@gmail.com</=
a>&gt; [2019-05-15 22:14:41]:<br>
&gt; <br>
&gt; &gt; Not a problem, actually, but I&#39;ve been suggested to squash th=
em :)<br>
&gt; &gt; <a href=3D"https://github.com/openwrt/openwrt/pull/2043#issuecomm=
ent-491581897" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">h=
ttps://github.com/openwrt/openwrt/pull/2043#issuecomment-491581897</a><br>
&gt; <br>
&gt; ok, thanks for the background, but still, squashing doesn&#39;t mean c=
hanging<br>
&gt; authorship and Christian has probably also warned you beforehand :-)<b=
r>
<br>
Did it occure to anybody to look at these two patches for a second<br>
before writing long essays about that&#39;s right and not? Because Patch<br=
>
&quot;one&quot; is incomplete and the second patch is clearly doing a &quot=
;FIXUP&quot;<br>
for the first. That&#39;s why they should be squashed. I do think, you&#39;=
ll<br>
be just ignored if you try to post these as-is with your signed-off<br>
on the linux-msm-arm. But then, why not give it a shot, this would<br>
make for some good laughs if it went through as-is.<br>
<br>
But from what I noticed, nobody did any of the requested perf<br>
testing. These are absolutely necessary because the switch<br>
from kpss-v1 to kpss-v2 clearly did have an big impact on the<br></blockquo=
te></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Actually I&#39=
;ve compared openssl benchmark (difference that you&#39;ve mentioned) betwe=
en kpss-acc-v2 and this one - there&#39;s completely no difference that I c=
ould notice. For example sha256 produces the same result. Here&#39;s cortex=
-a7acc edition:</div><div dir=3D"auto"><div dir=3D"auto">root@OpenWrt:~# op=
enssl speed sha256</div><div dir=3D"auto">Doing sha256 for 3s on 16 size bl=
ocks: 859807 sha256&#39;s in 3.00s</div><div dir=3D"auto">Doing sha256 for =
3s on 64 size blocks: 493458 sha256&#39;s in 3.00s</div><div dir=3D"auto">D=
oing sha256 for 3s on 256 size blocks: 219786 sha256&#39;s in 3.00s</div><d=
iv dir=3D"auto">Doing sha256 for 3s on 1024 size blocks: 68287 sha256&#39;s=
 in 3.00s</div><div dir=3D"auto">Doing sha256 for 3s on 8192 size blocks: 9=
187 sha256&#39;s in 3.00s</div><div dir=3D"auto">Doing sha256 for 3s on 163=
84 size blocks: 4619 sha256&#39;s in 3.00s</div><div dir=3D"auto">OpenSSL 1=
.1.1b=C2=A0 26 Feb 2019</div><div dir=3D"auto">built on: Thu May 16 12:57:0=
6 2019 UTC</div><div dir=3D"auto">options:bn(64,32) rc4(char) des(long) aes=
(partial) blowfish(ptr)=C2=A0</div><div dir=3D"auto">compiler: arm-openwrt-=
linux-muslgnueabi-gcc -fPIC -pthread -Wa,--noexecstack -Wall -O3 -pipe -fno=
-caller-saves -fno-plt -fhonour-copts -Wno-error=3Dunused-but-set-variable =
-Wno-error=3Dunused-result -mfloat-abi=3Dhard -Wformat -Werror=3Dformat-sec=
urity -fstack-protector -D_FORTIFY_SOURCE=3D1 -Wl,-z,now -Wl,-z,relro -O3 -=
fpic -ffunction-sections -fdata-sections -znow -zrelro -DOPENSSL_USE_NODELE=
TE -DOPENSSL_PIC -DOPENSSL_CPUID_OBJ -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM=
_GF2m -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DKECCAK1600_ASM -DAES_ASM -DBSA=
ES_ASM -DGHASH_ASM -DECP_NISTZ256_ASM -DPOLY1305_ASM -DNDEBUG -DOPENSSL_PRE=
FER_CHACHA_OVER_GCM</div><div dir=3D"auto">The &#39;numbers&#39; are in 100=
0s of bytes per second processed.</div><div dir=3D"auto">type=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016 bytes=C2=A0 =C2=A0 =C2=A064 bytes=C2=
=A0 =C2=A0 256 bytes=C2=A0 =C2=A01024 bytes=C2=A0 =C2=A08192 bytes=C2=A0 16=
384 bytes</div><div dir=3D"auto">sha256=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 4585.64k=C2=A0 =C2=A0 10527.10k=C2=A0 =C2=A0 18755.07k=C2=A0 =C2=A0 =
23308.63k=C2=A0 =C2=A0 25086.63k=C2=A0 =C2=A0 25225.90k</div></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">I&#39;m not pasting the kpss-acc-v2 r=
esult because it doesn&#39;t differ.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">But I indeed noticed 2x difference between oem firmware that i=
s probably still on kpss-acc-v1.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
performance. So let&#39;s not break anything because of a possible<br>
incomplete patch (that might or might not require &quot;ROM&quot; support<b=
r>
that might or might not be present on all devices).<br>
<br>
&gt; &quot;(Note: In some of the patches the &quot;Author&quot; in the comm=
its is dissent1! So<br>
&gt;=C2=A0 =C2=A0watch out before sending them off)&quot;<br>
&gt; <br>
&gt; &gt; Shouldn&#39;t the dev send the patch directly to me in order to b=
e able to post<br>
&gt; &gt; it on his behalf, like openwrt submitting patches guideline descr=
ibes?<br>
&gt; <br>
&gt; From the kernel docs[1]:<br>
&gt; <br>
&gt; &quot;The contribution is based upon previous work that, to the best o=
f my<br>
&gt;=C2=A0 knowledge, is covered under an appropriate open source license a=
nd I have the<br>
&gt;=C2=A0 right under that license to submit that work with modifications,=
 whether<br>
&gt;=C2=A0 created in whole or in part by me, under the same open source li=
cense (unless<br>
&gt;=C2=A0 I am permitted to submit under a different license), as indicate=
d in the file;&quot;<br>
&gt; <br>
&gt; so in short, kernel is covered by GPLv2 which allows you to do this if=
 you<br>
&gt; retain the authorship.<br>
The other aspect of this is that you can also &quot;offload&quot; some of t=
he blame<br>
with retaining the original authorship if the patch goes sour. Because as<b=
r>
you have seen even the benight 32KHz (32000Hz vs 32768Hz) non-issue<br>
(since it gets &quot;rounded down&quot; by the qcom-clk to 32000 see kernel=
 debug)<br>
can be a hot topic with conflicting &quot;facts&quot;. Simply because we do=
n&#39;t know<br>
how the clock count is attained. If it&#39;s an external osc then it&#39;s =
probably<br>
the &quot;round&quot; 32768 Hz, but if this sleep clock is generated from t=
he 48 MHz<br>
Osc reference (which we know is there, because these osc are big enough to<=
br>
be spotted by looking at the PCB) then a &quot;odd&quot; 32000Hz is possibl=
e.<br>
<br>
(That said, the highres timer fix seems to be definitely a winner. <br>
I&#39;m glad that you spotted it).<br>
<br>
Regrads,<br>
Christian<br>
<br>
<br>
</blockquote></div></div></div>

--000000000000a48adf05891bc0d1--


--===============3640515689648950426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3640515689648950426==--

