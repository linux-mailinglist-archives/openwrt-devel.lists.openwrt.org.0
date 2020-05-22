Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B199C1DEF03
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 20:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=maOSO5YxE0bLkXRGi/h13emJqT0JhE8Ev24CfJ/03oY=; b=EWoWbsHobe0Uvee8Wmqu20tPf
	Mmvyg24ZE9vWfkJMH2yjQYUozrmnXeYVcFbK22GQEHdglD2XaYoMdH7Y90vmhUHq8LYLKH9XzAX2W
	qaIvmkfyiAd8OiIZUeRSx3XT5Cy4ibk2GMbC89lCMynDKyXIU/OGO6o827ZP7RrgtIceKEcda8L/z
	3fXb14xYGrTfb1p362LNP9ZSUBfMdVb/qJTxqSb+qD0w28XaOCX7fZ2/5HBaVldvin0sv9ORK6Po7
	oDsSRCvH2+ekmkN8DnWRqWrp1TJy44iZxuxmtUKpJKf6uBUuLJngKAdJNidKRUMNfiLiYSRjOgNGZ
	HIvd6iYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCDD-0000en-JK; Fri, 22 May 2020 18:16:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCD7-0000eR-B8
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 18:15:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id m18so13761162ljo.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 11:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D/JsjONGrgPwcn4a6e2GPqhTMiAIoQbMvBh+QPMGXsM=;
 b=nDNJG4XJG2lqgUS4bd9V4yZK6BiIsGbFKOZy+vlx3nE7X258n4h1StU7OkMFU6R1Il
 fX3bcn/Sx9ozlBIBihz6+MUrVd3b/H6+7kwkIikPizAB9moBXQlPCv3sD7HtnBXQM991
 r4W6NRZ+XdfqtI9L7Uubz5rDSc0FcbchT9Fxt+TWFE8JNjYndK7zxs/RaMv5wOHygMRU
 K8qDkM+u5qCnt1tkwdIA0DQ+GUMG+5FS9t2gFLUsQc8TvvfGdZTmbdxzPOpGaUseNCXc
 pxQ09Qsdt8bBKP74YcSayN39PfFP/9kjgpkpyFIZbyNQHP1rqHRgFnw682O2x6Nt4NBe
 9L7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D/JsjONGrgPwcn4a6e2GPqhTMiAIoQbMvBh+QPMGXsM=;
 b=O7QdmnKOV0ecnqtFhcMNv7lfdbJFUXy7FspFuBvpJ+so/n07IaW6qHVpoB3J23J90g
 ffq7iMydEW51BUB6w3kcqBNYPzlXPUSHGxDpSdlG6JKpIlrzXP1VTTyHcQF3tfs53eXl
 3IpOflkaGbja3677263MKi35MDKm+UdhN1znehtWgeW2/yP33EVIFsZbOCguzR7GnSyU
 O2iV1yZskhxce+iLa5PWurefXFNltgViEdq6pHIQm1wo9PIMIdMQaGrmDF2OKvlAuRFX
 QwlATnV5UHIb5Py2/imEyw95gERAkSXpLKClbiewTH2gnRt/+7IUzEFgVJJDjqkd7njK
 CPsA==
X-Gm-Message-State: AOAM530k3gqB8JCBJtgm8r5OBqUjMq8Q0Pu7fZiasHwU4/5KIV6F3qLC
 7PSYtHweJvLTBkPCNeztxPaWdRywjw0j6NyxJR8=
X-Google-Smtp-Source: ABdhPJwT1JUWMMC7+NbeozQYoSu1cepb7thpiOf7scNcZ9AFqiSlD2cr6EdKASx0N4hd5Rcqd0etke9SyAGJVNUwwP0=
X-Received: by 2002:a2e:7808:: with SMTP id t8mr6409614ljc.353.1590171355291; 
 Fri, 22 May 2020 11:15:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAK9yiZBMx2SRcA8-V5nOoa=XhF4QZM372EopshJUbmATctQgAw@mail.gmail.com>
 <016e01d63062$ca598140$5f0c83c0$@adrianschmutzler.de>
In-Reply-To: <016e01d63062$ca598140$5f0c83c0$@adrianschmutzler.de>
From: Olli Asikainen <olli.asikainen@gmail.com>
Date: Fri, 22 May 2020 21:15:44 +0300
Message-ID: <CAK9yiZCffBehf-RP9vT83wYw5ChmRXtdCVmtGDb5GNtobk0fUw@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_111557_382849_FBDBE64D 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olli.asikainen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: kernel: fix awake-rt305x-dwc2
 patch
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0710449614576927476=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0710449614576927476==
Content-Type: multipart/alternative; boundary="000000000000c3a67805a6409efa"

--000000000000c3a67805a6409efa
Content-Type: text/plain; charset="UTF-8"

Sure. I am a bit new to this, is there something I need to do?



On Fri, May 22, 2020 at 8:59 PM <mail@adrianschmutzler.de> wrote:

> > I can confirm that this change to awake-rt305x-dwc2-controller.patch
> fixes the USB hub initialization on WS-WR512N1. USB enumeration works
> properly after removing 0032-USB-dwc2-add-device_reset.patch, too.
>
> So, can you provide a Tested-by?
>

--000000000000c3a67805a6409efa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sure. I am a bit new to this, is there something I ne=
ed to do?</div><div><br></div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 22, 2020 at 8:59 P=
M &lt;<a href=3D"mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&=
gt; I can confirm that this change to awake-rt305x-dwc2-controller.patch fi=
xes the USB hub initialization on WS-WR512N1. USB enumeration works properl=
y after removing 0032-USB-dwc2-add-device_reset.patch, too. <br>
<br>
So, can you provide a Tested-by?<br>
</blockquote></div>

--000000000000c3a67805a6409efa--


--===============0710449614576927476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0710449614576927476==--

