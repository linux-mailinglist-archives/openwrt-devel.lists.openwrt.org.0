Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EBD1D0654
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 07:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1MC+3ktqIvICtystOsSxLbMZK0ytqo6hcNHUa7ptO3A=; b=mKY
	Ja5YLBge8jxKAYWzoIWAn8nN/sTHkoeXVkixy6/+2DThzXyBXeLAtM2DUUu8zmEvIvQi32ARw8uxt
	azgIEOusUkQOgn1XCZ/vQI8F2xCkRUFYKMxpFdE2HXpSOEDkVxnFgMl11j9lvj1FVzEP+WTpYfRIc
	s0IS4Htt/0b7f2+oqiPwJQuN6N6+QUT9P4L3DE9Gd3A6TgYY03iyyTqjsw71X/8BFyI+fsPLssCSK
	Xu87eaPHf4WhyZVkq7KX8n86GkTXAkLcEZUbxzAeIDSV4gu3DJZPeHaZOC7My9R+0y6LQdYla8QNG
	zMUCDYoiaP1jXDDxvVdwgg82vHwAxVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYjmP-0003wS-Dq; Wed, 13 May 2020 05:18:05 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYjmI-0003vz-FY
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 05:18:00 +0000
Received: by mail-lj1-x232.google.com with SMTP id f18so16240331lja.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 22:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=icKeCG63rNjOlqnfsi4TzZRAYpUR/r5NIshUm7aDRvg=;
 b=H5hXo/pMOY/fFMcm/RMK0CWchIkNjfwRIE+4cty7RkX9HTGGyj2pCY89y6yEjOOePs
 X/5Vjvo1k6BZ7z8HgW9ZylvMr/WtS0pbWh4UNcHGqkV/FqoWFFYgUq0HSAIbbEc+wd5I
 gyY4y3LVrNC78mwgdIcMtZ9fcKip73Pal+BKhJegxp2bLWmPc9taKjOYI0fnGHjtPDp5
 cPgDW8/mtp/dnZtPSK82899YwrcTRwQjDvRyrXEJP8C3SLC7KFlU6YkF6ADlXrtWPNGr
 uyaH/DJFVfIQsX9XW8I40/nswBdMuAF4imoQclCsRleJjIaYHMiJ2laWbmGE49NEwG35
 AXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=icKeCG63rNjOlqnfsi4TzZRAYpUR/r5NIshUm7aDRvg=;
 b=kqipCQKIW1PHntDcuuKecEe7zsvfYbk2sCTEpkhoSyBgwnY2aj7yZHyLx0Qx3dTass
 +kbZSghWdLohy+GDAweMTTMrXSlOLy2oWeLoZcBd4yjJYuouCokgJPtcyzM4/6VBqQgx
 d6cuN0bbvvNw0x9F05fPt2GeCeh0nLuevMk53uP0QwJ3C4MVHpxISHrq5Q5h/nPVrYog
 Aw2uJgQirV9o1fKRVqKVUbueX8tao5hJN3nnE7wyBFOLLRYXU/Jci10H+qlky8za30qs
 8OROj9RaBbeiAuTwoiCGqLWtF4A2BAC1hX9vfu72+eUQYr1GmwscdML+Fy0jAahdZ7qj
 IRKQ==
X-Gm-Message-State: AOAM532+MkSR+eW6jLK3/sWXchVWoFKVXaewDSj/6kulQ5XSfBIGE+4E
 dwj1m6SWrEjGC+5QHcsDHcHCLCk1n6X0PokgGmoZkYkwj7I=
X-Google-Smtp-Source: ABdhPJxEwGYjKKXLkCGdTmBLMiLh0e7bDWpPk/1xF4RVUe6jIuWfhXX9Jq8zt90239uIKqmbx+NgzLLYY3FO6Voe5AI=
X-Received: by 2002:a2e:96d1:: with SMTP id d17mr15803820ljj.239.1589347074742; 
 Tue, 12 May 2020 22:17:54 -0700 (PDT)
