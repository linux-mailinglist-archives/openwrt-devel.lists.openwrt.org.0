Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A5F1D1CC1
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 20:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MiA8yhxiUgxyhKVS7395bZF0UgQF904nR/EN6+UsGuU=; b=L2EA2dO2X5VbdDG88GksNs59I
	yl4DNmLcNHt5X4SbGAn8fXHJ38TT1MwSQjq/XXyRoFtmRoawA901aghoKVDWTxAlR9/Ho4aZCqACB
	w+EzmmTrPW2CDe1t76KuV8P2LLOejgCtLqXv6SJe19UjBxiPZSJlg3A3yPN1f0PDyOFid7zCxIK0S
	7noCCoXFxH18pT56xjpTdh4G3rH0JALLx23G7M2C2UpeZ7Lj4v852f2garTTrg22mEUTOb5qHJa/A
	/2twEJyQOKGmE4Uyh2h7Ku36muYIEEYY2sGzbfLKKYILblLiMtmY5Scl2wPBbIwMsjdOXiFOoqEE6
	c7wBjz3MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvg2-0008U9-Se; Wed, 13 May 2020 18:00:18 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvfh-0008Tj-45
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 17:59:58 +0000
Received: by mail-lf1-x12b.google.com with SMTP id b26so290679lfa.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 10:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jAu/vWlJGW/Mj7a5ElC1KCYSHXQLHtkgu7GbrqkmBCs=;
 b=tjNHWxvEzFuHhkXJbzt6cKmFIwFBv17nNpK/5WMFoqzAeAZXZN3c5HbTZ9jDRUPHKs
 ThCow8oTQe/A/VJjIK1B9OBBaKqA18C1WtxnTAnOnqpKj1R3OBvhAsMmom5ByTEtD9LF
 7SQ3UFYJY3PVJoKrmu/xkN8tKeERuzD06qLkfC6XYatJHLXgWxtWbxEmiq0kcEE5vmII
 frmHrv7zgSHP+ChETMMsPfHQHY54Vi2nWvbWVW4SLfSNZMizIV+GAuFIc+1pug3zxHIO
 lLR/qrmoK+ZbBauHV5dT2OL2vhtMQNiCf2hWmXyFPj8m+FPj6hstiv6BNyqEHrz3Dse1
 FVCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jAu/vWlJGW/Mj7a5ElC1KCYSHXQLHtkgu7GbrqkmBCs=;
 b=X53SVspI6q5aBZM3NBoWfnxrTgWaiyNsSHKrL/fOWgXoVhVbSqskpzQsrcJ3USf2yI
 xNdZrqHo+JR4SpwvRcMDJ67PQ/QILEyuJgGF4MA5HO7oXHcc1pUjYRp6BbuBpeVTjH3X
 W5j8o1O3qRdcDhVJ/0GKV/u85ZGUzctb5LQjgPwfAFO/JFf1Y4kVTRNlJ0AITR+lkrND
 b3CjFfqed7gZnOAgRhlGLBCEx7h6f68KmC6K8PcMepRK4juACY4Rvk7NxcVZDA2XGBqR
 dglYbxDH5JIVD2xqkkIF1baG6RD6MhsBo++MhQ5G253XKTcaA483gBDftrNruQ5uvpFA
 sUZw==
X-Gm-Message-State: AOAM532M8Y4xb1dAA8fZHetLcKpOzKjoJKxYiMW9HWjRw8xc9xgTl1y/
 0z+vsSoCry7ykOsY4TILv8kTs962bAZLALwiUN99eQ==
X-Google-Smtp-Source: ABdhPJwOgGu05Zy2fYatX7nXZ7FXPVznpDjTulEU/oRRdgwdHZ8uuCQyMYrKU1mlyCs9gsoIFc24EReWdGhv3uRXu3o=
X-Received: by 2002:a19:6a02:: with SMTP id u2mr451867lfu.144.1589392795137;
 Wed, 13 May 2020 10:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
 <CAJQUmm7tProVh=+JPp6owcEKQL5W4vUBwmiBNV7KLVMz4TNwqg@mail.gmail.com>
 <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
 <CAJQUmm5fXkdA+GLZmF=RuusK-Ws16_M=FtKa0HdZfHzsFLaO-w@mail.gmail.com>
