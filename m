Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAE11D450B
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 07:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q5XHNloaCd2lEhi2dPMRRYc0D2Y0grQIxpqASK5JLsE=; b=sWY2tqRkaoBbzSa1Z25w0VTRQ
	EZH+U6bWCSpzzXNIgkBmLyMfTsRmw1XdWN3/zcQ9dTsKJDZyFum2op3+vNCnIEDXXf0UiRxMGX6Ez
	9YNFVcPot997sAFzlxsEZZr8iKSlGRmNsZQWtq6WaKzMnoEao3AElBxx8UAEzC+ZwvI+JaOx+zaKa
	ldOxW/9WRd7LUL0qvqIEaePVYRkdDkox9cTlfTLk6Q8zFJ4cw4yHTLcRVLSfh0nG7IyV4CJMilc2g
	oL8TAzosUw5G2Uryuo/RBGXqGj5FcX6tWl46TvtRUiD+ugXDRQUcCsnI66ViD5xFzgN0lzRN+jtZg
	J9h/mXOXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZSbU-0005rY-GG; Fri, 15 May 2020 05:09:48 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZSbO-0005rA-2p
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 05:09:43 +0000
Received: by mail-lf1-x132.google.com with SMTP id h188so707762lfd.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 22:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KruLK+Z0s7kpXHyM0TfWMFUQSA7DwgWXz/lQV/J+Zpo=;
 b=PA3ZSxzU92gA0o7GVcJR4burUubZTiJhGq2XCgHYoauMmEQ+ci26GiN7+hzhl2rEUy
 5qTirIJIhTWtC8IU4Kbz2ZLqYd9GKPmo/35shS2tRZjvt2wQoB2iix9b9wkD+oWW+piZ
 7rjc5oVx0QakKhBcmkeMKHVNiq0GTmOksBL2Gq3ebo+DRGsrctpkcRGY3LkDF0s1AL2g
 5LsKCP1iTIUPIy7dUQuQKtD0cYAWyexyoXC5+1gxmKh3z4slK62loMkrKQrP9bZdLjez
 tSOoBdDVeT68UQLHvZaOmpkf596/wB34M28tDz396CMbG3vRPSuX0QP50Fmm6m6hPt1R
 SnXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KruLK+Z0s7kpXHyM0TfWMFUQSA7DwgWXz/lQV/J+Zpo=;
 b=WzFwY0cwpEL9NTjBbsLVWZWqHuLdZ5XtqLam+KMhDfDBkVPALWkkmsFjGqBR3iuVuf
 BURXqAfgkR220qFb24LgZU+aux6wn8+LbSUip5Y7EDPt/OqS+eesoshrV2WBzxM8ksHr
 9D6QXX5NG+cvVXcMG7vw9rcIQWKZX5ZA50BCluM8JJACAPDk0fpuy55dSaLsaHlfrit3
 FNhQd0YnAroe9kJhE8OO0QCKiBd649I0SXwX1gPpnTfVhXeAvIW712cccwT0XK5agwZx
 ZNezzebP18Ls2u0AOT69i4ExAfbHn3W9hZEjeXloBXH2t59daK/B/2iaoNNSxGfG46WM
 0rAQ==
X-Gm-Message-State: AOAM531THZwNAC1aOqB+VrgeEzsoBZz6byM+Toq+ACSk5MhaSpK8JcMB
 jF5odypZuLVVjwVblptIT76n3DXqOSrs4cHiACYchQ==
X-Google-Smtp-Source: ABdhPJxAEb9jBnF0UqQfamuCkFkqn0vNtfM5llHuPF/mGcsBqDn0t0fSV6a2vZguhXpoezHjAdxehehOToeAaeGdWMc=
X-Received: by 2002:a05:6512:2027:: with SMTP id
 s7mr1057191lfs.39.1589519379153; 
 Thu, 14 May 2020 22:09:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <DFF1467A-20C3-4EAC-BE93-D879BBA5D869@redfish-solutions.com>
