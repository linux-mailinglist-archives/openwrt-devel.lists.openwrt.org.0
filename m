Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DF61BB411
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 04:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MjEgIXOnigjHr5M9U6oQ9EluseIJwIHfh0GxOPMGug8=; b=oO87WWZLPCaq4gqqLKolG05U3
	VlEjsGagkz46270utxZWbOkw5Yug6j2EiLfxQ5KoCXEEffTt6R40C/QVH0Uwileid3/5NHddcfDyP
	9UFFB9iIuiWBvNkn4whMaoKswdXRk2r1rZQ7+4FZTVayhdE7YfHKZg6TGUpZwUeWuUqDg99hNgnu5
	9I5C1aezjHFeuWJGVdkdQ2FWouH38Awo0GTzbOdmkTxIONbGSRMMtk7T6pOApdAQZRn9/s7vG5Zsz
	X9MJgsrTcg/YR08OSdXa+EaJJWNdDVDmueABunlkqVE3sr0kmgpnJw6YnovOG21X+D3AtbasxXTtY
	V8RucDcHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGBo-0002o7-Vu; Tue, 28 Apr 2020 02:41:40 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGBi-0002mr-PZ
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 02:41:36 +0000
Received: by mail-ej1-x631.google.com with SMTP id gr25so15928655ejb.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 19:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/8SmfbUj4NoNQ1N4f08uKlvn8ag/y3SpLZcv/Fi9TGY=;
 b=uwbdLjZOW0D0jzOajtB6Va/2RK+8ICTU8FQhNn1m+LdVMWsQXRJKJnGii/K7yM8rnG
 rzMu7M4l1e9gCZzvAzVyEr6QNWtgvSzrmED+c5C05OAOiTt9Fb5VLRYNg+8gkh8INR5C
 PLCwDaUwrty56ni9J0s5LTwjZehZJMlNig++asvRXuDx4A8zCp00pofnXeEtyPFwDkT7
 QiZ7KgANTnsYjwGsxbrwzS2favBzC0wRecRQmsB6SNrDn6kdW9+k9A+XHoHHkfkbz+9Y
 nWRmLI3J2aAANUiUDVtlXokzufXYORshp5SbiqpiPij4HO5d0QsaE2qdjR7v5Phloh12
 sk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/8SmfbUj4NoNQ1N4f08uKlvn8ag/y3SpLZcv/Fi9TGY=;
 b=EpCLYPS6VmrOWj7Rfw2xwqwEuXaay/ytO3mNBD7lzNEd9NmOVaLdJbWoWLlw2phtZD
 j4knA7tWtKBmqdxPSs/dDMawolcwzaCogt0E/YSdiiLi4T+PJuM9/nzHEMbGaCysWfUg
 b//KG2jpioirtb+4T32QYGEtIgYOySkLkevjmSjnok0J5UL9cWVi1donUhdJ3HPHzZpT
 yjtLUBr6XfyDl70YVc+pSF1mJ8ew6UWjTtLdydKgXKvGn0+yMLZzdoprdJXBPxcyB0XE
 UZeosoom53rjslZvWG4a1+v49oG8Sj7PTniYv+xjXNjSv/tiU8zqt9h/ZpVVhqk0ZUJY
 +OdQ==
X-Gm-Message-State: AGi0PuYtUMlL8H2iLuVCm6o6DCTb0orf242cfeBwd+4TUwI/PKOIHt1P
 V3LUX5BRgl/9t707LJ3cCRWCc6orQ3w/dp4hZFQ=
X-Google-Smtp-Source: APiQypKUb5iPZa9eEtbZPH0/LrjAvTou/A5Dt2+llcBBJn+URi1RpKStJLv+uryZA198qRhzlvbTYZskSkUGu7X1sk4=
X-Received: by 2002:a17:906:7383:: with SMTP id
 f3mr21723394ejl.197.1588041693281; 
 Mon, 27 Apr 2020 19:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <877dy1xfq3.fsf@miraculix.mork.no>
 <CABUTiXU2qhs4CCC4PVTHWj-j5k2VKz4GSqSxuSxNwPiVXnC4EA@mail.gmail.com>
In-Reply-To: <CABUTiXU2qhs4CCC4PVTHWj-j5k2VKz4GSqSxuSxNwPiVXnC4EA@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 28 Apr 2020 11:41:16 +0900
Message-ID: <CALYKT1gtcM8Z8Z5Dg=NN2MQJWWBot411qZfAD7LCRLD_4MC2sw@mail.gmail.com>
To: Bruno Antunes <baantunes@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_194134_830692_7A9674BD 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============8358929529984532630=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8358929529984532630==
Content-Type: multipart/alternative; boundary="00000000000004414b05a450c5ec"

--00000000000004414b05a450c5ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Bruno,

I want to share the informations you mentioned. I will check with my
company first and then if they let me do, I will share with you all.

Thank you.
Jeonghum