MIME-Version: 1.0
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 00:17:43 -0500
Message-ID: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_221758_546648_9BF3D509 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Content-Type: multipart/mixed; boundary="===============8270436914301617147=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8270436914301617147==
Content-Type: multipart/alternative; boundary="000000000000d0ac6e05a580b38a"

--000000000000d0ac6e05a580b38a
Content-Type: text/plain; charset="UTF-8"

I've been investigating a problem with sysupgrade failing with the error
message "Failed to kill all processes", and then hanging indefinitely.

This happens maybe once every 10-20 sysupgrades, and it's kind of a pain.

So far I've determined this workflow that the sysupgrade command follows.
Note, I'm not aiming for 100% accuracy, but just broad strokes.


1) /sbin/sysupgrade locates the file to upgrade from on the filesystem, or
if the second option to sysupgrade starts with http://, it downloads the
firmware file using wget.
2) /sbn/sysupgrade does some minor validation of various things, and grabs
whatever config files it thinks the end user wants to be restored and packs
them up into some kind of tarball.
3) sysupgrade sends a message, via ubus, to procd, to initiate the upgrade.
4) Procd does some stuff which I haven't finished completely understanding
just yet, but it looks like firmware verification to make sure we don't
upgrade to a bad firmware file.
5) It *does not* appear that procd will proactively terminate services
until everything (or almost everything) is shut down. Seems like something
that should be added to increase reliability.
6) procd replaces itself (execvp systemcall) with the program
/sbin/upgraded. This means that procd is *no longer running*, PID 1 is now
/sbin/upgraded. So service management is not possible at this point.
7) /sbin/upgraded now acts as PID1. It executes the shell script
/lib/upgrade/stage2 with parameters.
8) The shell script loops on all processes, and sends them the TERM signal,
and then the KILL signal. See email subjec for problems with this.
9) the shell script creates a new ram filesystem, mounts it, then copies
over a very small set of binaries into it.
10) The shell script changes root into the new ram filesystem
11) Inside the ramfilesystem, the shell script writes the upgraded firmware
and saved configuration to disk
12) Reboot.


Now that the very rough summary is out of the way, I have 4 questions.

1) I notice that the shell script /lib/upgrade/stage2 is doing a tight loop
with kill -9 to terminate processes. However, it's only looping a maximum
of 10 times, and its going as fast as the shell can loop.

What's to stop this loop from quickly going through every process almost
immediately 10 times, before a process that would be about to terminate
terminates? The process in question may be handling some kind of IO, so the
kernel wouldn't immediately terminate it.

Shouldn't there be some very brief sleep at the end of each loop iteration
to ensure that the processes that are going to practically terminate have
done so?

2) Why is the behavior on failure to terminate processes to just give up?
That leaves devices hanging without any network connectivity.
A reboot with some logging on disk would allow for remote sysupgrades to
have some kind of recoverability.

3) Is looping over sigkill a reliable way to terminate all processes?
I was under the impression that the only reliable way to ensure all
processes terminate is to use cgroups, and put the processes to terminate
in the freezer group and then kill them off after they've been frozen.
Otherwise you have basically a race condition between the termination of
processes and the creation of children. E.g. a fork-bomb could prevent all
processes from being terminated.

4) Why doesn't procd, prior to execvp the /sbin/upgraded program, shutdown
all the services that are running?

Maybe I'm just not seeing where it does this, so if that's the case, then
I'm happy to be corrected.

But I'm under the impression that when not using cgroups, stopping all
services would allow for anything that isn't double forked to be gracefully
shutdown and cleaned up after itself.

--000000000000d0ac6e05a580b38a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve been investigating a problem with sysupgrade fail=
ing with the error message &quot;Failed to kill all processes&quot;, and th=
en hanging indefinitely.<div><br></div><div>This happens maybe once every 1=
0-20 sysupgrades, and it&#39;s kind of a pain.</div><div><br></div><div>So =
far I&#39;ve determined this workflow that=C2=A0the sysupgrade command foll=
ows. Note, I&#39;m not aiming for 100% accuracy, but just broad strokes.</d=
iv><div><br></div><div><div><br></div><div><div>1) /sbin/sysupgrade locates=
 the file to upgrade from on the filesystem, or if the second option to sys=
