Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A4A1444EB
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 20:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n6XdJPV57bkzhA1IDNhQo9gCN7zl2pfHfKToh98cork=; b=jZ8Dc4DYjCv/Y6cZMiJAn4jMf
	fPHYM8+nkvAHkPdBVFAZemgVyNqa4IaixXsu/Ayj0F87gM3U35rYSxM4uhmt66aPk0u4YLBvsKNT6
	3ZAPGWL2EuWDSdNsccwqVOH2mlRar2OGZcf13eNERHWaV4FyZZNXyo5rRXQELg9JNQdiMwSLETuGJ
	D/AMaTIdw7bJF7DwbMKuD5yNAePi7K5xDiLt69yZhaAx2XGvNWFlC4ch3S9MTC6w1l7V8cZabeMn3
	4YVAqqccNzpMkj2RncW9vVw7lA05i6QbGQMAwjTMmJWK2752q1+nSHWb/XOlQt5+MZ1zz9stWoZPm
	lL3km2w/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itz1D-0001yC-LH; Tue, 21 Jan 2020 19:16:55 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itz0u-0001w4-CS
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 19:16:42 +0000
Received: by mail-vs1-xe41.google.com with SMTP id t12so2584749vso.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 11:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C5nZ3Yb65vRvi5j/CY8dKbd49oHsEaxIcVzT7XEtBLk=;
 b=IN5NbRNJqqQK3AoqecbIUKSVbimxiQeDsiSA9R/CNJkCYf8Kxh4pH7FAQuBNZM3N83
 8nii/liqFF06/xYXvBG6ZLapzw0PpSKm2o5Lz41SaHw94HNjAZ9W1Aoo2lINqddCJnKB
 JbYsGiMlMFAK78nQ4dmIOU32KM1IMTu/lmn/FEpSMxhxD0gbsg2hiu9fsJb3/jsVWQ9/
 2+JHvGW36LpNmTWyA7jyIbz4qUoTV2kqhHRYlMc4mTF5k/sGr1IuRGU+DhlzpHcoJtro
 8vwVMfAOI48tpT2EFASpCLpd51hqWU6mMosz3bqYPkZhf/1b7gBRRXB20PwNbkzsXCq/
 nXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C5nZ3Yb65vRvi5j/CY8dKbd49oHsEaxIcVzT7XEtBLk=;
 b=GtpOxyF/2fxddu9ks7S0Z6NMOJ9VggVGG/YQUZ/EjSOvRFoAZIxB6fsYAVVjeGUjlq
 Ju596IVi20L18MM/SlzxnjPg4u7yueELX7lPLVUUWegC7RJbx2B5yhdEWA3Eq7ft7Bmn
 WuQQtTpgmXjUiWOLdNpNcDDfeAMHR51uzTnCf9IY7Dpwk1N+L544tr3lmMV0Q3X0EQ6w
 k5ZmLYcXWg3XqdCVyk4k+UpkDVgrUEnmCk57Mb8MHiwH88PZgNzjP+d8dj05edQyoCkG
 9yW7yZKh3Se5Vax1SjSE9cNkJGsKVjS89TWJ/oJ/tcwiYJ/12eyH/WjNqiaPmcREncPX
 i8iw==
X-Gm-Message-State: APjAAAWq0ANq7v0iAoShaQ/ahivvEIs23AnpDoSRC2MuICWPCpu20U+l
 t+iZhOpgzm/aNyXfLyzB68B/aa685TG8V1jeL8M=
X-Google-Smtp-Source: APXvYqxT1HRTqdE1FOkxqJn9B4xWWGpjcyozNVc3lfGSGePrUiSQ04hxRUrnzMruEPL0kLK4B4A5HWX4aBUPh77Enug=
X-Received: by 2002:a05:6102:a10:: with SMTP id
 t16mr219884vsa.130.1579634191345; 
 Tue, 21 Jan 2020 11:16:31 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
