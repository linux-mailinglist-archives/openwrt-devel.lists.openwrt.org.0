Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67DF1D586D
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 19:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iGhQx9jKpUv6MRSR6vjqVzbsO+Uaq6f9VG2nhIEa6X0=; b=oTMqYoF1GiI2aumi5uCesxNYX
	jOviu071Hh44IRUMFJDV3WpBe/R2Oc4sxp1W9hDrtgtXyh1AmcF6SgDGoVYbNPOBCEcoKUupG4wXA
	a1KVM157p/AV5f9Bb3LxHJCaJmFFT5meHWN0RfWsHSIQqe8oWF261+TbRLuQjguF1CCgISTbmZLMe
	W4bu+qn6devzq6o5yYRtxdYkSEjoLj29lbIlIOaG5QMQ2lSXy5daZOnrNxklpB6/ID7PPpkEKK1xM
	tXiVJ2uMI3H4Hogkco13rmgN6ZnjHvHSFj4MyAtB4+KXdpwGlYhdrbTjOA7/WktZXzUHyVwlqusmk
	phVUYoOoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZeZ8-0003cr-Df; Fri, 15 May 2020 17:56:10 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZeYx-0003bn-UF
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 17:56:03 +0000
Received: by mail-lj1-x22e.google.com with SMTP id o14so3189514ljp.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 10:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QTdmYcYdRzkdjvjDMSZWltcCztGbe06XnBNo57QpIk4=;
 b=BrKoge5H9WwuzRAaJ2evHTiUm3xh17yLgIruswzujSxrlBmkh4ClDS5Y8WHsAnjt26
 z4OH0m4PgFY09u1xGLm55iLf8m/FFhaNpR22+GV8Vmv3rFkknEkpbkVBNngeQE3XTICi
 Y8soYHvjbnS2Hq0bBbbXj2H4sx7dn1t0w0crsGnYnvFXhOCdSfcKSBqkrgWRL8bPl99K
 0L/5amVJIjj00dCn14rQOInh09GZMSrW/1PrlDWOfabb5hzEWv7WEECjZuvS6p4ltJfD
 bbVmIHrHBsyb3t59eM3JIoBC7T9mOANblv6HAc8A9eZkJ82+yhKU+nk2L7+6GVk+Byb1
 D8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QTdmYcYdRzkdjvjDMSZWltcCztGbe06XnBNo57QpIk4=;
 b=lUQx912UsyUo62iuG+GD5gC3m0I1ZtPdseQHCWZXBt6TpGERr3LbIR9oQGTvj10brx
 bY/3CE1vfKp9NMR0tknePQHWpZB4whXawf7Oa2CkUUimRCyUvmc94NUuV68stVwQh4c1
 t1Jtvq414zfC9lq46TUDcke2W5CmVbBsAAwz+4rQxs+AVxuRdz4h80FXIVeO7E4dncFf
 E9ZjwtaU4ZCWlb/kaDCxwLp1rhPdND6ATYXUoRJhknLe/+tdQoSTgovvaCzC980M4Y5U
 OHGWw64s6l7GYiMBpYIIKsAlXBsb4Y11WCaWIFic2eMaOpk3IOYbCJmmKflR0IQ/0TzV
 6luQ==
X-Gm-Message-State: AOAM530SN/Sq9sPE91JZUr3YKcfk6xse15fgd1RWQV17I6iikDtsTp69
 nkcpFsKwhPp4seQP1tEoQLzGGz/audbLTD2OuQ5hWheS
X-Google-Smtp-Source: ABdhPJzNEO5bfAPTCuGel65LKTK4tkaLG+UwLxQE/DHEkJv6pwXKSa1DDTqcpglNXHJjWwbc4+5pc4uNavDvUXfRdSE=
X-Received: by 2002:a2e:50b:: with SMTP id 11mr3057101ljf.233.1589565358060;
 Fri, 15 May 2020 10:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <ae82ddc9-295c-1496-fc63-237ff12015df@wwsnet.net>
 <CACfEFw9uuGot1FT+c93Y+i_c2pZfR_+A6sfYvm_NU+AkdX3_6g@mail.gmail.com>
In-Reply-To: <CACfEFw9uuGot1FT+c93Y+i_c2pZfR_+A6sfYvm_NU+AkdX3_6g@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 15 May 2020 12:55:45 -0500
Message-ID: <CAJQUmm5vT2Gi=vkX+0P2N-RB1krVYONRVP67YFG6ytagCZsWyQ@mail.gmail.com>
To: Wes Turner <wes.turner@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_105559_975182_C03B8484 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============7843251814972238562=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7843251814972238562==
Content-Type: multipart/alternative; boundary="00000000000083ca8c05a5b386e1"

--00000000000083ca8c05a5b386e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 14, 2020 at 5:56 PM Wes Turner <wes.turner@gmail.com> wrote:

> FWIW, k8s has Liveness, Readiness and Startup Probes
>
> https://kubernetes.io/docs/tasks/configure-pod-container/configure-livene=
ss-readiness-startup-probes/
> ::
>
> > The kubelet uses startup probes to know when a container application ha=
s
> started. If such a probe is configured, it disables liveness and readines=
s
> checks until it succeeds, making sure those probes don=E2=80=99t interfer=
e with the
> application startup. This can be used to adopt liveness checks on slow
> starting containers, avoiding them getting killed by the kubelet before
> they are up and running.
>
>
Good suggestion.

It's starting to look like people like the idea of having procd poke the
service and require a reply, instead of the other way around. That's fine
with me.

--00000000000083ca8c05a5b386e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020 at 5:56 PM Wes T=
urner &lt;<a href=3D"mailto:wes.turner@gmail.com">wes.turner@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"auto">FWIW, k8s has=C2=A0Liveness, Readiness and Startup Probes=C2=
=A0<div dir=3D"auto"><a href=3D"https://kubernetes.io/docs/tasks/configure-=
pod-container/configure-liveness-readiness-startup-probes/" target=3D"_blan=
k">https://kubernetes.io/docs/tasks/configure-pod-container/configure-liven=
ess-readiness-startup-probes/</a> ::<br></div><div dir=3D"auto"><br></div><=
div dir=3D"auto">&gt;=C2=A0The kubelet uses startup probes to know when a c=
ontainer application has started. If such a probe is configured, it disable=
s liveness and readiness checks until it succeeds, making sure those probes=
 don=E2=80=99t interfere with the application startup. This can be used to =
adopt liveness checks on slow starting containers, avoiding them getting ki=
lled by the kubelet before they are up and running.</div></div><br></blockq=
uote><div><br></div><div>Good suggestion.</div><div><br></div><div>It&#39;s=
 starting to look like people like the idea of having procd poke the servic=
e and require a reply, instead of the other way around. That&#39;s fine wit=
h me.<br></div></div></div>

--00000000000083ca8c05a5b386e1--


--===============7843251814972238562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7843251814972238562==--

