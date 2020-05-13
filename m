Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441F41D1F88
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 21:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gL/gaKEFsS7LmWHZNNgMoqxEwIL9KSPT21hY0m05vyc=; b=ejehntMP7OW4XYCUmBHVIQkZL
	4P2T9CL5ZU3o1C00U0ftp6w0C3o8MtJvgt0D7XX0FXllCfGVoWoYHRSRbZnJHOTha2Fc6dLunaXba
	W9nwN7aJx3p/BjInbTKEkWhr3VB67Uu6c4F2ovJX1G8DtCCwsSQGHSCVowvKQfkoFilaChKu6kdhc
	Lw9JQ/DUqaZMoSgno0Wo41DueA8oxhsbXX+izqzm1faG/N5XVMwYI5cvd1k5imk2UjdlMcUQPh2mB
	v7/jDNRQokzWYAPNbapqmQNYRKs5bk5f3f5hXqjCGnWdIK3GcvnG9e0n+RlQtVZ1nj/qLgxrjDxyW
	wjcD0p34g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxHA-0005d0-2f; Wed, 13 May 2020 19:42:44 +0000
In-Reply-To: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
Date: Wed, 13 May 2020 12:41:42 -0700
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
MIME-Version: 1.0
Message-ID: <mailman.12785.1589398941.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: John Clark via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: John Clark <jeclark2006@aim.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
Content-Type: multipart/mixed; boundary="===============0339573603084719559=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0339573603084719559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0339573603084719559==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic311-24.consmr.mail.ne1.yahoo.com ([66.163.188.205])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxGl-0005Q5-5s
	for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 19:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aim.com; s=a2048; t=1589398934; bh=xBwWF7s1oGfvZbZ8lP8ejceFP72KcWpRoqf/72exNC4=; h=Subject:From:In-Reply-To:Date:Cc:References:To:From:Subject; b=f2gy/tggrbLecLvJQfPgjxhZ5zWBNvE14nj85pl10f1LwpEMRGO85x0s75y6A2/fGACLt0VWavm4dm4pPOOXaXYluY2ckGJ+So45dyZ4Rdkm0MY323la6M+iUf95Q1gGZloMSm5Akg5nU3GK21UeJGq+ydzqKEODcMmWy5ov3vquIat9ZZZ5wb2vc/xFb50fQ1S8qciRLaPP5ZbkbPV/dubgaycVrWvVcXqqUdkNLu0vTVW2NEUla+aTEvmgDZi4WtQsoF915wgwYuahxB/0bUwF/0Cb6Tct+tyHUm13KRbhsLritirWn6S84jrw6tVt/rETFUiP0/3T/QcH1SSE3g==
X-YMail-OSG: 5NcyRFcVM1l9mTiLTZjnmAW.1JgV5p3YOu1t2SALtZf9dr5dEoLF2VpkxEwaQP6
 lpDKl_3muq0W8gg9AKmlAwktQve5jiwSBFN384Nm2QXs4phvx6plJpnevVLn0iU_qHQMID.RFB5b
 LU6WMpnAnKJiDbaZmfVSrgNmbq5CKSfWGfQ5vwjiGL82M1Zdj5m5k5jyU.Qq9tsesQM4X0Ml0CpZ
 gB_h_2Qnop6CUqD2B8cn50OJu3PpEYSSjMNBIsqTX7wMjwAi_jIlsEl1lTb08ydbCF_hxsf3N6x9
 mnc_xXrJqmU9fTh9IiY1955TF7vWR_FGHGif6mTqXBOAwnMwmCZLo8MVibQDb32k_LLMs_XUc8yr
 iR_5zZi2sqGmUBxpaSWTUvecTMdTgkRtYbdwPnCiFI2FSbBJS7VZTVgzzVFJms7czZ5k1z7AUEuV
 Abt3yZy0TrVtSbcNWRuKW2CIiSeZOeYUX0pVZWTyi1oiutW2tbLnQ5TpxKbNWss8t3xHCxJ5sPXK
 oFaZg_dyxhS20HC1BZ4doQUg8QLRPqlypmfkjhTKZjHXFIgn6p2TOAl0Tbhg4at1hOkfzfNmaOUl
 zTrGuDwOb8QMCoAyiKpuj4cNZUFpZ.WI164iqudK0JuFfeQghBQsJI6mtll43iYkuLZECqjjfi7C
 DdGgt_JMnV22Z8PoOTTNpnlGGyhJaQOlQrB3o.0DPK0Fnw6Y08Uql4FMMqT38S1ACkUF7QGV9Kid
 omDmPG33bdfWwmZS4EiDwNwGRhsFw1gb7hF_npDspaNsgNI05cAAHr8x1si5Nzwxql1F_KsPgDm1
 5hi.VrGao0b42NgLAGe4Z4MnqAo0d6HChbaVXRUYb8oANxs2L2rL1aqkV0INXdH9P5bR183vy23M
 l_80GCYfYHY3WW6Y5_xmWFLrlBFshQ36F73HNGwvtBff3d6OXhbFpyz5gDDZz9WRbWPEhyvZUuqP
 zHQA9vrjNzffxdeayxnZFFv8QxhLb2wKOZiBa3zv9M3uiyxuTwzvTO5q9hVAh7QqPGQIqtwW620s
 fO37VfSQz_GefY.5BdiLgs8NsMz0PddgX82ByGAcYCTpxL7x4c650siOYGaGuc4o7Fbv26HQoMvL
 t_GpWWOoep0XvP2Jt6wcKFFCQEndi33njJpWTos_pJ0P70YSwBjAOFk8yYSpL0nkgMY.FXqwjTsB
 z1fMx3bMGT2bof2qlqMHgrJuMriDcZyi11QRWbHjqSWgTlhqPtRv1IImfNCeoFY5M9LxQyw01tW3
 NsFwtHL6yiq5DFC6GqwDQXNeqIvWyLJE_3VxlWdY_tRLjhENrPi2F9LiI3kP0TbrgV5gcj1O0ydx
 6TKbEKe8.CZbcg0VvMU9Uo_x1ze2xpsv8LxxkG0gyDwsUp.Jw.TLMQErZNdq4gO5WjT32lRWAne3
 S1Rx5mSU-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ne1.yahoo.com with HTTP; Wed, 13 May 2020 19:42:14 +0000
