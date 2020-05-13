Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F761D1E71
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 21:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CfpvShzEkxQgyQWGAUoodo58XVGMrTxM8sBzfQu8HOU=; b=APaHV5pG2b3JXbyQOkrB1KeDA
	LHqjA2BLjLlYAwvVYTcpmeFO7vEOfN3cMHDgsD/PJP/t8VC9g/uBJooqwYWIN5XnABNqXMFDJYAJX
	KLZBL8cFlO2yPNCI6SfTlIBc3LZc3bTwkxIwtVQSXfbclt/tjIxiLf+cTvgwewdr2KEqrBejRfiRj
	JVaRQ6P50YHV9ReTC+UN+53N8ODtUXOK/fhVNuiG7FHCYeWKClG+wG/rzSOrubQpGIIIfcDVcQk6v
	0Yc23LhwaF/HPMcm0Epn9wNXd4t9VHzymIZqHgWZtCs1QIPEeyK7jNgNld995mhEcE4gzRgOr+3rT
	qsBToVdmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwdg-0003JK-Gw; Wed, 13 May 2020 19:01:56 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwdY-0003Iv-Sf
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 19:01:50 +0000
Received: by mail-lj1-x235.google.com with SMTP id h4so735358ljg.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 12:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7JfBxZb6A1xLR5zoe3Y8O/2KyAXKdCQWrTUTn9kEdbE=;
 b=d69CHwpp6Q0mhmP/7hi0ebcRjWiNBbzoWOSfbayrPlTy8mF8CCOJwIxHn8Zq5VKciR
 zcLGAOtXS/NLlPJiy0+YPEEoJk9EQKjok9+XyBFQsgAhVInv5KGrHbfOXHdnE3xOuD4/
 098oFjIYpHmHcKokSjzifJfLbmdReIMGp8SBrXdObeFd5vVuVZen4ThCJ0dPjM81peYS
 pyMjLPLQqT0Z7hB2kuqE3jHsNz8+cLsBa113WWsHTubfZyX+nQqzLUzxnSXLcqs0rG6d
 KNL4liRqx2/+qKI3ukdKywpVg14n7jddLr1/h7Vhv+3YRMokJXmoZdy3KiiWDRQxkxaW
 uSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7JfBxZb6A1xLR5zoe3Y8O/2KyAXKdCQWrTUTn9kEdbE=;
 b=ZpfZOz9n3D5ajlrq/5Lwo6vln4iDc4AJMCPTbViDoIpzPS58RUFevgANtnuTrtZ1tf
 KXW9F6tDCpATJzjbegANnmTENX4y2YM1irkI4JVYU2FybiL2+i/W4LFZk0aqvPIZJ476
 3cCQGSd3jDlnPjPJYrcsxretLlYoBDtR+bj7Wnbkl+U1EiJfzHIGrs+aLZpISvRxP01a
 8LTRiGPU+HVH/ShlAWLo4Dx5mZrNkQMequStXHgWEM3E6z7M7DbmHWBxYHzqR7zauPp7
 sFTdVNa99AyEIaWRwxhr8KwTT8Jb94PJ8gVbOy1v80S00gr3Ml/Gp2wNmg6/rhM/UQRD
 3bKw==
X-Gm-Message-State: AOAM5323jEgOCgVnBwR4mN9daNqyowtR9yH0mQ9zGc03UmAfq1TaRdCE
 gNe+V1JJjRF9Y9EqdxzW1/iu7j+ihSWXrp3oUC5FfzMY
X-Google-Smtp-Source: ABdhPJxK4iEsAeYzZUckTCWh3bVHVFaNewoaq7Dld2mWxceuqvzAChWO7eYLjc3sye1/glA7HwYXwQfkVOuX79rSlfc=
X-Received: by 2002:a2e:a37b:: with SMTP id i27mr326959ljn.36.1589396507039;
 Wed, 13 May 2020 12:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <CAF2Tf9QnUZVwxA9xiObGTTtkp62+i21cuMD6GFOPt3JRZTURtg@mail.gmail.com>
In-Reply-To: <CAF2Tf9QnUZVwxA9xiObGTTtkp62+i21cuMD6GFOPt3JRZTURtg@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 14:01:35 -0500
Message-ID: <CAJQUmm5u8v48WEr1bS4iRic4Jv7OBrZtKjqq2HAncS5D1TDYwA@mail.gmail.com>
To: Eric Romano <gelstudios@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_120148_976736_3CDBFC21 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============2564616034465148550=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2564616034465148550==
Content-Type: multipart/alternative; boundary="00000000000035b03a05a58c3690"

