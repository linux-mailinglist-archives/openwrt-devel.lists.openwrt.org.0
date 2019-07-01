Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC075BE21
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 16:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GEQu7+qTvqW5IhTfQl5zzhiEzvoe7QAwOobGfWi+5pk=; b=p/irhEE/wtv9Dzu0ennoMaFPk
	oFVqbeE4nD5NbZWYpoKYb8V3raBlH45IrE5lERirTkAl21W+Plz1MboJb0voXLYIslXX2FL26/Mob
	1pRxKzbIMy33SzTb8zta+eXj3ynPoh65nUMjVGPBSdTbtKKjswMBhMCyAHnGsQAAc9eQ7a3N6d+r6
	CPNnZgW7MmZ8A4vmFs2/QKXF9iPtA43GxG1VxZ1nMgFTcZaq9E/hvUKUt9eHcaE70W3rYeX/klq9z
	4PaZujk+aM9c9tZBGxcgan8A/GFn8JhUPV8pGa6ZZVNtKTvXMZOsKAX6cEJHH7IBhbxvO0kzn4UmN
	1Gl1w3PSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxDq-0005IP-J6; Mon, 01 Jul 2019 14:23:58 +0000
Received: from smtp6-g21.free.fr ([212.27.42.6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxDi-0005Hy-VY
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 14:23:52 +0000
Received: from eos (unknown [213.61.153.180]) (Authenticated sender: albeu)
 by smtp6-g21.free.fr (Postfix) with ESMTPSA id 905A6780316;
 Mon,  1 Jul 2019 14:23:43 +0000 (UTC)
Date: Mon, 1 Jul 2019 16:23:42 +0200
From: Alban <albeu@free.fr>
To: John Crispin <john@phrozen.org>
Message-ID: <20190701162342.65246402@eos>
In-Reply-To: <1b3378bc-3acb-04ef-f9c0-8b4ab158da85@phrozen.org>
References: <20190621153828.20699-1-albeu@free.fr>
 <1b3378bc-3acb-04ef-f9c0-8b4ab158da85@phrozen.org>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_072351_161125_5C79F1A0 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.6 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (albeu[at]free.fr)
Subject: Re: [OpenWrt-Devel] [PATCH] runqueue: Fix the callbacks order in
 runqueue_task_kill()
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
Content-Type: multipart/mixed; boundary="===============3191395866675582239=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3191395866675582239==
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/d2a89.5iX2ewndOnXvM/SsW"; protocol="application/pgp-signature"

--Sig_/d2a89.5iX2ewndOnXvM/SsW
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 1 Jul 2019 15:48:47 +0200
John Crispin <john@phrozen.org> wrote:

> On 21/06/2019 17:38, Alban Bedel wrote:
> > Since commit 11e8afea (runqueue should cal the complete handler from
> > more places) the call to the complete() callback has been moved to
> > runqueue_task_complete().  However in runqueue_task_kill()
> > runqueue_task_complete() is called before the kill() callback.
> > This will result in a use after free if the complete() callback free
> > the task struct.
> >
> > Furthermore runqueue_start_next() is already called at the end of
> > runqueue_task_complete(), so there is no need to call it again in
> > runqueue_task_kill().
> >
> > Signed-off-by: Alban Bedel <albeu@free.fr>
> > ---
> >   runqueue.c | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/runqueue.c b/runqueue.c
> > index a1d0133..4c621aa 100644
> > --- a/runqueue.c
> > +++ b/runqueue.c
> > @@ -196,11 +196,9 @@ void runqueue_task_kill(struct runqueue_task
> > *t) if (!t->queued)
> >   		return;
> >  =20
> > -	runqueue_task_complete(t);
> >   	if (running && t->type->kill)
> >   		t->type->kill(q, t);
> > -
> > -	runqueue_start_next(q);
> > +	runqueue_task_complete(t);
> >   }
> >  =20
> >   void runqueue_stop(struct runqueue *q) =20
>=20
> Hi,
>=20
> runqueue_task_complete() will decrement running which, if called
> after the kill clause might not even trigger the kill() call. I am
> assuming you are running a custom runqueue_task_type ?

No, TBH I haven't tested this, but as there is no documentation I had
to go through the code and noticed this suspicious construct. I then
saw commit 6a7fb7d8d (runqueue: fix use-after-free bug) which confirmed
that complete() is expected to free the task struct, which with the
above code will clearly lead to an access after free.

But I don't really see what you mean, 'running' is a boolean so it
can't be decremented. Did you mean 'running_tasks'?

Alban

--Sig_/d2a89.5iX2ewndOnXvM/SsW
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE0W61GceYqNjiMSkodJSaS524LbwFAl0aF24ACgkQdJSaS524
LbzmghAAkGUb8dTaRvHIPecFzJ2I+dbZg9vFlbn/jVnm5kDAeiL5mg0/urzX8Qhu
3eaDXdxhxkUpiWd6V9QxssKGxdHB7nCFEkf89goJe+O3JP8QpptPGphZfvRB4pEf
mVO2dRjaYmF8jyjDNf9X3WY8GbLWHh08Bb/lTfNJwS5NT+KT1CYVUFVUB795i3qI
DAETwfzA3asp2jlEp8rT7X/WEkXbqznuwSa3th9HaK6CYq7EW8ljJoAEvWYXdkZA
YgogRz/Rwi8S6LXjByCaNYBZl3JWYDIz3HoUafbzkNuBvCLjftmMvXkGansj+39w
N+HPdKWKArh/JgjhCjyg0R5ayC0CQWcEXZL5uwGYu2aDXdvpYCp9tfaIoWrEvxCo
0rAEdXeQSD8oqMSCt4hNb1UcaqZjuySn3oFDFfDbgJQ8SPWvJ9AuBGUz9T4z+24I
+m3xi+0gv4puqoFL9dOWYNCEbhNmAVB/h/7rPbO1kELKstwuyaGFKN02DTbje+WY
7vyFZeSIrNqz85kBdR3Ng1kzNnT/5eYEaKOdRnib7K5aK+3XBeT30McpshVfyD15
PnPQmBA0yM2WybGQTblLMeh8LT0LSFDWXHo8W5EbgSzw97lHwv+NEGXh8HCJS0IR
AJyDtPX9Hnt5bM3iXI3521LbQqZ6776anV7c9++TOT0DG6QCRJw=
=sKm1
-----END PGP SIGNATURE-----

--Sig_/d2a89.5iX2ewndOnXvM/SsW--


--===============3191395866675582239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3191395866675582239==--