Received: by smtp404.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 47b352c17dc241006ee96df2dbcf2d93;
          Wed, 13 May 2020 19:42:09 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
From: John Clark <jeclark2006@aim.com>
In-Reply-To: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
Date: Wed, 13 May 2020 12:41:42 -0700
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <DE33551D-51B7-4CF9-A895-4D4946276C85@aim.com>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Content-Length: 3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_124219_261127_E42723E6 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [66.163.188.205 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [66.163.188.205 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [jeclark2006[at]aim.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [jeclark2006[at]aim.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature



> On May 12, 2020, at 10:17 PM, Michael Jones <mike@meshplusplus.com> =
wrote:
>=20
> I've been investigating a problem with sysupgrade failing with the =
error message "Failed to kill all processes", and then hanging =
indefinitely.
>=20
> This happens maybe once every 10-20 sysupgrades, and it's kind of a =
pain.
>=20
> So far I've determined this workflow that the sysupgrade command =
follows. Note, I'm not aiming for 100% accuracy, but just broad strokes.
>=20
>=20
> 1) /sbin/sysupgrade locates the file to upgrade from on the =
filesystem, or if the second option to sysupgrade starts with http://, =
it downloads the firmware file using wget.
> 2) /sbn/sysupgrade does some minor validation of various things, and =
grabs whatever config files it thinks the end user wants to be restored =
and packs them up into some kind of tarball.
> 3) sysupgrade sends a message, via ubus, to procd, to initiate the =
upgrade.
> 4) Procd does some stuff which I haven't finished completely =
understanding just yet, but it looks like firmware verification to make =
sure we don't upgrade to a bad firmware file.
> 5) It *does not* appear that procd will proactively terminate services =
until everything (or almost everything) is shut down. Seems like =
something that should be added to increase reliability.
> 6) procd replaces itself (execvp systemcall) with the program =
/sbin/upgraded. This means that procd is *no longer running*, PID 1 is =
now /sbin/upgraded. So service management is not possible at this point.
> 7) /sbin/upgraded now acts as PID1. It executes the shell script =
/lib/upgrade/stage2 with parameters.
> 8) The shell script loops on all processes, and sends them the TERM =
signal, and then the KILL signal. See email subjec for problems with =
this.
> 9) the shell script creates a new ram filesystem, mounts it, then =
copies over a very small set of binaries into it.
> 10) The shell script changes root into the new ram filesystem
> 11) Inside the ramfilesystem, the shell script writes the upgraded =
firmware and saved configuration to disk
> 12) Reboot.

I=E2=80=99ve had many problems with =E2=80=99sysupgrade=E2=80=99, since =
the CPU/machine is my own board. For the longest time I was able to crib =
from a TP Link model that had a similar processor and memory setup.

Not so now. The documentation for integrating one=E2=80=99s =E2=80=98custo=
m=E2=80=99 board into the sysupgrade =E2=80=99standard=E2=80=99 is =
severely lacking.

I didn=E2=80=99t find the =E2=80=98validation=E2=80=99 checks =
=E2=80=98minor=E2=80=99 as in where they occurred, and how to generate =
them in the build. It took a while to find =E2=80=98fwtool=E2=80=99 and =
another while to realize perhaps I=E2=80=99d just dump the whole thing, =
and substitute =E2=80=99sysupgrade=E2=80=99 with a mid =E2=80=A6 to the =
devices. But of course, that has the problem of how to deal with =
programs active, that may cause fatal errors to occur, when one is =
replacing the underlying =E2=80=98rom=E2=80=99 image=E2=80=A6

As for why things don=E2=80=99t shutdown when receiving a =E2=80=98kill =
-9=E2=80=99 signal=E2=80=A6 there are low level kernel activities that =
may be in an uninterruptible =E2=80=99state=E2=80=99 waiting for events =
to occur to continue, which never occur, and cause the program to not =
exit cleanly.

I=E2=80=99ve never had this problem with =E2=80=98reboot=E2=80=99, but =
there doesn=E2=80=99t seem to be a really nice way to =E2=80=98reboot =
into a firmware upgrade initram image=E2=80=99, do the work, then reboot =
with new firmware.

The copy to Ramdisk a set of required programs, chroot, then do the =
work, seems like it has many potential places to fail.

As it is I=E2=80=99ll slog through what I need to do to support =
sysupgrade for my product in the field, but it=E2=80=99s not because the =
documentation is available, completely, or easy.

John Clark.
>=20




--===============0339573603084719559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0339573603084719559==--