In-Reply-To: <20200121185716.GL69327@meh.true.cz>
From: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 20:15:55 +0100
Message-ID: <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_111636_427629_B0692BB6 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brunompena[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============2045244080707373150=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2045244080707373150==
Content-Type: multipart/alternative; boundary="000000000000d9adf5059cab3e88"

--000000000000d9adf5059cab3e88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr,

Thank you for reverting the patches.

I'm trying to replicate the issue but so far I haven't had any luck, and
just by looking at the code I'm not seeing where/what is could be breaking.

Regarding the upstream patch, that one is just an enabler (read: it only
extends the "mtd_add_partition" function but it does not add any code to
force the access mode on sub-partitions).
The reason for this is because this enforcement is done on the mtd parser
code that is OpenWrt specific and implemented via kernel patches (not
present on upstream).

Best regards,
Bruno Pena

On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Bruno Pena <brunompena@gmail.com> [2020-01-21 14:53:54]:
>
> Hi,
>
> > Based on the last comment from Steve (fstools patch was not reverted),
> I'm
> > not sure if that's the root cause.
>
> you need to find out, but that Daniel's remark seems legit to me, your
> patch
> likely changed the mtd device open order/flags.
>
> > The kernel patch (which when reverted makes rootfs_data writable again)
> > only enforces the parent mtd access mode on the sub-partitions.
>
> FYI I currently dont have time to fix that regression myself and since it=
s
> likely affecting a lot of users, so I've reverted those changes. I think,
> that
> this change is useful, so I'm still willing to merge it once fixed, no
> worries. Having some upstream feedback beforehand would be a plus.
>
> BTW it would be fair to inform upstream about this possible issue as well=
,
> so
> the patch wont get merged in its current state, unless its double checked
> (or
> just write them, that you're planning v2, so the patch is removed from
> their
> Patchwork).
>
> -- ynezz
>

--000000000000d9adf5059cab3e88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Petr,<div><br></div><div>Thank you for reverting the pa=
tches.</div><div><br></div><div>I&#39;m trying to replicate the issue but s=
o far I haven&#39;t had any luck, and just by looking at the code I&#39;m n=
ot seeing where/what is could be breaking.</div><div><br></div><div>Regardi=
ng the upstream patch, that one is just an enabler (read: it only extends t=
he &quot;mtd_add_partition&quot; function but it does not add any code to f=
orce the access=C2=A0mode on sub-partitions).</div><div>The reason for this=
 is because this enforcement is done on the mtd parser code that is OpenWrt=
 specific and implemented via kernel patches (not present on upstream).</di=
v><div><br></div><div>Best regards,</div><div>Bruno Pena</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 2=
1, 2020 at 7:57 PM Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">y=
nezz@true.cz</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Bruno Pena &lt;<a href=3D"mailto:brunompena@gmail.com" target=
=3D"_blank">brunompena@gmail.com</a>&gt; [2020-01-21 14:53:54]:<br>
<br>
Hi,<br>
<br>
&gt; Based on the last comment from Steve (fstools patch was not reverted),=
 I&#39;m<br>
&gt; not sure if that&#39;s the root cause.<br>
<br>
you need to find out, but that Daniel&#39;s remark seems legit to me, your =
patch<br>
likely changed the mtd device open order/flags.<br>
<br>
&gt; The kernel patch (which when reverted makes rootfs_data writable again=
)<br>
&gt; only enforces the parent mtd access mode on the sub-partitions.<br>
<br>
FYI I currently dont have time to fix that regression myself and since its<=
br>
likely affecting a lot of users, so I&#39;ve reverted those changes. I thin=
k, that<br>
this change is useful, so I&#39;m still willing to merge it once fixed, no<=
br>
worries. Having some upstream feedback beforehand would be a plus.<br>
<br>
BTW it would be fair to inform upstream about this possible issue as well, =
so<br>
the patch wont get merged in its current state, unless its double checked (=
or<br>
just write them, that you&#39;re planning v2, so the patch is removed from =
their<br>
Patchwork).<br>
<br>
-- ynezz<br>
</blockquote></div>

--000000000000d9adf5059cab3e88--


--===============2045244080707373150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2045244080707373150==--