2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 11:53, =
Bruno Antunes <baantunes@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Hello Jeonghum,
> Can you share some details on the boards and modems you are using?
>
> Regards,
> Bruno
>
> On Mon, 27 Apr 2020 at 13:42, Bj=C3=B8rn Mork <bjorn@mork.no> wrote:
> >
> > Jeonghum Joh <oosaprogrammer@gmail.com> writes:
> >
> > > I am porting a 5G/LTE modem into OpenWRT.
> >
> > Follow the instructions for LTE modems.  A 5G modem is pretty much the
> > same wrt drivers and basic management.  At least for Qualcomm based
> > modems on a USB bus.  Have no experience with anything else.  The Intel
> > and Huawei modems are competely unknown to me, and most likely
> > unsupported for the forseeable future.  And I'm also blank on the magic
> > of Qualcomms PCIe interface. Qualcomm did work on a driver, but it's
> > been a long time since I saw any update on that.  I guess no one cares
> > enough.  SuperSpeed USB is fine for most users for now.
> >
> > Anyway, several X55 based modems are already supported out of the box i=
n
> > OpenWrt master.  There is no need to reinvent the wheel if you are usin=
g
> > one of those.
> >
> > You may obviously decide to implement your own alternative solutions,
> > like using some vendor software. But that will limit the user community
> > severely. At least until the solution attracts more users.  And
> > community support depends on users, which I believe is something you
> > should consider since you have ended up in this forum.  You are unlikel=
y
> > to find anyone here who have any experience with your particular vendor
> > software version.
> >
> > Personally, I am happy to give advice about anything regardless of
> > experience.  But the quality of that advice is probably a tiny bit
> > better when it is based on something I've tried myself.  Or maybe not?
> > Is probably bad in any case.
> >
> >
> > Bj=C3=B8rn
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000004414b05a450c5ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Bruno,<div><br></div><div>I want to share the inform=
ations you mentioned. I will check with my company first and then if they l=
et me do, I will share with you all.</div><div><br></div><div>Thank you.</d=
iv><div>Jeonghum</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=
=98=A4=ED=9B=84 11:53, Bruno Antunes &lt;<a href=3D"mailto:baantunes@gmail.=
com">baantunes@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Hello Jeonghum,<br>
Can you share some details on the boards and modems you are using?<br>
<br>
Regards,<br>
Bruno<br>
<br>
On Mon, 27 Apr 2020 at 13:42, Bj=C3=B8rn Mork &lt;<a href=3D"mailto:bjorn@m=
ork.no" target=3D"_blank">bjorn@mork.no</a>&gt; wrote:<br>
&gt;<br>
&gt; Jeonghum Joh &lt;<a href=3D"mailto:oosaprogrammer@gmail.com" target=3D=
"_blank">oosaprogrammer@gmail.com</a>&gt; writes:<br>
&gt;<br>
&gt; &gt; I am porting a 5G/LTE modem into OpenWRT.<br>
&gt;<br>
&gt; Follow the instructions for LTE modems.=C2=A0 A 5G modem is pretty muc=
h the<br>
&gt; same wrt drivers and basic management.=C2=A0 At least for Qualcomm bas=
ed<br>
&gt; modems on a USB bus.=C2=A0 Have no experience with anything else.=C2=
=A0 The Intel<br>
&gt; and Huawei modems are competely unknown to me, and most likely<br>
&gt; unsupported for the forseeable future.=C2=A0 And I&#39;m also blank on=
 the magic<br>
&gt; of Qualcomms PCIe interface. Qualcomm did work on a driver, but it&#39=
;s<br>
&gt; been a long time since I saw any update on that.=C2=A0 I guess no one =
cares<br>
&gt; enough.=C2=A0 SuperSpeed USB is fine for most users for now.<br>
&gt;<br>
&gt; Anyway, several X55 based modems are already supported out of the box =
in<br>
&gt; OpenWrt master.=C2=A0 There is no need to reinvent the wheel if you ar=
e using<br>
&gt; one of those.<br>
&gt;<br>
&gt; You may obviously decide to implement your own alternative solutions,<=
br>
&gt; like using some vendor software. But that will limit the user communit=
y<br>
&gt; severely. At least until the solution attracts more users.=C2=A0 And<b=
r>
&gt; community support depends on users, which I believe is something you<b=
r>
&gt; should consider since you have ended up in this forum.=C2=A0 You are u=
nlikely<br>
&gt; to find anyone here who have any experience with your particular vendo=
r<br>
&gt; software version.<br>
&gt;<br>
&gt; Personally, I am happy to give advice about anything regardless of<br>
&gt; experience.=C2=A0 But the quality of that advice is probably a tiny bi=
t<br>
&gt; better when it is based on something I&#39;ve tried myself.=C2=A0 Or m=
aybe not?<br>
&gt; Is probably bad in any case.<br>
&gt;<br>
&gt;<br>
&gt; Bj=C3=B8rn<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
</blockquote></div>

--00000000000004414b05a450c5ec--


--===============8358929529984532630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8358929529984532630==--

