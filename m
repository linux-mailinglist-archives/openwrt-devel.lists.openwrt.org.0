Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BAD110CF
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 02:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=me+8ToktRfS3FnWpUSG693f7kYvn0mdv4w4kPNE33XA=; b=UaFCaCgCMlCEoHLgr/IFUB/pt
	VXMEFrTQoADNV4dhN0jxS9VTPeRxpLmTdME81XtlBDhKmgwZ1BZgTVWGIuKRsazs8F4tp1xTG4For
	Ch+y3c+lXqFbeUnJKAzapa2/C049toTq6wWqu+En+ZGMfeoheVcLRzOljO+etNgsQbnUSB4DgiGai
	J+A8EoDgsZIqGM/v8TTGN33WBe48mHxgMuZN7N16ruCtd/eyhSMIm3cYGfivMykm6fVY3iax11Odv
	CaWVBzKVmTWNL4RmbWrjG2REWvq+mwk0MDQ5u3fLU6ukMCVpuHHI4puysyC8F40mibLgjjYdblk91
	iH1U/yieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLzz1-0004Yd-33; Thu, 02 May 2019 00:53:55 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLzyu-0004YK-0c
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 00:53:49 +0000
Received: by mail-oi1-x229.google.com with SMTP id y64so409016oia.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 17:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=D9X0FAC+6lzsFbJU2TNeD0pFFuBc81mFHk3DCo8ShAU=;
 b=CERYahLNgh04aM70vRRK3BmU7r3+blYsyZZ6VJ2gxJrr7ZjxNGKh74QwozlFOrsAx8
 7xgorruDewF5892JTUIDMywAq/GuCBmaR0klGNuq7J1xh6lVUeBVDEIiehqOT4c6a6o3
 Ct7aN3uSmkfP+50/wxz43kYm3gJFk/4BypSTKpIknmp7uVG0NGvKIEJ9fc5Eeu4WiFgp
 IdApiNvwEOCMB5cp/Txx0f1K50LQDuFBLfp0BnVXqPM4iiH7swDpvRtLvGbevG4JFrZa
 TarwF4p00gs9WNL1pL7MB5WkKqzTeUogRL0/8aqha/plx7eYCNoXzjfDqquglE0qzZN8
 VztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=D9X0FAC+6lzsFbJU2TNeD0pFFuBc81mFHk3DCo8ShAU=;
 b=Y4wDcxS2KICDDMIBqB4JcFBkBqNCR/KQjZzizJWkDs5+jfE+NWJEs+SQ2VcDqCB17c
 X8h/zRiOKps8HzcLRZh8EN4h+s/9Cbuyo3b0iyWsUBjI2/4hYlKxL+UJcAsPN7sIENEB
 OXQuuLgtSNvYayfkQ5IQyxSS3WY7trEVLNuLtCL144DSfh+Krc8wHid4XzMHaoViU1Xl
 KF2pYjwvh+rWJPY+Dob7e6oS9V/vOCmljPsqhTYb6veZuP2atWgEMYIv9vNFDQBBZgw0
 +UZHc3YaxT75CnDrPPttmA4smzV/PJqU5BRYfIAURtv8MPVgfF5oPohzdQsKVV9FT20H
 3L8g==
X-Gm-Message-State: APjAAAXhdiVqQd6wbkt8JhRTSaAwOXLYtF3OYN1EG9utn2oIuh1BL/4o
 hPDy5M73x5v7r11Qhzq2MZSnwxQwxiQ6efU1TT4=
X-Google-Smtp-Source: APXvYqwyMsyXpFXNK9Oc/s71xX2n8RldZY9L5USBfJxqphk/6nb4ugp7bhX8wsErMnXkQqp54weBHMgMy0pzzZkndoI=
X-Received: by 2002:aca:afd3:: with SMTP id y202mr756958oie.26.1556758424946; 
 Wed, 01 May 2019 17:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdZiK+CVwMjE9Vh70Pn_FNMbVpd95sj7CWxj9FNVDGWbvw@mail.gmail.com>
 <BN7PR08MB6003771629BC366B9F3D8FFAAE3B0@BN7PR08MB6003.namprd08.prod.outlook.com>
