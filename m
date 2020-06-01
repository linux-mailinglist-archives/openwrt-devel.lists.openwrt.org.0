Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071BA1EA51A
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 15:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zTHzUsGWtsiaDYhcTtlhFjyI5xBMgIMKF1laId5rBBU=; b=ZXFsw8SxuC/CUkgTYdAJP9bSa
	RHmZt3b71ZUGEERSLWkryzgv8oDHt9aiHfTqkaPlLPKRW/HYJqYKTiBs5iwtLyaemhlgNwoxZXOX0
	S1FKd+4PVrYPBEu7fP2asbXPebIQHOs2VXQZNslpQ0d5TGUyozu3TxX/XnWQ+MDSQkMxxfrln6vhO
	FLoTxNT5m30NlMbwzfRAE2bEk8uRELNqokpzejDjNH9YRtZ2DOmbYSGuCo/64xIHH/7G1JXbQOClU
	qGxmIbwzqBbLnTKAmWTxptUSJY3Wtd9UzwfZVKcVqRfKLCoosdfMS67qC8Uq82JYxzt6Nz8eEUOwR
	R3GSnhvCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkfV-0006SA-0h; Mon, 01 Jun 2020 13:39:57 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkfO-0006RU-65
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 13:39:51 +0000
Received: by mail-io1-xd2e.google.com with SMTP id o5so6872475iow.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jun 2020 06:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EO2bFXuObiYDTH66Vui5p6s84wsuedk3kFWrypKOU3c=;
 b=WsRQpvVuiyKYyDv/JARIUS0FoF4DckBfdOEMcQ2hPBaZMk90vR89XhTaMUTVlcJ19E
 6OEjpmyqxOs877HVA+stIUEGuLS9KrdsQcc153EaS/lo6tELMdvJ4NlwGRwHJToN0PyV
 q4GyO4OHjNHrXe36Mxn1ImzGIGX1LMB4XLhMtJHjFxu5la6StEfbfY9So6dbulyXPk0W
 Mpgh9wpU3RCBRP+ylaFHXBiGU/Rl2/kfUkvqF9+a0ne0dMbCeH5LE3xqNQrSE+l4m7mR
 SvKF0RSdtInJuqgrOuHeYgb3C0cUQ4Z4NEawpDKFH/s8cjrwZY7hDHcltsD+QvZAI/zj
 frhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EO2bFXuObiYDTH66Vui5p6s84wsuedk3kFWrypKOU3c=;
 b=l290gSaH34Yws4ppl0f+jLeWohT2vf9BrKsqyLmuQ+u8fPt+dCAwKF4EfXKeUJ51Df
 l2p7pIrxuUUsV2Vk9OlhUNekST8WEOeiu5iZ8bFHPKrQyAfhlE6NfrI+fnJTY0/GglW+
 KVmU1sSwWaxKhqNmQIuhQdMmy3A5E7auBFewx3+r6m2AmoNeP6TEwVBYzqT/tShRJvMk
 7dgz24IjO5v+AM+FKolEif8xHXxxUBfWsTgvq1rQUhswiyNc/HEqHE3LNMOAXK2ZJu1+
 83LbURh6AVgggBaWG8Wvc+73vKluDhkIu6CyhYd9aMH1m8KwHcFrS+qNj8zHKwKNDhtu
 jzrQ==
X-Gm-Message-State: AOAM532n64tAO+l+ktWVq79okoHkrW+81f9tRqLEby4XBo6tvAtcgenb
 itfpbv5h4odIu9QUK2532Mij8b/CmiO4qVU3h/U=
X-Google-Smtp-Source: ABdhPJwQYS38ffc3+3l77pA3krWC2lwkRdq1EFZ+LJ+UjekcSyoXRyPIMYAfEnq5TP64kLt16tBIKTXu2LHLCniuAwE=
X-Received: by 2002:a6b:6211:: with SMTP id f17mr5105191iog.52.1591018788591; 
 Mon, 01 Jun 2020 06:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <0f48abf2ac872957d6a4a150ead39564053f2afc.1589716209.git.mschiffer@universe-factory.net>
 <79845b43-f39d-c215-e968-41b93eb00b65@universe-factory.net>
 <0890d3e5-a989-5b8d-f29a-54e62707715b@universe-factory.net>
 <20200601102121.GE58206@meh.true.cz>
In-Reply-To: <20200601102121.GE58206@meh.true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Mon, 1 Jun 2020 09:39:36 -0400
Message-ID: <CAOdf3grHpWgv5aOwWGE3t47SawcRT2Trs+VRo=oKM_7w08MTaw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, 
 Matthias Schiffer <mschiffer@universe-factory.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_063950_246091_46FA304A 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 4/4] build: use zstd for SDK and
 ImageBuilder tarballs
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============8561437703449412214=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8561437703449412214==
Content-Type: multipart/alternative; boundary="000000000000b99d6805a705edeb"

