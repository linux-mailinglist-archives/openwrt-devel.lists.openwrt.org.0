Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344941D2220
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 00:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H4OHamuouFznQf43QR+9EmhirFKZSPpKtHOaiORnI5E=; b=PT2HoT5nVRlw9jckCCrgql9Vc
	AzOv7RQZ6yZ9zMPKhKIZc9u3h4IL9I91AftSD5JS9HrGqQ31NeRwhgCfGS6lTm2lacvhrUgEam0l2
	gC9KQBo+GXVGBXK0ZKDpJQnP2lvtR5/O8+Fk7tkPs32j0mVWEvzosJRkVEnvhyI4hHlN1CRRjTHRa
	3hRN7/UKv4Vd1jn0YvwP966jwGV+1qw0aRhjiVfUCLQA+Z3Jvo8qzKSf7f2KZvZ/+GC8ElSEjdMZA
	FlOashlrjN7OIkSB6AxbgmRf1FG8hld/YDknCyXRtjC+vAmh2Z/zBBDOH0rBL25NIyEbShArJlCFR
	aKlKce1SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzzu-0005Gj-W5; Wed, 13 May 2020 22:37:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzzo-0005G6-8x
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 22:37:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id e25so1367780ljg.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 15:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BZivGSBGoJmQOvFT2WqEs4f7Azf4qmfDXPbQXuD2rRg=;
 b=mN2RnrIVwOzLI2M9nB5FbfbPSO0m0WOVQnTVsBZQPFb85r0ye6VjKniGsatPdjnh2+
 vgKQR1kOH6Iw/Doi5ZDzLb0lbnh7sf9qDx0KipgaV8hrDPjV1viy5hoCBIIkxm1Snxku
 CWsZ0U2DL5Z0ljY44/AL1SpAlALR+z1H0P1Yu6U81zIayoFIbpV8zYRRs89QK9HrBbdX
 UTSOzVLi1a85WZYUnUJbugsnaRk95b+zlRhSEo48+MNwzt1k/IrGqGVo3wioA6JkAwM7
 ntzwvzx+D3Tv8oewdfuzNPhKMKuyo6I4Hb57ts9HO60+GM7M4f+E5fNoAcKWe/x5cPD5
 +DOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BZivGSBGoJmQOvFT2WqEs4f7Azf4qmfDXPbQXuD2rRg=;
 b=BkHIZXVPOylFNHhBHi4IPNppoLVW70U+SnPF+Yybegx1JgcjacOx6KISsQ0JV+PgFL
 Slcn1bLtKuXfF4B3X5h4VD8EviObErezM9XpMQW6rbyPSTxJaaah2VLdxvKrm9i1V/DG
 Uj+huSrZcGLUqW/FKF1jYCts/xVfR8qyA/Oh1QXj+UXekZHQgUpUIO9erYcwnvrtmxjl
 fDVKsZhwas93jV/5c7tPvEtChwNsH/ESJnWigHQ9udRMOvRpshW+F5vEhwj4HGWB5PhK
 ldgsVdTtqE9xBHiH3B20zPYwfukL4GzkQINuTiC5vkeUo2DzMwgAfSiSUWrZMATBi7uC
 axBg==
X-Gm-Message-State: AOAM531W2zuidFs0npFX1ddCTXxpy0rWMlFvnZpAA40rwjf0GV9R848O
 S4BmUo6KPRFEIXzq96nr0kin77ryOBGuDaQGA2hXFQ==
X-Google-Smtp-Source: ABdhPJw8HN5ty/tqMA4nMJIFF2wWa+M+KXPgVFdU8D4AurXJeeVT12DavqAzxBRMDMACFLcWvmcPcvyJ9zdyLKSyOkw=
X-Received: by 2002:a2e:3009:: with SMTP id w9mr777237ljw.71.1589409418071;
 Wed, 13 May 2020 15:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
In-Reply-To: <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 17:36:46 -0500
Message-ID: <CAJQUmm4S-8S1ETEuAuA77-ZCCVEEO_4fVJkFczYOPneaD1FNmw@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_153700_371837_FAF1A27F 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Content-Type: multipart/mixed; boundary="===============7743023716787274193=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7743023716787274193==
Content-Type: multipart/alternative; boundary="000000000000c4653a05a58f37a2"

--000000000000c4653a05a58f37a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> How the entire upgrade process works would be a good subject for
> documenting on the Wiki if it=E2=80=99s not already.
>

Feel free :-)


