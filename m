Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9722387
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 15:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OcrcALP+rmj59LMNedf/ElGo3TsVAmwOy1ddfTJ/ZKg=; b=t8+DBKfow57WHfDwRgW7EmWOV
	4fcx4XIg3mbeP6MRaPh3IwwwyM5Mq6zvXGfh5u1lA0TrllX5PpLbl4TlQ16FYmP4/xtHJ13ov3+Mt
	CKjd7mttFlUMILsU/60Qflpsdn4PMlvJVsDKqiKozXyZVPeKuVDD108/jVcc7nAPdVxXMlkOHBHQw
	DpGPiC4crgpCtx8vIBerCuDpaOdTRQ2wgEj+ZguKzTzaTZr8qMC/FxaBHg5JpMQNufN71s5kejmX+
	oOe9Zs6F/0qknkoU026FF6g0JrLZ8oi6DcGc2aIY/TnAMlWpPwif8S+akrlrKsECCy91Bni693pjC
	X4sOXY9/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRyx1-000583-IB; Sat, 18 May 2019 13:00:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRywv-00057b-7Z
 for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 13:00:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id m7so7625717ioa.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 May 2019 06:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lZh5dFGd6vuOtTYeCUTnE4BXBYgNQZw2bVm0i9dD4qs=;
 b=keAQ37p7deoXB4qtTtIPXMP2H4Si6zd8l8lYiKS3AFgrh/u2kdJrcdZhKfz1Ty9n9W
 /vXhccaSDtT3k3BsBBu/Wp5ULx/EEQPdR5Sx/ZaV4/BUSOLEWc53SC6Wrf/nrlUW019P
 ZpZp1q6QUnWYYwJwrebJz/vC533g0Hz12ZRIy8kaLIXiXO5Ati2LNYgL11295lpRv5bn
 J+gJ9g8plfUTwIX0j1MVr7bDKUuIRoGaRBPgUlO3eg+HSBRB3t2fiwsoxjw12EB2YgS9
 GluOMLj8y6sDIqqt5Y0fnHrzXdyCsvCLG8CIWB44op9MjkLysD8MXjppEMNhzjoPT8bD
 v5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZh5dFGd6vuOtTYeCUTnE4BXBYgNQZw2bVm0i9dD4qs=;
 b=WeyKBLWcwqU48ulCyehoNY7TiXQZ+F6CDpVmiC3O/Y9SVlMuuHUqPBn/Rd3Y564Fou
 6W5NoOJ0YBsbP5y1YxuO0qL/tN7L+XxD33vy4HXjHi0ZqTh0+BqcmjqZvEYMknMViUyV
 aLKDp3bsBQZO9QjHL/2a8jzsqJX6xVLA4AjmxrfjhqPAffvk+gilEYTmewDCa4Gb2FM0
 BWGEXe5JeZ1EqSNo9yE7sWGKE6fMeSwtFi+ki5kJngj6/qfFS0yEl02TLZc5qsSzxfDR
 ZG8jWT4SIEYG/xdq5f0yYtU2kIG1/IZrBih1HMBGrsxAriFNL0D7OTpZJB572xdIoYKZ
 PDdQ==
X-Gm-Message-State: APjAAAXORW2KDSoKY1GxPwb6rF92zNGx7K408Td+zk4KYM3sb2erAPZp
 Vns/JAaj2qxv6lq3afxLi5h1WJwB3wbTeyd0b5OLNA==
X-Google-Smtp-Source: APXvYqxWpGEa8uZfwuWO3XToKMCvelRMh+L2pWraUg+ro1LUsvVTBgz2J3HWiqpodZocFfgX87IZqAVWguoY/UgEnrE=
X-Received: by 2002:a6b:b415:: with SMTP id d21mr33406484iof.189.1558184423986; 
 Sat, 18 May 2019 06:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <1553868440-26476-1-git-send-email-ynezz@true.cz>
 <1553868440-26476-3-git-send-email-ynezz@true.cz>
 <96c7258d-c560-dc98-a8a5-15833c079062@nbd.name>
 <20190330064834.GL64121@meh.true.cz>
 <8cef1005-c914-aaa2-35c9-1b53233cff14@nbd.name>
 <20190331184139.GM64121@meh.true.cz>
 <86ff6e7a-4a15-2986-cde5-da120664536b@nbd.name>
 <91a4cc4a-47e2-35da-394d-df55712b3fdf@wwsnet.net>
 <20190401091255.GO64121@meh.true.cz>
 <0c7302c0-fff4-aad1-2200-d018b0d48af4@wwsnet.net>
 <20190401112526.GP64121@meh.true.cz>
In-Reply-To: <20190401112526.GP64121@meh.true.cz>
From: Jeffery To <jeffery.to@gmail.com>
Date: Sat, 18 May 2019 21:00:11 +0800
Message-ID: <CAJXyS=hL3zcvuScfxt4dnKU+4a0oiBKHOOGSieo06O40yBuxyg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_060029_298530_8BC31737 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/5] build: image: Add pad-to and
 pad-rootfs-squashfs helpers
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============0273099027734657771=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0273099027734657771==
Content-Type: multipart/alternative; boundary="000000000000161d490589291526"

--000000000000161d490589291526
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2019 at 7:25 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Jo-Philipp Wich <jo@mein.io> [2019-04-01 11:18:55]:
>
> > Instead of having one set of images a few MB larger, we have a complete=
ly
> > new set of larger images *and* the existing ones.
>
> I'm all in for having usable images out of the box, without any additiona=
l
> post-processing steps, but on the other hand I understand, that this migh=
t
> slow down noticeably some existing use cases.
>
> BTW, we're talking on x86 probably about additional 40M (~10M per each of=
 4
> subtargets) and 8 additional QEMU ready images.  On armvirt/malta we're
> going
> to produce(if agreed upon) padded images by default, so no difference
> there.
>

May I ask, is there consensus on how to approach this? (Apologies, I
haven't been following this thread very closely.)

Jeff

--000000000000161d490589291526
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Apr 1, 2019 at 7:25 PM Petr =C5=
=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Jo-Philipp Wich &lt;<a href=3D"mailto:jo@mein.io" target=3D"_bl=
ank">jo@mein.io</a>&gt; [2019-04-01 11:18:55]:<br>
<br>&gt; Instead of having one set of images a few MB larger, we have a com=
pletely<br>
&gt; new set of larger images *and* the existing ones.<br>
<br>
I&#39;m all in for having usable images out of the box, without any additio=
nal<br>
post-processing steps, but on the other hand I understand, that this might<=
br>
slow down noticeably some existing use cases.<br>
<br>
BTW, we&#39;re talking on x86 probably about additional 40M (~10M per each =
of 4<br>
subtargets) and 8 additional QEMU ready images.=C2=A0 On armvirt/malta we&#=
39;re going<br>
to produce(if agreed upon) padded images by default, so no difference there=
.<br></blockquote><div><br></div><div>May I ask, is there consensus on how =
to approach this? (Apologies, I haven&#39;t been following this thread very=
 closely.)</div><div><br></div><div>Jeff</div><div><br></div></div></div>

--000000000000161d490589291526--


--===============0273099027734657771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0273099027734657771==--

