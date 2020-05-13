Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BE51D0A90
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 10:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FvV/POad9oBa2mSqheC+q4fVNWYbszDI3pZv+WAnFWk=; b=X5TpFrx27SSIqHwxctoG0hg5A
	nOD+pbkF+hCymEAiUNs3uVJGShSm+lYWO3mdUege7R3rWL8+raUhgy/3Ium5s89tbIkJSF16dUvFZ
	IDLevpDUVforu3wzF2p+zNhaYn/dO1q6OrlPU90jBkNs038foXoS/FwGBpmfGwBwdYCffB7SOjPvs
	ugzqqnRsHANXroWvgf7NVBg/tysfyxxI4c928BngjoRy1DReEj+uvDi25nYaHQTatjXOfynvGSWdx
	6E07dy/GxxMRGMTWSTH5SGJwptJU0Wrn6pJ9fkVgBXw0aNijne73MKfbsIg9Cn+G+uLEGIbjZH5ch
	yI2P5f+0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmVt-0003nd-Q5; Wed, 13 May 2020 08:13:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmVj-0003nC-4N
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 08:13:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id h4so16705079ljg.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 01:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NWAW3QQHHGeIhziC1tEW7uEkPTTcgkGkld1ZTf7Y0M0=;
 b=ZostVOXKakVQGLAtVyooqCECiUxOZmGLfhrmtKPR3ZQKTShtmE0WtKMPCTVRshSUxp
 s3z4j/p2inyqeUwENqOJ7THYgDQsdYPpZpYHmGLCgNNbNhZvx+CFDiAJIy4+qEr2s95B
 Sc4CjxdlK/JlrhxeQIG77x2PEQWBUZML3NKWC/K3tTRtetidxHLzJ2VSUvfe+DD72UvM
 AYjvAg//lS5zFDKZIUxewsB/okxtKHhg48I6XVDGCGno8nr06vbqgMxA5SFhtRki8IAl
 saoNx8gEmY0Ki+XhLGQhNhBWiSEnC/6YJ92SbZxd5tK3uuE5Kgj4AxFHuT9kk3HGV5fw
 9Cjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NWAW3QQHHGeIhziC1tEW7uEkPTTcgkGkld1ZTf7Y0M0=;
 b=aW7R1MWr80dHyF+tnmOvbkGKpx59Nc42J3kxTMMQQ3bUiCG1Up6toV4ll7Z3a/RIuz
 YWzgNAhIG8NMZnJj4W8U1fp0fn1bZQfGHjiPbwCPcGKdwh49fOsC2pmwrkKCqz5mbeeM
 6Es2I8c/7wozMRR76TM0dBW+jJgmmVvqi1P9nM+7FobmOSOn3FpKodaTiubbJ2mTU4b5
 UJF8rRmGaz15SbF6OjsScQEtuqj8qu4qj14CS9gckBrwfBiuQDLyoHMn2FP/QpVKJXlj
 pGXYZqpx2Ke3DBqt8883snOjTlyvl/k9h76UetTMiYUOCqUBLyprC+MQdMGDyhvrPGcq
 7nGA==
X-Gm-Message-State: AOAM531e6cz1aXPK+LvtaqyhAFl+GXDCsty6/f5E2g6p2pYKCeW75LJc
 Yy3Nr3ZSWlmYg7ADuoMkZBoh7/V6f8/Os5VQaSCsFy1I
X-Google-Smtp-Source: ABdhPJy/DMd0AGT7fJ9Xec59Hnj2OPLOwviZLkUmN1lUradNZaKrbk2zH7feErdPVmAlXkmys6xoiN0hzAveYLOIk1U=
X-Received: by 2002:a2e:96d1:: with SMTP id d17mr16265211ljj.239.1589357581313; 
 Wed, 13 May 2020 01:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
In-Reply-To: <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 03:12:49 -0500
Message-ID: <CAJQUmm7tProVh=+JPp6owcEKQL5W4vUBwmiBNV7KLVMz4TNwqg@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_011304_135893_C36B8B42 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Content-Type: multipart/mixed; boundary="===============2781702466449864858=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2781702466449864858==
Content-Type: multipart/alternative; boundary="0000000000000e37cb05a5832636"

--0000000000000e37cb05a5832636
Content-Type: text/plain; charset="UTF-8"

> That loop-kill-all thing should be a kind of last resort really, what's
> actually needed is some kind of "init 1" procd equivalent which shuts down
> all
> services in a more or less clean manner.
>
>
Oddly enough, the /lib/upgrade/stage2 script has some aspect of this. It
explicitly shuts down (kill -9) telnet, dropbear, and ash before looping
with sigTERM, and then again with sigKILL.

I find it very odd that it's explicitly singling out telnet, dropbear, and
ash. My OpenWRT build doesn't have any of these installed in the first
place. E.g. I have OpenSSH, and it's jumping straight to kill -9 instead of
sending sigTERM first like it should.

I imagine this is the reason why I've had my SSH sessions hang
indefinitely when sysupgrading a board with dropbear.

I'm just not sure offhand how much possible error conditions there are
> besides
> the actual image writing itself, which you cannot recover from if it dies
> midway.
>