In-Reply-To: <CAJQUmm5fXkdA+GLZmF=RuusK-Ws16_M=FtKa0HdZfHzsFLaO-w@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 12:59:43 -0500
Message-ID: <CAJQUmm6ksoz-JcjM8APRP+C2a1o8ZKpe28bHkODBGh2=vSMEdg@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_105957_162390_089208E8 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
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
Content-Type: multipart/mixed; boundary="===============2410159147092457981=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2410159147092457981==
Content-Type: multipart/alternative; boundary="000000000000f6a68a05a58b58f5"

--000000000000f6a68a05a58b58f5
Content-Type: text/plain; charset="UTF-8"

On Wed, May 13, 2020 at 12:29 PM Michael Jones <mike@meshplusplus.com>
wrote:

>
>
> On Wed, May 13, 2020 at 3:58 AM Jo-Philipp Wich <jo@mein.io> wrote:
>
>> Hi,
>>
>>
> Stuff like umounting external disks, fsync / swapoff etc. come to mind as
>> well
>> which should be doable at this point.
>>
>>
>>
> Right, that's also feasible.
>
> In fact I don't see any code at all for unmounting existing filesystem
> mounts. Thanks for pointing that out.
>


I think that it's also reasonable to have /sbin/upgraded, in its role as
PID1, have some kind of safety valve on when the upgrade has failed.

E.g. if /lib/upgrade/script2 has returned, at all, the system needs to
reboot, because at this point /sbin/upgraded should be the only process
running.

if /lib/upgrade/script2 has not returned after 1 hour, there's no chance
that the upgrade will succeed, so reboot.

In both situations, the board may be in a bad state. But there's nothing
that can be done.

/sbin/upgraded offers the user no CLI interactions at all, so there's no
recovery actions that could be taken even if there was a UART / Serial /
VGA + Keyboard connection to the board to allow user interaction.

--000000000000f6a68a05a58b58f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 12:29 PM Mich=
ael Jones &lt;<a href=3D"mailto:mike@meshplusplus.com">mike@meshplusplus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 3:58 AM Jo-P=
hilipp Wich &lt;<a href=3D"mailto:jo@mein.io" target=3D"_blank">jo@mein.io<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i,<br>=C2=A0<br></blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
Stuff like umounting external disks, fsync / swapoff etc. come to mind as w=
ell<br>
which should be doable at this point.<br>
<br><br></blockquote><div><br></div><div>Right, that&#39;s also feasible.</=
div><div><br></div><div>In fact I don&#39;t see any code at all for unmount=
ing existing filesystem mounts. Thanks for pointing that out.</div></div></=
div></blockquote><div><br></div><div><br></div><div>I think that it&#39;s a=
lso reasonable to have /sbin/upgraded, in its role as PID1, have some kind =
of safety valve on when the upgrade has failed.</div><div><br></div><div>E.=
g. if /lib/upgrade/script2 has returned, at all, the system needs to reboot=
, because at this point /sbin/upgraded should be the only process running.<=
/div><div><br></div><div>if /lib/upgrade/script2 has not returned after 1 h=
our, there&#39;s no chance that the upgrade will succeed, so reboot.=C2=A0<=
/div><div><br></div><div>In both situations, the board may be in a bad stat=
e. But there&#39;s nothing that can be done.</div><div><br></div><div>/sbin=
/upgraded offers the user no CLI interactions at all, so there&#39;s no rec=
overy actions that could be taken even if there was a UART / Serial / VGA=
=C2=A0+ Keyboard connection to the board to allow user interaction.</div></=
div></div>

--000000000000f6a68a05a58b58f5--


--===============2410159147092457981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2410159147092457981==--

