Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1E31D4159
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 00:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Q7Jpi9WdOSZl/kQjg1vlmS2KINzpFUmu5N46ExvZaM=; b=IW4vvynhlV7qCS4GCHNkIlhze
	fOjdBgQn5u4t7mHncJMaC/ERXfffVFa1SDiou9hPE83mmjNcmkcY3nfa3119ZrNuQHlQqol7E0nNC
	Css3U5wCo4O+0Qy/Q4d42OayR05kxleMmvIwGNrz39qXQqQ07IDbCZEyMZKeByKtEML6mAbf8XA4j
	vcQhvS+ZMabmfT/2pYPKRMf2XUVz5q76sLUJ7RnH22oaaTjEoBmmp6xFgbYF1VrOFhlTqpWrPs9Pg
	HFwd1VfOneMKCFlkj6lzw3gNx7W3mwXE87ZhE44Cb/voqmmZ5AJkXqogL04cex6L8YEa0MbCpG8/5
	pr/ZHDbCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZMm3-00054d-H3; Thu, 14 May 2020 22:56:19 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZMlu-00053B-4P
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 22:56:14 +0000
Received: by mail-qk1-x730.google.com with SMTP id g185so655583qke.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 15:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=53T07n1PGlTO+GIRUazwhElHkEf4ogROtR5ED6HDTlk=;
 b=jNuSpQkDgn7IxzZXGFP0eIyx3efgGRgc56y7KBviWBGJZzSUyBsrhAYcuRBpB3Sv/o
 Bb2DNaF8019FfHxM/MEtLUwO+amiTuQjhAnlxItJGAxQUGj+1kQG7OgniihOlGeSgdWX
 jANfqHunZ1WHlTnlT6VoUz+l9ZtGXAgOisShP+dpR1yVhkEUAWs9BL0s3Gr41tysLDwj
 HiLigBmOxoz0OTaQ9J4yWUz4rY8FatTXTSCWq/yxA5jxfnvH5MqCCTYBslcupmElOiAF
 n3uzZSfvP8IZYlAigR97zxFJiJw6oNg3RxfPiVpm+/+tmb/1GKmYiq7d+JD9a+JLJEsW
 /VrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=53T07n1PGlTO+GIRUazwhElHkEf4ogROtR5ED6HDTlk=;
 b=Nmwb+W71dM5oIpJnhK1PEaQh6PM5Liyp9bwMtRWkFXT4TS3Ela+rUnyDXE5cmWopfh
 nwkP/vN5+G7WxSBTikN3MxR1VJ/k9M/cPpbf5edQKKrtGRkr821sbL877GoLIckFdgdY
 KSZ0p49BRJVbm3J2pYZCR5idqlsJAUi4X+wCzQELCs7nYvJhO3F23FKfLEAF+jLNxt0q
 B1ckTtNP4AArl/hMpx004v+uuG1ISTmtvnli2xiq5pmq6ka9ExkEr47nMsbEekRIRhgP
 By6Fd5Bxp7DZu7h8u7Ur/xzqVyxPXxblTii6kjiGOx5VRemml89Z21e5KXEjBUtP58JO
 v7ww==
X-Gm-Message-State: AOAM533OOqlvKnxqzxHflm20G0iwuETgMhG/4oVx+rvI6CJ5eV9JjnBg
 ZjNJP+SVQA1bwq0M8L3dRsI2N1cnfLsxUwgpEbgVSGjl
X-Google-Smtp-Source: ABdhPJxq/Rs1r+2Gx4noV+CHAW/hkqL/6mPYxpBpte1CIx7PjFPAYLF+8lJatpmJ+A5tSHp3/n5g885TVY795jCmgwc=
X-Received: by 2002:a37:9f82:: with SMTP id i124mr678511qke.451.1589496967369; 
 Thu, 14 May 2020 15:56:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <ae82ddc9-295c-1496-fc63-237ff12015df@wwsnet.net>
In-Reply-To: <ae82ddc9-295c-1496-fc63-237ff12015df@wwsnet.net>
From: Wes Turner <wes.turner@gmail.com>
Date: Thu, 14 May 2020 18:55:55 -0400
Message-ID: <CACfEFw9uuGot1FT+c93Y+i_c2pZfR_+A6sfYvm_NU+AkdX3_6g@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_155610_204315_81F5605A 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:730 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5031635164009075208=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5031635164009075208==
Content-Type: multipart/alternative; boundary="0000000000001c98f005a5a39abd"

--0000000000001c98f005a5a39abd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FWIW, k8s has Liveness, Readiness and Startup Probes
https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness=
-readiness-startup-probes/
::

> The kubelet uses startup probes to know when a container application has
started. If such a probe is configured, it disables liveness and readiness
checks until it succeeds, making sure those probes don=E2=80=99t interfere =
with the
application startup. This can be used to adopt liveness checks on slow
starting containers, avoiding them getting killed by the kubelet before
they are up and running.

On Thu, May 14, 2020, 1:01 PM Jo-Philipp Wich <jo@mein.io> wrote:

> Hi,
>
> I like the ubus watchdog ping/pong idea.
>
> ~ Jo
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000001c98f005a5a39abd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">FWIW, k8s has=C2=A0Liveness, Readiness and Startup Probes=
=C2=A0<div dir=3D"auto"><a href=3D"https://kubernetes.io/docs/tasks/configu=
re-pod-container/configure-liveness-readiness-startup-probes/">https://kube=
rnetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-s=
tartup-probes/</a> ::<br></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">&gt;=C2=A0The kubelet uses startup probes to know when a container applic=
ation has started. If such a probe is configured, it disables liveness and =
readiness checks until it succeeds, making sure those probes don=E2=80=99t =
interfere with the application startup. This can be used to adopt liveness =
checks on slow starting containers, avoiding them getting killed by the kub=
elet before they are up and running.</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020, 1:01 PM Jo-=
Philipp Wich &lt;<a href=3D"mailto:jo@mein.io">jo@mein.io</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I like the ubus watchdog ping/pong idea.<br>
<br>
~ Jo<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>

--0000000000001c98f005a5a39abd--


--===============5031635164009075208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5031635164009075208==--