--00000000000035b03a05a58c3690
Content-Type: text/plain; charset="UTF-8"

On Wed, May 13, 2020 at 1:53 PM Eric Romano <gelstudios@gmail.com> wrote:

> It does seem like process supervision would be a nice capability to
> have within procd.
>
> Previously I've done this by a combination of:
> 1. trying to crash / exit the process when an inconsistent state is hit.
> 2. monitoring for delayed writes to a timestamp pidfile in temp.
>
> procd's respawn directive can handle the first case (i forget but
> something like "respawn 10 5 0" did fine), but the second one...
> depended on a clumsy nanny process to reap / kill any that failed to
> update their timestamp.
>
> Feature wise, it would be nice to have more than one way to perform
> the process health check.
>
> Some options that come to mind are:
> - a ping / pong -like method via ubus
> - expecting the process to "touch" a specified file, which procd could
> read stat times for
> - either of the above, with the ability to trigger a refresh via
> signal like SIGUSR1 or SIGUSR2, etc.
>
> Would be good to hear what other methods have been tried by others,
> and what a generic interface to this could look like in procd's
> config.
>
>
>
The way I'm currently doing it is to use abstract unix domain sockets. The
wrapper program opens the abstract domain socket for read, and the
subordinate program open for write.

If the wrapper program does not get at least one byte to read from whatever
is writing to the socket, every $timeout then it kills the child.

The idea that I had in mind originally was for the service in question to
need to send a message to some endpoint in ubus. This allows:
1) External programs can do the watchdog poking for the service in
question. E.g. your program need not understand ubus, it only needs to know
how to launch the ubus CLI program to send the message.
2) This allows for the watchdog behavior to grow additional features over
time
3) This allows for the watchdog management to be seperate from procd,
conceptually.

But I'd be happy to see other approaches as well.

--00000000000035b03a05a58c3690
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 1:53 PM Eric =
Romano &lt;<a href=3D"mailto:gelstudios@gmail.com">gelstudios@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">It d=
oes seem like process supervision would be a nice capability to<br>
have within procd.<br>
<br>
Previously I&#39;ve done this by a combination of:<br>
1. trying to crash / exit the process when an inconsistent state is hit.<br=
>
2. monitoring for delayed writes to a timestamp pidfile in temp.<br>
<br>
procd&#39;s respawn directive can handle the first case (i forget but<br>
something like &quot;respawn 10 5 0&quot; did fine), but the second one...<=
br>
depended on a clumsy nanny process to reap / kill any that failed to<br>
update their timestamp.<br>
<br>
Feature wise, it would be nice to have more than one way to perform<br>
the process health check.<br>
<br>
Some options that come to mind are:<br>
- a ping / pong -like method via ubus<br>
- expecting the process to &quot;touch&quot; a specified file, which procd =
could<br>
read stat times for<br>
- either of the above, with the ability to trigger a refresh via<br>
signal like SIGUSR1 or SIGUSR2, etc.<br>
<br>
Would be good to hear what other methods have been tried by others,<br>
and what a generic interface to this could look like in procd&#39;s<br>
config.<br>
<br><br></blockquote><div><br></div><div>The way I&#39;m currently doing it=
 is to use abstract unix domain sockets. The wrapper program opens the abst=
ract domain socket for read, and the subordinate program open for write.=C2=
=A0</div><div><br></div><div>If the wrapper program does not get at least o=
ne byte to read from whatever is writing to the socket, every $timeout then=
 it kills the child.</div><div><br></div><div>The idea that I had in mind o=
riginally was for the service in question to need to send a message to some=
 endpoint in ubus. This allows:</div><div>1) External programs can do the w=
atchdog poking for the service in question. E.g. your program need not unde=
rstand ubus, it only needs to know how to launch the ubus CLI program to se=
nd the message.</div><div>2) This allows for the watchdog behavior to grow =
additional features over time</div><div>3) This allows for the watchdog man=
agement to be seperate from procd, conceptually.</div><div><br></div><div>B=
ut I&#39;d be happy to see other approaches as well.</div></div></div>

--00000000000035b03a05a58c3690--


--===============2564616034465148550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2564616034465148550==--