In-Reply-To: <BN7PR08MB6003771629BC366B9F3D8FFAAE3B0@BN7PR08MB6003.namprd08.prod.outlook.com>
From: Boris Krasnovskiy <borkra@gmail.com>
Date: Wed, 1 May 2019 20:53:34 -0400
Message-ID: <CAEjdZ08kk3X-qU_GaD5NncBuKjLSa+oNONtJKD5Xb_drbTDAtQ@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_175348_087651_72A2D336 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (borkra[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Commit 8dcc1087602e breaks FA526 (Gemini)
 compile
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
Content-Type: multipart/mixed; boundary="===============3831395800840633132=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3831395800840633132==
Content-Type: multipart/alternative; boundary="000000000000eb8ce90587dd1040"

--000000000000eb8ce90587dd1040
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

I did check generated toolchain defaults. They seem correct.
As such I believe issue is with one of the packages.
Extra information like crash log could help to determine which one.

Here are the generated toolchain defaults for gimeni:

The following options are target specific:
  -mabi=3D                      aapcs-linux
  -mabort-on-noreturn          [disabled]
  -mandroid                    [disabled]
  -mapcs                      [disabled]
  -mapcs-frame                [disabled]
  -mapcs-reentrant            [disabled]
  -mapcs-stack-check          [disabled]
  -march=3D                      armv4
  -marm                        [enabled]
  -masm-syntax-unified        [disabled]
  -mbe32                      [enabled]
  -mbe8                        [disabled]
  -mbig-endian                [disabled]
  -mbionic                    [disabled]
  -mbranch-cost=3D              -1
  -mcallee-super-interworking [disabled]
  -mcaller-super-interworking [disabled]
  -mcmse                      [disabled]
  -mcpu=3D                      fa526
  -mfix-cortex-m3-ldrd        [disabled]
  -mflip-thumb                [disabled]
  -mfloat-abi=3D                soft
  -mfp16-format=3D              none
  -mfpu=3D                      auto
  -mglibc                      [enabled]
  -mhard-float
  -mlittle-endian              [enabled]
  -mlong-calls                [disabled]
  -mmusl                      [disabled]
  -mneon-for-64bits            [disabled]
  -mpic-data-is-text-relative [enabled]
  -mpic-register=3D
  -mpoke-function-name        [disabled]
  -mprint-tune-info            [disabled]
  -mpure-code                  [disabled]
  -mrestrict-it                [disabled]
  -msched-prolog              [enabled]
  -msingle-pic-base            [disabled]
  -mslow-flash-data            [disabled]
  -msoft-float
  -mstructure-size-boundary=3D  8
  -mthumb                      [disabled]
  -mthumb-interwork            [disabled]
  -mtls-dialect=3D              gnu
  -mtp=3D                        soft
  -mtpcs-frame                [disabled]
  -mtpcs-leaf-frame            [disabled]
  -mtune=3D
  -muclibc                    [disabled]
  -munaligned-access          [disabled]
  -mvectorize-with-neon-double [disabled]
  -mvectorize-with-neon-quad  [enabled]
  -mword-relocations          [disabled]



On Wed, May 1, 2019 at 6:30 PM Boris Krasnovskiy <borkra@gmail.com> wrote:

> Hi Linus,
>
>
>
> I do not see anything wrong for your target. And I do not have any Gemini
> devices.
>
>
>
> Crash during init that you can see, is pretty far along in the boot
> process, so toolchain likely correct.
>
>
>
> Maybe an issue with some packages=E2=80=A6
>
>
>
> You can run =E2=80=9C gcc -Q --help=3Dtarget=E2=80=9D on the compiled cro=
ss toolchain and
> check if default settings are correct, or post the output.
>
>
>
> Can you send us the crash log?
>
>
>
> Thank you,
> Boris Krasnovskiy
>
>
> ------------------------------
> *From:* Linus Walleij <linus.walleij@linaro.org>
> *Sent:* Wednesday, May 1, 2019 6:08:11 PM
> *To:* Boris Krasnovskiy; OpenWrt Development List
> *Subject:* Commit 8dcc1087602e breaks FA526 (Gemini) compile
>
> Hi Boris & friends,
>
> commit 8dcc1087602e2dd606e4f6e81a06aee62cfd4f4c
> "toolchain: ARM: Fix toolchain compilation for gcc 8.x"
> regresses the Gemini (FA526-based).
>
> I cannot quite see how. I noticed init crashed with the latest
> OpenWrt codebase and bisected it down to this commit.
>
> Before the commit include/target.mk has:
>
> ifneq ($(findstring arm,$(ARCH)),)
>  ....
>  CPU_CFLAGS_fa526 =3D -mcpu=3Dfa526
>  ....
>  ifeq ($(CONFIG_SOFT_FLOAT),)
>     ....
>
> After in toolchain/gcc/common.mk we have:
>
> ifeq ($(CONFIG_arm),y)
> CC_CONFIGURE+=3D \
>        --with-cpu=3D$(word 1, $(subst +," ,$(CONFIG_CPU_TYPE)))
>  ....
>  ifneq ($(CONFIG_SOFT_FLOAT),y)
>     GCC_CONFIGURE+=3D \
>                --with-fpu=3D$(word 2, $(subst +, ",$(CONFIG_CPU_TYPE)))
>                --with-float=3Dhard
>
> It's a bit terse so I cannot really make this out :/
>
> Relevant stuff from my .config is:
> CONFIG_CPU_TYPE=3D"fa526"
> CONFIG_arm=3Dy
> CONFIG_ARCH=3D"arm"
> CONFIG_SOFT_FLOAT=3Dy
>
> Any hints?
>
> Yours,
> Linus Walleij
>


--=20
Thank you,
Boris Krasnovskiy

--000000000000eb8ce90587dd1040
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Linus,<div><br></div><div>I did check =
generated toolchain defaults. They seem correct.=C2=A0</div><div>As such I =
believe issue is with one of the packages.=C2=A0</div><div>Extra informatio=
n like crash log could help to determine which one.</div><div><br></div><di=
v>Here are the generated toolchain defaults for gimeni:</div><div><br></div=
><div><div>The following options are target specific:</div><div>=C2=A0 -mab=
i=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 <span style=3D"white-space:pre">		</span>aapcs-linux</div><div>=C2=
=A0 -mabort-on-noreturn=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"whi=
te-space:pre">		</span>[disabled]</div><div>=C2=A0 -mandroid=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"white=
-space:pre">		</span>[disabled]</div><div>=C2=A0 -mapcs=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"whi=
te-space:pre">		</span>[disabled]</div><div>=C2=A0 -mapcs-frame=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pr=
e">		</span>[disabled]</div><div>=C2=A0 -mapcs-reentrant=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[disabled=
]</div><div>=C2=A0 -mapcs-stack-check=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <sp=
an style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -march=3D=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<span style=3D"white-space:pre">		</span>armv4</div><div>=C2=A0 -marm=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0<span style=3D"white-space:pre">		</span>[enabled]</div><div>=C2=A0 -=
masm-syntax-unified=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:p=
re">		</span>[disabled]</div><div>=C2=A0 -mbe32=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space=
:pre">		</span>[enabled]</div><div>=C2=A0 -mbe8=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"white=
-space:pre">		</span>[disabled]</div><div>=C2=A0 -mbig-endian=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">	=
	</span>[disabled]</div><div>=C2=A0 -mbionic=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</=
span>[disabled]</div><div>=C2=A0 -mbranch-cost=3D=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>-1</div><=
div>=C2=A0 -mcallee-super-interworking <span style=3D"white-space:pre">		</=
span>[disabled]</div><div>=C2=A0 -mcaller-super-interworking <span style=3D=
"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mcmse=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=
=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mcpu=3D=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span=
 style=3D"white-space:pre">		</span>fa526</div><div>=C2=A0 -mfix-cortex-m3-=
ldrd=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[d=
isabled]</div><div>=C2=A0 -mflip-thumb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[disabled]</d=
iv><div>=C2=A0 -mfloat-abi=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <span style=3D"white-space:pre">		</span>soft</div><div>=C2=A0 -=
mfp16-format=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=
=3D"white-space:pre">		</span>none</div><div>=C2=A0 -mfpu=3D=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=
=3D"white-space:pre">		</span>auto</div><div>=C2=A0 -mglibc=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=
=3D"white-space:pre">		</span>[enabled]</div><div>=C2=A0 -mhard-float=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-spac=
e:pre">		</span></div><div>=C2=A0 -mlittle-endian=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"white-space:pre">		</span>[enabled]<=
/div><div>=C2=A0 -mlong-calls=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[disabled]</div><div>=
=C2=A0 -mmusl=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[disabled]</div><di=
v>=C2=A0 -mneon-for-64bits=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span st=
yle=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mpic-data-is-=
text-relative <span style=3D"white-space:pre">		</span>[enabled]</div><div>=
=C2=A0 -mpic-register=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<sp=
an style=3D"white-space:pre">		</span></div><div>=C2=A0 -mpoke-function-nam=
e=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[disa=
bled]</div><div>=C2=A0 -mprint-tune-info=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0<span style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 =
-mpure-code=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<s=
pan style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mrestri=
ct-it=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"=
white-space:pre">		</span>[disabled]</div><div>=C2=A0 -msched-prolog=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">	=
	</span>[enabled]</div><div>=C2=A0 -msingle-pic-base=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<span style=3D"white-space:pre">		</span>[disabled]</di=
v><div>=C2=A0 -mslow-flash-data=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<sp=
an style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -msoft-fl=
oat=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"w=
hite-space:pre">		</span></div><div>=C2=A0 -mstructure-size-boundary=3D=C2=
=A0 <span style=3D"white-space:pre">		</span>8</div><div>=C2=A0 -mthumb=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<s=
pan style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mthumb-=
interwork=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"white-spac=
e:pre">		</span>[disabled]</div><div>=C2=A0 -mtls-dialect=3D=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span=
>gnu</div><div>=C2=A0 -mtp=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"white-space:pre">		</s=
pan>soft</div><div>=C2=A0 -mtpcs-frame=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">		</span>[disabled]</d=
iv><div>=C2=A0 -mtpcs-leaf-frame=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<s=
pan style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mtune=
=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0<span style=3D"white-space:pre">		</span></div><div>=C2=A0 -muclibc=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span=
 style=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -munaligned=
-access=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"white-space:pre">	=
	</span>[disabled]</div><div>=C2=A0 -mvectorize-with-neon-double <span styl=
e=3D"white-space:pre">		</span>[disabled]</div><div>=C2=A0 -mvectorize-with=
-neon-quad=C2=A0 <span style=3D"white-space:pre">		</span>[enabled]</div><d=
iv>=C2=A0 -mword-relocations=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=
=3D"white-space:pre">		</span>[disabled]</div></div><div><br></div><div><br=
></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, May 1, 2019 at 6:30 PM Boris Krasnovskiy &lt;<a href=
=3D"mailto:borkra@gmail.com">borkra@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">





<div>

<div lang=3D"EN-US">
<div class=3D"gmail-m_7993004021501858614x_WordSection1">
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">Hi Linus,</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">I do not see anything w=
rong for your target. And I do not have any Gemini devices.</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">Crash during init that =
you can see, is pretty far along in the boot process, so toolchain likely c=
orrect.
</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">Maybe an issue with som=
e packages=E2=80=A6</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">You can run =E2=80=9C <=
span style=3D"font-size:10pt;font-family:Consolas;color:rgb(68,68,68);backg=
round:rgb(247,247,247)">
gcc -Q --help=3Dtarget=E2=80=9D on the compiled cross toolchain and check i=
f default settings are correct, or post the output.</span></p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">Can you send us the cra=
sh log?</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">Thank you,<br>
Boris Krasnovskiy</p>
<p class=3D"gmail-m_7993004021501858614x_MsoNormal">=C2=A0</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_7993004021501858614x_divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Linus Walleij &lt;<a href=3D"mailto:linus.walleij@linaro.org" targe=
t=3D"_blank">linus.walleij@linaro.org</a>&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 6:08:11 PM<br>
<b>To:</b> Boris Krasnovskiy; OpenWrt Development List<br>
<b>Subject:</b> Commit 8dcc1087602e breaks FA526 (Gemini) compile</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt">
<div class=3D"gmail-m_7993004021501858614PlainText">Hi Boris &amp; friends,=
<br>
<br>
commit 8dcc1087602e2dd606e4f6e81a06aee62cfd4f4c<br>
&quot;toolchain: ARM: Fix toolchain compilation for gcc 8.x&quot;<br>
regresses the Gemini (FA526-based).<br>
<br>
I cannot quite see how. I noticed init crashed with the latest<br>
OpenWrt codebase and bisected it down to this commit.<br>
<br>
Before the commit include/<a href=3D"http://target.mk" target=3D"_blank">ta=
rget.mk</a> has:<br>
<br>
ifneq ($(findstring arm,$(ARCH)),)<br>
=C2=A0....<br>
=C2=A0CPU_CFLAGS_fa526 =3D -mcpu=3Dfa526<br>
=C2=A0....<br>
=C2=A0ifeq ($(CONFIG_SOFT_FLOAT),)<br>
=C2=A0=C2=A0=C2=A0 ....<br>
<br>
After in toolchain/gcc/<a href=3D"http://common.mk" target=3D"_blank">commo=
n.mk</a> we have:<br>
<br>
ifeq ($(CONFIG_arm),y)<br>
CC_CONFIGURE+=3D \<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-cpu=3D$(word 1, $(subst +,&quot=
; ,$(CONFIG_CPU_TYPE)))<br>
=C2=A0....<br>
=C2=A0ifneq ($(CONFIG_SOFT_FLOAT),y)<br>
=C2=A0=C2=A0=C2=A0 GCC_CONFIGURE+=3D \<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 --with-fpu=3D$(word 2, $(subst +, &quot;,$(CONFIG_CPU_TYPE)))<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 --with-float=3Dhard<br>
<br>
It&#39;s a bit terse so I cannot really make this out :/<br>
<br>
Relevant stuff from my .config is:<br>
CONFIG_CPU_TYPE=3D&quot;fa526&quot;<br>
CONFIG_arm=3Dy<br>
CONFIG_ARCH=3D&quot;arm&quot;<br>
CONFIG_SOFT_FLOAT=3Dy<br>
<br>
Any hints?<br>
<br>
Yours,<br>
Linus Walleij<br>
</div>
</span></font>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Thank you,<br>Boris Krasnovskiy</div>

--000000000000eb8ce90587dd1040--


--===============3831395800840633132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3831395800840633132==--

