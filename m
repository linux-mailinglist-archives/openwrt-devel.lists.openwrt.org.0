Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58A912E127
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 01:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s6dhTfe0wSlPH4QALSgh16PqYwJJMXM/pp1c5piy5sg=; b=H44/4AWcZT2YuzK5dH6NcT+iA
	/CioyBMDR9E3QbqqZVCqWsopGns4cEQduZzKVPBrGtkc5jFHgpPy5ctyuO4kepxTu7+MKrCMOcKoe
	AYmO3sQwF2kNaPhL/OmYZ51vynBKV96bx0brVarVNJDfUFknjRVtc/uSDdSGqVnb9ROVTx/For/Mg
	lB5bd6RYDYxSr2T+yK7uP/Ihn2Aaea1Auat0vEo6e6z799cbkqVQqlGNKcoM9q86m9hbCr6klGpWW
	r8XRpUePUDg4JyWhb62oCfzTzTSq1FMvoWPHGW3tJ2uwIN/NvaltHgQN78KSUhBluIhaiOG4juxa4
	B0/oRBDgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imo5r-0004Hj-OG; Thu, 02 Jan 2020 00:12:03 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imo5l-0004H5-Od
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 00:11:59 +0000
Received: by mail-pj1-x1033.google.com with SMTP id r67so2563192pjb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 16:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fz99iZeU4qkoRNPQ22xHTWKV789Eq8lzEn/QKCGcoGI=;
 b=Vw7FdBhr4bJxJcMV8zE6ivIDt1pIauuJ7+6L081NNe3+eCG/2bkezaDf9qCus0BS3a
 g5n6zuV2UuZDwyUKyqadsVQoZUY2HTtTuM1QtILunTeWnFbO0xYy2dqZMtvi/r2Q+tik
 oYl661RsdlsYseH2fnbeS//cGeWOmfamitfRc1DbSGN/E8zqY9WnnbACPujVdnIgTMrK
 KKaoCQ/KASfqL9YAJuGrKBy6QwDKxMKu1lb1nmEnLT6ydzVUovCVlPiG4YnVaJGwnsQa
 1lRWb1aEoJmGBaLMVQGPfvvX889E2cb4oE6UiRKRoQbNwO0CmCEovQ81RQgNdmVkfNX/
 FIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fz99iZeU4qkoRNPQ22xHTWKV789Eq8lzEn/QKCGcoGI=;
 b=Hj8OSpjNqy5vI48RqFN6CoFVjlALsqjvnPiWAZo0KxozSbRbUdzTAx85fPTRpgPHKt
 eYKTzWt3l4vx5aNkR7OaneANqsSayehGDdY7IJr6dtmtoZYSwPHji8JMk8VXIpXJsEEd
 dPFJIZYlgdJis2tAHM4UaOiFQ4PvIxh8/BDCvLuy7/4Vv4HI6QbbxmvZ+BIao0vFgThb
 apOwp+772neKSY25FuZlTFnizF/OWs/RU0qr9zPydA7yf0qbpj65pYoYRoxkspdH7oBL
 /rGC1TuoFzuNL6KoJ+5LIVTGn6d29XcHafGrVKD4dg5sEYY+RJ+7nhfknPH7zL+RwjQU
 QZXA==
X-Gm-Message-State: APjAAAXtGcpibOGVHRIgFHB4SgQHcMwDqoikbL5HVEn4Z7E2dOW8GEBe
 k5MBlYTiiTDqtpCchho9VxZf6lz4/R/kQTvlwkhOcMNCqV8=
X-Google-Smtp-Source: APXvYqyBOd/YLSF4RdguFF4rC7O6WwGr4Z5qhRUgx9Xh9MynfuxzMUt3d1BVzSgxErvrM5GejcsyM8g2+0imGosaIr8=
X-Received: by 2002:a0c:f8ce:: with SMTP id h14mr60848655qvo.91.1577923509295; 
 Wed, 01 Jan 2020 16:05:09 -0800 (PST)
MIME-Version: 1.0
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <58c97e81-f7bc-f12b-9f1e-d59a086fafc7@hauke-m.de>
In-Reply-To: <58c97e81-f7bc-f12b-9f1e-d59a086fafc7@hauke-m.de>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Wed, 1 Jan 2020 21:04:46 -0300
Message-ID: <CAPxccB2+SKHwpZ53pvJZGzCXxBvpMokzGoK-ZzkCA8CnJfLm8Q@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_161157_827114_D2C663C2 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============5162241252857551105=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5162241252857551105==
Content-Type: multipart/alternative; boundary="000000000000411f8a059b1cf2b6"

--000000000000411f8a059b1cf2b6
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 1, 2020 at 6:54 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:

> I will shift both releases (18.06.6 and 19.07.0 final) to Monday 6.
> January to get some security fixes in, please get your changes in till
> Saturday so we have some testing before.
>
> <snip>
I would suggest a cherry-pick from d5ede68f8b (wolfssl: bump to
4.3.0-stable)

It's a security update, and appears to make WPA3 Personal work using
wpad-wolfssl (mesh is still failing).

Cheers,

Eneas

--000000000000411f8a059b1cf2b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 1, 2020 at 6:54 PM Hauke Mehr=
tens &lt;<a href=3D"mailto:hauke@hauke-m.de">hauke@hauke-m.de</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I will shift b=
oth releases (18.06.6 and 19.07.0 final) to Monday 6.<br>
January to get some security fixes in, please get your changes in till<br>
Saturday so we have some testing before.<br><br></blockquote><div>&lt;snip&=
gt;</div><div>I would suggest a cherry-pick from=C2=A0d5ede68f8b (wolfssl: =
bump to 4.3.0-stable)</div><div><br></div><div>It&#39;s a security update, =
and appears to make WPA3 Personal work using wpad-wolfssl

 (mesh is still failing).</div><div><br></div><div>Cheers,</div><div><br></=
div><div>Eneas</div></div></div>

--000000000000411f8a059b1cf2b6--


--===============5162241252857551105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5162241252857551105==--

