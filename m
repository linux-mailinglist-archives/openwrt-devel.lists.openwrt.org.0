Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF8517AF47
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 21:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3RmOdkdvfkH0bahI1rkgQcLG/D7UTHbQKGEZaT4jOkw=; b=JyQjvc8fmX6PolvDuZHhECAR1
	EzEw3I+q4HXPYKx4wLAbmm5sRA33JFStMn5ZL1QxssPE4ewvoSIRyvtyeF+shT93LyAdiJp/PrHfC
	h7KvasiYuLt1nLDKe/iEEqYyz7KlAW9aFZ7/JSiWb48jQPsHAqlPfeYsgLEydnQhXT9MRXqJfEMcH
	vmIVBVZ8dsxaNVFzZceiQx3P0Lsqa2vqXBHZ2YHMiyD8CqRbJ4EQ2Nwc3GMd1LA8rssoH5y5U44uA
	x+Ptc400Dq1eu4OgBOMbZQkVmcYSKzsTnyn6BZmiTIv/jepY5bfyjs9LOSWS2ez84SNwfefs8QWbZ
	9QloKrL7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wft-0006JD-7R; Thu, 05 Mar 2020 20:00:53 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wfi-0006IU-Gi
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 20:00:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id p5so5688227lfc.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 12:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UFbBEaAbvX4vsSc+29pjO8MJCDh6xtUpasojyvVLrIk=;
 b=hOJsgq/YSFK+4MPXIwPTG2EQRgZQEMp4b9gSW+0S2oFoch4/Gy38G3HPjyYwZrdTbw
 hXv05en3G/MLuZFUfp0u8nuD+K2eElfML1vSUcrrEixlA0MmmiVldeFvsASSPnGW3HmR
 MKKbHun63C/WBP3DWn7WCE1OlMSbQhOWAT84sez1lZD+dROP3abNShMcX8Em3fhlvvkx
 D/Cdol9CAfOxZp/KpqoP2X06FATzJvq0MKQPm8NJPQoGIyVa4m8/YPZGKCMymY6+V1Bw
 f4UmnjnP+kDXrq4Ndj4cOUkRNHFJmxzyCbSeUONzpVdiO0NTv7VQnhsf67EUu9Rbu7m0
 h2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UFbBEaAbvX4vsSc+29pjO8MJCDh6xtUpasojyvVLrIk=;
 b=Tigx7oAEbjmEGanIbIpI3KyFldQQVHsNJwaVgS8YYwpq0O73YCQizra8LHHESJglyz
 LhRvj6dVjNtfteWFghMKKlx29pCdVAppaC46K3p2UJk8NH0HUSyN4CwErLDopY0Gxt6S
 MUvuP0K9uHlxwFltAdkjHJZhhQnOH8/tuQqJ9oKYN5wEI+ahnlmMOgn6zmtecPsDB1Ok
 m+tJQZSkVKUBM7KMS6eaDCPvfsGDNbNtiaXk83uyC1RTz0GbpH4harfu+LFhR/NOStxa
 fcDN0AUwRHZYSDmet0s+Fp3kxsldQpgBRTUhjILHgdCm0Px7mPe6dyR9+UxeRHIToNnZ
 Jm9Q==
X-Gm-Message-State: ANhLgQ3eWgDrmMz/jQQM3MC1EzAllulY8kwcL6KPnqWLnAoYH3D+mv3X
 r/l6JTDVoOv5+VfvdWWp17yyD+SjKryFlg+cOJA0hA==
X-Google-Smtp-Source: ADFU+vuQcowS3YdYH2Lg2Ir/qVv+d/EAFxUr+EpxGPkeUJ21CDdVQH2oi162lSHEYMqKd8F5yQ1R46qGm4An4uacdAA=
X-Received: by 2002:ac2:51bc:: with SMTP id f28mr150023lfk.112.1583438440536; 
 Thu, 05 Mar 2020 12:00:40 -0800 (PST)
MIME-Version: 1.0
References: <20200305084912.14659-1-ynezz@true.cz>
 <px9v7VGUzQWVsQG8LA985yU7sHqErVFNEMj8VRtq23cb@mailpile>
 <20200305113526.GB86312@meh.true.cz>
 <CAJQUmm4Jp1jWkR7OMdUvn4KEo9CQM0UuWxZqYyhjQ=X-ZzQ0jQ@mail.gmail.com>
 <f23ab0c2-c208-4354-b6cd-b4f6d1821818@localhost>
In-Reply-To: <f23ab0c2-c208-4354-b6cd-b4f6d1821818@localhost>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 5 Mar 2020 14:00:29 -0600
Message-ID: <CAJQUmm5ncym=rtPLwr-9zf3ctrg2NDST_DB7_u8CH+js7RBAbg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_120042_606305_0B0752B8 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] rpcd: fix respawn settings
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>, Jo-Philip Wich <jow@mein.io>,
 Karl Palsson <karlp@tweak.net.au>, Florian Eckert <fe@dev.tdt.de>
Content-Type: multipart/mixed; boundary="===============3869427277057666691=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3869427277057666691==
Content-Type: multipart/alternative; boundary="000000000000c5ada005a020fd8c"

--000000000000c5ada005a020fd8c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 5, 2020 at 1:41 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

