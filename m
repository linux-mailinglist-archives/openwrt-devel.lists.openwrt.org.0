Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E891C0F23
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 10:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aUPojpohsUFtSmK9XKAk4wLW9j7zvkDLeSHmbyDe9zs=; b=aAVWJ8X6TLu5ngMtwMlQRD/dB
	VCh2+8CO/k1ReFNdTqOSZ50R/f2pOMYH80jw8cMAYLS4QQJeKPAzfKBNNhbvRjQOB0h+RGOCtm7ZO
	mBae+LDiV3Bk1cOIQ33j6R+R1LJ2PONXm3HWpxzdH3sjL6MhzVAvRBWpHPim9ItBffLNbJWZP+Fpj
	HLolgVwB3BdC2WQzX/paVUB4aiScFhSJFZx/C7UvgTEvZ1hc89ALluKze7QpihE2CMIPSOpUvtwYG
	Kk5rM02azy8UmRzJBT9npMBIG0M7b/U/jn964qOFqRMZVhLS6pq2pbohUTVU7yJdBPqqqYEDdh9Jh
	Ak12FIbDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQj0-0007sM-CZ; Fri, 01 May 2020 08:08:46 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQiu-0007rD-7z
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 08:08:41 +0000
Received: by mail-qk1-x734.google.com with SMTP id l78so8582332qke.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 01:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hnJNGCiiccmSM7Aj/GpjOkJQLMv536xXwglJZVAJpec=;
 b=G6r/PwOsb0R1V9aO8moMHlHPO3OCd43RubLYIa9kIZfTsL1nTYVZMocDtfketm1pxP
 aw18HyOOQAcV+6ExHVfA6weA/hObjWEkbKwGF2CRRNZJpOSz+RU6Wvx5mqEp2gVT4vy3
 1mNvMN9vSwRYECc+CUwyAGZrL28lsvGPju3YNPYFNzqohBk020mChXl7KyKoSL3w8yLT
 gK9vQv+jaPY7ESxYAR1FUaOplN4hAgHpnnZFfwlcw4EgxsqpgE7eu0kcyc/PEYxgfcQZ
 Scbs/MP7IiSVcmF8jIkv3MgoywoCi4Ms1YfkeWrHveCdJavbJS9uEdNfwi2ETr+rTWwm
 Nqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hnJNGCiiccmSM7Aj/GpjOkJQLMv536xXwglJZVAJpec=;
 b=G7+9UQroLiRZoOQaNia4VVo84ZD1NG2+Qd+5y0RQLIsGU/leKshw4WCzBsjkc1cMKe
 UwveB2HTbrNHNGuWTId73My+fT5M2b5fRCwUop3yEHHCiyDg2AUyIjXCVjYyGXDhxi9a
 z+4dhgzxQ6ECUqBkp47hIQIlyAtk6FJj7xVCv4S3jhN3EK6zrIkpC3CYxMuMEPoPBSZA
 5PoNtVGBYf4IVm7Og4thpxo4mD74gw4pRORfdvSDBXKj/FeaAV/8c3rf99ArYgjyIkrL
 Bmpa6W32bq6Z3EnrJhGVGWOpmrCDCsuwwo79mcGPtLIBxoHc0jbubN6g1VPoId6NfsWY
 VJHA==
X-Gm-Message-State: AGi0PubYD4sW53bgO91xm0llY2NKm8qY7gVkCNkAkhFOcQyTSAhMEufN
 HyxvOrCKu/i5CRNuUFZudB7NDWqKlEjWdUUDDrE=
X-Google-Smtp-Source: APiQypJGTMbTFtgEU9Ryqo0hcPJ6QIGLufeDSjXliy+IZ3jPfhMAmJNal7tFhCDQlQUAmGQg8ljyH0mmPvILtQQJ/js=
X-Received: by 2002:a37:8606:: with SMTP id i6mr678963qkd.282.1588320517646;
 Fri, 01 May 2020 01:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <04320ECA-7526-4925-AB0A-A4211FE95852@redfish-solutions.com>
In-Reply-To: <04320ECA-7526-4925-AB0A-A4211FE95852@redfish-solutions.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 1 May 2020 10:08:26 +0200
Message-ID: <CAJLcKsG8ocNs7oO4xg-PKF2c-toiCE86eMZOF=217tiX9eJa8w@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_010840_309081_BA5C9726 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Routes disappearing when ip "ip link set down
 ethX" and bring it up again
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6184791079209368060=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6184791079209368060==
Content-Type: multipart/alternative; boundary="0000000000003e6cef05a491b072"

--0000000000003e6cef05a491b072
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 9:32 PM Philip Prindeville <
philipp_subx@redfish-solutions.com> wrote:

> Hi all,
>
> I noticed that if eth5 is my =E2=80=9Cwan=E2=80=9D interface and I do:
>
> # ip link set down dev eth5
>
> make some firewall changes, then do:
>
> # ip link set up dev eth5
>
> then my routes don=E2=80=99t get repopulated.


> I thought that procd installed triggers so that if an interface flaps,
> then a helper would run (in this case the network helper).
>
Netifd is responsible for management of IP routes/addresses; so if a link
is forced down by an external command netifd will not be aware and will not
re-install IP routes/addresses
You can easily bring down an interface by using ifdown which is handled by
netifd

Hans

>
> Is this not happening?
>
> Thanks,
>
> -Philip
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000003e6cef05a491b072
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 30, 2020 at 9:32 PM Phili=
p Prindeville &lt;<a href=3D"mailto:philipp_subx@redfish-solutions.com">phi=
lipp_subx@redfish-solutions.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi all,<br>
<br>
I noticed that if eth5 is my =E2=80=9Cwan=E2=80=9D interface and I do:<br>
<br>
# ip link set down dev eth5<br>
<br>
make some firewall changes, then do:<br>
<br>
# ip link set up dev eth5<br>
<br>
then my routes don=E2=80=99t get repopulated.=C2=A0</blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
<br>
I thought that procd installed triggers so that if an interface flaps, then=
 a helper would run (in this case the network helper).<br></blockquote><div=
>Netifd is responsible for management of IP routes/addresses; so if a link =
is forced down by an external command netifd will not be aware and will not=
 re-install IP routes/addresses</div><div>You can easily bring down an inte=
rface by using ifdown which is handled by netifd</div><div><br></div><div>H=
ans<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Is this not happening?<br>
<br>
Thanks,<br>
<br>
-Philip<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--0000000000003e6cef05a491b072--


--===============6184791079209368060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6184791079209368060==--