In-Reply-To: <DFF1467A-20C3-4EAC-BE93-D879BBA5D869@redfish-solutions.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 15 May 2020 00:09:26 -0500
Message-ID: <CAJQUmm4-vSUh=wUdkEDUEs3sVvfy=CWYy2GjwdBuer5AY3J9iA@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_220942_185128_9805972D 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5903420415532393500=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5903420415532393500==
Content-Type: multipart/alternative; boundary="000000000000f55a3c05a5a8d1f6"

--000000000000f55a3c05a5a8d1f6
Content-Type: text/plain; charset="UTF-8"

On Thu, May 14, 2020, 23:43 Philip Prindeville <
philipp_subx@redfish-solutions.com> wrote:

>
> > On May 13, 2020, at 11:48 AM, Michael Jones <mike@meshplusplus.com>
> wrote:
> >
> > I have a critical service on my OpenWRT system that needs monitoring and
> re-starting if it's failed.
> >
> > I've been looking for a mechanism in procd that would allow me to
> request that my service be terminated if it did not periodically notify
> some watchdog endpoint via ubus.
> >
> > It seems to me like this is not something that is currently supported by
> procd, and I've written my own clumsy "watchdog" wrapper program that tries
> to do the job.
> >
> > Are there any plans to support a feature like this in procd directly in
> the future?
> >
> > If there are no plans, and I were to write code for this, would OpenWRT
> be interested in reviewing, and then merging, patches?
> >
> > Are there other people on this list who would take advantage of this
> feature if it were available? If so, what functionality would you like to
> see?
> >
>
>
> So existing services that are launched by procd (like ISC dhcpd) would
> need to be patched to support this?
>
> -Philip
>

Yes. That would be the case.

It would need to be an opt-in feature. Its not possible for a service
watchdog to be opt out because service watchdogs need to be tailored to the
service being watched.

>

--000000000000f55a3c05a5a8d1f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, May 14, 2020, 23:43 Philip Prindeville &lt;<a =
href=3D"mailto:philipp_subx@redfish-solutions.com">philipp_subx@redfish-sol=
utions.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; On May 13, 2020, at 11:48 AM, Michael Jones &lt;<a href=3D"mailto:mike=
@meshplusplus.com" target=3D"_blank" rel=3D"noreferrer">mike@meshplusplus.c=
om</a>&gt; wrote:<br>
&gt; <br>
&gt; I have a critical service on my OpenWRT system that needs monitoring a=
nd re-starting if it&#39;s failed.<br>
&gt; <br>
&gt; I&#39;ve been looking for a mechanism in procd that would allow me to =
request that my service be terminated if it did not periodically notify som=
e watchdog endpoint via ubus.<br>
&gt; <br>
&gt; It seems to me like this is not something that is currently supported =
by procd, and I&#39;ve written my own clumsy &quot;watchdog&quot; wrapper p=
rogram that tries to do the job.<br>
&gt; <br>
&gt; Are there any plans to support a feature like this in procd directly i=
n the future?<br>
&gt; <br>
&gt; If there are no plans, and I were to write code for this, would OpenWR=
T be interested in reviewing, and then merging, patches?<br>
&gt; <br>
&gt; Are there other people on this list who would take advantage of this f=
eature if it were available? If so, what functionality would you like to se=
e?<br>
&gt; <br>
<br>
<br>
So existing services that are launched by procd (like ISC dhcpd) would need=
 to be patched to support this?<br>
<br>
-Philip<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Yes. That would be the case.</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">It would need to be an opt-in feature. Its not possible for a s=
ervice watchdog to be opt out because service watchdogs need to be tailored=
 to the service being watched.</div><div dir=3D"auto"><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"></blockquote></div></div><div dir=3D"a=
uto"></div></div>

--000000000000f55a3c05a5a8d1f6--


--===============5903420415532393500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5903420415532393500==--