>
>
> Mar 5, 2020 19:54:49 Michael Jones :
>
> > The flip side here is that rpcd likes to crash a lot.
>
> 0 (zero) bugs found https://bugs.openwrt.org/index.php?string=3Drpcd


Saying there are zero bugs on a bug tracker where issues go to be ignored
is not a convincing argument.

rpcd crashes for me daily, to the point where i have a script that restarts
it every 5 minutes.

It also gets hung a lot without crashing, and stops serving responses to
ubus traffic.

This is *only* with the UCI plugin, mind you. I don't use any of the other
ones.

If I create a bug report on flyspray, will it actually be looked at? Or
will I be talking to myself?

OpenWRT has a well-deserved reputation for user originated bug reports and
requests for help going ignored. I've asked dozens of questions over the
years on the forums that received no answer, and I've filed bugs that were
still open with no feedback from anyone, last I bothered to check (Note:
Not many of them have this email associated. I've worked many jobs that
involved openwrt in some way)

Note: I don't have any animosity about this. Volunteers are volunteers, I'm
not expecting anyone to do anything. I'm just saying that that's not a
valid argument unless or until the OpenWRT community engagement improves to
the point where the bug tracker and forum stop being echo chambers. Will
that happen? I don't know. Should it happen? I don't know.


> By preventing automatic restarts, you're all but ensuring that users will
> experience denial-of-service, even in the absence of malicious traffic.
>
> Default respawn retry value was 5, now is infinite and this patch restore=
s
> it back to 5 respawns.
>

Right, which means that you're re-introducing the
denial-of-service-in-the-absence-of-traffic problem. I'm not saying that's
the wrong thing to do.

>
> > Is rpcd subject to fuzz testing, to discover potential security issues
>
> Not yet, it's planed. It's just one of the methods, you'll never be 100%
> sure anyway.
>

How can I help?

I don't accept that you can't be 100% certain. Tools like
https://klee.github.io/ can get you so close to 100% certainty that it's
effectively 100%.

--000000000000c5ada005a020fd8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 5, 2020 at 1:41 PM Petr =C5=
=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
Mar 5, 2020 19:54:49 Michael Jones :<br>
<br>
&gt; The flip side here is that rpcd likes to crash a lot.<br>
<br>
0 (zero) bugs found <a href=3D"https://bugs.openwrt.org/index.php?string=3D=
rpcd" rel=3D"noreferrer" target=3D"_blank">https://bugs.openwrt.org/index.p=
hp?string=3Drpcd</a></blockquote><div><br></div><div>Saying there are zero =
bugs on a bug tracker where issues go to be ignored is not a convincing arg=
ument.</div><div><br></div><div>rpcd crashes for me daily, to the point whe=
re i have a script that restarts it every 5 minutes. </div><div><br></div><=
div>It also gets hung a lot without crashing, and stops serving responses t=
o ubus traffic.</div><div><br></div><div>This is *only* with the UCI plugin=
, mind you. I don&#39;t use any of the other ones.<br></div><div><br></div>=
<div>If I create a bug report on flyspray, will it actually be looked at? O=
r will I be talking to myself?</div><div><br></div><div>OpenWRT has a well-=
deserved reputation for user originated bug reports and requests for help g=
oing ignored. I&#39;ve asked dozens of questions over the years on the foru=
ms that received no answer, and I&#39;ve filed bugs that were still open wi=
th no feedback from anyone, last I bothered to check (Note: Not many of the=
m have this email associated. I&#39;ve worked many jobs that involved openw=
rt in some way)</div><div><br></div><div>Note: I don&#39;t have any animosi=
ty about this. Volunteers are volunteers, I&#39;m not expecting anyone to d=
o anything. I&#39;m just saying that that&#39;s not a valid argument unless=
 or until the OpenWRT community engagement improves to the point where the =
bug tracker and forum stop being echo chambers. Will that happen? I don&#39=
;t know. Should it happen? I don&#39;t know.</div><div><br></div><div><br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; By preventing automatic restarts, you&#39;re all but ensuring that use=
rs will experience denial-of-service, even in the absence of malicious traf=
fic.<br>
<br>
Default respawn retry value was 5, now is infinite and this patch restores =
it back to 5 respawns.<br></blockquote><div><br></div><div>Right, which mea=
ns that you&#39;re re-introducing the denial-of-service-in-the-absence-of-t=
raffic problem. I&#39;m not saying that&#39;s the wrong thing to do.</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; Is rpcd subject to fuzz testing, to discover potential security issues=
<br>
<br>
Not yet, it&#39;s planed. It&#39;s just one of the methods, you&#39;ll neve=
r be 100% sure anyway.<br></blockquote><div><br></div><div>How can I help?<=
/div><div><br></div><div>I don&#39;t accept that you can&#39;t be 100% cert=
ain. Tools like=C2=A0<a href=3D"https://klee.github.io/">https://klee.githu=
b.io/</a>=C2=A0can get you so close to 100% certainty that it&#39;s effecti=
vely 100%.=C2=A0</div><div><br></div><div><br></div><div><br></div><div><br=
></div></div></div>

--000000000000c5ada005a020fd8c--


--===============3869427277057666691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3869427277057666691==--