upgrade starts with http://, it downloads the firmware file using wget.</di=
v><div>2) /sbn/sysupgrade does some minor validation of various things, and=
 grabs whatever config files it thinks the end user wants to be restored an=
d packs them up into some kind of tarball.</div><div>3) sysupgrade sends a =
message, via ubus, to procd, to initiate the upgrade.</div><div>4) Procd do=
es some stuff which I haven&#39;t finished completely understanding just ye=
t, but it looks like firmware verification to make sure we don&#39;t upgrad=
e to a bad firmware file.</div><div>5) It *does not* appear that procd will=
 proactively terminate services until everything (or almost everything) is =
shut down. Seems like something that should be added to increase reliabilit=
y.<br></div><div>6) procd replaces itself (execvp=C2=A0systemcall) with the=
 program /sbin/upgraded. This means that procd is *no longer running*, PID =
1 is now /sbin/upgraded. So service management is not possible at this poin=
t.<br></div><div>7) /sbin/upgraded now acts as PID1. It executes the shell =
script /lib/upgrade/stage2 with parameters.<br></div><div>8) The shell scri=
pt loops on all processes, and sends them the TERM signal, and then the KIL=
L signal. See email subjec for problems with this.</div><div>9) the shell s=
cript creates a new ram filesystem, mounts it, then copies over a very smal=
l set of binaries into it.</div><div>10) The shell script changes root into=
 the new ram filesystem</div><div>11) Inside the ramfilesystem, the shell s=
cript writes the upgraded firmware and saved configuration to disk</div><di=
v>12) Reboot.</div></div></div><div><br></div><div><br></div><div>Now that =
the very rough summary is out of the way, I have 4 questions.</div><div><br=
></div><div>1) I notice that the shell script /lib/upgrade/stage2 is doing =
a tight loop with kill -9 to terminate processes. However, it&#39;s only lo=
oping a maximum of 10 times, and its going as fast as the shell can loop.=
=C2=A0</div><div><br></div><div>What&#39;s to stop this loop from quickly g=
oing through every process almost immediately 10 times, before a process th=
at would be about to terminate terminates? The process in question may be h=
andling some kind of IO, so the kernel wouldn&#39;t immediately terminate i=
t.</div><div><br></div><div>Shouldn&#39;t there be some very brief sleep at=
 the end of each loop iteration to ensure that the processes that are going=
 to practically terminate have done so?</div><div><br></div><div>2) Why is =
the behavior on failure to terminate processes to just give up? That leaves=
 devices hanging without any network connectivity.=C2=A0</div><div>A reboot=
 with some logging on disk would allow for remote sysupgrades=C2=A0to have =
some kind of recoverability.</div><div><br></div><div>3) Is looping over si=
gkill a reliable way to terminate all processes?</div><div>I was under the =
impression that the only reliable way to ensure all processes terminate is =
to use cgroups, and put the processes to terminate in the freezer group and=
 then kill them off after they&#39;ve been frozen. Otherwise you have basic=
ally a race condition between the termination of processes and the creation=
 of children. E.g. a fork-bomb could prevent all processes from being termi=
nated.</div><div><br></div><div>4) Why doesn&#39;t procd, prior to execvp t=
he /sbin/upgraded program, shutdown all the services that are running?=C2=
=A0</div><div><br>Maybe I&#39;m just not seeing where it does this, so if t=
hat&#39;s the case, then I&#39;m happy to be corrected.<br><br></div><div>B=
ut I&#39;m under the impression that when not using cgroups, stopping all s=
ervices would allow for anything that isn&#39;t double forked to be gracefu=
lly shutdown and cleaned up after itself.</div><div><br></div><div><br></di=
v><div><br></div></div>

--000000000000d0ac6e05a580b38a--


--===============8270436914301617147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8270436914301617147==--