> How long are you thinking this I/O will take to complete?
>

 Longer than the blazing speed of /bin/sh looping over /proc/*

(1) It shouldn=E2=80=99t be happening very often.  Hopefully.
>

It happens all the time for me. I have customers complaining my ear off
about their router not upgrading properly.


> (2) If the box is in an indeterminate state then it=E2=80=99s not always =
clear
> that there=E2=80=99s a safe path forward, and sometimes this is something=
 that a
> human needs to ascertain.
>

There's no human that can ascertain anything. The board that is being
upgraded is being upgraded from inside an enclosed shell where no human can
access it aside from the ethernet port, or wifi card. Given that the
upgrade process shuts off all the possible methods of interacting with the
system, having the board hang forever complaining "Can't kill all
processes" is not useful. Now a human has to go physically interact with
it, to cut power and restore power.


> (3) You might also want to collect data about the failure so you can fix
> it and stop it from happening again.  Proceeding would efface all of that=
.
>

There's no data to be gathered. There is no shell. Even if you had UART /
Serial / VGA + Keyboard, the upgrade process has already terminated any CLI
interface. So there's no data that can be gathered.

What if the failure left the box in a partially compromised state?  Would
> you want your firewall to =E2=80=9Cfail open=E2=80=9D?  I wouldn=E2=80=99=
t.
>

I want my router to not render itself useless every 10th time I update it.

As for firewalls failing open, that depends heavily on context. Do I want a
device that's in the middle of no where, where sending a human to access it
costs a lot of money, to fail in a state where there's no possibility of
communication? Or do I want it to fail in a way that I can still log into
it?

Further, we're still talking about failing to sigkill processes prior to an
upgrade. Nothing has changed on disk at this point in the upgrade, so a
failure to kill all processes should not render the box into powered up
brick.

The man page for signal(2) says:
>
>        The signals SIGKILL and SIGSTOP cannot be caught or ignored.
>
> but yeah, if you=E2=80=99re in the kernel when the signal arrives, and yo=
u get
> stuck in there, then your process won=E2=80=99t go away and it becomes a =
moot point.
>

Right, that's what I suspect is happening.


> > I was under the impression that the only reliable way to ensure all
> processes terminate is to use cgroups, and put the processes to terminate
> in the freezer group and then kill them off after they've been frozen.
> Otherwise you have basically a race condition between the termination of
> processes and the creation of children. E.g. a fork-bomb could prevent al=
l
> processes from being terminated.
>
>
> That assumes you have a kernel with CGROUPS compiled in.
>
RIght, so if you don't have CGROUPS compiled in, there's no reliable way to
terminate all processes. It can't be done.

For my purposes, I would have Cgroups compiled in. I have no concern for
increase in firmware size. Others may care, about firmware size, but they
can decide on the tradeoff between having cgroups or not having them.


> Also, if you have fork-bombs, why haven=E2=80=99t they brought down the s=
ystem
> earlier?  And why would you have untrusted services/programs on your syst=
em
> in the first place?  This isn=E2=80=99t a general computing base with nai=
ve users
> picking up malware inadvertently, etc.  It=E2=80=99s a closed software ec=
osystem
> (in theory=E2=80=A6 how it gets mangled downstream is a different questio=
n).
>

It was merely an example.

I=E2=80=99m speculating but it could be for any number of reasons=E2=80=A6 =
 Keeping procd
> simple=E2=80=A6  There might be ordering or dependency that requires doin=
g the
> shutdown in a particular order=E2=80=A6 There might be services (like squ=
id if
> socks or proxy web access is required) that might be needed by the upgrad=
e
> process in some scenarios=E2=80=A6
>

The upgrade process does not interact with any network services. All
necessary files are completely verified as on disk and correct prior to the
stage of the upgrade process that I'm talking about.

If there is an ordering dependency, then the services in question must
describe that dependency in their /etc/init.d/ files.

Procd is the manager of services. There's no meaningful complexity or
binary size cost to having it do a "for(auto const& service : services) {
service.shutdown(); }" loop (forgive the C++-ism, It's simply an example),
and the cost is well worth the additional reliability that it would provide=
.


> When *not* using cgroups?  I thought you just argued for using cgroups to
> avoid the fork-race condition above=E2=80=A6
>
Yes, cgroups are the ideal.

But even if cgroups are not available, procd should still attempt to use
the service management system to shut things down *prior* to looping with
sigterm and sigkill.
If cgroups are available, then the fork-bomb worst-case scenario can be
entirely mitigated.

--000000000000c4653a05a58f37a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">How the entire upgrade process works would be a good sub=
ject for documenting on the Wiki if it=E2=80=99s not already.<br></blockquo=
te><div>=C2=A0</div><div>Feel free :-)</div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
How long are you thinking this I/O will take to complete?<br></blockquote><=
div><br></div><div>=C2=A0Longer than the blazing speed of /bin/sh looping o=
ver /proc/*</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
(1) It shouldn=E2=80=99t be happening very often.=C2=A0 Hopefully.<br></blo=
ckquote><div><br></div><div>It happens all the time for me. I have customer=
s complaining my ear off about their router not upgrading properly.</div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
(2) If the box is in an indeterminate state then it=E2=80=99s not always cl=
ear that there=E2=80=99s a safe path forward, and sometimes this is somethi=
ng that a human needs to ascertain.<br></blockquote><div><br></div><div>The=
re&#39;s no human that can ascertain=C2=A0anything. The board that is being=
 upgraded is being upgraded from inside an enclosed shell where no human ca=
n access it aside from the ethernet port, or wifi card. Given that the upgr=
ade process shuts off all the possible methods of interacting with the syst=
em, having the board hang forever complaining &quot;Can&#39;t kill all proc=
esses&quot; is not useful. Now a human has to go physically interact with i=
t, to cut power and restore power.=C2=A0</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
(3) You might also want to collect data about the failure so you can fix it=
 and stop it from happening again.=C2=A0 Proceeding would efface all of tha=
t.<br></blockquote><div><br></div><div>There&#39;s no data to be gathered. =
There is no shell. Even if you had UART / Serial / VGA=C2=A0+ Keyboard, the=
 upgrade process has already terminated any CLI interface. So there&#39;s n=
o data that can be gathered.</div><div><br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">What if the failure left the box in a partially com=
promised state?=C2=A0 Would you want your firewall to =E2=80=9Cfail open=E2=
=80=9D?=C2=A0 I wouldn=E2=80=99t.<br></blockquote><div><br></div><div>I wan=
t my router to not render itself useless every 10th time I update it.</div>=
<div><br></div><div>As for firewalls failing open, that depends heavily on =
context. Do I want a device that&#39;s in the middle of no where, where sen=
ding a human to access it costs a lot of money, to fail in a state where th=
ere&#39;s no possibility of communication? Or do I want it to fail in a way=
 that I can still log into it?</div><div><br></div><div>Further, we&#39;re =
still talking about failing to sigkill processes prior to an upgrade. Nothi=
ng has changed on disk at this point in the upgrade, so a failure to kill a=
ll processes should not render the box into powered up brick.</div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
The man page for signal(2) says:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0The signals SIGKILL and SIGSTOP cannot be caught=
 or ignored.<br>
<br>
but yeah, if you=E2=80=99re in the kernel when the signal arrives, and you =
get stuck in there, then your process won=E2=80=99t go away and it becomes =
a moot point.<br></blockquote><div><br></div><div>Right, that&#39;s what I =
suspect is happening.</div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
&gt; I was under the impression that the only reliable way to ensure all pr=
ocesses terminate is to use cgroups, and put the processes to terminate in =
the freezer group and then kill them off after they&#39;ve been frozen. Oth=
erwise you have basically a race condition between the termination of proce=
sses and the creation of children. E.g. a fork-bomb could prevent all proce=
sses from being terminated.<br>
<br>
<br>
That assumes you have a kernel with CGROUPS compiled in.<br></blockquote><d=
iv>RIght, so if you don&#39;t have CGROUPS compiled in, there&#39;s no reli=
able way to terminate all processes. It can&#39;t be done.=C2=A0</div><div>=
<br></div><div>For my purposes, I would have Cgroups compiled in. I have no=
 concern for increase in firmware size. Others may care, about firmware siz=
e, but they can decide on the tradeoff between having cgroups or not having=
 them.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
Also, if you have fork-bombs, why haven=E2=80=99t they brought down the sys=
tem earlier?=C2=A0 And why would you have untrusted services/programs on yo=
ur system in the first place?=C2=A0 This isn=E2=80=99t a general computing =
base with naive users picking up malware inadvertently, etc.=C2=A0 It=E2=80=
=99s a closed software ecosystem (in theory=E2=80=A6 how it gets mangled do=
wnstream is a different question).<br></blockquote><div><br></div><div>It w=
as merely an example.</div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
I=E2=80=99m speculating but it could be for any number of reasons=E2=80=A6=
=C2=A0 Keeping procd simple=E2=80=A6=C2=A0 There might be ordering or depen=
dency that requires doing the shutdown in a particular order=E2=80=A6 There=
 might be services (like squid if socks or proxy web access is required) th=
at might be needed by the upgrade process in some scenarios=E2=80=A6=C2=A0 =
<br></blockquote><div><br></div><div>The upgrade process does not interact =
with any network services. All necessary files are completely verified as o=
n disk and correct prior to the stage of the upgrade process that I&#39;m t=
alking about.</div><div><br></div><div>If there is an ordering dependency, =
then the services in question must describe that dependency in their /etc/i=
nit.d/ files.=C2=A0</div><div><br></div><div>Procd is the manager of servic=
es. There&#39;s no meaningful complexity or binary size cost to having it d=
o a &quot;for(auto const&amp; service : services) { service.shutdown(); }&q=
uot; loop (forgive the C++-ism, It&#39;s simply an example), and the cost i=
s well worth the additional reliability that it would provide.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
When *not* using cgroups?=C2=A0 I thought you just argued for using cgroups=
 to avoid the fork-race condition above=E2=80=A6<br></blockquote><div>Yes, =
cgroups are the ideal.</div><div><br>But even if cgroups are not available,=
 procd should still attempt to use the service management system to shut th=
ings down *prior* to looping with sigterm and sigkill.=C2=A0</div><div>If c=
groups are available, then the fork-bomb worst-case scenario can be entirel=
y mitigated.=C2=A0</div></div></div>

--000000000000c4653a05a58f37a2--


--===============7743023716787274193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7743023716787274193==--