I would expect that if the image writing fails, at least one more attempt
should be made before giving up. Rendering the device soft-bricked is very
much not desirable...


No it is not. When the logic was implemented there wasn't any cgroup support
> in OpenWrt. Sysupgrade was introduced in 2007 when we still supported Linux
> 2.4 on some targets. Using the freezer cgroup probably makes sense
> nowadays,
> it will however further bloat the kernel which might hurt various lower end
> targets, flash space wise.
>
> Ok, noted.

I suppose I should point out that I'm not personally interested in the
lower end devices, but I understand where you're coming from there.

Perhaps a way to address this in a reliable way:

1) If cgroups support is detected at runtime (or conditional compilation to
save even more space in the binary), procd, acting as it's role of PID 1
places all services that it creates into their own cgroup. I don't know how
this interacts with procd jails, but perhaps some code from that can be
adapted and reused.
1.a) I would even add that there should be a top-level cgroup that should
contain all service-cgroups as nested cgroups, so that *everything* can be
terminated in one fell swoop.

2) on sysupgrade, just prior to execvp /sbin/upgraded, procd gracefully
shuts down all services that are running.
2.a) If cgroups are available, then after shutting down all services, use
the cgroup freezer to terminate any services cgroups that still have active
processes.
2.b) Use the global cgroup to nuke everything from orbit.

3) /sbin/upgraded handles terminating any remaining processes. This isn't
something that should be practically handled in a shell script. Moving the
logic for this into /sbin/upgraded means that the only safety check is that
it not try to terminate pid1.

4) Now /lib/upgrade/stage2 doesn't need to worry about terminating
processes, and can focus entirely on handling the ramdisk chroot logic.

--0000000000000e37cb05a5832636
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=3D"lt=
r"><br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><br>
That loop-kill-all thing should be a kind of last resort really, what&#39;s=
<br>
actually needed is some kind of &quot;init 1&quot; procd equivalent which s=
huts down all<br>
services in a more or less clean manner.<br>
<br></blockquote><div><br></div><div>Oddly enough, the /lib/upgrade/stage2 =
script has some aspect of this. It explicitly shuts down (kill -9) telnet, =
dropbear, and ash before looping with sigTERM, and then again with sigKILL.=
</div><div><br></div><div>I find it very odd that it&#39;s explicitly singl=
ing out telnet, dropbear, and ash. My OpenWRT build doesn&#39;t have any of=
 these installed in the first place. E.g. I have OpenSSH, and it&#39;s jump=
ing straight to kill -9 instead of sending sigTERM first like it should.</d=
iv><div><br></div><div>I imagine this is the reason why I&#39;ve had my SSH=
 sessions hang indefinitely=C2=A0when sysupgrading=C2=A0a board with dropbe=
ar.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
I&#39;m just not sure offhand how much possible error conditions there are =
besides<br>
the actual image writing itself, which you cannot recover from if it dies m=
idway.<br></blockquote><div><br></div><div>I would expect that if the image=
 writing fails, at least one more attempt should be made before giving up. =
Rendering the device soft-bricked is very much not desirable...</div><div><=
br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
No it is not. When the logic was implemented there wasn&#39;t any cgroup su=
pport<br>
in OpenWrt. Sysupgrade was introduced in 2007 when we still supported Linux=
<br>
2.4 on some targets. Using the freezer cgroup probably makes sense nowadays=
,<br>
it will however further bloat the kernel which might hurt various lower end=
<br>
targets, flash space wise.<br>
<br></blockquote><div>Ok, noted.</div><div><br></div><div>I suppose I shoul=
d point out that I&#39;m not personally interested in the lower end devices=
, but I understand=C2=A0where you&#39;re coming from there.</div><div><br><=
/div><div>Perhaps a way to address this in a reliable way:</div><div><br></=
div><div>1) If cgroups support is detected at runtime (or conditional compi=
lation to save even more space in the binary), procd, acting as it&#39;s ro=
le of PID 1 places all services that it creates into their own cgroup. I do=
n&#39;t know how this interacts with procd jails, but perhaps some code fro=
m that can be adapted and reused.</div><div>1.a) I would even add that ther=
e should be a top-level cgroup that should contain all service-cgroups as n=
ested cgroups, so that *everything* can be terminated in one fell swoop.</d=
iv><div><br></div><div>2) on sysupgrade, just prior to execvp /sbin/upgrade=
d, procd gracefully shuts down all services that are running.</div><div>2.a=
) If cgroups are available, then after shutting down all services, use the =
cgroup freezer to terminate any services cgroups that still have active pro=
cesses.=C2=A0</div><div>2.b) Use the global cgroup to nuke everything from =
orbit.</div><div><br></div><div>3) /sbin/upgraded handles terminating any r=
emaining processes. This isn&#39;t something that should be practically han=
dled in a shell script. Moving the logic for this into /sbin/upgraded means=
 that the only safety check is that it not try to terminate pid1.</div><div=
><br></div><div>4) Now /lib/upgrade/stage2 doesn&#39;t need to worry about =
terminating processes, and can focus entirely on handling the ramdisk chroo=
t logic.</div></div></div>
</div>

--0000000000000e37cb05a5832636--


--===============2781702466449864858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2781702466449864858==--