--000000000000b99d6805a705edeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr and Matthias

Le lun. 1 juin 2020 =C3=A0 06:21, Petr =C5=A0tetiar <ynezz@true.cz> a =C3=
=A9crit :

> Matthias Schiffer <mschiffer@universe-factory.net> [2020-05-31 11:08:47]:
>
> Hi,
>
> > For patch 4, I'd like to have an ACK from someone familiar with the
> buildbot
> > setup.
>
> Disclaimer: I'm Buildbot setup noob, just helping occasionally with the
> maintenance burden, but from my limited understanding it's not just about
> ACK,
> some additional work is needed:
>
>  1. Someone has to provide patches against Buildbot[1] repo with the zstd
>     naming changes
>  2. Someone has to build and publish updated Docker images for buildbot
> master/slave
>  3. Someone has to deploy this on machines under our control (having root
>     access), we need to notify owners of the buildslave machines to
> upgrade their
>     buildslaves to the updated Docker images built/published in step 2.
>

4. Fixup some of the feed repo CI
https://github.com/openwrt/packages/blob/master/.circleci/config.yml#L9
https://github.com/openwrt/telephony/blob/master/.circleci/config.yml#L9
(not sure the docker image has zstd, might also need to rebuild it)

Regards
Etienne


> I can probably help with 2. and 3., I would ideally done this with Buildb=
ot
> version bump which is in the works[1], so we don't bother people with
> buildslaves upgrades that often.
>
> 1. https://git.openwrt.org/?p=3Dbuildbot.git
> 2.
> https://git.openwrt.org/?p=3Dbuildbot.git;a=3Dshortlog;h=3Drefs/heads/bui=
ldbot-2.4.1
>
> -- ynezz
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000b99d6805a705edeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Petr and Matthias<br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 1 ju=
in 2020 =C3=A0=C2=A006:21, Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@tr=
ue.cz">ynezz@true.cz</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Matthias Schiffer &lt;<a href=3D"mailto:ms=
chiffer@universe-factory.net" target=3D"_blank">mschiffer@universe-factory.=
net</a>&gt; [2020-05-31 11:08:47]:<br>
<br>
Hi,<br>
<br>
&gt; For patch 4, I&#39;d like to have an ACK from someone familiar with th=
e buildbot<br>
&gt; setup.<br>
<br>
Disclaimer: I&#39;m Buildbot setup noob, just helping occasionally with the=
<br>
maintenance burden, but from my limited understanding it&#39;s not just abo=
ut ACK,<br>
some additional work is needed:<br>
<br>
=C2=A01. Someone has to provide patches against Buildbot[1] repo with the z=
std<br>
=C2=A0 =C2=A0 naming changes<br>
=C2=A02. Someone has to build and publish updated Docker images for buildbo=
t master/slave<br>
=C2=A03. Someone has to deploy this on machines under our control (having r=
oot<br>
=C2=A0 =C2=A0 access), we need to notify owners of the buildslave machines =
to upgrade their<br>
=C2=A0 =C2=A0 buildslaves to the updated Docker images built/published in s=
tep 2.<br></blockquote><div><br></div><div>4. Fixup some of the feed repo C=
I</div><div><a href=3D"https://github.com/openwrt/packages/blob/master/.cir=
cleci/config.yml#L9">https://github.com/openwrt/packages/blob/master/.circl=
eci/config.yml#L9</a></div><div><a href=3D"https://github.com/openwrt/telep=
hony/blob/master/.circleci/config.yml#L9">https://github.com/openwrt/teleph=
ony/blob/master/.circleci/config.yml#L9</a></div><div>(not sure the docker =
image has zstd, might also need to rebuild it)</div><div><br></div><div>Reg=
ards</div><div>Etienne<br></div><div><br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
<br>
I can probably help with 2. and 3., I would ideally done this with Buildbot=
<br>
version bump which is in the works[1], so we don&#39;t bother people with<b=
r>
buildslaves upgrades that often.<br>
<br>
1. <a href=3D"https://git.openwrt.org/?p=3Dbuildbot.git" rel=3D"noreferrer"=
 target=3D"_blank">https://git.openwrt.org/?p=3Dbuildbot.git</a><br>
2. <a href=3D"https://git.openwrt.org/?p=3Dbuildbot.git;a=3Dshortlog;h=3Dre=
fs/heads/buildbot-2.4.1" rel=3D"noreferrer" target=3D"_blank">https://git.o=
penwrt.org/?p=3Dbuildbot.git;a=3Dshortlog;h=3Drefs/heads/buildbot-2.4.1</a>=
<br>
<br>
-- ynezz<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--000000000000b99d6805a705edeb--


--===============8561437703449412214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8561437703449412214==--

